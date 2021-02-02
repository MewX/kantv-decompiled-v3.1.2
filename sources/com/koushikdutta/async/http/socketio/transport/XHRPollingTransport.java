package com.koushikdutta.async.http.socketio.transport;

import android.net.Uri;
import com.koushikdutta.async.AsyncServer;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.http.AsyncHttpClient;
import com.koushikdutta.async.http.AsyncHttpGet;
import com.koushikdutta.async.http.AsyncHttpPost;
import com.koushikdutta.async.http.AsyncHttpResponse;
import com.koushikdutta.async.http.body.StringBody;
import com.koushikdutta.async.http.socketio.transport.SocketIOTransport.StringCallback;

public class XHRPollingTransport implements SocketIOTransport {
    private static final String SEPARATOR = "�";
    private AsyncHttpClient client;
    private CompletedCallback closedCallback;
    private boolean connected = true;
    private String sessionId;
    private Uri sessionUrl;
    private StringCallback stringCallback;

    public boolean heartbeats() {
        return false;
    }

    public XHRPollingTransport(AsyncHttpClient asyncHttpClient, String str, String str2) {
        this.client = asyncHttpClient;
        this.sessionUrl = Uri.parse(str);
        this.sessionId = str2;
        doLongPolling();
    }

    public boolean isConnected() {
        return this.connected;
    }

    public void setClosedCallback(CompletedCallback completedCallback) {
        this.closedCallback = completedCallback;
    }

    public void disconnect() {
        this.connected = false;
        close(null);
    }

    /* access modifiers changed from: private */
    public void close(Exception exc) {
        CompletedCallback completedCallback = this.closedCallback;
        if (completedCallback != null) {
            completedCallback.onCompleted(exc);
        }
    }

    public AsyncServer getServer() {
        return this.client.getServer();
    }

    public void send(String str) {
        if (str.startsWith("5")) {
            postMessage(str);
            return;
        }
        AsyncHttpPost asyncHttpPost = new AsyncHttpPost(computedRequestUrl());
        asyncHttpPost.setBody(new StringBody(str));
        this.client.executeString(asyncHttpPost, new AsyncHttpClient.StringCallback() {
            public void onCompleted(Exception exc, AsyncHttpResponse asyncHttpResponse, String str) {
                if (exc != null) {
                    XHRPollingTransport.this.close(exc);
                } else {
                    XHRPollingTransport.this.sendResult(str);
                }
            }
        });
    }

    private void postMessage(String str) {
        if (str.startsWith("5")) {
            AsyncHttpPost asyncHttpPost = new AsyncHttpPost(computedRequestUrl());
            asyncHttpPost.setBody(new StringBody(str));
            this.client.executeString(asyncHttpPost, null);
        }
    }

    /* access modifiers changed from: private */
    public void doLongPolling() {
        this.client.executeString(new AsyncHttpGet(computedRequestUrl()), new AsyncHttpClient.StringCallback() {
            public void onCompleted(Exception exc, AsyncHttpResponse asyncHttpResponse, String str) {
                if (exc != null) {
                    XHRPollingTransport.this.close(exc);
                    return;
                }
                XHRPollingTransport.this.sendResult(str);
                XHRPollingTransport.this.doLongPolling();
            }
        });
    }

    /* access modifiers changed from: private */
    public void sendResult(String str) {
        if (this.stringCallback != null) {
            String str2 = SEPARATOR;
            if (!str.contains(str2)) {
                this.stringCallback.onStringAvailable(str);
                return;
            }
            String[] split = str.split(str2);
            for (int i = 1; i < split.length; i += 2) {
                this.stringCallback.onStringAvailable(split[i + 1]);
            }
        }
    }

    private String computedRequestUrl() {
        return this.sessionUrl.buildUpon().appendQueryParameter("t", String.valueOf(System.currentTimeMillis())).build().toString();
    }

    public void setStringCallback(StringCallback stringCallback2) {
        this.stringCallback = stringCallback2;
    }

    public String getSessionId() {
        return this.sessionId;
    }
}
