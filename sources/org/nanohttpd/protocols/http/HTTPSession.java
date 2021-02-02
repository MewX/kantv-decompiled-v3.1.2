package org.nanohttpd.protocols.http;

import com.google.firebase.analytics.FirebaseAnalytics.Param;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataOutput;
import java.io.DataOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.net.InetAddress;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileChannel.MapMode;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.logging.Level;
import java.util.regex.Matcher;
import org.eclipse.jetty.http.HttpVersions;
import org.nanohttpd.protocols.http.NanoHTTPD.ResponseException;
import org.nanohttpd.protocols.http.content.ContentType;
import org.nanohttpd.protocols.http.content.CookieHandler;
import org.nanohttpd.protocols.http.request.Method;
import org.nanohttpd.protocols.http.response.Status;
import org.nanohttpd.protocols.http.tempfiles.ITempFile;
import org.nanohttpd.protocols.http.tempfiles.ITempFileManager;

public class HTTPSession implements IHTTPSession {
    public static final int BUFSIZE = 8192;
    public static final int MAX_HEADER_SIZE = 1024;
    private static final int MEMORY_STORE_LIMIT = 1024;
    public static final String POST_DATA = "postData";
    private static final int REQUEST_BUFFER_LEN = 512;
    private CookieHandler cookies;
    private Map<String, String> headers;
    private final NanoHTTPD httpd;
    private final BufferedInputStream inputStream;
    private Method method;
    private final OutputStream outputStream;
    private Map<String, List<String>> parms;
    private String protocolVersion;
    private String queryParameterString;
    private String remoteHostname;
    private String remoteIp;
    private int rlen;
    private int splitbyte;
    private final ITempFileManager tempFileManager;
    private String uri;

    public HTTPSession(NanoHTTPD nanoHTTPD, ITempFileManager iTempFileManager, InputStream inputStream2, OutputStream outputStream2) {
        this.httpd = nanoHTTPD;
        this.tempFileManager = iTempFileManager;
        this.inputStream = new BufferedInputStream(inputStream2, 8192);
        this.outputStream = outputStream2;
    }

    public HTTPSession(NanoHTTPD nanoHTTPD, ITempFileManager iTempFileManager, InputStream inputStream2, OutputStream outputStream2, InetAddress inetAddress) {
        this.httpd = nanoHTTPD;
        this.tempFileManager = iTempFileManager;
        this.inputStream = new BufferedInputStream(inputStream2, 8192);
        this.outputStream = outputStream2;
        this.remoteIp = (inetAddress.isLoopbackAddress() || inetAddress.isAnyLocalAddress()) ? "127.0.0.1" : inetAddress.getHostAddress().toString();
        this.remoteHostname = (inetAddress.isLoopbackAddress() || inetAddress.isAnyLocalAddress()) ? "localhost" : inetAddress.getHostName().toString();
        this.headers = new HashMap();
    }

    private void decodeHeader(BufferedReader bufferedReader, Map<String, String> map, Map<String, List<String>> map2, Map<String, String> map3) throws ResponseException {
        String str;
        try {
            String readLine = bufferedReader.readLine();
            if (readLine != null) {
                StringTokenizer stringTokenizer = new StringTokenizer(readLine);
                if (stringTokenizer.hasMoreTokens()) {
                    map.put(Param.METHOD, stringTokenizer.nextToken());
                    if (stringTokenizer.hasMoreTokens()) {
                        String nextToken = stringTokenizer.nextToken();
                        int indexOf = nextToken.indexOf(63);
                        if (indexOf >= 0) {
                            decodeParms(nextToken.substring(indexOf + 1), map2);
                            str = NanoHTTPD.decodePercent(nextToken.substring(0, indexOf));
                        } else {
                            str = NanoHTTPD.decodePercent(nextToken);
                        }
                        if (stringTokenizer.hasMoreTokens()) {
                            this.protocolVersion = stringTokenizer.nextToken();
                        } else {
                            this.protocolVersion = HttpVersions.HTTP_1_1;
                            NanoHTTPD.LOG.log(Level.FINE, "no protocol version specified, strange. Assuming HTTP/1.1.");
                        }
                        String readLine2 = bufferedReader.readLine();
                        while (readLine2 != null && !readLine2.trim().isEmpty()) {
                            int indexOf2 = readLine2.indexOf(58);
                            if (indexOf2 >= 0) {
                                map3.put(readLine2.substring(0, indexOf2).trim().toLowerCase(Locale.US), readLine2.substring(indexOf2 + 1).trim());
                            }
                            readLine2 = bufferedReader.readLine();
                        }
                        map.put("uri", str);
                        return;
                    }
                    throw new ResponseException(Status.BAD_REQUEST, "BAD REQUEST: Missing URI. Usage: GET /example/file.html");
                }
                throw new ResponseException(Status.BAD_REQUEST, "BAD REQUEST: Syntax error. Usage: GET /example/file.html");
            }
        } catch (IOException e) {
            Status status = Status.INTERNAL_ERROR;
            StringBuilder sb = new StringBuilder();
            sb.append("SERVER INTERNAL ERROR: IOException: ");
            sb.append(e.getMessage());
            throw new ResponseException(status, sb.toString(), e);
        }
    }

    private void decodeMultipartFormData(ContentType contentType, ByteBuffer byteBuffer, Map<String, List<String>> map, Map<String, String> map2) throws ResponseException {
        String sb;
        ByteBuffer byteBuffer2 = byteBuffer;
        Map<String, List<String>> map3 = map;
        Map<String, String> map4 = map2;
        try {
            int[] boundaryPositions = getBoundaryPositions(byteBuffer2, contentType.getBoundary().getBytes());
            int i = 2;
            if (boundaryPositions.length >= 2) {
                int i2 = 1024;
                byte[] bArr = new byte[1024];
                int i3 = 0;
                int i4 = 0;
                int i5 = 0;
                while (true) {
                    int i6 = 1;
                    if (i4 < boundaryPositions.length - 1) {
                        byteBuffer2.position(boundaryPositions[i4]);
                        int remaining = byteBuffer.remaining() < i2 ? byteBuffer.remaining() : 1024;
                        byteBuffer2.get(bArr, i3, remaining);
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(bArr, i3, remaining), Charset.forName(contentType.getEncoding())), remaining);
                        String readLine = bufferedReader.readLine();
                        if (readLine != null && readLine.contains(contentType.getBoundary())) {
                            String readLine2 = bufferedReader.readLine();
                            String str = null;
                            int i7 = i5;
                            String str2 = null;
                            String str3 = null;
                            int i8 = 2;
                            while (readLine2 != null && readLine2.trim().length() > 0) {
                                Matcher matcher = NanoHTTPD.CONTENT_DISPOSITION_PATTERN.matcher(readLine2);
                                if (matcher.matches()) {
                                    Matcher matcher2 = NanoHTTPD.CONTENT_DISPOSITION_ATTRIBUTE_PATTERN.matcher(matcher.group(i));
                                    while (matcher2.find()) {
                                        String group = matcher2.group(i6);
                                        if ("name".equalsIgnoreCase(group)) {
                                            sb = matcher2.group(2);
                                        } else {
                                            if ("filename".equalsIgnoreCase(group)) {
                                                String group2 = matcher2.group(2);
                                                if (!group2.isEmpty()) {
                                                    if (i7 > 0) {
                                                        StringBuilder sb2 = new StringBuilder();
                                                        sb2.append(str);
                                                        int i9 = i7 + 1;
                                                        sb2.append(String.valueOf(i7));
                                                        sb = sb2.toString();
                                                        str2 = group2;
                                                        i7 = i9;
                                                    } else {
                                                        i7++;
                                                    }
                                                }
                                                str2 = group2;
                                            }
                                            i6 = 1;
                                        }
                                        str = sb;
                                        i6 = 1;
                                    }
                                }
                                Matcher matcher3 = NanoHTTPD.CONTENT_TYPE_PATTERN.matcher(readLine2);
                                if (matcher3.matches()) {
                                    str3 = matcher3.group(2).trim();
                                }
                                readLine2 = bufferedReader.readLine();
                                i8++;
                                i = 2;
                                i6 = 1;
                            }
                            int i10 = 0;
                            while (true) {
                                int i11 = i8 - 1;
                                if (i8 <= 0) {
                                    break;
                                }
                                i10 = scipOverNewLine(bArr, i10);
                                i8 = i11;
                            }
                            if (i10 < remaining - 4) {
                                int i12 = boundaryPositions[i4] + i10;
                                i4++;
                                int i13 = boundaryPositions[i4] - 4;
                                byteBuffer2.position(i12);
                                List list = (List) map3.get(str);
                                if (list == null) {
                                    list = new ArrayList();
                                    map3.put(str, list);
                                }
                                if (str3 == null) {
                                    byte[] bArr2 = new byte[(i13 - i12)];
                                    byteBuffer2.get(bArr2);
                                    list.add(new String(bArr2, contentType.getEncoding()));
                                } else {
                                    String saveTmpFile = saveTmpFile(byteBuffer2, i12, i13 - i12, str2);
                                    if (!map4.containsKey(str)) {
                                        map4.put(str, saveTmpFile);
                                    } else {
                                        int i14 = 2;
                                        while (true) {
                                            StringBuilder sb3 = new StringBuilder();
                                            sb3.append(str);
                                            sb3.append(i14);
                                            if (!map4.containsKey(sb3.toString())) {
                                                break;
                                            }
                                            i14++;
                                        }
                                        StringBuilder sb4 = new StringBuilder();
                                        sb4.append(str);
                                        sb4.append(i14);
                                        map4.put(sb4.toString(), saveTmpFile);
                                    }
                                    list.add(str2);
                                }
                                i5 = i7;
                                i2 = 1024;
                                i = 2;
                                i3 = 0;
                            } else {
                                throw new ResponseException(Status.INTERNAL_ERROR, "Multipart header size exceeds MAX_HEADER_SIZE.");
                            }
                        }
                    } else {
                        return;
                    }
                }
                throw new ResponseException(Status.BAD_REQUEST, "BAD REQUEST: Content type is multipart/form-data but chunk does not start with boundary.");
            }
            throw new ResponseException(Status.BAD_REQUEST, "BAD REQUEST: Content type is multipart/form-data but contains less than two boundary strings.");
        } catch (ResponseException e) {
            throw e;
        } catch (Exception e2) {
            throw new ResponseException(Status.INTERNAL_ERROR, e2.toString());
        }
    }

    private int scipOverNewLine(byte[] bArr, int i) {
        while (bArr[i] != 10) {
            i++;
        }
        return i + 1;
    }

    private void decodeParms(String str, Map<String, List<String>> map) {
        String str2;
        String str3;
        String str4 = "";
        if (str == null) {
            this.queryParameterString = str4;
            return;
        }
        this.queryParameterString = str;
        StringTokenizer stringTokenizer = new StringTokenizer(str, "&");
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            int indexOf = nextToken.indexOf(61);
            if (indexOf >= 0) {
                str3 = NanoHTTPD.decodePercent(nextToken.substring(0, indexOf)).trim();
                str2 = NanoHTTPD.decodePercent(nextToken.substring(indexOf + 1));
            } else {
                str3 = NanoHTTPD.decodePercent(nextToken).trim();
                str2 = str4;
            }
            List list = (List) map.get(str3);
            if (list == null) {
                list = new ArrayList();
                map.put(str3, list);
            }
            list.add(str2);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:58:0x0173, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:60:?, code lost:
        org.nanohttpd.protocols.http.response.Response.newFixedLengthResponse((org.nanohttpd.protocols.http.response.IStatus) r0.getStatus(), r2, r0.getMessage()).send(r10.outputStream);
        org.nanohttpd.protocols.http.NanoHTTPD.safeClose(r10.outputStream);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:68:0x01e2, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:69:0x01e3, code lost:
        throw r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:70:0x01e4, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:71:0x01e5, code lost:
        throw r0;
     */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x0173 A[ExcHandler: ResponseException (r0v14 'e' org.nanohttpd.protocols.http.NanoHTTPD$ResponseException A[CUSTOM_DECLARE]), Splitter:B:1:0x0009] */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x01e2 A[Catch:{ SSLException -> 0x016f, IOException -> 0x015f, SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, ResponseException -> 0x0173, SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173, all -> 0x0171 }, ExcHandler: SocketTimeoutException (r0v2 'e' java.net.SocketTimeoutException A[CUSTOM_DECLARE, Catch:{  }]), Splitter:B:1:0x0009] */
    /* JADX WARNING: Removed duplicated region for block: B:70:0x01e4 A[Catch:{ SSLException -> 0x016f, IOException -> 0x015f, SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, ResponseException -> 0x0173, SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173, all -> 0x0171 }, ExcHandler: SocketException (r0v1 'e' java.net.SocketException A[CUSTOM_DECLARE, Catch:{  }]), Splitter:B:1:0x0009] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void execute() throws java.io.IOException {
        /*
            r10 = this;
            java.lang.String r0 = "method"
            java.lang.String r1 = "NanoHttpd Shutdown"
            java.lang.String r2 = "text/plain"
            r3 = 8192(0x2000, float:1.14794E-41)
            r4 = 0
            byte[] r5 = new byte[r3]     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            r6 = 0
            r10.splitbyte = r6     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            r10.rlen = r6     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            java.io.BufferedInputStream r7 = r10.inputStream     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            r7.mark(r3)     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            java.io.BufferedInputStream r7 = r10.inputStream     // Catch:{ SSLException -> 0x016f, IOException -> 0x015f, SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, ResponseException -> 0x0173 }
            int r7 = r7.read(r5, r6, r3)     // Catch:{ SSLException -> 0x016f, IOException -> 0x015f, SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, ResponseException -> 0x0173 }
            r8 = -1
            if (r7 == r8) goto L_0x014f
        L_0x001e:
            if (r7 <= 0) goto L_0x003f
            int r8 = r10.rlen     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            int r8 = r8 + r7
            r10.rlen = r8     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            int r7 = r10.rlen     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            int r7 = r10.findHeaderEnd(r5, r7)     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            r10.splitbyte = r7     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            int r7 = r10.splitbyte     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            if (r7 <= 0) goto L_0x0032
            goto L_0x003f
        L_0x0032:
            java.io.BufferedInputStream r7 = r10.inputStream     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            int r8 = r10.rlen     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            int r9 = r10.rlen     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            int r9 = 8192 - r9
            int r7 = r7.read(r5, r8, r9)     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            goto L_0x001e
        L_0x003f:
            int r3 = r10.splitbyte     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            int r7 = r10.rlen     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            if (r3 >= r7) goto L_0x0052
            java.io.BufferedInputStream r3 = r10.inputStream     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            r3.reset()     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            java.io.BufferedInputStream r3 = r10.inputStream     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            int r7 = r10.splitbyte     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            long r7 = (long) r7     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            r3.skip(r7)     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
        L_0x0052:
            java.util.HashMap r3 = new java.util.HashMap     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            r3.<init>()     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            r10.parms = r3     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            java.util.Map<java.lang.String, java.lang.String> r3 = r10.headers     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            if (r3 != 0) goto L_0x0065
            java.util.HashMap r3 = new java.util.HashMap     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            r3.<init>()     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            r10.headers = r3     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            goto L_0x006a
        L_0x0065:
            java.util.Map<java.lang.String, java.lang.String> r3 = r10.headers     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            r3.clear()     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
        L_0x006a:
            java.io.BufferedReader r3 = new java.io.BufferedReader     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            java.io.InputStreamReader r7 = new java.io.InputStreamReader     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            java.io.ByteArrayInputStream r8 = new java.io.ByteArrayInputStream     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            int r9 = r10.rlen     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            r8.<init>(r5, r6, r9)     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            r7.<init>(r8)     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            r3.<init>(r7)     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            java.util.HashMap r5 = new java.util.HashMap     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            r5.<init>()     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            java.util.Map<java.lang.String, java.util.List<java.lang.String>> r7 = r10.parms     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            java.util.Map<java.lang.String, java.lang.String> r8 = r10.headers     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            r10.decodeHeader(r3, r5, r7, r8)     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            java.lang.String r3 = r10.remoteIp     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            if (r3 == 0) goto L_0x009d
            java.util.Map<java.lang.String, java.lang.String> r3 = r10.headers     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            java.lang.String r7 = "remote-addr"
            java.lang.String r8 = r10.remoteIp     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            r3.put(r7, r8)     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            java.util.Map<java.lang.String, java.lang.String> r3 = r10.headers     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            java.lang.String r7 = "http-client-ip"
            java.lang.String r8 = r10.remoteIp     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            r3.put(r7, r8)     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
        L_0x009d:
            java.lang.Object r3 = r5.get(r0)     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            java.lang.String r3 = (java.lang.String) r3     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            org.nanohttpd.protocols.http.request.Method r3 = org.nanohttpd.protocols.http.request.Method.lookup(r3)     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            r10.method = r3     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            org.nanohttpd.protocols.http.request.Method r3 = r10.method     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            if (r3 == 0) goto L_0x012b
            java.lang.String r0 = "uri"
            java.lang.Object r0 = r5.get(r0)     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            java.lang.String r0 = (java.lang.String) r0     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            r10.uri = r0     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            org.nanohttpd.protocols.http.content.CookieHandler r0 = new org.nanohttpd.protocols.http.content.CookieHandler     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            java.util.Map<java.lang.String, java.lang.String> r3 = r10.headers     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            r0.<init>(r3)     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            r10.cookies = r0     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            java.util.Map<java.lang.String, java.lang.String> r0 = r10.headers     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            java.lang.String r3 = "connection"
            java.lang.Object r0 = r0.get(r3)     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            java.lang.String r0 = (java.lang.String) r0     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            java.lang.String r3 = "HTTP/1.1"
            java.lang.String r5 = r10.protocolVersion     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            boolean r3 = r3.equals(r5)     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            if (r3 == 0) goto L_0x00e0
            if (r0 == 0) goto L_0x00de
            java.lang.String r3 = "(?i).*close.*"
            boolean r0 = r0.matches(r3)     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            if (r0 != 0) goto L_0x00e0
        L_0x00de:
            r0 = 1
            goto L_0x00e1
        L_0x00e0:
            r0 = 0
        L_0x00e1:
            org.nanohttpd.protocols.http.NanoHTTPD r3 = r10.httpd     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            org.nanohttpd.protocols.http.response.Response r4 = r3.handle(r10)     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            if (r4 == 0) goto L_0x0121
            java.util.Map<java.lang.String, java.lang.String> r3 = r10.headers     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            java.lang.String r5 = "accept-encoding"
            java.lang.Object r3 = r3.get(r5)     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            java.lang.String r3 = (java.lang.String) r3     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            org.nanohttpd.protocols.http.content.CookieHandler r5 = r10.cookies     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            r5.unloadQueue(r4)     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            org.nanohttpd.protocols.http.request.Method r5 = r10.method     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            r4.setRequestMethod(r5)     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            if (r3 == 0) goto L_0x0107
            java.lang.String r5 = "gzip"
            boolean r3 = r3.contains(r5)     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            if (r3 != 0) goto L_0x010a
        L_0x0107:
            r4.setUseGzip(r6)     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
        L_0x010a:
            r4.setKeepAlive(r0)     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            java.io.OutputStream r3 = r10.outputStream     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            r4.send(r3)     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            if (r0 == 0) goto L_0x011b
            boolean r0 = r4.isCloseConnection()     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            if (r0 != 0) goto L_0x011b
            goto L_0x018a
        L_0x011b:
            java.net.SocketException r0 = new java.net.SocketException     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            r0.<init>(r1)     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            throw r0     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
        L_0x0121:
            org.nanohttpd.protocols.http.NanoHTTPD$ResponseException r0 = new org.nanohttpd.protocols.http.NanoHTTPD$ResponseException     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            org.nanohttpd.protocols.http.response.Status r1 = org.nanohttpd.protocols.http.response.Status.INTERNAL_ERROR     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            java.lang.String r3 = "SERVER INTERNAL ERROR: Serve() returned a null response."
            r0.<init>(r1, r3)     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            throw r0     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
        L_0x012b:
            org.nanohttpd.protocols.http.NanoHTTPD$ResponseException r1 = new org.nanohttpd.protocols.http.NanoHTTPD$ResponseException     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            org.nanohttpd.protocols.http.response.Status r3 = org.nanohttpd.protocols.http.response.Status.BAD_REQUEST     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            r6.<init>()     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            java.lang.String r7 = "BAD REQUEST: Syntax error. HTTP verb "
            r6.append(r7)     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            java.lang.Object r0 = r5.get(r0)     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            java.lang.String r0 = (java.lang.String) r0     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            r6.append(r0)     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            java.lang.String r0 = " unhandled."
            r6.append(r0)     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            java.lang.String r0 = r6.toString()     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            r1.<init>(r3, r0)     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            throw r1     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
        L_0x014f:
            java.io.BufferedInputStream r0 = r10.inputStream     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            org.nanohttpd.protocols.http.NanoHTTPD.safeClose(r0)     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            java.io.OutputStream r0 = r10.outputStream     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            org.nanohttpd.protocols.http.NanoHTTPD.safeClose(r0)     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            java.net.SocketException r0 = new java.net.SocketException     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            r0.<init>(r1)     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            throw r0     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
        L_0x015f:
            java.io.BufferedInputStream r0 = r10.inputStream     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            org.nanohttpd.protocols.http.NanoHTTPD.safeClose(r0)     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            java.io.OutputStream r0 = r10.outputStream     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            org.nanohttpd.protocols.http.NanoHTTPD.safeClose(r0)     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            java.net.SocketException r0 = new java.net.SocketException     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            r0.<init>(r1)     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
            throw r0     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
        L_0x016f:
            r0 = move-exception
            throw r0     // Catch:{ SocketException -> 0x01e4, SocketTimeoutException -> 0x01e2, SSLException -> 0x01ba, IOException -> 0x0193, ResponseException -> 0x0173 }
        L_0x0171:
            r0 = move-exception
            goto L_0x01e6
        L_0x0173:
            r0 = move-exception
            org.nanohttpd.protocols.http.response.Status r1 = r0.getStatus()     // Catch:{ all -> 0x0171 }
            java.lang.String r0 = r0.getMessage()     // Catch:{ all -> 0x0171 }
            org.nanohttpd.protocols.http.response.Response r0 = org.nanohttpd.protocols.http.response.Response.newFixedLengthResponse(r1, r2, r0)     // Catch:{ all -> 0x0171 }
            java.io.OutputStream r1 = r10.outputStream     // Catch:{ all -> 0x0171 }
            r0.send(r1)     // Catch:{ all -> 0x0171 }
            java.io.OutputStream r0 = r10.outputStream     // Catch:{ all -> 0x0171 }
            org.nanohttpd.protocols.http.NanoHTTPD.safeClose(r0)     // Catch:{ all -> 0x0171 }
        L_0x018a:
            org.nanohttpd.protocols.http.NanoHTTPD.safeClose(r4)
            org.nanohttpd.protocols.http.tempfiles.ITempFileManager r0 = r10.tempFileManager
            r0.clear()
            goto L_0x01e1
        L_0x0193:
            r0 = move-exception
            org.nanohttpd.protocols.http.response.Status r1 = org.nanohttpd.protocols.http.response.Status.INTERNAL_ERROR     // Catch:{ all -> 0x0171 }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x0171 }
            r3.<init>()     // Catch:{ all -> 0x0171 }
            java.lang.String r5 = "SERVER INTERNAL ERROR: IOException: "
            r3.append(r5)     // Catch:{ all -> 0x0171 }
            java.lang.String r0 = r0.getMessage()     // Catch:{ all -> 0x0171 }
            r3.append(r0)     // Catch:{ all -> 0x0171 }
            java.lang.String r0 = r3.toString()     // Catch:{ all -> 0x0171 }
            org.nanohttpd.protocols.http.response.Response r0 = org.nanohttpd.protocols.http.response.Response.newFixedLengthResponse(r1, r2, r0)     // Catch:{ all -> 0x0171 }
            java.io.OutputStream r1 = r10.outputStream     // Catch:{ all -> 0x0171 }
            r0.send(r1)     // Catch:{ all -> 0x0171 }
            java.io.OutputStream r0 = r10.outputStream     // Catch:{ all -> 0x0171 }
            org.nanohttpd.protocols.http.NanoHTTPD.safeClose(r0)     // Catch:{ all -> 0x0171 }
            goto L_0x018a
        L_0x01ba:
            r0 = move-exception
            org.nanohttpd.protocols.http.response.Status r1 = org.nanohttpd.protocols.http.response.Status.INTERNAL_ERROR     // Catch:{ all -> 0x0171 }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x0171 }
            r3.<init>()     // Catch:{ all -> 0x0171 }
            java.lang.String r5 = "SSL PROTOCOL FAILURE: "
            r3.append(r5)     // Catch:{ all -> 0x0171 }
            java.lang.String r0 = r0.getMessage()     // Catch:{ all -> 0x0171 }
            r3.append(r0)     // Catch:{ all -> 0x0171 }
            java.lang.String r0 = r3.toString()     // Catch:{ all -> 0x0171 }
            org.nanohttpd.protocols.http.response.Response r0 = org.nanohttpd.protocols.http.response.Response.newFixedLengthResponse(r1, r2, r0)     // Catch:{ all -> 0x0171 }
            java.io.OutputStream r1 = r10.outputStream     // Catch:{ all -> 0x0171 }
            r0.send(r1)     // Catch:{ all -> 0x0171 }
            java.io.OutputStream r0 = r10.outputStream     // Catch:{ all -> 0x0171 }
            org.nanohttpd.protocols.http.NanoHTTPD.safeClose(r0)     // Catch:{ all -> 0x0171 }
            goto L_0x018a
        L_0x01e1:
            return
        L_0x01e2:
            r0 = move-exception
            throw r0     // Catch:{ all -> 0x0171 }
        L_0x01e4:
            r0 = move-exception
            throw r0     // Catch:{ all -> 0x0171 }
        L_0x01e6:
            org.nanohttpd.protocols.http.NanoHTTPD.safeClose(r4)
            org.nanohttpd.protocols.http.tempfiles.ITempFileManager r1 = r10.tempFileManager
            r1.clear()
            goto L_0x01f0
        L_0x01ef:
            throw r0
        L_0x01f0:
            goto L_0x01ef
        */
        throw new UnsupportedOperationException("Method not decompiled: org.nanohttpd.protocols.http.HTTPSession.execute():void");
    }

    private int findHeaderEnd(byte[] bArr, int i) {
        int i2 = 0;
        while (true) {
            int i3 = i2 + 1;
            if (i3 >= i) {
                return 0;
            }
            if (bArr[i2] == 13 && bArr[i3] == 10) {
                int i4 = i2 + 3;
                if (i4 < i && bArr[i2 + 2] == 13 && bArr[i4] == 10) {
                    return i2 + 4;
                }
            }
            if (bArr[i2] == 10 && bArr[i3] == 10) {
                return i2 + 2;
            }
            i2 = i3;
        }
    }

    private int[] getBoundaryPositions(ByteBuffer byteBuffer, byte[] bArr) {
        int[] iArr = new int[0];
        if (byteBuffer.remaining() < bArr.length) {
            return iArr;
        }
        byte[] bArr2 = new byte[(bArr.length + 4096)];
        int remaining = byteBuffer.remaining() < bArr2.length ? byteBuffer.remaining() : bArr2.length;
        byteBuffer.get(bArr2, 0, remaining);
        int length = remaining - bArr.length;
        int[] iArr2 = iArr;
        int i = 0;
        while (true) {
            int[] iArr3 = iArr2;
            int i2 = 0;
            while (i2 < length) {
                int[] iArr4 = iArr3;
                int i3 = 0;
                while (i3 < bArr.length && bArr2[i2 + i3] == bArr[i3]) {
                    if (i3 == bArr.length - 1) {
                        int[] iArr5 = new int[(iArr4.length + 1)];
                        System.arraycopy(iArr4, 0, iArr5, 0, iArr4.length);
                        iArr5[iArr4.length] = i + i2;
                        iArr4 = iArr5;
                    }
                    i3++;
                }
                i2++;
                iArr3 = iArr4;
            }
            i += length;
            System.arraycopy(bArr2, bArr2.length - bArr.length, bArr2, 0, bArr.length);
            length = bArr2.length - bArr.length;
            if (byteBuffer.remaining() < length) {
                length = byteBuffer.remaining();
            }
            byteBuffer.get(bArr2, bArr.length, length);
            if (length <= 0) {
                return iArr3;
            }
            iArr2 = iArr3;
        }
    }

    public CookieHandler getCookies() {
        return this.cookies;
    }

    public final Map<String, String> getHeaders() {
        return this.headers;
    }

    public final InputStream getInputStream() {
        return this.inputStream;
    }

    public final Method getMethod() {
        return this.method;
    }

    @Deprecated
    public final Map<String, String> getParms() {
        HashMap hashMap = new HashMap();
        for (String str : this.parms.keySet()) {
            hashMap.put(str, ((List) this.parms.get(str)).get(0));
        }
        return hashMap;
    }

    public final Map<String, List<String>> getParameters() {
        return this.parms;
    }

    public String getQueryParameterString() {
        return this.queryParameterString;
    }

    private RandomAccessFile getTmpBucket() {
        try {
            return new RandomAccessFile(this.tempFileManager.createTempFile(null).getName(), "rw");
        } catch (Exception e) {
            throw new Error(e);
        }
    }

    public final String getUri() {
        return this.uri;
    }

    public long getBodySize() {
        String str = "content-length";
        if (this.headers.containsKey(str)) {
            return Long.parseLong((String) this.headers.get(str));
        }
        int i = this.splitbyte;
        int i2 = this.rlen;
        if (i < i2) {
            return (long) (i2 - i);
        }
        return 0;
    }

    public void parseBody(Map<String, String> map) throws IOException, ResponseException {
        Object obj;
        DataOutput dataOutput;
        ByteArrayOutputStream byteArrayOutputStream;
        RandomAccessFile randomAccessFile;
        ByteBuffer byteBuffer;
        Map<String, String> map2 = map;
        try {
            long bodySize = getBodySize();
            if (bodySize < 1024) {
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                dataOutput = new DataOutputStream(byteArrayOutputStream2);
                byteArrayOutputStream = byteArrayOutputStream2;
                randomAccessFile = 0;
            } else {
                RandomAccessFile tmpBucket = getTmpBucket();
                byteArrayOutputStream = null;
                dataOutput = tmpBucket;
                randomAccessFile = tmpBucket;
            }
            try {
                byte[] bArr = new byte[512];
                while (this.rlen >= 0 && bodySize > 0) {
                    this.rlen = this.inputStream.read(bArr, 0, (int) Math.min(bodySize, 512));
                    bodySize -= (long) this.rlen;
                    if (this.rlen > 0) {
                        dataOutput.write(bArr, 0, this.rlen);
                    }
                }
                if (byteArrayOutputStream != null) {
                    byteBuffer = ByteBuffer.wrap(byteArrayOutputStream.toByteArray(), 0, byteArrayOutputStream.size());
                } else {
                    byteBuffer = randomAccessFile.getChannel().map(MapMode.READ_ONLY, 0, randomAccessFile.length());
                    randomAccessFile.seek(0);
                }
                if (Method.POST.equals(this.method)) {
                    ContentType contentType = new ContentType((String) this.headers.get("content-type"));
                    if (!contentType.isMultipart()) {
                        byte[] bArr2 = new byte[byteBuffer.remaining()];
                        byteBuffer.get(bArr2);
                        String trim = new String(bArr2, contentType.getEncoding()).trim();
                        if ("application/x-www-form-urlencoded".equalsIgnoreCase(contentType.getContentType())) {
                            decodeParms(trim, this.parms);
                        } else if (trim.length() != 0) {
                            map2.put(POST_DATA, trim);
                        }
                    } else if (contentType.getBoundary() != null) {
                        decodeMultipartFormData(contentType, byteBuffer, this.parms, map2);
                    } else {
                        throw new ResponseException(Status.BAD_REQUEST, "BAD REQUEST: Content type is multipart/form-data but boundary missing. Usage: GET /example/file.html");
                    }
                } else if (Method.PUT.equals(this.method)) {
                    map2.put("content", saveTmpFile(byteBuffer, 0, byteBuffer.limit(), null));
                }
                NanoHTTPD.safeClose(randomAccessFile);
            } catch (Throwable th) {
                th = th;
                obj = randomAccessFile;
                NanoHTTPD.safeClose(obj);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            obj = 0;
            NanoHTTPD.safeClose(obj);
            throw th;
        }
    }

    private String saveTmpFile(ByteBuffer byteBuffer, int i, int i2, String str) {
        if (i2 <= 0) {
            return "";
        }
        FileOutputStream fileOutputStream = null;
        try {
            ITempFile createTempFile = this.tempFileManager.createTempFile(str);
            ByteBuffer duplicate = byteBuffer.duplicate();
            FileOutputStream fileOutputStream2 = new FileOutputStream(createTempFile.getName());
            try {
                FileChannel channel = fileOutputStream2.getChannel();
                duplicate.position(i).limit(i + i2);
                channel.write(duplicate.slice());
                String name = createTempFile.getName();
                NanoHTTPD.safeClose(fileOutputStream2);
                return name;
            } catch (Exception e) {
                e = e;
                fileOutputStream = fileOutputStream2;
                try {
                    throw new Error(e);
                } catch (Throwable th) {
                    th = th;
                    NanoHTTPD.safeClose(fileOutputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = fileOutputStream2;
                NanoHTTPD.safeClose(fileOutputStream);
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            throw new Error(e);
        }
    }

    public String getRemoteIpAddress() {
        return this.remoteIp;
    }

    public String getRemoteHostName() {
        return this.remoteHostname;
    }
}
