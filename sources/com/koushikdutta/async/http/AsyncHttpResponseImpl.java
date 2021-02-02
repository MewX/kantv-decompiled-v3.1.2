package com.koushikdutta.async.http;

import com.koushikdutta.async.AsyncServer;
import com.koushikdutta.async.AsyncSocket;
import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.FilteredDataEmitter;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.DataCallback.NullDataCallback;
import com.koushikdutta.async.callback.WritableCallback;
import com.koushikdutta.async.http.AsyncHttpClientMiddleware.ResponseHead;
import com.koushikdutta.async.http.body.AsyncHttpRequestBody;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.nio.charset.Charset;

abstract class AsyncHttpResponseImpl extends FilteredDataEmitter implements AsyncSocket, AsyncHttpResponse, ResponseHead {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    int code;
    boolean mCompleted = false;
    private boolean mFirstWrite = true;
    protected Headers mHeaders;
    private CompletedCallback mReporter = new CompletedCallback() {
        public void onCompleted(Exception exc) {
            if (exc == null || AsyncHttpResponseImpl.this.mCompleted) {
                AsyncHttpResponseImpl.this.report(exc);
            } else {
                AsyncHttpResponseImpl.this.report(new ConnectionClosedException("connection closed before response completed.", exc));
            }
        }
    };
    private AsyncHttpRequest mRequest;
    DataSink mSink;
    /* access modifiers changed from: private */
    public AsyncSocket mSocket;
    String message;
    String protocol;

    /* access modifiers changed from: protected */
    public void onHeadersReceived() {
    }

    /* access modifiers changed from: protected */
    public void onRequestCompleted(Exception exc) {
    }

    public AsyncSocket socket() {
        return this.mSocket;
    }

    public AsyncHttpRequest getRequest() {
        return this.mRequest;
    }

    /* access modifiers changed from: 0000 */
    public void setSocket(AsyncSocket asyncSocket) {
        this.mSocket = asyncSocket;
        AsyncSocket asyncSocket2 = this.mSocket;
        if (asyncSocket2 != null) {
            asyncSocket2.setEndCallback(this.mReporter);
        }
    }

    /* access modifiers changed from: protected */
    public void onHeadersSent() {
        AsyncHttpRequestBody body = this.mRequest.getBody();
        if (body != null) {
            body.write(this.mRequest, this, new CompletedCallback() {
                public void onCompleted(Exception exc) {
                    AsyncHttpResponseImpl.this.onRequestCompleted(exc);
                }
            });
        } else {
            onRequestCompleted(null);
        }
    }

    public DataEmitter emitter() {
        return getDataEmitter();
    }

    public ResponseHead emitter(DataEmitter dataEmitter) {
        setDataEmitter(dataEmitter);
        return this;
    }

    private void terminate() {
        this.mSocket.setDataCallback(new NullDataCallback() {
            public void onDataAvailable(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
                super.onDataAvailable(dataEmitter, byteBufferList);
                AsyncHttpResponseImpl.this.mSocket.close();
            }
        });
    }

    /* access modifiers changed from: protected */
    public void report(Exception exc) {
        super.report(exc);
        terminate();
        this.mSocket.setWriteableCallback(null);
        this.mSocket.setClosedCallback(null);
        this.mSocket.setEndCallback(null);
        this.mCompleted = true;
    }

    public void close() {
        super.close();
        terminate();
    }

    public AsyncHttpResponseImpl(AsyncHttpRequest asyncHttpRequest) {
        this.mRequest = asyncHttpRequest;
    }

    public Headers headers() {
        return this.mHeaders;
    }

    public ResponseHead headers(Headers headers) {
        this.mHeaders = headers;
        return this;
    }

    public int code() {
        return this.code;
    }

    public ResponseHead code(int i) {
        this.code = i;
        return this;
    }

    public ResponseHead protocol(String str) {
        this.protocol = str;
        return this;
    }

    public ResponseHead message(String str) {
        this.message = str;
        return this;
    }

    public String protocol() {
        return this.protocol;
    }

    public String message() {
        return this.message;
    }

    public String toString() {
        Headers headers = this.mHeaders;
        if (headers == null) {
            return super.toString();
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.protocol);
        String str = " ";
        sb.append(str);
        sb.append(this.code);
        sb.append(str);
        sb.append(this.message);
        return headers.toPrefixString(sb.toString());
    }

    private void assertContent() {
        if (this.mFirstWrite) {
            this.mFirstWrite = false;
        }
    }

    public DataSink sink() {
        return this.mSink;
    }

    public ResponseHead sink(DataSink dataSink) {
        this.mSink = dataSink;
        return this;
    }

    public void write(ByteBufferList byteBufferList) {
        assertContent();
        this.mSink.write(byteBufferList);
    }

    public void end() {
        throw new AssertionError("end called?");
    }

    public void setWriteableCallback(WritableCallback writableCallback) {
        this.mSink.setWriteableCallback(writableCallback);
    }

    public WritableCallback getWriteableCallback() {
        return this.mSink.getWriteableCallback();
    }

    public boolean isOpen() {
        return this.mSink.isOpen();
    }

    public void setClosedCallback(CompletedCallback completedCallback) {
        this.mSink.setClosedCallback(completedCallback);
    }

    public CompletedCallback getClosedCallback() {
        return this.mSink.getClosedCallback();
    }

    public AsyncServer getServer() {
        return this.mSocket.getServer();
    }

    public String charset() {
        Multimap parseSemicolonDelimited = Multimap.parseSemicolonDelimited(headers().get("Content-Type"));
        if (parseSemicolonDelimited != null) {
            String string = parseSemicolonDelimited.getString(HttpRequest.PARAM_CHARSET);
            if (string != null && Charset.isSupported(string)) {
                return string;
            }
        }
        return null;
    }
}
