package com.koushikdutta.async.http;

import android.annotation.SuppressLint;
import android.net.Uri;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.koushikdutta.async.AsyncSSLException;
import com.koushikdutta.async.AsyncServer;
import com.koushikdutta.async.AsyncSocket;
import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.CompletedCallback.NullCompletedCallback;
import com.koushikdutta.async.callback.ConnectCallback;
import com.koushikdutta.async.callback.DataCallback.NullDataCallback;
import com.koushikdutta.async.future.Cancellable;
import com.koushikdutta.async.future.Future;
import com.koushikdutta.async.future.FutureCallback;
import com.koushikdutta.async.future.SimpleFuture;
import com.koushikdutta.async.http.AsyncHttpClientMiddleware.OnResponseCompleteDataOnRequestSentData;
import com.koushikdutta.async.http.callback.HttpConnectCallback;
import com.koushikdutta.async.http.callback.RequestCallback;
import com.koushikdutta.async.http.spdy.SpdyMiddleware;
import com.koushikdutta.async.parser.AsyncParser;
import com.koushikdutta.async.parser.ByteBufferListParser;
import com.koushikdutta.async.parser.JSONArrayParser;
import com.koushikdutta.async.parser.JSONObjectParser;
import com.koushikdutta.async.parser.StringParser;
import com.koushikdutta.async.stream.OutputStreamDataCallback;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.ProxySelector;
import java.net.URI;
import java.net.URL;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeoutException;
import org.eclipse.jetty.http.HttpHeaders;
import org.json.JSONArray;
import org.json.JSONObject;

public class AsyncHttpClient {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final String LOGTAG = "AsyncHttp";
    private static AsyncHttpClient mDefaultInstance;
    HttpTransportMiddleware httpTransportMiddleware;
    final List<AsyncHttpClientMiddleware> mMiddleware = new CopyOnWriteArrayList();
    AsyncServer mServer;
    AsyncSocketMiddleware socketMiddleware;
    SpdyMiddleware sslSocketMiddleware;

    public static abstract class DownloadCallback extends RequestCallbackBase<ByteBufferList> {
    }

    public static abstract class FileCallback extends RequestCallbackBase<File> {
    }

    private class FutureAsyncHttpResponse extends SimpleFuture<AsyncHttpResponse> {
        public Object scheduled;
        public AsyncSocket socket;
        public Runnable timeoutRunnable;

        private FutureAsyncHttpResponse() {
        }

        public boolean cancel() {
            if (!super.cancel()) {
                return false;
            }
            AsyncSocket asyncSocket = this.socket;
            if (asyncSocket != null) {
                asyncSocket.setDataCallback(new NullDataCallback());
                this.socket.close();
            }
            if (this.scheduled != null) {
                AsyncHttpClient.this.mServer.removeAllCallbacks(this.scheduled);
            }
            return true;
        }
    }

    public static abstract class JSONArrayCallback extends RequestCallbackBase<JSONArray> {
    }

    public static abstract class JSONObjectCallback extends RequestCallbackBase<JSONObject> {
    }

    public static abstract class RequestCallbackBase<T> implements RequestCallback<T> {
        public void onConnect(AsyncHttpResponse asyncHttpResponse) {
        }

        public void onProgress(AsyncHttpResponse asyncHttpResponse, long j, long j2) {
        }
    }

    public static abstract class StringCallback extends RequestCallbackBase<String> {
    }

    public interface WebSocketConnectCallback {
        void onCompleted(Exception exc, WebSocket webSocket);
    }

    public static AsyncHttpClient getDefaultInstance() {
        if (mDefaultInstance == null) {
            mDefaultInstance = new AsyncHttpClient(AsyncServer.getDefault());
        }
        return mDefaultInstance;
    }

    public Collection<AsyncHttpClientMiddleware> getMiddleware() {
        return this.mMiddleware;
    }

    public void insertMiddleware(AsyncHttpClientMiddleware asyncHttpClientMiddleware) {
        this.mMiddleware.add(0, asyncHttpClientMiddleware);
    }

    public AsyncHttpClient(AsyncServer asyncServer) {
        this.mServer = asyncServer;
        AsyncSocketMiddleware asyncSocketMiddleware = new AsyncSocketMiddleware(this);
        this.socketMiddleware = asyncSocketMiddleware;
        insertMiddleware(asyncSocketMiddleware);
        SpdyMiddleware spdyMiddleware = new SpdyMiddleware(this);
        this.sslSocketMiddleware = spdyMiddleware;
        insertMiddleware(spdyMiddleware);
        HttpTransportMiddleware httpTransportMiddleware2 = new HttpTransportMiddleware();
        this.httpTransportMiddleware = httpTransportMiddleware2;
        insertMiddleware(httpTransportMiddleware2);
        this.sslSocketMiddleware.addEngineConfigurator(new SSLEngineSNIConfigurator());
    }

    /* access modifiers changed from: private */
    @SuppressLint({"NewApi"})
    public static void setupAndroidProxy(AsyncHttpRequest asyncHttpRequest) {
        String str;
        if (asyncHttpRequest.proxyHost == null) {
            try {
                List select = ProxySelector.getDefault().select(URI.create(asyncHttpRequest.getUri().toString()));
                if (!select.isEmpty()) {
                    Proxy proxy = (Proxy) select.get(0);
                    if (proxy.type() == Type.HTTP && (proxy.address() instanceof InetSocketAddress)) {
                        InetSocketAddress inetSocketAddress = (InetSocketAddress) proxy.address();
                        if (VERSION.SDK_INT >= 14) {
                            str = inetSocketAddress.getHostString();
                        } else {
                            InetAddress address = inetSocketAddress.getAddress();
                            if (address != null) {
                                str = address.getHostAddress();
                            } else {
                                str = inetSocketAddress.getHostName();
                            }
                        }
                        asyncHttpRequest.enableProxy(str, inetSocketAddress.getPort());
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public AsyncSocketMiddleware getSocketMiddleware() {
        return this.socketMiddleware;
    }

    public SpdyMiddleware getSSLSocketMiddleware() {
        return this.sslSocketMiddleware;
    }

    public Future<AsyncHttpResponse> execute(AsyncHttpRequest asyncHttpRequest, HttpConnectCallback httpConnectCallback) {
        FutureAsyncHttpResponse futureAsyncHttpResponse = new FutureAsyncHttpResponse();
        execute(asyncHttpRequest, 0, futureAsyncHttpResponse, httpConnectCallback);
        return futureAsyncHttpResponse;
    }

    public Future<AsyncHttpResponse> execute(String str, HttpConnectCallback httpConnectCallback) {
        return execute((AsyncHttpRequest) new AsyncHttpGet(str), httpConnectCallback);
    }

    /* access modifiers changed from: private */
    public void reportConnectedCompleted(FutureAsyncHttpResponse futureAsyncHttpResponse, Exception exc, AsyncHttpResponseImpl asyncHttpResponseImpl, AsyncHttpRequest asyncHttpRequest, HttpConnectCallback httpConnectCallback) {
        boolean z;
        this.mServer.removeAllCallbacks(futureAsyncHttpResponse.scheduled);
        if (exc != null) {
            asyncHttpRequest.loge("Connection error", exc);
            z = futureAsyncHttpResponse.setComplete(exc);
        } else {
            asyncHttpRequest.logd("Connection successful");
            z = futureAsyncHttpResponse.setComplete(asyncHttpResponseImpl);
        }
        if (z) {
            httpConnectCallback.onConnectCompleted(exc, asyncHttpResponseImpl);
            return;
        }
        if (asyncHttpResponseImpl != null) {
            asyncHttpResponseImpl.setDataCallback(new NullDataCallback());
            asyncHttpResponseImpl.close();
        }
    }

    /* access modifiers changed from: private */
    public void execute(AsyncHttpRequest asyncHttpRequest, int i, FutureAsyncHttpResponse futureAsyncHttpResponse, HttpConnectCallback httpConnectCallback) {
        if (this.mServer.isAffinityThread()) {
            executeAffinity(asyncHttpRequest, i, futureAsyncHttpResponse, httpConnectCallback);
            return;
        }
        AsyncServer asyncServer = this.mServer;
        final AsyncHttpRequest asyncHttpRequest2 = asyncHttpRequest;
        final int i2 = i;
        final FutureAsyncHttpResponse futureAsyncHttpResponse2 = futureAsyncHttpResponse;
        final HttpConnectCallback httpConnectCallback2 = httpConnectCallback;
        AnonymousClass1 r1 = new Runnable() {
            public void run() {
                AsyncHttpClient.this.executeAffinity(asyncHttpRequest2, i2, futureAsyncHttpResponse2, httpConnectCallback2);
            }
        };
        asyncServer.post(r1);
    }

    /* access modifiers changed from: private */
    public static long getTimeoutRemaining(AsyncHttpRequest asyncHttpRequest) {
        return (long) asyncHttpRequest.getTimeout();
    }

    /* access modifiers changed from: private */
    public static void copyHeader(AsyncHttpRequest asyncHttpRequest, AsyncHttpRequest asyncHttpRequest2, String str) {
        String str2 = asyncHttpRequest.getHeaders().get(str);
        if (!TextUtils.isEmpty(str2)) {
            asyncHttpRequest2.getHeaders().set(str, str2);
        }
    }

    /* access modifiers changed from: private */
    public void executeAffinity(AsyncHttpRequest asyncHttpRequest, int i, FutureAsyncHttpResponse futureAsyncHttpResponse, HttpConnectCallback httpConnectCallback) {
        AsyncHttpRequest asyncHttpRequest2 = asyncHttpRequest;
        FutureAsyncHttpResponse futureAsyncHttpResponse2 = futureAsyncHttpResponse;
        if (i > 15) {
            reportConnectedCompleted(futureAsyncHttpResponse, new RedirectLimitExceededException("too many redirects"), null, asyncHttpRequest, httpConnectCallback);
            return;
        }
        asyncHttpRequest.getUri();
        OnResponseCompleteDataOnRequestSentData onResponseCompleteDataOnRequestSentData = new OnResponseCompleteDataOnRequestSentData();
        asyncHttpRequest2.executionTime = System.currentTimeMillis();
        onResponseCompleteDataOnRequestSentData.request = asyncHttpRequest2;
        asyncHttpRequest.logd("Executing request.");
        for (AsyncHttpClientMiddleware onRequest : this.mMiddleware) {
            onRequest.onRequest(onResponseCompleteDataOnRequestSentData);
        }
        if (asyncHttpRequest.getTimeout() > 0) {
            final OnResponseCompleteDataOnRequestSentData onResponseCompleteDataOnRequestSentData2 = onResponseCompleteDataOnRequestSentData;
            final FutureAsyncHttpResponse futureAsyncHttpResponse3 = futureAsyncHttpResponse;
            final AsyncHttpRequest asyncHttpRequest3 = asyncHttpRequest;
            final HttpConnectCallback httpConnectCallback2 = httpConnectCallback;
            AnonymousClass2 r0 = new Runnable() {
                public void run() {
                    if (onResponseCompleteDataOnRequestSentData2.socketCancellable != null) {
                        onResponseCompleteDataOnRequestSentData2.socketCancellable.cancel();
                        if (onResponseCompleteDataOnRequestSentData2.socket != null) {
                            onResponseCompleteDataOnRequestSentData2.socket.close();
                        }
                    }
                    AsyncHttpClient.this.reportConnectedCompleted(futureAsyncHttpResponse3, new TimeoutException(), null, asyncHttpRequest3, httpConnectCallback2);
                }
            };
            futureAsyncHttpResponse2.timeoutRunnable = r0;
            futureAsyncHttpResponse2.scheduled = this.mServer.postDelayed(futureAsyncHttpResponse2.timeoutRunnable, getTimeoutRemaining(asyncHttpRequest));
        }
        final AsyncHttpRequest asyncHttpRequest4 = asyncHttpRequest;
        final FutureAsyncHttpResponse futureAsyncHttpResponse4 = futureAsyncHttpResponse;
        final HttpConnectCallback httpConnectCallback3 = httpConnectCallback;
        final OnResponseCompleteDataOnRequestSentData onResponseCompleteDataOnRequestSentData3 = onResponseCompleteDataOnRequestSentData;
        final int i2 = i;
        AnonymousClass3 r02 = new ConnectCallback() {
            boolean reported;

            public void onConnectCompleted(Exception exc, AsyncSocket asyncSocket) {
                AsyncSocket asyncSocket2 = asyncSocket;
                if (!this.reported || asyncSocket2 == null) {
                    this.reported = true;
                    asyncHttpRequest4.logv("socket connected");
                    if (futureAsyncHttpResponse4.isCancelled()) {
                        if (asyncSocket2 != null) {
                            asyncSocket.close();
                        }
                        return;
                    }
                    if (futureAsyncHttpResponse4.timeoutRunnable != null) {
                        AsyncHttpClient.this.mServer.removeAllCallbacks(futureAsyncHttpResponse4.scheduled);
                    }
                    if (exc != null) {
                        AsyncHttpClient.this.reportConnectedCompleted(futureAsyncHttpResponse4, exc, null, asyncHttpRequest4, httpConnectCallback3);
                        return;
                    }
                    OnResponseCompleteDataOnRequestSentData onResponseCompleteDataOnRequestSentData = onResponseCompleteDataOnRequestSentData3;
                    onResponseCompleteDataOnRequestSentData.socket = asyncSocket2;
                    FutureAsyncHttpResponse futureAsyncHttpResponse = futureAsyncHttpResponse4;
                    futureAsyncHttpResponse.socket = asyncSocket2;
                    AsyncHttpClient.this.executeSocket(asyncHttpRequest4, i2, futureAsyncHttpResponse, httpConnectCallback3, onResponseCompleteDataOnRequestSentData);
                    return;
                }
                asyncSocket2.setDataCallback(new NullDataCallback());
                asyncSocket2.setEndCallback(new NullCompletedCallback());
                asyncSocket.close();
                throw new AssertionError("double connect callback");
            }
        };
        onResponseCompleteDataOnRequestSentData.connectCallback = r02;
        setupAndroidProxy(asyncHttpRequest);
        if (asyncHttpRequest.getBody() != null) {
            String str = "Content-Type";
            if (asyncHttpRequest.getHeaders().get(str) == null) {
                asyncHttpRequest.getHeaders().set(str, asyncHttpRequest.getBody().getContentType());
            }
        }
        for (AsyncHttpClientMiddleware socket : this.mMiddleware) {
            Cancellable socket2 = socket.getSocket(onResponseCompleteDataOnRequestSentData);
            if (socket2 != null) {
                onResponseCompleteDataOnRequestSentData.socketCancellable = socket2;
                futureAsyncHttpResponse.setParent(socket2);
                return;
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("invalid uri=");
        sb.append(asyncHttpRequest.getUri());
        sb.append(" middlewares=");
        sb.append(this.mMiddleware);
        reportConnectedCompleted(futureAsyncHttpResponse, new IllegalArgumentException(sb.toString()), null, asyncHttpRequest, httpConnectCallback);
    }

    /* access modifiers changed from: private */
    public void executeSocket(AsyncHttpRequest asyncHttpRequest, int i, FutureAsyncHttpResponse futureAsyncHttpResponse, HttpConnectCallback httpConnectCallback, OnResponseCompleteDataOnRequestSentData onResponseCompleteDataOnRequestSentData) {
        final FutureAsyncHttpResponse futureAsyncHttpResponse2 = futureAsyncHttpResponse;
        final AsyncHttpRequest asyncHttpRequest2 = asyncHttpRequest;
        final HttpConnectCallback httpConnectCallback2 = httpConnectCallback;
        final OnResponseCompleteDataOnRequestSentData onResponseCompleteDataOnRequestSentData2 = onResponseCompleteDataOnRequestSentData;
        final int i2 = i;
        final AnonymousClass4 r0 = new AsyncHttpResponseImpl(asyncHttpRequest) {
            /* access modifiers changed from: protected */
            public void onRequestCompleted(Exception exc) {
                if (exc != null) {
                    AsyncHttpClient.this.reportConnectedCompleted(futureAsyncHttpResponse2, exc, null, asyncHttpRequest2, httpConnectCallback2);
                    return;
                }
                asyncHttpRequest2.logv("request completed");
                if (!futureAsyncHttpResponse2.isCancelled()) {
                    if (futureAsyncHttpResponse2.timeoutRunnable != null && this.mHeaders == null) {
                        AsyncHttpClient.this.mServer.removeAllCallbacks(futureAsyncHttpResponse2.scheduled);
                        futureAsyncHttpResponse2.scheduled = AsyncHttpClient.this.mServer.postDelayed(futureAsyncHttpResponse2.timeoutRunnable, AsyncHttpClient.getTimeoutRemaining(asyncHttpRequest2));
                    }
                    for (AsyncHttpClientMiddleware onRequestSent : AsyncHttpClient.this.mMiddleware) {
                        onRequestSent.onRequestSent(onResponseCompleteDataOnRequestSentData2);
                    }
                }
            }

            public void setDataEmitter(DataEmitter dataEmitter) {
                onResponseCompleteDataOnRequestSentData2.bodyEmitter = dataEmitter;
                for (AsyncHttpClientMiddleware onBodyDecoder : AsyncHttpClient.this.mMiddleware) {
                    onBodyDecoder.onBodyDecoder(onResponseCompleteDataOnRequestSentData2);
                }
                super.setDataEmitter(onResponseCompleteDataOnRequestSentData2.bodyEmitter);
                Headers headers = this.mHeaders;
                int code = code();
                if ((code == 301 || code == 302 || code == 307) && asyncHttpRequest2.getFollowRedirect()) {
                    String str = headers.get("Location");
                    try {
                        Uri parse = Uri.parse(str);
                        if (parse.getScheme() == null) {
                            parse = Uri.parse(new URL(new URL(asyncHttpRequest2.getUri().toString()), str).toString());
                        }
                        String str2 = "HEAD";
                        if (!asyncHttpRequest2.getMethod().equals(str2)) {
                            str2 = "GET";
                        }
                        AsyncHttpRequest asyncHttpRequest = new AsyncHttpRequest(parse, str2);
                        asyncHttpRequest.executionTime = asyncHttpRequest2.executionTime;
                        asyncHttpRequest.logLevel = asyncHttpRequest2.logLevel;
                        asyncHttpRequest.LOGTAG = asyncHttpRequest2.LOGTAG;
                        asyncHttpRequest.proxyHost = asyncHttpRequest2.proxyHost;
                        asyncHttpRequest.proxyPort = asyncHttpRequest2.proxyPort;
                        AsyncHttpClient.setupAndroidProxy(asyncHttpRequest);
                        AsyncHttpClient.copyHeader(asyncHttpRequest2, asyncHttpRequest, "User-Agent");
                        AsyncHttpClient.copyHeader(asyncHttpRequest2, asyncHttpRequest, HttpHeaders.RANGE);
                        asyncHttpRequest2.logi("Redirecting");
                        asyncHttpRequest.logi("Redirected");
                        AsyncHttpClient.this.execute(asyncHttpRequest, i2 + 1, futureAsyncHttpResponse2, httpConnectCallback2);
                        setDataCallback(new NullDataCallback());
                    } catch (Exception e) {
                        AsyncHttpClient.this.reportConnectedCompleted(futureAsyncHttpResponse2, e, this, asyncHttpRequest2, httpConnectCallback2);
                    }
                } else {
                    AsyncHttpRequest asyncHttpRequest2 = asyncHttpRequest2;
                    StringBuilder sb = new StringBuilder();
                    sb.append("Final (post cache response) headers:\n");
                    sb.append(toString());
                    asyncHttpRequest2.logv(sb.toString());
                    AsyncHttpClient.this.reportConnectedCompleted(futureAsyncHttpResponse2, null, this, asyncHttpRequest2, httpConnectCallback2);
                }
            }

            /* access modifiers changed from: protected */
            public void onHeadersReceived() {
                super.onHeadersReceived();
                if (!futureAsyncHttpResponse2.isCancelled()) {
                    if (futureAsyncHttpResponse2.timeoutRunnable != null) {
                        AsyncHttpClient.this.mServer.removeAllCallbacks(futureAsyncHttpResponse2.scheduled);
                    }
                    AsyncHttpRequest asyncHttpRequest = asyncHttpRequest2;
                    StringBuilder sb = new StringBuilder();
                    sb.append("Received headers:\n");
                    sb.append(toString());
                    asyncHttpRequest.logv(sb.toString());
                    for (AsyncHttpClientMiddleware onHeadersReceived : AsyncHttpClient.this.mMiddleware) {
                        onHeadersReceived.onHeadersReceived(onResponseCompleteDataOnRequestSentData2);
                    }
                }
            }

            /* access modifiers changed from: protected */
            public void report(Exception exc) {
                if (exc != null) {
                    asyncHttpRequest2.loge("exception during response", exc);
                }
                if (!futureAsyncHttpResponse2.isCancelled()) {
                    if (exc instanceof AsyncSSLException) {
                        asyncHttpRequest2.loge("SSL Exception", exc);
                        AsyncSSLException asyncSSLException = (AsyncSSLException) exc;
                        asyncHttpRequest2.onHandshakeException(asyncSSLException);
                        if (asyncSSLException.getIgnore()) {
                            return;
                        }
                    }
                    AsyncSocket socket = socket();
                    if (socket != null) {
                        super.report(exc);
                        if ((!socket.isOpen() || exc != null) && headers() == null && exc != null) {
                            AsyncHttpClient.this.reportConnectedCompleted(futureAsyncHttpResponse2, exc, null, asyncHttpRequest2, httpConnectCallback2);
                        }
                        onResponseCompleteDataOnRequestSentData2.exception = exc;
                        for (AsyncHttpClientMiddleware onResponseComplete : AsyncHttpClient.this.mMiddleware) {
                            onResponseComplete.onResponseComplete(onResponseCompleteDataOnRequestSentData2);
                        }
                    }
                }
            }

            public AsyncSocket detachSocket() {
                asyncHttpRequest2.logd("Detaching socket");
                AsyncSocket socket = socket();
                if (socket == null) {
                    return null;
                }
                socket.setWriteableCallback(null);
                socket.setClosedCallback(null);
                socket.setEndCallback(null);
                socket.setDataCallback(null);
                setSocket(null);
                return socket;
            }
        };
        onResponseCompleteDataOnRequestSentData.sendHeadersCallback = new CompletedCallback() {
            public void onCompleted(Exception exc) {
                if (exc != null) {
                    r0.report(exc);
                } else {
                    r0.onHeadersSent();
                }
            }
        };
        onResponseCompleteDataOnRequestSentData.receiveHeadersCallback = new CompletedCallback() {
            public void onCompleted(Exception exc) {
                if (exc != null) {
                    r0.report(exc);
                } else {
                    r0.onHeadersReceived();
                }
            }
        };
        onResponseCompleteDataOnRequestSentData.response = r0;
        r0.setSocket(onResponseCompleteDataOnRequestSentData.socket);
        for (AsyncHttpClientMiddleware exchangeHeaders : this.mMiddleware) {
            if (exchangeHeaders.exchangeHeaders(onResponseCompleteDataOnRequestSentData)) {
                return;
            }
        }
    }

    public Future<ByteBufferList> executeByteBufferList(AsyncHttpRequest asyncHttpRequest, DownloadCallback downloadCallback) {
        return execute(asyncHttpRequest, new ByteBufferListParser(), downloadCallback);
    }

    public Future<String> executeString(AsyncHttpRequest asyncHttpRequest, StringCallback stringCallback) {
        return execute(asyncHttpRequest, new StringParser(), stringCallback);
    }

    public Future<JSONObject> executeJSONObject(AsyncHttpRequest asyncHttpRequest, JSONObjectCallback jSONObjectCallback) {
        return execute(asyncHttpRequest, new JSONObjectParser(), jSONObjectCallback);
    }

    public Future<JSONArray> executeJSONArray(AsyncHttpRequest asyncHttpRequest, JSONArrayCallback jSONArrayCallback) {
        return execute(asyncHttpRequest, new JSONArrayParser(), jSONArrayCallback);
    }

    /* access modifiers changed from: private */
    public <T> void invokeWithAffinity(RequestCallback<T> requestCallback, SimpleFuture<T> simpleFuture, AsyncHttpResponse asyncHttpResponse, Exception exc, T t) {
        boolean z;
        if (exc != null) {
            z = simpleFuture.setComplete(exc);
        } else {
            z = simpleFuture.setComplete(t);
        }
        if (z && requestCallback != null) {
            requestCallback.onCompleted(exc, asyncHttpResponse, t);
        }
    }

    /* access modifiers changed from: private */
    public <T> void invoke(RequestCallback<T> requestCallback, SimpleFuture<T> simpleFuture, AsyncHttpResponse asyncHttpResponse, Exception exc, T t) {
        final RequestCallback<T> requestCallback2 = requestCallback;
        final SimpleFuture<T> simpleFuture2 = simpleFuture;
        final AsyncHttpResponse asyncHttpResponse2 = asyncHttpResponse;
        final Exception exc2 = exc;
        final T t2 = t;
        AnonymousClass7 r0 = new Runnable() {
            public void run() {
                AsyncHttpClient.this.invokeWithAffinity(requestCallback2, simpleFuture2, asyncHttpResponse2, exc2, t2);
            }
        };
        this.mServer.post(r0);
    }

    /* access modifiers changed from: private */
    public void invokeProgress(RequestCallback requestCallback, AsyncHttpResponse asyncHttpResponse, long j, long j2) {
        if (requestCallback != null) {
            requestCallback.onProgress(asyncHttpResponse, j, j2);
        }
    }

    /* access modifiers changed from: private */
    public void invokeConnect(RequestCallback requestCallback, AsyncHttpResponse asyncHttpResponse) {
        if (requestCallback != null) {
            requestCallback.onConnect(asyncHttpResponse);
        }
    }

    public Future<File> executeFile(AsyncHttpRequest asyncHttpRequest, String str, FileCallback fileCallback) {
        final File file = new File(str);
        file.getParentFile().mkdirs();
        try {
            final BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file), 8192);
            final FutureAsyncHttpResponse futureAsyncHttpResponse = new FutureAsyncHttpResponse();
            AnonymousClass8 r6 = new SimpleFuture<File>() {
                /* JADX WARNING: Can't wrap try/catch for region: R(6:0|1|2|3|4|6) */
                /* JADX WARNING: Failed to process nested try/catch */
                /* JADX WARNING: Missing exception handler attribute for start block: B:2:0x001b */
                /* Code decompiled incorrectly, please refer to instructions dump. */
                public void cancelCleanup() {
                    /*
                        r2 = this;
                        com.koushikdutta.async.http.AsyncHttpClient$FutureAsyncHttpResponse r0 = r11     // Catch:{ Exception -> 0x001b }
                        java.lang.Object r0 = r0.get()     // Catch:{ Exception -> 0x001b }
                        com.koushikdutta.async.http.AsyncHttpResponse r0 = (com.koushikdutta.async.http.AsyncHttpResponse) r0     // Catch:{ Exception -> 0x001b }
                        com.koushikdutta.async.callback.DataCallback$NullDataCallback r1 = new com.koushikdutta.async.callback.DataCallback$NullDataCallback     // Catch:{ Exception -> 0x001b }
                        r1.<init>()     // Catch:{ Exception -> 0x001b }
                        r0.setDataCallback(r1)     // Catch:{ Exception -> 0x001b }
                        com.koushikdutta.async.http.AsyncHttpClient$FutureAsyncHttpResponse r0 = r11     // Catch:{ Exception -> 0x001b }
                        java.lang.Object r0 = r0.get()     // Catch:{ Exception -> 0x001b }
                        com.koushikdutta.async.http.AsyncHttpResponse r0 = (com.koushikdutta.async.http.AsyncHttpResponse) r0     // Catch:{ Exception -> 0x001b }
                        r0.close()     // Catch:{ Exception -> 0x001b }
                    L_0x001b:
                        java.io.OutputStream r0 = r2     // Catch:{ Exception -> 0x0020 }
                        r0.close()     // Catch:{ Exception -> 0x0020 }
                    L_0x0020:
                        java.io.File r0 = r3
                        r0.delete()
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.koushikdutta.async.http.AsyncHttpClient.AnonymousClass8.cancelCleanup():void");
                }
            };
            r6.setParent((Cancellable) futureAsyncHttpResponse);
            final FileCallback fileCallback2 = fileCallback;
            final AnonymousClass8 r5 = r6;
            AnonymousClass9 r0 = new HttpConnectCallback() {
                long mDownloaded = 0;

                public void onConnectCompleted(Exception exc, final AsyncHttpResponse asyncHttpResponse) {
                    if (exc != null) {
                        try {
                            bufferedOutputStream.close();
                        } catch (IOException unused) {
                        }
                        file.delete();
                        AsyncHttpClient.this.invoke(fileCallback2, r5, asyncHttpResponse, exc, null);
                        return;
                    }
                    AsyncHttpClient.this.invokeConnect(fileCallback2, asyncHttpResponse);
                    final long contentLength = (long) HttpUtil.contentLength(asyncHttpResponse.headers());
                    final AsyncHttpResponse asyncHttpResponse2 = asyncHttpResponse;
                    AnonymousClass1 r0 = new OutputStreamDataCallback(bufferedOutputStream) {
                        public void onDataAvailable(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
                            AnonymousClass9.this.mDownloaded += (long) byteBufferList.remaining();
                            super.onDataAvailable(dataEmitter, byteBufferList);
                            AsyncHttpClient.this.invokeProgress(fileCallback2, asyncHttpResponse2, AnonymousClass9.this.mDownloaded, contentLength);
                        }
                    };
                    asyncHttpResponse.setDataCallback(r0);
                    asyncHttpResponse.setEndCallback(new CompletedCallback() {
                        public void onCompleted(Exception e) {
                            try {
                                bufferedOutputStream.close();
                            } catch (IOException e2) {
                                e = e2;
                            }
                            Exception exc = e;
                            if (exc != null) {
                                file.delete();
                                AsyncHttpClient.this.invoke(fileCallback2, r5, asyncHttpResponse, exc, null);
                                return;
                            }
                            AsyncHttpClient.this.invoke(fileCallback2, r5, asyncHttpResponse, null, file);
                        }
                    });
                }
            };
            execute(asyncHttpRequest, 0, futureAsyncHttpResponse, r0);
            return r6;
        } catch (FileNotFoundException e) {
            SimpleFuture simpleFuture = new SimpleFuture();
            simpleFuture.setComplete((Exception) e);
            return simpleFuture;
        }
    }

    public <T> SimpleFuture<T> execute(AsyncHttpRequest asyncHttpRequest, final AsyncParser<T> asyncParser, final RequestCallback<T> requestCallback) {
        FutureAsyncHttpResponse futureAsyncHttpResponse = new FutureAsyncHttpResponse();
        final SimpleFuture<T> simpleFuture = new SimpleFuture<>();
        execute(asyncHttpRequest, 0, futureAsyncHttpResponse, new HttpConnectCallback() {
            public void onConnectCompleted(Exception exc, final AsyncHttpResponse asyncHttpResponse) {
                if (exc != null) {
                    AsyncHttpClient.this.invoke(requestCallback, simpleFuture, asyncHttpResponse, exc, null);
                    return;
                }
                AsyncHttpClient.this.invokeConnect(requestCallback, asyncHttpResponse);
                simpleFuture.setParent((Cancellable) asyncParser.parse(asyncHttpResponse).setCallback(new FutureCallback<T>() {
                    public void onCompleted(Exception exc, T t) {
                        AsyncHttpClient.this.invoke(requestCallback, simpleFuture, asyncHttpResponse, exc, t);
                    }
                }));
            }
        });
        simpleFuture.setParent((Cancellable) futureAsyncHttpResponse);
        return simpleFuture;
    }

    public Future<WebSocket> websocket(final AsyncHttpRequest asyncHttpRequest, String str, final WebSocketConnectCallback webSocketConnectCallback) {
        WebSocketImpl.addWebSocketUpgradeHeaders(asyncHttpRequest, str);
        final SimpleFuture simpleFuture = new SimpleFuture();
        simpleFuture.setParent((Cancellable) execute(asyncHttpRequest, (HttpConnectCallback) new HttpConnectCallback() {
            public void onConnectCompleted(Exception exc, AsyncHttpResponse asyncHttpResponse) {
                if (exc != null) {
                    if (simpleFuture.setComplete(exc)) {
                        WebSocketConnectCallback webSocketConnectCallback = webSocketConnectCallback;
                        if (webSocketConnectCallback != null) {
                            webSocketConnectCallback.onCompleted(exc, null);
                        }
                    }
                    return;
                }
                WebSocket finishHandshake = WebSocketImpl.finishHandshake(asyncHttpRequest.getHeaders(), asyncHttpResponse);
                if (finishHandshake == null) {
                    exc = new WebSocketHandshakeException("Unable to complete websocket handshake");
                    if (!simpleFuture.setComplete(exc)) {
                        return;
                    }
                } else if (!simpleFuture.setComplete(finishHandshake)) {
                    return;
                }
                WebSocketConnectCallback webSocketConnectCallback2 = webSocketConnectCallback;
                if (webSocketConnectCallback2 != null) {
                    webSocketConnectCallback2.onCompleted(exc, finishHandshake);
                }
            }
        }));
        return simpleFuture;
    }

    public Future<WebSocket> websocket(String str, String str2, WebSocketConnectCallback webSocketConnectCallback) {
        return websocket((AsyncHttpRequest) new AsyncHttpGet(str.replace("ws://", "http://").replace("wss://", "https://")), str2, webSocketConnectCallback);
    }

    public AsyncServer getServer() {
        return this.mServer;
    }
}
