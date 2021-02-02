package org.nanohttpd.protocols.http.response;

import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.TimeZone;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.zip.GZIPOutputStream;
import org.eclipse.jetty.http.HttpHeaderValues;
import org.eclipse.jetty.http.HttpHeaders;
import org.nanohttpd.protocols.http.NanoHTTPD;
import org.nanohttpd.protocols.http.content.ContentType;
import org.nanohttpd.protocols.http.request.Method;

public class Response implements Closeable {
    private boolean chunkedTransfer;
    private long contentLength;
    private List<String> cookieHeaders;
    private InputStream data;
    private GzipUsage gzipUsage = GzipUsage.DEFAULT;
    private final Map<String, String> header = new HashMap<String, String>() {
        public String put(String str, String str2) {
            Response.this.lowerCaseHeader.put(str == null ? str : str.toLowerCase(), str2);
            return (String) super.put(str, str2);
        }
    };
    private boolean keepAlive;
    /* access modifiers changed from: private */
    public final Map<String, String> lowerCaseHeader = new HashMap();
    private String mimeType;
    private Method requestMethod;
    private IStatus status;

    private enum GzipUsage {
        DEFAULT,
        ALWAYS,
        NEVER
    }

    protected Response(IStatus iStatus, String str, InputStream inputStream, long j) {
        this.status = iStatus;
        this.mimeType = str;
        boolean z = false;
        if (inputStream == null) {
            this.data = new ByteArrayInputStream(new byte[0]);
            this.contentLength = 0;
        } else {
            this.data = inputStream;
            this.contentLength = j;
        }
        if (this.contentLength < 0) {
            z = true;
        }
        this.chunkedTransfer = z;
        this.keepAlive = true;
        this.cookieHeaders = new ArrayList(10);
    }

    public void close() throws IOException {
        InputStream inputStream = this.data;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    public void addCookieHeader(String str) {
        this.cookieHeaders.add(str);
    }

    public List<String> getCookieHeaders() {
        return this.cookieHeaders;
    }

    public void addHeader(String str, String str2) {
        this.header.put(str, str2);
    }

    public void closeConnection(boolean z) {
        String str = "connection";
        if (z) {
            this.header.put(str, "close");
        } else {
            this.header.remove(str);
        }
    }

    public boolean isCloseConnection() {
        return "close".equals(getHeader("connection"));
    }

    public InputStream getData() {
        return this.data;
    }

    public String getHeader(String str) {
        return (String) this.lowerCaseHeader.get(str.toLowerCase());
    }

    public String getMimeType() {
        return this.mimeType;
    }

    public Method getRequestMethod() {
        return this.requestMethod;
    }

    public IStatus getStatus() {
        return this.status;
    }

    public void setKeepAlive(boolean z) {
        this.keepAlive = z;
    }

    public void send(OutputStream outputStream) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("E, d MMM yyyy HH:mm:ss 'GMT'", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        try {
            if (this.status != null) {
                PrintWriter printWriter = new PrintWriter(new BufferedWriter(new OutputStreamWriter(outputStream, new ContentType(this.mimeType).getEncoding())), false);
                printWriter.append("HTTP/1.1 ").append(this.status.getDescription()).append(" \r\n");
                if (this.mimeType != null) {
                    printHeader(printWriter, "Content-Type", this.mimeType);
                }
                if (getHeader("date") == null) {
                    printHeader(printWriter, "Date", simpleDateFormat.format(new Date()));
                }
                for (Entry entry : this.header.entrySet()) {
                    printHeader(printWriter, (String) entry.getKey(), (String) entry.getValue());
                }
                for (String printHeader : this.cookieHeaders) {
                    printHeader(printWriter, HttpHeaders.SET_COOKIE, printHeader);
                }
                if (getHeader("connection") == null) {
                    printHeader(printWriter, HttpHeaders.CONNECTION, this.keepAlive ? HttpHeaderValues.KEEP_ALIVE : "close");
                }
                if (getHeader("content-length") != null) {
                    setUseGzip(false);
                }
                if (useGzipWhenAccepted()) {
                    printHeader(printWriter, "Content-Encoding", "gzip");
                    setChunkedTransfer(true);
                }
                long j = this.data != null ? this.contentLength : 0;
                if (this.requestMethod != Method.HEAD && this.chunkedTransfer) {
                    printHeader(printWriter, HttpHeaders.TRANSFER_ENCODING, HttpHeaderValues.CHUNKED);
                } else if (!useGzipWhenAccepted()) {
                    j = sendContentLengthHeaderIfNotAlreadyPresent(printWriter, j);
                }
                printWriter.append("\r\n");
                printWriter.flush();
                sendBodyWithCorrectTransferAndEncoding(outputStream, j);
                outputStream.flush();
                NanoHTTPD.safeClose(this.data);
                return;
            }
            throw new Error("sendResponse(): Status can't be null.");
        } catch (IOException e) {
            NanoHTTPD.LOG.log(Level.SEVERE, "Could not send response to the client", e);
        }
    }

    /* access modifiers changed from: protected */
    public void printHeader(PrintWriter printWriter, String str, String str2) {
        printWriter.append(str).append(": ").append(str2).append("\r\n");
    }

    /* access modifiers changed from: protected */
    public long sendContentLengthHeaderIfNotAlreadyPresent(PrintWriter printWriter, long j) {
        String header2 = getHeader("content-length");
        if (header2 != null) {
            try {
                return Long.parseLong(header2);
            } catch (NumberFormatException unused) {
                Logger logger = NanoHTTPD.LOG;
                StringBuilder sb = new StringBuilder();
                sb.append("content-length was no number ");
                sb.append(header2);
                logger.severe(sb.toString());
                return j;
            }
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Content-Length: ");
            sb2.append(j);
            sb2.append("\r\n");
            printWriter.print(sb2.toString());
            return j;
        }
    }

    private void sendBodyWithCorrectTransferAndEncoding(OutputStream outputStream, long j) throws IOException {
        if (this.requestMethod == Method.HEAD || !this.chunkedTransfer) {
            sendBodyWithCorrectEncoding(outputStream, j);
            return;
        }
        ChunkedOutputStream chunkedOutputStream = new ChunkedOutputStream(outputStream);
        sendBodyWithCorrectEncoding(chunkedOutputStream, -1);
        chunkedOutputStream.finish();
    }

    private void sendBodyWithCorrectEncoding(OutputStream outputStream, long j) throws IOException {
        if (useGzipWhenAccepted()) {
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
            sendBody(gZIPOutputStream, -1);
            gZIPOutputStream.finish();
            return;
        }
        sendBody(outputStream, j);
    }

    private void sendBody(OutputStream outputStream, long j) throws IOException {
        long j2;
        byte[] bArr = new byte[((int) 16384)];
        boolean z = j == -1;
        while (true) {
            if (j > 0 || z) {
                if (z) {
                    j2 = 16384;
                } else {
                    j2 = Math.min(j, 16384);
                }
                int read = this.data.read(bArr, 0, (int) j2);
                if (read > 0) {
                    try {
                        outputStream.write(bArr, 0, read);
                    } catch (Exception unused) {
                        InputStream inputStream = this.data;
                        if (inputStream != null) {
                            inputStream.close();
                        }
                    }
                    if (!z) {
                        j -= (long) read;
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    public void setChunkedTransfer(boolean z) {
        this.chunkedTransfer = z;
    }

    public void setData(InputStream inputStream) {
        this.data = inputStream;
    }

    public void setMimeType(String str) {
        this.mimeType = str;
    }

    public void setRequestMethod(Method method) {
        this.requestMethod = method;
    }

    public void setStatus(IStatus iStatus) {
        this.status = iStatus;
    }

    public static Response newChunkedResponse(IStatus iStatus, String str, InputStream inputStream) {
        Response response = new Response(iStatus, str, inputStream, -1);
        return response;
    }

    public static Response newFixedLengthResponse(IStatus iStatus, String str, byte[] bArr) {
        return newFixedLengthResponse(iStatus, str, new ByteArrayInputStream(bArr), (long) bArr.length);
    }

    public static Response newFixedLengthResponse(IStatus iStatus, String str, InputStream inputStream, long j) {
        Response response = new Response(iStatus, str, inputStream, j);
        return response;
    }

    public static Response newFixedLengthResponse(IStatus iStatus, String str, String str2) {
        byte[] bArr;
        ContentType contentType = new ContentType(str);
        if (str2 == null) {
            return newFixedLengthResponse(iStatus, str, new ByteArrayInputStream(new byte[0]), 0);
        }
        try {
            if (!Charset.forName(contentType.getEncoding()).newEncoder().canEncode(str2)) {
                contentType = contentType.tryUTF8();
            }
            bArr = str2.getBytes(contentType.getEncoding());
        } catch (UnsupportedEncodingException e) {
            NanoHTTPD.LOG.log(Level.SEVERE, "encoding problem, responding nothing", e);
            bArr = new byte[0];
        }
        return newFixedLengthResponse(iStatus, contentType.getContentTypeHeader(), new ByteArrayInputStream(bArr), (long) bArr.length);
    }

    public static Response newFixedLengthResponse(String str) {
        return newFixedLengthResponse((IStatus) Status.OK, "text/html", str);
    }

    public Response setUseGzip(boolean z) {
        this.gzipUsage = z ? GzipUsage.ALWAYS : GzipUsage.NEVER;
        return this;
    }

    public boolean useGzipWhenAccepted() {
        boolean z = true;
        if (this.gzipUsage == GzipUsage.DEFAULT) {
            if (getMimeType() == null || (!getMimeType().toLowerCase().contains("text/") && !getMimeType().toLowerCase().contains("/json"))) {
                z = false;
            }
            return z;
        }
        if (this.gzipUsage != GzipUsage.ALWAYS) {
            z = false;
        }
        return z;
    }
}
