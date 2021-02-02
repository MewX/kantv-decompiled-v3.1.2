package com.koushikdutta.async.http.server;

import android.text.TextUtils;
import com.koushikdutta.async.AsyncServer;
import com.koushikdutta.async.AsyncSocket;
import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.Util;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.CompletedCallback.NullCompletedCallback;
import com.koushikdutta.async.callback.DataCallback.NullDataCallback;
import com.koushikdutta.async.callback.WritableCallback;
import com.koushikdutta.async.http.AsyncHttpResponse;
import com.koushikdutta.async.http.Headers;
import com.koushikdutta.async.http.HttpUtil;
import com.koushikdutta.async.http.Protocol;
import com.koushikdutta.async.http.filter.ChunkedOutputFilter;
import com.koushikdutta.async.util.StreamUtility;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.Locale;
import org.eclipse.jetty.http.HttpHeaderValues;
import org.eclipse.jetty.http.HttpHeaders;
import org.json.JSONObject;

public class AsyncHttpServerResponseImpl implements AsyncHttpServerResponse {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    CompletedCallback closedCallback;
    int code = 200;
    boolean ended;
    boolean headWritten = false;
    private long mContentLength = -1;
    boolean mEnded;
    private Headers mRawHeaders = new Headers();
    AsyncHttpServerRequestImpl mRequest;
    DataSink mSink;
    AsyncSocket mSocket;
    WritableCallback writable;

    /* access modifiers changed from: protected */
    public void report(Exception exc) {
    }

    public Headers getHeaders() {
        return this.mRawHeaders;
    }

    public AsyncSocket getSocket() {
        return this.mSocket;
    }

    AsyncHttpServerResponseImpl(AsyncSocket asyncSocket, AsyncHttpServerRequestImpl asyncHttpServerRequestImpl) {
        this.mSocket = asyncSocket;
        this.mRequest = asyncHttpServerRequestImpl;
        if (HttpUtil.isKeepAlive(Protocol.HTTP_1_1, asyncHttpServerRequestImpl.getHeaders())) {
            this.mRawHeaders.set(HttpHeaders.CONNECTION, HttpHeaders.KEEP_ALIVE);
        }
    }

    public void write(ByteBufferList byteBufferList) {
        if (!this.headWritten) {
            initFirstWrite();
        }
        if (byteBufferList.remaining() != 0) {
            DataSink dataSink = this.mSink;
            if (dataSink != null) {
                dataSink.write(byteBufferList);
            }
        }
    }

    /* access modifiers changed from: 0000 */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0043  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void initFirstWrite() {
        /*
            r10 = this;
            boolean r0 = r10.headWritten
            if (r0 == 0) goto L_0x0005
            return
        L_0x0005:
            r0 = 1
            r10.headWritten = r0
            com.koushikdutta.async.http.Headers r1 = r10.mRawHeaders
            java.lang.String r2 = "Transfer-Encoding"
            java.lang.String r1 = r1.get(r2)
            java.lang.String r3 = ""
            boolean r3 = r3.equals(r1)
            if (r3 == 0) goto L_0x001d
            com.koushikdutta.async.http.Headers r3 = r10.mRawHeaders
            r3.removeAll(r2)
        L_0x001d:
            java.lang.String r3 = "Chunked"
            boolean r4 = r3.equalsIgnoreCase(r1)
            r5 = 0
            if (r4 != 0) goto L_0x0028
            if (r1 != 0) goto L_0x003a
        L_0x0028:
            com.koushikdutta.async.http.Headers r1 = r10.mRawHeaders
            java.lang.String r4 = "Connection"
            java.lang.String r1 = r1.get(r4)
            java.lang.String r4 = "close"
            boolean r1 = r4.equalsIgnoreCase(r1)
            if (r1 != 0) goto L_0x003a
            r1 = 1
            goto L_0x003b
        L_0x003a:
            r1 = 0
        L_0x003b:
            long r6 = r10.mContentLength
            r8 = 0
            int r4 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r4 >= 0) goto L_0x005b
            com.koushikdutta.async.http.Headers r4 = r10.mRawHeaders
            java.lang.String r6 = "Content-Length"
            java.lang.String r4 = r4.get(r6)
            boolean r6 = android.text.TextUtils.isEmpty(r4)
            if (r6 != 0) goto L_0x005b
            java.lang.Long r4 = java.lang.Long.valueOf(r4)
            long r6 = r4.longValue()
            r10.mContentLength = r6
        L_0x005b:
            long r6 = r10.mContentLength
            int r4 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r4 >= 0) goto L_0x006a
            if (r1 == 0) goto L_0x006a
            com.koushikdutta.async.http.Headers r1 = r10.mRawHeaders
            r1.set(r2, r3)
            r1 = 1
            goto L_0x006b
        L_0x006a:
            r1 = 0
        L_0x006b:
            java.util.Locale r2 = java.util.Locale.ENGLISH
            r3 = 2
            java.lang.Object[] r3 = new java.lang.Object[r3]
            int r4 = r10.code
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            r3[r5] = r4
            int r4 = r10.code
            java.lang.String r4 = com.koushikdutta.async.http.server.AsyncHttpServer.getResponseCodeDescription(r4)
            r3[r0] = r4
            java.lang.String r0 = "HTTP/1.1 %s %s"
            java.lang.String r0 = java.lang.String.format(r2, r0, r3)
            com.koushikdutta.async.http.Headers r2 = r10.mRawHeaders
            java.lang.String r0 = r2.toPrefixString(r0)
            com.koushikdutta.async.AsyncSocket r2 = r10.mSocket
            byte[] r0 = r0.getBytes()
            com.koushikdutta.async.http.server.AsyncHttpServerResponseImpl$1 r3 = new com.koushikdutta.async.http.server.AsyncHttpServerResponseImpl$1
            r3.<init>(r1)
            com.koushikdutta.async.Util.writeAll(r2, r0, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.koushikdutta.async.http.server.AsyncHttpServerResponseImpl.initFirstWrite():void");
    }

    public void setWriteableCallback(WritableCallback writableCallback) {
        DataSink dataSink = this.mSink;
        if (dataSink != null) {
            dataSink.setWriteableCallback(writableCallback);
        } else {
            this.writable = writableCallback;
        }
    }

    public WritableCallback getWriteableCallback() {
        DataSink dataSink = this.mSink;
        if (dataSink != null) {
            return dataSink.getWriteableCallback();
        }
        return this.writable;
    }

    public void end() {
        if (!this.ended) {
            this.ended = true;
            if (!this.headWritten || this.mSink != null) {
                if (!this.headWritten) {
                    this.mRawHeaders.remove(HttpHeaders.TRANSFER_ENCODING);
                }
                DataSink dataSink = this.mSink;
                if (dataSink instanceof ChunkedOutputFilter) {
                    ((ChunkedOutputFilter) dataSink).setMaxBuffer(Integer.MAX_VALUE);
                    this.mSink.write(new ByteBufferList());
                    onEnd();
                } else if (this.headWritten) {
                    onEnd();
                } else if (!this.mRequest.getMethod().equalsIgnoreCase("HEAD")) {
                    send("text/html", "");
                } else {
                    writeHead();
                    onEnd();
                }
            }
        }
    }

    public void writeHead() {
        initFirstWrite();
    }

    public void setContentType(String str) {
        this.mRawHeaders.set("Content-Type", str);
    }

    public void send(String str, byte[] bArr) {
        this.mContentLength = (long) bArr.length;
        this.mRawHeaders.set("Content-Length", Integer.toString(bArr.length));
        this.mRawHeaders.set("Content-Type", str);
        Util.writeAll((DataSink) this, bArr, (CompletedCallback) new CompletedCallback() {
            public void onCompleted(Exception exc) {
                AsyncHttpServerResponseImpl.this.onEnd();
            }
        });
    }

    public void send(String str, String str2) {
        try {
            send(str, str2.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    /* access modifiers changed from: protected */
    public void onEnd() {
        this.mEnded = true;
    }

    public void send(String str) {
        String str2 = this.mRawHeaders.get("Content-Type");
        if (str2 == null) {
            str2 = "text/html; charset=utf-8";
        }
        send(str2, str);
    }

    public void send(JSONObject jSONObject) {
        send("application/json; charset=utf-8", jSONObject.toString());
    }

    public void sendStream(InputStream inputStream, long j) {
        final InputStream inputStream2 = inputStream;
        long j2 = j - 1;
        String str = this.mRequest.getHeaders().get(HttpHeaders.RANGE);
        String str2 = HttpHeaderValues.BYTES;
        long j3 = 0;
        if (str != null) {
            String[] split = str.split("=");
            if (split.length != 2 || !str2.equals(split[0])) {
                code(416);
                end();
                return;
            }
            String[] split2 = split[1].split("-");
            try {
                if (split2.length <= 2) {
                    if (!TextUtils.isEmpty(split2[0])) {
                        j3 = Long.parseLong(split2[0]);
                    }
                    if (split2.length == 2 && !TextUtils.isEmpty(split2[1])) {
                        j2 = Long.parseLong(split2[1]);
                    }
                    code(206);
                    getHeaders().set(HttpHeaders.CONTENT_RANGE, String.format(Locale.ENGLISH, "bytes %d-%d/%d", new Object[]{Long.valueOf(j3), Long.valueOf(j2), Long.valueOf(j)}));
                } else {
                    throw new MalformedRangeException();
                }
            } catch (Exception unused) {
                code(416);
                end();
                return;
            }
        }
        try {
            if (j3 == inputStream2.skip(j3)) {
                this.mContentLength = (j2 - j3) + 1;
                this.mRawHeaders.set("Content-Length", String.valueOf(this.mContentLength));
                this.mRawHeaders.set(HttpHeaders.ACCEPT_RANGES, str2);
                if (this.mRequest.getMethod().equals("HEAD")) {
                    writeHead();
                    onEnd();
                    return;
                }
                Util.pump(inputStream2, this.mContentLength, this, new CompletedCallback() {
                    public void onCompleted(Exception exc) {
                        StreamUtility.closeQuietly(inputStream2);
                        AsyncHttpServerResponseImpl.this.onEnd();
                    }
                });
                return;
            }
            throw new StreamSkipException("skip failed to skip requested amount");
        } catch (Exception unused2) {
            code(500);
            end();
        }
    }

    public void sendFile(File file) {
        String str = "Content-Type";
        try {
            if (this.mRawHeaders.get(str) == null) {
                this.mRawHeaders.set(str, AsyncHttpServer.getContentType(file.getAbsolutePath()));
            }
            sendStream(new BufferedInputStream(new FileInputStream(file), SettingsJsonConstants.SETTINGS_LOG_BUFFER_SIZE_DEFAULT), file.length());
        } catch (FileNotFoundException unused) {
            code(404);
            end();
        }
    }

    public void proxy(final AsyncHttpResponse asyncHttpResponse) {
        code(asyncHttpResponse.code());
        asyncHttpResponse.headers().removeAll(HttpHeaders.TRANSFER_ENCODING);
        asyncHttpResponse.headers().removeAll("Content-Encoding");
        Headers headers = asyncHttpResponse.headers();
        String str = HttpHeaders.CONNECTION;
        headers.removeAll(str);
        getHeaders().addAll(asyncHttpResponse.headers());
        asyncHttpResponse.headers().set(str, "close");
        Util.pump((DataEmitter) asyncHttpResponse, (DataSink) this, (CompletedCallback) new CompletedCallback() {
            public void onCompleted(Exception exc) {
                asyncHttpResponse.setEndCallback(new NullCompletedCallback());
                asyncHttpResponse.setDataCallback(new NullDataCallback());
                AsyncHttpServerResponseImpl.this.end();
            }
        });
    }

    public AsyncHttpServerResponse code(int i) {
        this.code = i;
        return this;
    }

    public int code() {
        return this.code;
    }

    public void redirect(String str) {
        code(302);
        this.mRawHeaders.set("Location", str);
        end();
    }

    public void onCompleted(Exception exc) {
        end();
    }

    public boolean isOpen() {
        DataSink dataSink = this.mSink;
        if (dataSink != null) {
            return dataSink.isOpen();
        }
        return this.mSocket.isOpen();
    }

    public void setClosedCallback(CompletedCallback completedCallback) {
        DataSink dataSink = this.mSink;
        if (dataSink != null) {
            dataSink.setClosedCallback(completedCallback);
        } else {
            this.closedCallback = completedCallback;
        }
    }

    public CompletedCallback getClosedCallback() {
        DataSink dataSink = this.mSink;
        if (dataSink != null) {
            return dataSink.getClosedCallback();
        }
        return this.closedCallback;
    }

    public AsyncServer getServer() {
        return this.mSocket.getServer();
    }

    public String toString() {
        if (this.mRawHeaders == null) {
            return super.toString();
        }
        return this.mRawHeaders.toPrefixString(String.format(Locale.ENGLISH, "HTTP/1.1 %s %s", new Object[]{Integer.valueOf(this.code), AsyncHttpServer.getResponseCodeDescription(this.code)}));
    }
}
