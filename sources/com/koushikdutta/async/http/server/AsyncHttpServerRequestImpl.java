package com.koushikdutta.async.http.server;

import com.koushikdutta.async.AsyncSocket;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.FilteredDataEmitter;
import com.koushikdutta.async.LineEmitter;
import com.koushikdutta.async.LineEmitter.StringCallback;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.CompletedCallback.NullCompletedCallback;
import com.koushikdutta.async.callback.DataCallback;
import com.koushikdutta.async.http.Headers;
import com.koushikdutta.async.http.HttpUtil;
import com.koushikdutta.async.http.Protocol;
import com.koushikdutta.async.http.body.AsyncHttpRequestBody;
import java.util.regex.Matcher;

public abstract class AsyncHttpServerRequestImpl extends FilteredDataEmitter implements AsyncHttpServerRequest, CompletedCallback {
    AsyncHttpRequestBody mBody;
    StringCallback mHeaderCallback = new StringCallback() {
        public void onStringAvailable(String str) {
            try {
                if (AsyncHttpServerRequestImpl.this.statusLine == null) {
                    AsyncHttpServerRequestImpl.this.statusLine = str;
                    if (!AsyncHttpServerRequestImpl.this.statusLine.contains("HTTP/")) {
                        AsyncHttpServerRequestImpl.this.onNotHttp();
                        AsyncHttpServerRequestImpl.this.mSocket.setDataCallback(null);
                    }
                } else if (!"\r".equals(str)) {
                    AsyncHttpServerRequestImpl.this.mRawHeaders.addLine(str);
                } else {
                    DataEmitter bodyDecoder = HttpUtil.getBodyDecoder(AsyncHttpServerRequestImpl.this.mSocket, Protocol.HTTP_1_1, AsyncHttpServerRequestImpl.this.mRawHeaders, true);
                    AsyncHttpServerRequestImpl.this.mBody = HttpUtil.getBody(bodyDecoder, AsyncHttpServerRequestImpl.this.mReporter, AsyncHttpServerRequestImpl.this.mRawHeaders);
                    if (AsyncHttpServerRequestImpl.this.mBody == null) {
                        AsyncHttpServerRequestImpl.this.mBody = AsyncHttpServerRequestImpl.this.onUnknownBody(AsyncHttpServerRequestImpl.this.mRawHeaders);
                        if (AsyncHttpServerRequestImpl.this.mBody == null) {
                            AsyncHttpServerRequestImpl.this.mBody = new UnknownRequestBody(AsyncHttpServerRequestImpl.this.mRawHeaders.get("Content-Type"));
                        }
                    }
                    AsyncHttpServerRequestImpl.this.mBody.parse(bodyDecoder, AsyncHttpServerRequestImpl.this.mReporter);
                    AsyncHttpServerRequestImpl.this.onHeadersReceived();
                }
            } catch (Exception e) {
                AsyncHttpServerRequestImpl.this.onCompleted(e);
            }
        }
    };
    Matcher mMatcher;
    /* access modifiers changed from: private */
    public Headers mRawHeaders = new Headers();
    /* access modifiers changed from: private */
    public CompletedCallback mReporter = new CompletedCallback() {
        public void onCompleted(Exception exc) {
            AsyncHttpServerRequestImpl.this.onCompleted(exc);
        }
    };
    AsyncSocket mSocket;
    String method;
    /* access modifiers changed from: private */
    public String statusLine;

    /* access modifiers changed from: protected */
    public abstract void onHeadersReceived();

    /* access modifiers changed from: protected */
    public AsyncHttpRequestBody onUnknownBody(Headers headers) {
        return null;
    }

    public String getStatusLine() {
        return this.statusLine;
    }

    public void onCompleted(Exception exc) {
        report(exc);
    }

    /* access modifiers changed from: protected */
    public void onNotHttp() {
        System.out.println("not http!");
    }

    public String getMethod() {
        return this.method;
    }

    /* access modifiers changed from: 0000 */
    public void setSocket(AsyncSocket asyncSocket) {
        this.mSocket = asyncSocket;
        LineEmitter lineEmitter = new LineEmitter();
        this.mSocket.setDataCallback(lineEmitter);
        lineEmitter.setLineCallback(this.mHeaderCallback);
        this.mSocket.setEndCallback(new NullCompletedCallback());
    }

    public AsyncSocket getSocket() {
        return this.mSocket;
    }

    public Headers getHeaders() {
        return this.mRawHeaders;
    }

    public void setDataCallback(DataCallback dataCallback) {
        this.mSocket.setDataCallback(dataCallback);
    }

    public DataCallback getDataCallback() {
        return this.mSocket.getDataCallback();
    }

    public boolean isChunked() {
        return this.mSocket.isChunked();
    }

    public Matcher getMatcher() {
        return this.mMatcher;
    }

    public AsyncHttpRequestBody getBody() {
        return this.mBody;
    }

    public void pause() {
        this.mSocket.pause();
    }

    public void resume() {
        this.mSocket.resume();
    }

    public boolean isPaused() {
        return this.mSocket.isPaused();
    }

    public String toString() {
        Headers headers = this.mRawHeaders;
        if (headers == null) {
            return super.toString();
        }
        return headers.toPrefixString(this.statusLine);
    }
}
