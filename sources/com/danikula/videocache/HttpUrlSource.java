package com.danikula.videocache;

import android.text.TextUtils;
import com.danikula.videocache.headers.EmptyHeadersInjector;
import com.danikula.videocache.headers.HeaderInjector;
import com.danikula.videocache.sourcestorage.SourceInfoStorage;
import com.danikula.videocache.sourcestorage.SourceInfoStorageFactory;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;
import java.util.Map.Entry;
import org.eclipse.jetty.http.HttpHeaders;
import org.fourthline.cling.model.types.BytesRange;

public class HttpUrlSource implements Source {
    private static final int MAX_REDIRECTS = 5;
    private HttpURLConnection connection;
    private final HeaderInjector headerInjector;
    private InputStream inputStream;
    private SourceInfo sourceInfo;
    private final SourceInfoStorage sourceInfoStorage;

    public HttpUrlSource(String str) {
        this(str, SourceInfoStorageFactory.newEmptySourceInfoStorage());
    }

    public HttpUrlSource(String str, SourceInfoStorage sourceInfoStorage2) {
        this(str, sourceInfoStorage2, new EmptyHeadersInjector());
    }

    public HttpUrlSource(String str, SourceInfoStorage sourceInfoStorage2, HeaderInjector headerInjector2) {
        this.sourceInfoStorage = (SourceInfoStorage) Preconditions.checkNotNull(sourceInfoStorage2);
        this.headerInjector = (HeaderInjector) Preconditions.checkNotNull(headerInjector2);
        SourceInfo sourceInfo2 = sourceInfoStorage2.get(str);
        if (sourceInfo2 == null) {
            sourceInfo2 = new SourceInfo(str, -2147483648L, ProxyCacheUtils.getSupposablyMime(str));
        }
        this.sourceInfo = sourceInfo2;
    }

    public HttpUrlSource(HttpUrlSource httpUrlSource) {
        this.sourceInfo = httpUrlSource.sourceInfo;
        this.sourceInfoStorage = httpUrlSource.sourceInfoStorage;
        this.headerInjector = httpUrlSource.headerInjector;
    }

    public synchronized long length() throws ProxyCacheException {
        if (this.sourceInfo.length == -2147483648L) {
            fetchContentInfo();
        }
        return this.sourceInfo.length;
    }

    public void open(long j) throws ProxyCacheException {
        try {
            this.connection = openConnection(j, -1);
            String contentType = this.connection.getContentType();
            this.inputStream = new BufferedInputStream(this.connection.getInputStream(), 8192);
            this.sourceInfo = new SourceInfo(this.sourceInfo.url, readSourceAvailableBytes(this.connection, j, this.connection.getResponseCode()), contentType);
            this.sourceInfoStorage.put(this.sourceInfo.url, this.sourceInfo);
        } catch (IOException e) {
            StringBuilder sb = new StringBuilder();
            sb.append("Error opening connection for ");
            sb.append(this.sourceInfo.url);
            sb.append(" with offset ");
            sb.append(j);
            throw new ProxyCacheException(sb.toString(), e);
        }
    }

    private long readSourceAvailableBytes(HttpURLConnection httpURLConnection, long j, int i) throws IOException {
        long contentLength = getContentLength(httpURLConnection);
        if (i == 200) {
            return contentLength;
        }
        if (i == 206) {
            return contentLength + j;
        }
        return this.sourceInfo.length;
    }

    private long getContentLength(HttpURLConnection httpURLConnection) {
        String headerField = httpURLConnection.getHeaderField("Content-Length");
        if (headerField == null) {
            return -1;
        }
        return Long.parseLong(headerField);
    }

    public void close() throws ProxyCacheException {
        HttpURLConnection httpURLConnection = this.connection;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (IllegalArgumentException | NullPointerException e) {
                throw new RuntimeException("Wait... but why? WTF!? Really shouldn't happen any more after fixing https://github.com/danikula/AndroidVideoCache/issues/43. If you read it on your device log, please, notify me danikula@gmail.com or create issue here https://github.com/danikula/AndroidVideoCache/issues.", e);
            } catch (ArrayIndexOutOfBoundsException e2) {
                HttpProxyCacheDebuger.printfError("Error closing connection correctly. Should happen only on Android L. If anybody know how to fix it, please visit https://github.com/danikula/AndroidVideoCache/issues/88. Until good solution is not know, just ignore this issue :(", (Exception) e2);
            }
        }
    }

    public int read(byte[] bArr) throws ProxyCacheException {
        InputStream inputStream2 = this.inputStream;
        String str = "Error reading data from ";
        if (inputStream2 != null) {
            try {
                return inputStream2.read(bArr, 0, bArr.length);
            } catch (InterruptedIOException e) {
                StringBuilder sb = new StringBuilder();
                sb.append("Reading source ");
                sb.append(this.sourceInfo.url);
                sb.append(" is interrupted");
                throw new InterruptedProxyCacheException(sb.toString(), e);
            } catch (IOException e2) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append(this.sourceInfo.url);
                throw new ProxyCacheException(sb2.toString(), e2);
            }
        } else {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(str);
            sb3.append(this.sourceInfo.url);
            sb3.append(": connection is absent!");
            throw new ProxyCacheException(sb3.toString());
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:0x0060  */
    /* JADX WARNING: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void fetchContentInfo() throws com.danikula.videocache.ProxyCacheException {
        /*
            r7 = this;
            r0 = 0
            r2 = 10000(0x2710, float:1.4013E-41)
            r3 = 0
            java.net.HttpURLConnection r0 = r7.openConnection(r0, r2)     // Catch:{ IOException -> 0x0038, all -> 0x0035 }
            long r1 = r7.getContentLength(r0)     // Catch:{ IOException -> 0x0033 }
            java.lang.String r4 = r0.getContentType()     // Catch:{ IOException -> 0x0033 }
            java.io.InputStream r3 = r0.getInputStream()     // Catch:{ IOException -> 0x0033 }
            com.danikula.videocache.SourceInfo r5 = new com.danikula.videocache.SourceInfo     // Catch:{ IOException -> 0x0033 }
            com.danikula.videocache.SourceInfo r6 = r7.sourceInfo     // Catch:{ IOException -> 0x0033 }
            java.lang.String r6 = r6.url     // Catch:{ IOException -> 0x0033 }
            r5.<init>(r6, r1, r4)     // Catch:{ IOException -> 0x0033 }
            r7.sourceInfo = r5     // Catch:{ IOException -> 0x0033 }
            com.danikula.videocache.sourcestorage.SourceInfoStorage r1 = r7.sourceInfoStorage     // Catch:{ IOException -> 0x0033 }
            com.danikula.videocache.SourceInfo r2 = r7.sourceInfo     // Catch:{ IOException -> 0x0033 }
            java.lang.String r2 = r2.url     // Catch:{ IOException -> 0x0033 }
            com.danikula.videocache.SourceInfo r4 = r7.sourceInfo     // Catch:{ IOException -> 0x0033 }
            r1.put(r2, r4)     // Catch:{ IOException -> 0x0033 }
            com.danikula.videocache.ProxyCacheUtils.close(r3)
            if (r0 == 0) goto L_0x005a
            goto L_0x0057
        L_0x0031:
            r1 = move-exception
            goto L_0x005b
        L_0x0033:
            r1 = move-exception
            goto L_0x003a
        L_0x0035:
            r1 = move-exception
            r0 = r3
            goto L_0x005b
        L_0x0038:
            r1 = move-exception
            r0 = r3
        L_0x003a:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ all -> 0x0031 }
            r2.<init>()     // Catch:{ all -> 0x0031 }
            java.lang.String r4 = "Error fetching info from "
            r2.append(r4)     // Catch:{ all -> 0x0031 }
            com.danikula.videocache.SourceInfo r4 = r7.sourceInfo     // Catch:{ all -> 0x0031 }
            java.lang.String r4 = r4.url     // Catch:{ all -> 0x0031 }
            r2.append(r4)     // Catch:{ all -> 0x0031 }
            java.lang.String r2 = r2.toString()     // Catch:{ all -> 0x0031 }
            com.danikula.videocache.HttpProxyCacheDebuger.printfError(r2, r1)     // Catch:{ all -> 0x0031 }
            com.danikula.videocache.ProxyCacheUtils.close(r3)
            if (r0 == 0) goto L_0x005a
        L_0x0057:
            r0.disconnect()
        L_0x005a:
            return
        L_0x005b:
            com.danikula.videocache.ProxyCacheUtils.close(r3)
            if (r0 == 0) goto L_0x0063
            r0.disconnect()
        L_0x0063:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.danikula.videocache.HttpUrlSource.fetchContentInfo():void");
    }

    private HttpURLConnection openConnection(long j, int i) throws IOException, ProxyCacheException {
        HttpURLConnection httpURLConnection;
        boolean z;
        String str = this.sourceInfo.url;
        int i2 = 0;
        do {
            httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            injectCustomHeaders(httpURLConnection, str);
            if (j > 0) {
                StringBuilder sb = new StringBuilder();
                sb.append(BytesRange.PREFIX);
                sb.append(j);
                sb.append("-");
                httpURLConnection.setRequestProperty(HttpHeaders.RANGE, sb.toString());
            }
            if (i > 0) {
                httpURLConnection.setConnectTimeout(i);
                httpURLConnection.setReadTimeout(i);
            }
            int responseCode = httpURLConnection.getResponseCode();
            z = responseCode == 301 || responseCode == 302 || responseCode == 303;
            if (z) {
                str = httpURLConnection.getHeaderField("Location");
                i2++;
                httpURLConnection.disconnect();
            }
            if (i2 > 5) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Too many redirects: ");
                sb2.append(i2);
                throw new ProxyCacheException(sb2.toString());
            }
        } while (z);
        return httpURLConnection;
    }

    private void injectCustomHeaders(HttpURLConnection httpURLConnection, String str) {
        Map addHeaders = this.headerInjector.addHeaders(str);
        if (addHeaders != null) {
            StringBuilder sb = new StringBuilder();
            sb.append("****** injectCustomHeaders ****** :");
            sb.append(addHeaders.size());
            HttpProxyCacheDebuger.printfError(sb.toString());
            for (Entry entry : addHeaders.entrySet()) {
                httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
            }
        }
    }

    public synchronized String getMime() throws ProxyCacheException {
        if (TextUtils.isEmpty(this.sourceInfo.mime)) {
            fetchContentInfo();
        }
        return this.sourceInfo.mime;
    }

    public String getUrl() {
        return this.sourceInfo.url;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("HttpUrlSource{sourceInfo='");
        sb.append(this.sourceInfo);
        sb.append("}");
        return sb.toString();
    }
}
