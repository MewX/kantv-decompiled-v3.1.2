package com.koushikdutta.async.http;

import android.net.Uri;
import android.text.TextUtils;
import com.avos.avoscloud.java_websocket.WebSocket;
import com.koushikdutta.async.AsyncSSLSocket;
import com.koushikdutta.async.AsyncSSLSocketWrapper;
import com.koushikdutta.async.AsyncSSLSocketWrapper.HandshakeCallback;
import com.koushikdutta.async.AsyncSocket;
import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.LineEmitter;
import com.koushikdutta.async.LineEmitter.StringCallback;
import com.koushikdutta.async.Util;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.ConnectCallback;
import com.koushikdutta.async.http.AsyncHttpClientMiddleware.GetSocketData;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.TrustManager;

public class AsyncSSLSocketMiddleware extends AsyncSocketMiddleware {
    protected List<AsyncSSLEngineConfigurator> engineConfigurators = new ArrayList();
    protected HostnameVerifier hostnameVerifier;
    protected SSLContext sslContext;
    protected TrustManager[] trustManagers;

    public AsyncSSLSocketMiddleware(AsyncHttpClient asyncHttpClient) {
        super(asyncHttpClient, "https", WebSocket.DEFAULT_WSS_PORT);
    }

    public void setSSLContext(SSLContext sSLContext) {
        this.sslContext = sSLContext;
    }

    public SSLContext getSSLContext() {
        SSLContext sSLContext = this.sslContext;
        return sSLContext != null ? sSLContext : AsyncSSLSocketWrapper.getDefaultSSLContext();
    }

    public void setTrustManagers(TrustManager[] trustManagerArr) {
        this.trustManagers = trustManagerArr;
    }

    public void setHostnameVerifier(HostnameVerifier hostnameVerifier2) {
        this.hostnameVerifier = hostnameVerifier2;
    }

    public void addEngineConfigurator(AsyncSSLEngineConfigurator asyncSSLEngineConfigurator) {
        this.engineConfigurators.add(asyncSSLEngineConfigurator);
    }

    public void clearEngineConfigurators() {
        this.engineConfigurators.clear();
    }

    /* access modifiers changed from: protected */
    public SSLEngine createConfiguredSSLEngine(GetSocketData getSocketData, String str, int i) {
        SSLContext sSLContext = getSSLContext();
        SSLEngine sSLEngine = null;
        for (AsyncSSLEngineConfigurator createEngine : this.engineConfigurators) {
            sSLEngine = createEngine.createEngine(sSLContext, str, i);
            if (sSLEngine != null) {
                break;
            }
        }
        for (AsyncSSLEngineConfigurator configureEngine : this.engineConfigurators) {
            configureEngine.configureEngine(sSLEngine, getSocketData, str, i);
        }
        return sSLEngine;
    }

    /* access modifiers changed from: protected */
    public HandshakeCallback createHandshakeCallback(GetSocketData getSocketData, final ConnectCallback connectCallback) {
        return new HandshakeCallback() {
            public void onHandshakeCompleted(Exception exc, AsyncSSLSocket asyncSSLSocket) {
                connectCallback.onConnectCompleted(exc, asyncSSLSocket);
            }
        };
    }

    /* access modifiers changed from: protected */
    public void tryHandshake(AsyncSocket asyncSocket, GetSocketData getSocketData, Uri uri, int i, ConnectCallback connectCallback) {
        AsyncSSLSocketWrapper.handshake(asyncSocket, uri.getHost(), i, createConfiguredSSLEngine(getSocketData, uri.getHost(), i), this.trustManagers, this.hostnameVerifier, true, createHandshakeCallback(getSocketData, connectCallback));
    }

    /* access modifiers changed from: protected */
    public ConnectCallback wrapCallback(GetSocketData getSocketData, Uri uri, int i, boolean z, ConnectCallback connectCallback) {
        final ConnectCallback connectCallback2 = connectCallback;
        final boolean z2 = z;
        final GetSocketData getSocketData2 = getSocketData;
        final Uri uri2 = uri;
        final int i2 = i;
        AnonymousClass2 r0 = new ConnectCallback() {
            public void onConnectCompleted(Exception exc, final AsyncSocket asyncSocket) {
                if (exc != null) {
                    connectCallback2.onConnectCompleted(exc, asyncSocket);
                } else if (!z2) {
                    AsyncSSLSocketMiddleware.this.tryHandshake(asyncSocket, getSocketData2, uri2, i2, connectCallback2);
                } else {
                    String format = String.format(Locale.ENGLISH, "CONNECT %s:%s HTTP/1.1\r\nHost: %s\r\n\r\n", new Object[]{uri2.getHost(), Integer.valueOf(i2), uri2.getHost()});
                    AsyncHttpRequest asyncHttpRequest = getSocketData2.request;
                    StringBuilder sb = new StringBuilder();
                    sb.append("Proxying: ");
                    sb.append(format);
                    asyncHttpRequest.logv(sb.toString());
                    Util.writeAll((DataSink) asyncSocket, format.getBytes(), (CompletedCallback) new CompletedCallback() {
                        public void onCompleted(Exception exc) {
                            if (exc != null) {
                                connectCallback2.onConnectCompleted(exc, asyncSocket);
                                return;
                            }
                            LineEmitter lineEmitter = new LineEmitter();
                            lineEmitter.setLineCallback(new StringCallback() {
                                String statusLine;

                                public void onStringAvailable(String str) {
                                    getSocketData2.request.logv(str);
                                    if (this.statusLine == null) {
                                        this.statusLine = str.trim();
                                        if (!this.statusLine.matches("HTTP/1.\\d 2\\d\\d .*")) {
                                            asyncSocket.setDataCallback(null);
                                            asyncSocket.setEndCallback(null);
                                            ConnectCallback connectCallback = connectCallback2;
                                            StringBuilder sb = new StringBuilder();
                                            sb.append("non 2xx status line: ");
                                            sb.append(this.statusLine);
                                            connectCallback.onConnectCompleted(new IOException(sb.toString()), asyncSocket);
                                        }
                                    } else if (TextUtils.isEmpty(str.trim())) {
                                        asyncSocket.setDataCallback(null);
                                        asyncSocket.setEndCallback(null);
                                        AsyncSSLSocketMiddleware.this.tryHandshake(asyncSocket, getSocketData2, uri2, i2, connectCallback2);
                                    }
                                }
                            });
                            asyncSocket.setDataCallback(lineEmitter);
                            asyncSocket.setEndCallback(new CompletedCallback() {
                                public void onCompleted(Exception exc) {
                                    if (!asyncSocket.isOpen() && exc == null) {
                                        exc = new IOException("socket closed before proxy connect response");
                                    }
                                    connectCallback2.onConnectCompleted(exc, asyncSocket);
                                }
                            });
                        }
                    });
                }
            }
        };
        return r0;
    }
}
