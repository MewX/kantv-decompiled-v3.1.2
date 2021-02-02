package com.koushikdutta.async.http;

import android.text.TextUtils;
import android.util.Base64;
import com.koushikdutta.async.AsyncServer;
import com.koushikdutta.async.AsyncSocket;
import com.koushikdutta.async.BufferedDataSink;
import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.Util;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.DataCallback;
import com.koushikdutta.async.callback.WritableCallback;
import com.koushikdutta.async.http.WebSocket.PingCallback;
import com.koushikdutta.async.http.WebSocket.PongCallback;
import com.koushikdutta.async.http.WebSocket.StringCallback;
import com.koushikdutta.async.http.server.AsyncHttpServerRequest;
import com.koushikdutta.async.http.server.AsyncHttpServerResponse;
import com.tencent.connect.common.Constants;
import io.fabric.sdk.android.services.common.CommonUtils;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.util.LinkedList;
import java.util.UUID;
import org.eclipse.jetty.http.HttpHeaderValues;
import org.eclipse.jetty.http.HttpHeaders;

public class WebSocketImpl implements WebSocket {
    static final String MAGIC = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11";
    private DataCallback mDataCallback;
    CompletedCallback mExceptionCallback;
    HybiParser mParser;
    /* access modifiers changed from: private */
    public PingCallback mPingCallback;
    /* access modifiers changed from: private */
    public PongCallback mPongCallback;
    BufferedDataSink mSink;
    /* access modifiers changed from: private */
    public AsyncSocket mSocket;
    /* access modifiers changed from: private */
    public StringCallback mStringCallback;
    private LinkedList<ByteBufferList> pending;

    public String charset() {
        return null;
    }

    public boolean isChunked() {
        return false;
    }

    public void end() {
        this.mSocket.end();
    }

    private static byte[] toByteArray(UUID uuid) {
        byte[] bArr = new byte[16];
        ByteBuffer.wrap(bArr).asLongBuffer().put(new long[]{uuid.getMostSignificantBits(), uuid.getLeastSignificantBits()});
        return bArr;
    }

    private static String SHA1(String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance(CommonUtils.SHA1_INSTANCE);
            instance.update(str.getBytes("iso-8859-1"), 0, str.length());
            return Base64.encodeToString(instance.digest(), 2);
        } catch (Exception unused) {
            return null;
        }
    }

    /* access modifiers changed from: private */
    public void addAndEmit(ByteBufferList byteBufferList) {
        if (this.pending == null) {
            Util.emitAllData(this, byteBufferList);
            if (byteBufferList.remaining() > 0) {
                this.pending = new LinkedList<>();
                this.pending.add(byteBufferList);
            }
            return;
        }
        while (!isPaused()) {
            ByteBufferList byteBufferList2 = (ByteBufferList) this.pending.remove();
            Util.emitAllData(this, byteBufferList2);
            if (byteBufferList2.remaining() > 0) {
                this.pending.add(0, byteBufferList2);
            }
        }
        if (this.pending.size() == 0) {
            this.pending = null;
        }
    }

    private void setupParser(boolean z, boolean z2) {
        this.mParser = new HybiParser(this.mSocket) {
            /* access modifiers changed from: protected */
            public void report(Exception exc) {
                if (WebSocketImpl.this.mExceptionCallback != null) {
                    WebSocketImpl.this.mExceptionCallback.onCompleted(exc);
                }
            }

            /* access modifiers changed from: protected */
            public void onMessage(byte[] bArr) {
                WebSocketImpl.this.addAndEmit(new ByteBufferList(bArr));
            }

            /* access modifiers changed from: protected */
            public void onMessage(String str) {
                if (WebSocketImpl.this.mStringCallback != null) {
                    WebSocketImpl.this.mStringCallback.onStringAvailable(str);
                }
            }

            /* access modifiers changed from: protected */
            public void onDisconnect(int i, String str) {
                WebSocketImpl.this.mSocket.close();
            }

            /* access modifiers changed from: protected */
            public void sendFrame(byte[] bArr) {
                WebSocketImpl.this.mSink.write(new ByteBufferList(bArr));
            }

            /* access modifiers changed from: protected */
            public void onPing(String str) {
                if (WebSocketImpl.this.mPingCallback != null) {
                    WebSocketImpl.this.mPingCallback.onPingReceived(str);
                }
            }

            /* access modifiers changed from: protected */
            public void onPong(String str) {
                if (WebSocketImpl.this.mPongCallback != null) {
                    WebSocketImpl.this.mPongCallback.onPongReceived(str);
                }
            }
        };
        this.mParser.setMasking(z);
        this.mParser.setDeflate(z2);
        if (this.mSocket.isPaused()) {
            this.mSocket.resume();
        }
    }

    public WebSocketImpl(AsyncHttpServerRequest asyncHttpServerRequest, AsyncHttpServerResponse asyncHttpServerResponse) {
        this(asyncHttpServerRequest.getSocket());
        String str = asyncHttpServerRequest.getHeaders().get("Sec-WebSocket-Key");
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(MAGIC);
        String SHA1 = SHA1(sb.toString());
        asyncHttpServerRequest.getHeaders().get("Origin");
        asyncHttpServerResponse.code(101);
        String str2 = "Upgrade";
        asyncHttpServerResponse.getHeaders().set(str2, "WebSocket");
        asyncHttpServerResponse.getHeaders().set(HttpHeaders.CONNECTION, str2);
        asyncHttpServerResponse.getHeaders().set("Sec-WebSocket-Accept", SHA1);
        String str3 = "Sec-WebSocket-Protocol";
        String str4 = asyncHttpServerRequest.getHeaders().get(str3);
        if (!TextUtils.isEmpty(str4)) {
            asyncHttpServerResponse.getHeaders().set(str3, str4);
        }
        asyncHttpServerResponse.writeHead();
        setupParser(false, false);
    }

    public static void addWebSocketUpgradeHeaders(AsyncHttpRequest asyncHttpRequest, String str) {
        Headers headers = asyncHttpRequest.getHeaders();
        String encodeToString = Base64.encodeToString(toByteArray(UUID.randomUUID()), 2);
        headers.set("Sec-WebSocket-Version", Constants.VIA_REPORT_TYPE_JOININ_GROUP);
        headers.set("Sec-WebSocket-Key", encodeToString);
        headers.set("Sec-WebSocket-Extensions", "x-webkit-deflate-frame");
        String str2 = "Upgrade";
        headers.set(HttpHeaders.CONNECTION, str2);
        headers.set(str2, "websocket");
        if (str != null) {
            headers.set("Sec-WebSocket-Protocol", str);
        }
        String str3 = HttpHeaderValues.NO_CACHE;
        headers.set(HttpHeaders.PRAGMA, str3);
        headers.set("Cache-Control", str3);
        String str4 = "User-Agent";
        if (TextUtils.isEmpty(asyncHttpRequest.getHeaders().get(str4))) {
            asyncHttpRequest.getHeaders().set(str4, "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.15 Safari/537.36");
        }
    }

    public WebSocketImpl(AsyncSocket asyncSocket) {
        this.mSocket = asyncSocket;
        this.mSink = new BufferedDataSink(this.mSocket);
    }

    public static WebSocket finishHandshake(Headers headers, AsyncHttpResponse asyncHttpResponse) {
        if (asyncHttpResponse == null || asyncHttpResponse.code() != 101) {
            return null;
        }
        if (!"websocket".equalsIgnoreCase(asyncHttpResponse.headers().get("Upgrade"))) {
            return null;
        }
        String str = asyncHttpResponse.headers().get("Sec-WebSocket-Accept");
        if (str == null) {
            return null;
        }
        String str2 = headers.get("Sec-WebSocket-Key");
        if (str2 == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str2);
        sb.append(MAGIC);
        if (!str.equalsIgnoreCase(SHA1(sb.toString()).trim())) {
            return null;
        }
        String str3 = headers.get("Sec-WebSocket-Extensions");
        boolean z = false;
        if (str3 != null && str3.equals("x-webkit-deflate-frame")) {
            z = true;
        }
        WebSocketImpl webSocketImpl = new WebSocketImpl(asyncHttpResponse.detachSocket());
        webSocketImpl.setupParser(true, z);
        return webSocketImpl;
    }

    public void close() {
        this.mSocket.close();
    }

    public void setClosedCallback(CompletedCallback completedCallback) {
        this.mSocket.setClosedCallback(completedCallback);
    }

    public CompletedCallback getClosedCallback() {
        return this.mSocket.getClosedCallback();
    }

    public void setEndCallback(CompletedCallback completedCallback) {
        this.mExceptionCallback = completedCallback;
    }

    public CompletedCallback getEndCallback() {
        return this.mExceptionCallback;
    }

    public void send(byte[] bArr) {
        this.mSink.write(new ByteBufferList(this.mParser.frame(bArr)));
    }

    public void send(byte[] bArr, int i, int i2) {
        this.mSink.write(new ByteBufferList(this.mParser.frame(bArr, i, i2)));
    }

    public void send(String str) {
        this.mSink.write(new ByteBufferList(this.mParser.frame(str)));
    }

    public void ping(String str) {
        this.mSink.write(new ByteBufferList(ByteBuffer.wrap(this.mParser.pingFrame(str))));
    }

    public void pong(String str) {
        this.mSink.write(new ByteBufferList(ByteBuffer.wrap(this.mParser.pongFrame(str))));
    }

    public void setStringCallback(StringCallback stringCallback) {
        this.mStringCallback = stringCallback;
    }

    public void setDataCallback(DataCallback dataCallback) {
        this.mDataCallback = dataCallback;
    }

    public StringCallback getStringCallback() {
        return this.mStringCallback;
    }

    public void setPingCallback(PingCallback pingCallback) {
        this.mPingCallback = pingCallback;
    }

    public void setPongCallback(PongCallback pongCallback) {
        this.mPongCallback = pongCallback;
    }

    public PongCallback getPongCallback() {
        return this.mPongCallback;
    }

    public DataCallback getDataCallback() {
        return this.mDataCallback;
    }

    public boolean isOpen() {
        return this.mSocket.isOpen();
    }

    public boolean isBuffering() {
        return this.mSink.remaining() > 0;
    }

    public void write(ByteBufferList byteBufferList) {
        send(byteBufferList.getAllByteArray());
    }

    public void setWriteableCallback(WritableCallback writableCallback) {
        this.mSink.setWriteableCallback(writableCallback);
    }

    public WritableCallback getWriteableCallback() {
        return this.mSink.getWriteableCallback();
    }

    public AsyncSocket getSocket() {
        return this.mSocket;
    }

    public AsyncServer getServer() {
        return this.mSocket.getServer();
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
}
