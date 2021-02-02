package com.koushikdutta.async.http.server;

import android.annotation.TargetApi;
import android.content.Context;
import android.text.TextUtils;
import com.alibaba.fastjson.support.spring.FastJsonJsonView;
import com.koushikdutta.async.AsyncSSLSocket;
import com.koushikdutta.async.AsyncSSLSocketWrapper;
import com.koushikdutta.async.AsyncSSLSocketWrapper.HandshakeCallback;
import com.koushikdutta.async.AsyncServer;
import com.koushikdutta.async.AsyncServerSocket;
import com.koushikdutta.async.AsyncSocket;
import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.Util;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.CompletedCallback.NullCompletedCallback;
import com.koushikdutta.async.callback.DataCallback.NullDataCallback;
import com.koushikdutta.async.callback.ListenCallback;
import com.koushikdutta.async.http.Headers;
import com.koushikdutta.async.http.HttpUtil;
import com.koushikdutta.async.http.Multimap;
import com.koushikdutta.async.http.Protocol;
import com.koushikdutta.async.http.WebSocket;
import com.koushikdutta.async.http.WebSocketImpl;
import com.koushikdutta.async.http.body.AsyncHttpRequestBody;
import com.koushikdutta.async.util.StreamUtility;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.net.ssl.SSLContext;
import org.eclipse.jetty.http.HttpHeaderValues;
import org.eclipse.jetty.http.HttpHeaders;

@TargetApi(5)
public class AsyncHttpServer {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static Hashtable<Integer, String> mCodes = new Hashtable<>();
    static Hashtable<String, String> mContentTypes = new Hashtable<>();
    final Hashtable<String, ArrayList<Pair>> mActions = new Hashtable<>();
    CompletedCallback mCompletedCallback;
    ListenCallback mListenCallback = new ListenCallback() {
        public void onAccepted(final AsyncSocket asyncSocket) {
            new AsyncHttpServerRequestImpl() {
                String fullPath;
                boolean hasContinued;
                HttpServerRequestCallback match;
                String path;
                boolean requestComplete;
                AsyncHttpServerResponseImpl res;
                boolean responseComplete;

                /* access modifiers changed from: protected */
                public AsyncHttpRequestBody onUnknownBody(Headers headers) {
                    return AsyncHttpServer.this.onUnknownBody(headers);
                }

                /* access modifiers changed from: protected */
                public void onHeadersReceived() {
                    Headers headers = getHeaders();
                    if (!this.hasContinued) {
                        if (HttpHeaderValues.CONTINUE.equals(headers.get(HttpHeaders.EXPECT))) {
                            pause();
                            Util.writeAll((DataSink) this.mSocket, "HTTP/1.1 100 Continue\r\n\r\n".getBytes(), (CompletedCallback) new CompletedCallback() {
                                public void onCompleted(Exception exc) {
                                    AnonymousClass1.this.resume();
                                    if (exc != null) {
                                        AnonymousClass1.this.report(exc);
                                        return;
                                    }
                                    AnonymousClass1 r2 = AnonymousClass1.this;
                                    r2.hasContinued = true;
                                    r2.onHeadersReceived();
                                }
                            });
                            return;
                        }
                    }
                    String[] split = getStatusLine().split(" ");
                    this.fullPath = split[1];
                    this.path = this.fullPath.split("\\?")[0];
                    this.method = split[0];
                    synchronized (AsyncHttpServer.this.mActions) {
                        ArrayList arrayList = (ArrayList) AsyncHttpServer.this.mActions.get(this.method);
                        if (arrayList != null) {
                            Iterator it = arrayList.iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    break;
                                }
                                Pair pair = (Pair) it.next();
                                Matcher matcher = pair.regex.matcher(this.path);
                                if (matcher.matches()) {
                                    this.mMatcher = matcher;
                                    this.match = pair.callback;
                                    break;
                                }
                            }
                        }
                    }
                    this.res = new AsyncHttpServerResponseImpl(asyncSocket, this) {
                        /* access modifiers changed from: protected */
                        public void report(Exception exc) {
                            super.report(exc);
                            if (exc != null) {
                                asyncSocket.setDataCallback(new NullDataCallback());
                                asyncSocket.setEndCallback(new NullCompletedCallback());
                                asyncSocket.close();
                            }
                        }

                        /* access modifiers changed from: protected */
                        public void onEnd() {
                            super.onEnd();
                            this.mSocket.setEndCallback(null);
                            AnonymousClass1 r0 = AnonymousClass1.this;
                            r0.responseComplete = true;
                            r0.handleOnCompleted();
                        }
                    };
                    boolean onRequest = AsyncHttpServer.this.onRequest(this, this.res);
                    if (this.match != null || onRequest) {
                        if (!getBody().readFullyOnRequest()) {
                            AsyncHttpServer.this.onRequest(this.match, this, this.res);
                        } else if (this.requestComplete) {
                            AsyncHttpServer.this.onRequest(this.match, this, this.res);
                        }
                        return;
                    }
                    this.res.code(404);
                    this.res.end();
                }

                public void onCompleted(Exception exc) {
                    if (this.res.code() != 101) {
                        this.requestComplete = true;
                        super.onCompleted(exc);
                        this.mSocket.setDataCallback(new NullDataCallback() {
                            public void onDataAvailable(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
                                super.onDataAvailable(dataEmitter, byteBufferList);
                                AnonymousClass1.this.mSocket.close();
                            }
                        });
                        handleOnCompleted();
                        if (getBody().readFullyOnRequest()) {
                            AsyncHttpServer.this.onRequest(this.match, this, this.res);
                        }
                    }
                }

                /* access modifiers changed from: private */
                public void handleOnCompleted() {
                    if (this.requestComplete && this.responseComplete) {
                        if (HttpUtil.isKeepAlive(Protocol.HTTP_1_1, getHeaders())) {
                            AnonymousClass1.this.onAccepted(asyncSocket);
                        } else {
                            asyncSocket.close();
                        }
                    }
                }

                public String getPath() {
                    return this.path;
                }

                public Multimap getQuery() {
                    String[] split = this.fullPath.split("\\?", 2);
                    if (split.length < 2) {
                        return new Multimap();
                    }
                    return Multimap.parseQuery(split[1]);
                }
            }.setSocket(asyncSocket);
            asyncSocket.resume();
        }

        public void onCompleted(Exception exc) {
            AsyncHttpServer.this.report(exc);
        }

        public void onListening(AsyncServerSocket asyncServerSocket) {
            AsyncHttpServer.this.mListeners.add(asyncServerSocket);
        }
    };
    ArrayList<AsyncServerSocket> mListeners = new ArrayList<>();

    private static class Pair {
        HttpServerRequestCallback callback;
        Pattern regex;

        private Pair() {
        }
    }

    public interface WebSocketRequestCallback {
        void onConnected(WebSocket webSocket, AsyncHttpServerRequest asyncHttpServerRequest);
    }

    /* access modifiers changed from: protected */
    public boolean onRequest(AsyncHttpServerRequest asyncHttpServerRequest, AsyncHttpServerResponse asyncHttpServerResponse) {
        return false;
    }

    public AsyncHttpServer() {
        mContentTypes.put("js", FastJsonJsonView.DEFAULT_JSONP_CONTENT_TYPE);
        mContentTypes.put("json", "application/json");
        mContentTypes.put("png", DLNAMimeTypes.MIME_IMAGE_PNG);
        mContentTypes.put("jpg", DLNAMimeTypes.MIME_IMAGE_JPEG);
        mContentTypes.put("html", "text/html");
        mContentTypes.put("css", "text/css");
        mContentTypes.put("mp4", "video/mp4");
        mContentTypes.put("mov", "video/quicktime");
        mContentTypes.put("wmv", DLNAMimeTypes.MIME_VIDEO_WMV);
    }

    public void stop() {
        ArrayList<AsyncServerSocket> arrayList = this.mListeners;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((AsyncServerSocket) it.next()).stop();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onRequest(HttpServerRequestCallback httpServerRequestCallback, AsyncHttpServerRequest asyncHttpServerRequest, AsyncHttpServerResponse asyncHttpServerResponse) {
        if (httpServerRequestCallback != null) {
            httpServerRequestCallback.onRequest(asyncHttpServerRequest, asyncHttpServerResponse);
        }
    }

    /* access modifiers changed from: protected */
    public AsyncHttpRequestBody onUnknownBody(Headers headers) {
        return new UnknownRequestBody(headers.get("Content-Type"));
    }

    public AsyncServerSocket listen(AsyncServer asyncServer, int i) {
        return asyncServer.listen(null, i, this.mListenCallback);
    }

    /* access modifiers changed from: private */
    public void report(Exception exc) {
        CompletedCallback completedCallback = this.mCompletedCallback;
        if (completedCallback != null) {
            completedCallback.onCompleted(exc);
        }
    }

    public AsyncServerSocket listen(int i) {
        return listen(AsyncServer.getDefault(), i);
    }

    public void listenSecure(final int i, final SSLContext sSLContext) {
        AsyncServer.getDefault().listen(null, i, new ListenCallback() {
            public void onAccepted(AsyncSocket asyncSocket) {
                AsyncSSLSocketWrapper.handshake(asyncSocket, null, i, sSLContext.createSSLEngine(), null, null, false, new HandshakeCallback() {
                    public void onHandshakeCompleted(Exception exc, AsyncSSLSocket asyncSSLSocket) {
                        if (asyncSSLSocket != null) {
                            AsyncHttpServer.this.mListenCallback.onAccepted(asyncSSLSocket);
                        }
                    }
                });
            }

            public void onListening(AsyncServerSocket asyncServerSocket) {
                AsyncHttpServer.this.mListenCallback.onListening(asyncServerSocket);
            }

            public void onCompleted(Exception exc) {
                AsyncHttpServer.this.mListenCallback.onCompleted(exc);
            }
        });
    }

    public ListenCallback getListenCallback() {
        return this.mListenCallback;
    }

    public void setErrorCallback(CompletedCallback completedCallback) {
        this.mCompletedCallback = completedCallback;
    }

    public CompletedCallback getErrorCallback() {
        return this.mCompletedCallback;
    }

    public void removeAction(String str, String str2) {
        synchronized (this.mActions) {
            ArrayList arrayList = (ArrayList) this.mActions.get(str);
            if (arrayList != null) {
                for (int i = 0; i < arrayList.size(); i++) {
                    if (str2.equals(((Pair) arrayList.get(i)).regex.toString())) {
                        arrayList.remove(i);
                        return;
                    }
                }
            }
        }
    }

    public void addAction(String str, String str2, HttpServerRequestCallback httpServerRequestCallback) {
        Pair pair = new Pair();
        StringBuilder sb = new StringBuilder();
        sb.append("^");
        sb.append(str2);
        pair.regex = Pattern.compile(sb.toString());
        pair.callback = httpServerRequestCallback;
        synchronized (this.mActions) {
            ArrayList arrayList = (ArrayList) this.mActions.get(str);
            if (arrayList == null) {
                arrayList = new ArrayList();
                this.mActions.put(str, arrayList);
            }
            arrayList.add(pair);
        }
    }

    public void websocket(String str, WebSocketRequestCallback webSocketRequestCallback) {
        websocket(str, null, webSocketRequestCallback);
    }

    public void websocket(String str, final String str2, final WebSocketRequestCallback webSocketRequestCallback) {
        get(str, new HttpServerRequestCallback() {
            public void onRequest(AsyncHttpServerRequest asyncHttpServerRequest, AsyncHttpServerResponse asyncHttpServerResponse) {
                String str = asyncHttpServerRequest.getHeaders().get(HttpHeaders.CONNECTION);
                String str2 = "Upgrade";
                boolean z = false;
                if (str != null) {
                    String[] split = str.split(",");
                    int length = split.length;
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            break;
                        } else if (str2.equalsIgnoreCase(split[i].trim())) {
                            z = true;
                            break;
                        } else {
                            i++;
                        }
                    }
                }
                if (!"websocket".equalsIgnoreCase(asyncHttpServerRequest.getHeaders().get(str2)) || !z) {
                    asyncHttpServerResponse.code(404);
                    asyncHttpServerResponse.end();
                    return;
                }
                if (!TextUtils.equals(str2, asyncHttpServerRequest.getHeaders().get("Sec-WebSocket-Protocol"))) {
                    asyncHttpServerResponse.code(404);
                    asyncHttpServerResponse.end();
                    return;
                }
                webSocketRequestCallback.onConnected(new WebSocketImpl(asyncHttpServerRequest, asyncHttpServerResponse), asyncHttpServerRequest);
            }
        });
    }

    public void get(String str, HttpServerRequestCallback httpServerRequestCallback) {
        addAction("GET", str, httpServerRequestCallback);
    }

    public void post(String str, HttpServerRequestCallback httpServerRequestCallback) {
        addAction("POST", str, httpServerRequestCallback);
    }

    public static android.util.Pair<Integer, InputStream> getAssetStream(Context context, String str) {
        try {
            InputStream open = context.getAssets().open(str);
            return new android.util.Pair<>(Integer.valueOf(open.available()), open);
        } catch (IOException unused) {
            return null;
        }
    }

    static {
        mCodes.put(Integer.valueOf(200), "OK");
        mCodes.put(Integer.valueOf(202), "Accepted");
        mCodes.put(Integer.valueOf(206), "Partial Content");
        mCodes.put(Integer.valueOf(101), "Switching Protocols");
        mCodes.put(Integer.valueOf(301), "Moved Permanently");
        mCodes.put(Integer.valueOf(302), "Found");
        mCodes.put(Integer.valueOf(404), "Not Found");
    }

    public static String getContentType(String str) {
        String tryGetContentType = tryGetContentType(str);
        return tryGetContentType != null ? tryGetContentType : "text/plain";
    }

    public static String tryGetContentType(String str) {
        int lastIndexOf = str.lastIndexOf(".");
        if (lastIndexOf != -1) {
            String str2 = (String) mContentTypes.get(str.substring(lastIndexOf + 1));
            if (str2 != null) {
                return str2;
            }
        }
        return null;
    }

    public void directory(Context context, String str, final String str2) {
        final Context applicationContext = context.getApplicationContext();
        addAction("GET", str, new HttpServerRequestCallback() {
            public void onRequest(AsyncHttpServerRequest asyncHttpServerRequest, final AsyncHttpServerResponse asyncHttpServerResponse) {
                String replaceAll = asyncHttpServerRequest.getMatcher().replaceAll("");
                Context context = applicationContext;
                StringBuilder sb = new StringBuilder();
                sb.append(str2);
                sb.append(replaceAll);
                android.util.Pair assetStream = AsyncHttpServer.getAssetStream(context, sb.toString());
                if (assetStream == null || assetStream.second == null) {
                    asyncHttpServerResponse.code(404);
                    asyncHttpServerResponse.end();
                    return;
                }
                final InputStream inputStream = (InputStream) assetStream.second;
                asyncHttpServerResponse.getHeaders().set("Content-Length", String.valueOf(assetStream.first));
                asyncHttpServerResponse.code(200);
                Headers headers = asyncHttpServerResponse.getHeaders();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str2);
                sb2.append(replaceAll);
                headers.add("Content-Type", AsyncHttpServer.getContentType(sb2.toString()));
                Util.pump(inputStream, (DataSink) asyncHttpServerResponse, (CompletedCallback) new CompletedCallback() {
                    public void onCompleted(Exception exc) {
                        asyncHttpServerResponse.end();
                        StreamUtility.closeQuietly(inputStream);
                    }
                });
            }
        });
        addAction("HEAD", str, new HttpServerRequestCallback() {
            public void onRequest(AsyncHttpServerRequest asyncHttpServerRequest, AsyncHttpServerResponse asyncHttpServerResponse) {
                String replaceAll = asyncHttpServerRequest.getMatcher().replaceAll("");
                Context context = applicationContext;
                StringBuilder sb = new StringBuilder();
                sb.append(str2);
                sb.append(replaceAll);
                android.util.Pair assetStream = AsyncHttpServer.getAssetStream(context, sb.toString());
                if (assetStream == null || assetStream.second == null) {
                    asyncHttpServerResponse.code(404);
                    asyncHttpServerResponse.end();
                    return;
                }
                StreamUtility.closeQuietly((InputStream) assetStream.second);
                asyncHttpServerResponse.getHeaders().set("Content-Length", String.valueOf(assetStream.first));
                asyncHttpServerResponse.code(200);
                Headers headers = asyncHttpServerResponse.getHeaders();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str2);
                sb2.append(replaceAll);
                headers.add("Content-Type", AsyncHttpServer.getContentType(sb2.toString()));
                asyncHttpServerResponse.writeHead();
                asyncHttpServerResponse.end();
            }
        });
    }

    public void directory(String str, File file) {
        directory(str, file, false);
    }

    public void directory(String str, final File file, final boolean z) {
        addAction("GET", str, new HttpServerRequestCallback() {
            public void onRequest(AsyncHttpServerRequest asyncHttpServerRequest, final AsyncHttpServerResponse asyncHttpServerResponse) {
                File[] listFiles;
                File file = new File(file, asyncHttpServerRequest.getMatcher().replaceAll(""));
                if (file.isDirectory() && z) {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    for (File file2 : file.listFiles()) {
                        if (file2.isDirectory()) {
                            arrayList.add(file2);
                        } else {
                            arrayList2.add(file2);
                        }
                    }
                    AnonymousClass1 r0 = new Comparator<File>() {
                        public int compare(File file, File file2) {
                            return file.getName().compareTo(file2.getName());
                        }
                    };
                    Collections.sort(arrayList, r0);
                    Collections.sort(arrayList2, r0);
                    arrayList2.addAll(0, arrayList);
                } else if (!file.isFile()) {
                    asyncHttpServerResponse.code(404);
                    asyncHttpServerResponse.end();
                } else {
                    try {
                        FileInputStream fileInputStream = new FileInputStream(file);
                        asyncHttpServerResponse.code(200);
                        Util.pump((InputStream) fileInputStream, (DataSink) asyncHttpServerResponse, (CompletedCallback) new CompletedCallback() {
                            public void onCompleted(Exception exc) {
                                asyncHttpServerResponse.end();
                            }
                        });
                    } catch (FileNotFoundException unused) {
                        asyncHttpServerResponse.code(404);
                        asyncHttpServerResponse.end();
                    }
                }
            }
        });
    }

    public static String getResponseCodeDescription(int i) {
        String str = (String) mCodes.get(Integer.valueOf(i));
        return str == null ? "Unknown" : str;
    }
}
