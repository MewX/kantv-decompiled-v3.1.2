package com.koushikdutta.async.http.cache;

import android.net.Uri;
import android.util.Base64;
import com.koushikdutta.async.AsyncSSLSocket;
import com.koushikdutta.async.AsyncServer;
import com.koushikdutta.async.AsyncSocket;
import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.FilteredDataEmitter;
import com.koushikdutta.async.Util;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.WritableCallback;
import com.koushikdutta.async.future.Cancellable;
import com.koushikdutta.async.future.SimpleCancellable;
import com.koushikdutta.async.http.AsyncHttpClient;
import com.koushikdutta.async.http.AsyncHttpClientMiddleware;
import com.koushikdutta.async.http.AsyncHttpClientMiddleware.GetSocketData;
import com.koushikdutta.async.http.AsyncHttpClientMiddleware.OnBodyDataOnRequestSentData;
import com.koushikdutta.async.http.AsyncHttpClientMiddleware.OnResponseCompleteDataOnRequestSentData;
import com.koushikdutta.async.http.AsyncHttpRequest;
import com.koushikdutta.async.http.Headers;
import com.koushikdutta.async.http.SimpleMiddleware;
import com.koushikdutta.async.util.Allocator;
import com.koushikdutta.async.util.Charsets;
import com.koushikdutta.async.util.FileCache;
import com.koushikdutta.async.util.StreamUtility;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.net.CacheResponse;
import java.nio.ByteBuffer;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import javax.net.ssl.SSLEngine;
import org.eclipse.jetty.http.HttpHeaders;

public class ResponseCacheMiddleware extends SimpleMiddleware {
    public static final String CACHE = "cache";
    public static final String CONDITIONAL_CACHE = "conditional-cache";
    public static final int ENTRY_BODY = 1;
    public static final int ENTRY_COUNT = 2;
    public static final int ENTRY_METADATA = 0;
    private static final String LOGTAG = "AsyncHttpCache";
    public static final String SERVED_FROM = "X-Served-From";
    /* access modifiers changed from: private */
    public FileCache cache;
    private int cacheHitCount;
    private int cacheStoreCount;
    private boolean caching = true;
    private int conditionalCacheHitCount;
    private int networkCount;
    /* access modifiers changed from: private */
    public AsyncServer server;
    /* access modifiers changed from: private */
    public int writeAbortCount;
    /* access modifiers changed from: private */
    public int writeSuccessCount;

    private static class BodyCacher extends FilteredDataEmitter {
        ByteBufferList cached;
        EntryEditor editor;

        private BodyCacher() {
        }

        /* access modifiers changed from: protected */
        public void report(Exception exc) {
            super.report(exc);
            if (exc != null) {
                abort();
            }
        }

        /* JADX WARNING: Missing exception handler attribute for start block: B:25:0x0047 */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void onDataAvailable(com.koushikdutta.async.DataEmitter r4, com.koushikdutta.async.ByteBufferList r5) {
            /*
                r3 = this;
                com.koushikdutta.async.ByteBufferList r0 = r3.cached
                if (r0 == 0) goto L_0x0013
                super.onDataAvailable(r4, r0)
                com.koushikdutta.async.ByteBufferList r0 = r3.cached
                int r0 = r0.remaining()
                if (r0 <= 0) goto L_0x0010
                return
            L_0x0010:
                r0 = 0
                r3.cached = r0
            L_0x0013:
                com.koushikdutta.async.ByteBufferList r0 = new com.koushikdutta.async.ByteBufferList
                r0.<init>()
                com.koushikdutta.async.http.cache.ResponseCacheMiddleware$EntryEditor r1 = r3.editor     // Catch:{ Exception -> 0x0047 }
                if (r1 == 0) goto L_0x003e
                com.koushikdutta.async.http.cache.ResponseCacheMiddleware$EntryEditor r1 = r3.editor     // Catch:{ Exception -> 0x0047 }
                r2 = 1
                java.io.FileOutputStream r1 = r1.newOutputStream(r2)     // Catch:{ Exception -> 0x0047 }
                if (r1 == 0) goto L_0x003b
            L_0x0025:
                boolean r2 = r5.isEmpty()     // Catch:{ Exception -> 0x0047 }
                if (r2 != 0) goto L_0x003e
                java.nio.ByteBuffer r2 = r5.remove()     // Catch:{ Exception -> 0x0047 }
                com.koushikdutta.async.ByteBufferList.writeOutputStream(r1, r2)     // Catch:{ all -> 0x0036 }
                r0.add(r2)     // Catch:{ Exception -> 0x0047 }
                goto L_0x0025
            L_0x0036:
                r1 = move-exception
                r0.add(r2)     // Catch:{ Exception -> 0x0047 }
                throw r1     // Catch:{ Exception -> 0x0047 }
            L_0x003b:
                r3.abort()     // Catch:{ Exception -> 0x0047 }
            L_0x003e:
                r5.get(r0)
                r0.get(r5)
                goto L_0x004b
            L_0x0045:
                r4 = move-exception
                goto L_0x0065
            L_0x0047:
                r3.abort()     // Catch:{ all -> 0x0045 }
                goto L_0x003e
            L_0x004b:
                super.onDataAvailable(r4, r5)
                com.koushikdutta.async.http.cache.ResponseCacheMiddleware$EntryEditor r4 = r3.editor
                if (r4 == 0) goto L_0x0064
                int r4 = r5.remaining()
                if (r4 <= 0) goto L_0x0064
                com.koushikdutta.async.ByteBufferList r4 = new com.koushikdutta.async.ByteBufferList
                r4.<init>()
                r3.cached = r4
                com.koushikdutta.async.ByteBufferList r4 = r3.cached
                r5.get(r4)
            L_0x0064:
                return
            L_0x0065:
                r5.get(r0)
                r0.get(r5)
                goto L_0x006d
            L_0x006c:
                throw r4
            L_0x006d:
                goto L_0x006c
            */
            throw new UnsupportedOperationException("Method not decompiled: com.koushikdutta.async.http.cache.ResponseCacheMiddleware.BodyCacher.onDataAvailable(com.koushikdutta.async.DataEmitter, com.koushikdutta.async.ByteBufferList):void");
        }

        public void close() {
            abort();
            super.close();
        }

        public void abort() {
            EntryEditor entryEditor = this.editor;
            if (entryEditor != null) {
                entryEditor.abort();
                this.editor = null;
            }
        }

        public void commit() {
            EntryEditor entryEditor = this.editor;
            if (entryEditor != null) {
                entryEditor.commit();
                this.editor = null;
            }
        }
    }

    public static class CacheData {
        ResponseHeaders cachedResponseHeaders;
        EntryCacheResponse candidate;
        long contentLength;
        FileInputStream[] snapshot;
    }

    private static class CachedBodyEmitter extends FilteredDataEmitter {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private Allocator allocator = new Allocator();
        boolean allowEnd;
        EntryCacheResponse cacheResponse;
        private boolean paused;
        ByteBufferList pending = new ByteBufferList();
        Runnable sendCachedDataRunnable = new Runnable() {
            public void run() {
                CachedBodyEmitter.this.sendCachedDataOnNetworkThread();
            }
        };

        static {
            Class<ResponseCacheMiddleware> cls = ResponseCacheMiddleware.class;
        }

        public CachedBodyEmitter(EntryCacheResponse entryCacheResponse, long j) {
            this.cacheResponse = entryCacheResponse;
            this.allocator.setCurrentAlloc((int) j);
        }

        /* access modifiers changed from: 0000 */
        public void sendCachedDataOnNetworkThread() {
            if (this.pending.remaining() > 0) {
                super.onDataAvailable(this, this.pending);
                if (this.pending.remaining() > 0) {
                    return;
                }
            }
            try {
                ByteBuffer allocate = this.allocator.allocate();
                int read = this.cacheResponse.getBody().read(allocate.array(), allocate.arrayOffset(), allocate.capacity());
                if (read == -1) {
                    ByteBufferList.reclaim(allocate);
                    this.allowEnd = true;
                    report(null);
                    return;
                }
                this.allocator.track((long) read);
                allocate.limit(read);
                this.pending.add(allocate);
                super.onDataAvailable(this, this.pending);
                if (this.pending.remaining() <= 0) {
                    getServer().postDelayed(this.sendCachedDataRunnable, 10);
                }
            } catch (IOException e) {
                this.allowEnd = true;
                report(e);
            }
        }

        /* access modifiers changed from: 0000 */
        public void sendCachedData() {
            getServer().post(this.sendCachedDataRunnable);
        }

        public void resume() {
            this.paused = false;
            sendCachedData();
        }

        public boolean isPaused() {
            return this.paused;
        }

        public void close() {
            if (getServer().getAffinity() != Thread.currentThread()) {
                getServer().post(new Runnable() {
                    public void run() {
                        CachedBodyEmitter.this.close();
                    }
                });
                return;
            }
            this.pending.recycle();
            StreamUtility.closeQuietly(this.cacheResponse.getBody());
            super.close();
        }

        /* access modifiers changed from: protected */
        public void report(Exception exc) {
            if (this.allowEnd) {
                StreamUtility.closeQuietly(this.cacheResponse.getBody());
                super.report(exc);
            }
        }
    }

    private class CachedSSLSocket extends CachedSocket implements AsyncSSLSocket {
        public X509Certificate[] getPeerCertificates() {
            return null;
        }

        public SSLEngine getSSLEngine() {
            return null;
        }

        public CachedSSLSocket(EntryCacheResponse entryCacheResponse, long j) {
            super(entryCacheResponse, j);
        }
    }

    private class CachedSocket extends CachedBodyEmitter implements AsyncSocket {
        boolean closed;
        CompletedCallback closedCallback;
        boolean open;

        public void end() {
        }

        public WritableCallback getWriteableCallback() {
            return null;
        }

        public void setWriteableCallback(WritableCallback writableCallback) {
        }

        public CachedSocket(EntryCacheResponse entryCacheResponse, long j) {
            super(entryCacheResponse, j);
            this.allowEnd = true;
        }

        /* access modifiers changed from: protected */
        public void report(Exception exc) {
            super.report(exc);
            if (!this.closed) {
                this.closed = true;
                CompletedCallback completedCallback = this.closedCallback;
                if (completedCallback != null) {
                    completedCallback.onCompleted(exc);
                }
            }
        }

        public void write(ByteBufferList byteBufferList) {
            byteBufferList.recycle();
        }

        public boolean isOpen() {
            return this.open;
        }

        public void close() {
            this.open = false;
        }

        public CompletedCallback getClosedCallback() {
            return this.closedCallback;
        }

        public void setClosedCallback(CompletedCallback completedCallback) {
            this.closedCallback = completedCallback;
        }

        public AsyncServer getServer() {
            return ResponseCacheMiddleware.this.server;
        }
    }

    private static final class Entry {
        private final String cipherSuite;
        private final Certificate[] localCertificates;
        private final Certificate[] peerCertificates;
        private final String requestMethod;
        /* access modifiers changed from: private */
        public final RawHeaders responseHeaders;
        private final String uri;
        private final RawHeaders varyHeaders;

        public Entry(InputStream inputStream) throws IOException {
            StrictLineReader strictLineReader;
            Throwable th;
            try {
                strictLineReader = new StrictLineReader(inputStream, Charsets.US_ASCII);
                try {
                    this.uri = strictLineReader.readLine();
                    this.requestMethod = strictLineReader.readLine();
                    this.varyHeaders = new RawHeaders();
                    int readInt = strictLineReader.readInt();
                    for (int i = 0; i < readInt; i++) {
                        this.varyHeaders.addLine(strictLineReader.readLine());
                    }
                    this.responseHeaders = new RawHeaders();
                    this.responseHeaders.setStatusLine(strictLineReader.readLine());
                    int readInt2 = strictLineReader.readInt();
                    for (int i2 = 0; i2 < readInt2; i2++) {
                        this.responseHeaders.addLine(strictLineReader.readLine());
                    }
                    this.cipherSuite = null;
                    this.peerCertificates = null;
                    this.localCertificates = null;
                    StreamUtility.closeQuietly(strictLineReader, inputStream);
                } catch (Throwable th2) {
                    th = th2;
                    StreamUtility.closeQuietly(strictLineReader, inputStream);
                    throw th;
                }
            } catch (Throwable th3) {
                Throwable th4 = th3;
                strictLineReader = null;
                th = th4;
                StreamUtility.closeQuietly(strictLineReader, inputStream);
                throw th;
            }
        }

        public Entry(Uri uri2, RawHeaders rawHeaders, AsyncHttpRequest asyncHttpRequest, RawHeaders rawHeaders2) {
            this.uri = uri2.toString();
            this.varyHeaders = rawHeaders;
            this.requestMethod = asyncHttpRequest.getMethod();
            this.responseHeaders = rawHeaders2;
            this.cipherSuite = null;
            this.peerCertificates = null;
            this.localCertificates = null;
        }

        public void writeTo(EntryEditor entryEditor) throws IOException {
            String str;
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(entryEditor.newOutputStream(0), Charsets.UTF_8));
            StringBuilder sb = new StringBuilder();
            sb.append(this.uri);
            sb.append(10);
            bufferedWriter.write(sb.toString());
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.requestMethod);
            sb2.append(10);
            bufferedWriter.write(sb2.toString());
            StringBuilder sb3 = new StringBuilder();
            sb3.append(Integer.toString(this.varyHeaders.length()));
            sb3.append(10);
            bufferedWriter.write(sb3.toString());
            int i = 0;
            while (true) {
                str = ": ";
                if (i >= this.varyHeaders.length()) {
                    break;
                }
                StringBuilder sb4 = new StringBuilder();
                sb4.append(this.varyHeaders.getFieldName(i));
                sb4.append(str);
                sb4.append(this.varyHeaders.getValue(i));
                sb4.append(10);
                bufferedWriter.write(sb4.toString());
                i++;
            }
            StringBuilder sb5 = new StringBuilder();
            sb5.append(this.responseHeaders.getStatusLine());
            sb5.append(10);
            bufferedWriter.write(sb5.toString());
            StringBuilder sb6 = new StringBuilder();
            sb6.append(Integer.toString(this.responseHeaders.length()));
            sb6.append(10);
            bufferedWriter.write(sb6.toString());
            for (int i2 = 0; i2 < this.responseHeaders.length(); i2++) {
                StringBuilder sb7 = new StringBuilder();
                sb7.append(this.responseHeaders.getFieldName(i2));
                sb7.append(str);
                sb7.append(this.responseHeaders.getValue(i2));
                sb7.append(10);
                bufferedWriter.write(sb7.toString());
            }
            if (isHttps()) {
                bufferedWriter.write(10);
                StringBuilder sb8 = new StringBuilder();
                sb8.append(this.cipherSuite);
                sb8.append(10);
                bufferedWriter.write(sb8.toString());
                writeCertArray(bufferedWriter, this.peerCertificates);
                writeCertArray(bufferedWriter, this.localCertificates);
            }
            bufferedWriter.close();
        }

        /* access modifiers changed from: private */
        public boolean isHttps() {
            return this.uri.startsWith("https://");
        }

        private Certificate[] readCertArray(StrictLineReader strictLineReader) throws IOException {
            int readInt = strictLineReader.readInt();
            if (readInt == -1) {
                return null;
            }
            try {
                CertificateFactory instance = CertificateFactory.getInstance("X.509");
                Certificate[] certificateArr = new Certificate[readInt];
                for (int i = 0; i < certificateArr.length; i++) {
                    certificateArr[i] = instance.generateCertificate(new ByteArrayInputStream(Base64.decode(strictLineReader.readLine(), 0)));
                }
                return certificateArr;
            } catch (CertificateException e) {
                throw new IOException(e.getMessage());
            }
        }

        private void writeCertArray(Writer writer, Certificate[] certificateArr) throws IOException {
            if (certificateArr == null) {
                writer.write("-1\n");
                return;
            }
            try {
                StringBuilder sb = new StringBuilder();
                sb.append(Integer.toString(certificateArr.length));
                sb.append(10);
                writer.write(sb.toString());
                for (Certificate encoded : certificateArr) {
                    String encodeToString = Base64.encodeToString(encoded.getEncoded(), 0);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(encodeToString);
                    sb2.append(10);
                    writer.write(sb2.toString());
                }
            } catch (CertificateEncodingException e) {
                throw new IOException(e.getMessage());
            }
        }

        public boolean matches(Uri uri2, String str, Map<String, List<String>> map) {
            return this.uri.equals(uri2.toString()) && this.requestMethod.equals(str) && new ResponseHeaders(uri2, this.responseHeaders).varyMatches(this.varyHeaders.toMultimap(), map);
        }
    }

    static class EntryCacheResponse extends CacheResponse {
        private final Entry entry;
        private final FileInputStream snapshot;

        public EntryCacheResponse(Entry entry2, FileInputStream fileInputStream) {
            this.entry = entry2;
            this.snapshot = fileInputStream;
        }

        public Map<String, List<String>> getHeaders() {
            return this.entry.responseHeaders.toMultimap();
        }

        public FileInputStream getBody() {
            return this.snapshot;
        }
    }

    class EntryEditor {
        boolean done;
        String key;
        FileOutputStream[] outs = new FileOutputStream[2];
        File[] temps;

        public EntryEditor(String str) {
            this.key = str;
            this.temps = ResponseCacheMiddleware.this.cache.getTempFiles(2);
        }

        /* access modifiers changed from: 0000 */
        public void commit() {
            StreamUtility.closeQuietly(this.outs);
            if (!this.done) {
                ResponseCacheMiddleware.this.cache.commitTempFiles(this.key, this.temps);
                ResponseCacheMiddleware.this.writeSuccessCount = ResponseCacheMiddleware.this.writeSuccessCount + 1;
                this.done = true;
            }
        }

        /* access modifiers changed from: 0000 */
        public FileOutputStream newOutputStream(int i) throws IOException {
            FileOutputStream[] fileOutputStreamArr = this.outs;
            if (fileOutputStreamArr[i] == null) {
                fileOutputStreamArr[i] = new FileOutputStream(this.temps[i]);
            }
            return this.outs[i];
        }

        /* access modifiers changed from: 0000 */
        public void abort() {
            StreamUtility.closeQuietly(this.outs);
            FileCache.removeFiles(this.temps);
            if (!this.done) {
                ResponseCacheMiddleware.this.writeAbortCount = ResponseCacheMiddleware.this.writeAbortCount + 1;
                this.done = true;
            }
        }
    }

    private ResponseCacheMiddleware() {
    }

    public static ResponseCacheMiddleware addCache(AsyncHttpClient asyncHttpClient, File file, long j) throws IOException {
        for (AsyncHttpClientMiddleware asyncHttpClientMiddleware : asyncHttpClient.getMiddleware()) {
            if (asyncHttpClientMiddleware instanceof ResponseCacheMiddleware) {
                throw new IOException("Response cache already added to http client");
            }
        }
        ResponseCacheMiddleware responseCacheMiddleware = new ResponseCacheMiddleware();
        responseCacheMiddleware.server = asyncHttpClient.getServer();
        responseCacheMiddleware.cache = new FileCache(file, j, false);
        asyncHttpClient.insertMiddleware(responseCacheMiddleware);
        return responseCacheMiddleware;
    }

    public FileCache getFileCache() {
        return this.cache;
    }

    public boolean getCaching() {
        return this.caching;
    }

    public void setCaching(boolean z) {
        this.caching = z;
    }

    public void removeFromCache(Uri uri) {
        getFileCache().remove(FileCache.toKeyString(uri));
    }

    public Cancellable getSocket(final GetSocketData getSocketData) {
        FileInputStream[] fileInputStreamArr;
        RequestHeaders requestHeaders = new RequestHeaders(getSocketData.request.getUri(), RawHeaders.fromMultimap(getSocketData.request.getHeaders().getMultiMap()));
        getSocketData.state.put("request-headers", requestHeaders);
        if (this.cache == null || !this.caching || requestHeaders.isNoCache()) {
            this.networkCount++;
            return null;
        }
        try {
            fileInputStreamArr = this.cache.get(FileCache.toKeyString(getSocketData.request.getUri()), 2);
            if (fileInputStreamArr == null) {
                try {
                    this.networkCount++;
                    return null;
                } catch (IOException unused) {
                    this.networkCount++;
                    StreamUtility.closeQuietly(fileInputStreamArr);
                    return null;
                }
            } else {
                long available = (long) fileInputStreamArr[1].available();
                Entry entry = new Entry(fileInputStreamArr[0]);
                if (!entry.matches(getSocketData.request.getUri(), getSocketData.request.getMethod(), getSocketData.request.getHeaders().getMultiMap())) {
                    this.networkCount++;
                    StreamUtility.closeQuietly(fileInputStreamArr);
                    return null;
                }
                EntryCacheResponse entryCacheResponse = new EntryCacheResponse(entry, fileInputStreamArr[1]);
                try {
                    Map headers = entryCacheResponse.getHeaders();
                    FileInputStream body = entryCacheResponse.getBody();
                    if (headers == null || body == null) {
                        this.networkCount++;
                        StreamUtility.closeQuietly(fileInputStreamArr);
                        return null;
                    }
                    RawHeaders fromMultimap = RawHeaders.fromMultimap(headers);
                    ResponseHeaders responseHeaders = new ResponseHeaders(getSocketData.request.getUri(), fromMultimap);
                    fromMultimap.set("Content-Length", String.valueOf(available));
                    fromMultimap.removeAll("Content-Encoding");
                    fromMultimap.removeAll(HttpHeaders.TRANSFER_ENCODING);
                    responseHeaders.setLocalTimestamps(System.currentTimeMillis(), System.currentTimeMillis());
                    ResponseSource chooseResponseSource = responseHeaders.chooseResponseSource(System.currentTimeMillis(), requestHeaders);
                    if (chooseResponseSource == ResponseSource.CACHE) {
                        getSocketData.request.logi("Response retrieved from cache");
                        final CachedSocket cachedSSLSocket = entry.isHttps() ? new CachedSSLSocket(entryCacheResponse, available) : new CachedSocket(entryCacheResponse, available);
                        cachedSSLSocket.pending.add(ByteBuffer.wrap(fromMultimap.toHeaderString().getBytes()));
                        this.server.post(new Runnable() {
                            public void run() {
                                getSocketData.connectCallback.onConnectCompleted(null, cachedSSLSocket);
                                cachedSSLSocket.sendCachedDataOnNetworkThread();
                            }
                        });
                        this.cacheHitCount++;
                        getSocketData.state.put("socket-owner", this);
                        SimpleCancellable simpleCancellable = new SimpleCancellable();
                        simpleCancellable.setComplete();
                        return simpleCancellable;
                    } else if (chooseResponseSource == ResponseSource.CONDITIONAL_CACHE) {
                        getSocketData.request.logi("Response may be served from conditional cache");
                        CacheData cacheData = new CacheData();
                        cacheData.snapshot = fileInputStreamArr;
                        cacheData.contentLength = available;
                        cacheData.cachedResponseHeaders = responseHeaders;
                        cacheData.candidate = entryCacheResponse;
                        getSocketData.state.put("cache-data", cacheData);
                        return null;
                    } else {
                        getSocketData.request.logd("Response can not be served from cache");
                        this.networkCount++;
                        StreamUtility.closeQuietly(fileInputStreamArr);
                        return null;
                    }
                } catch (Exception unused2) {
                    this.networkCount++;
                    StreamUtility.closeQuietly(fileInputStreamArr);
                    return null;
                }
            }
        } catch (IOException unused3) {
            fileInputStreamArr = null;
            this.networkCount++;
            StreamUtility.closeQuietly(fileInputStreamArr);
            return null;
        }
    }

    public int getConditionalCacheHitCount() {
        return this.conditionalCacheHitCount;
    }

    public int getCacheHitCount() {
        return this.cacheHitCount;
    }

    public int getNetworkCount() {
        return this.networkCount;
    }

    public int getCacheStoreCount() {
        return this.cacheStoreCount;
    }

    public void onBodyDecoder(OnBodyDataOnRequestSentData onBodyDataOnRequestSentData) {
        CachedSocket cachedSocket = (CachedSocket) Util.getWrappedSocket(onBodyDataOnRequestSentData.socket, CachedSocket.class);
        String str = SERVED_FROM;
        if (cachedSocket != null) {
            onBodyDataOnRequestSentData.response.headers().set(str, CACHE);
            return;
        }
        String str2 = "cache-data";
        CacheData cacheData = (CacheData) onBodyDataOnRequestSentData.state.get(str2);
        RawHeaders fromMultimap = RawHeaders.fromMultimap(onBodyDataOnRequestSentData.response.headers().getMultiMap());
        fromMultimap.removeAll("Content-Length");
        fromMultimap.setStatusLine(String.format(Locale.ENGLISH, "%s %s %s", new Object[]{onBodyDataOnRequestSentData.response.protocol(), Integer.valueOf(onBodyDataOnRequestSentData.response.code()), onBodyDataOnRequestSentData.response.message()}));
        ResponseHeaders responseHeaders = new ResponseHeaders(onBodyDataOnRequestSentData.request.getUri(), fromMultimap);
        onBodyDataOnRequestSentData.state.put("response-headers", responseHeaders);
        if (cacheData != null) {
            if (cacheData.cachedResponseHeaders.validate(responseHeaders)) {
                onBodyDataOnRequestSentData.request.logi("Serving response from conditional cache");
                ResponseHeaders combine = cacheData.cachedResponseHeaders.combine(responseHeaders);
                onBodyDataOnRequestSentData.response.headers(new Headers(combine.getHeaders().toMultimap()));
                onBodyDataOnRequestSentData.response.code(combine.getHeaders().getResponseCode());
                onBodyDataOnRequestSentData.response.message(combine.getHeaders().getResponseMessage());
                onBodyDataOnRequestSentData.response.headers().set(str, CONDITIONAL_CACHE);
                this.conditionalCacheHitCount++;
                CachedBodyEmitter cachedBodyEmitter = new CachedBodyEmitter(cacheData.candidate, cacheData.contentLength);
                cachedBodyEmitter.setDataEmitter(onBodyDataOnRequestSentData.bodyEmitter);
                onBodyDataOnRequestSentData.bodyEmitter = cachedBodyEmitter;
                cachedBodyEmitter.sendCachedData();
                return;
            }
            onBodyDataOnRequestSentData.state.remove(str2);
            StreamUtility.closeQuietly(cacheData.snapshot);
        }
        if (this.caching) {
            RequestHeaders requestHeaders = (RequestHeaders) onBodyDataOnRequestSentData.state.get("request-headers");
            if (requestHeaders == null || !responseHeaders.isCacheable(requestHeaders) || !onBodyDataOnRequestSentData.request.getMethod().equals("GET")) {
                this.networkCount++;
                onBodyDataOnRequestSentData.request.logd("Response is not cacheable");
                return;
            }
            String keyString = FileCache.toKeyString(onBodyDataOnRequestSentData.request.getUri());
            Entry entry = new Entry(onBodyDataOnRequestSentData.request.getUri(), requestHeaders.getHeaders().getAll(responseHeaders.getVaryFields()), onBodyDataOnRequestSentData.request, responseHeaders.getHeaders());
            BodyCacher bodyCacher = new BodyCacher();
            EntryEditor entryEditor = new EntryEditor(keyString);
            try {
                entry.writeTo(entryEditor);
                entryEditor.newOutputStream(1);
                bodyCacher.editor = entryEditor;
                bodyCacher.setDataEmitter(onBodyDataOnRequestSentData.bodyEmitter);
                onBodyDataOnRequestSentData.bodyEmitter = bodyCacher;
                onBodyDataOnRequestSentData.state.put("body-cacher", bodyCacher);
                onBodyDataOnRequestSentData.request.logd("Caching response");
                this.cacheStoreCount++;
            } catch (Exception unused) {
                entryEditor.abort();
                this.networkCount++;
            }
        }
    }

    public void onResponseComplete(OnResponseCompleteDataOnRequestSentData onResponseCompleteDataOnRequestSentData) {
        CacheData cacheData = (CacheData) onResponseCompleteDataOnRequestSentData.state.get("cache-data");
        if (!(cacheData == null || cacheData.snapshot == null)) {
            StreamUtility.closeQuietly(cacheData.snapshot);
        }
        CachedSocket cachedSocket = (CachedSocket) Util.getWrappedSocket(onResponseCompleteDataOnRequestSentData.socket, CachedSocket.class);
        if (cachedSocket != null) {
            StreamUtility.closeQuietly(cachedSocket.cacheResponse.getBody());
        }
        BodyCacher bodyCacher = (BodyCacher) onResponseCompleteDataOnRequestSentData.state.get("body-cacher");
        if (bodyCacher == null) {
            return;
        }
        if (onResponseCompleteDataOnRequestSentData.exception != null) {
            bodyCacher.abort();
        } else {
            bodyCacher.commit();
        }
    }

    public void clear() {
        FileCache fileCache = this.cache;
        if (fileCache != null) {
            fileCache.clear();
        }
    }
}
