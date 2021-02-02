package com.avos.avoscloud.java_websocket.client;

import com.avos.avoscloud.java_websocket.WebSocketImpl;
import com.avos.avoscloud.java_websocket.WebSocketListener;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

class WebSocketReadThread implements Runnable {
    WebSocketImpl engine;
    InputStream istream;
    WebSocketListener wsl;

    public WebSocketReadThread(WebSocketListener webSocketListener, WebSocketImpl webSocketImpl, InputStream inputStream) {
        this.engine = webSocketImpl;
        this.istream = inputStream;
        this.wsl = webSocketListener;
    }

    public void run() {
        byte[] bArr = new byte[WebSocketImpl.RCVBUF];
        Thread.currentThread().setName("WebsocketReadThread");
        while (!Thread.interrupted() && !this.engine.isClosed()) {
            try {
                int read = this.istream.read(bArr);
                if (read == -1) {
                    break;
                }
                this.engine.decode(ByteBuffer.wrap(bArr, 0, read));
            } catch (IOException unused) {
                this.engine.eot();
                return;
            } catch (RuntimeException e) {
                this.wsl.onWebsocketError(this.engine, e);
                this.engine.closeConnection(1006, e.getMessage());
                return;
            }
        }
        this.engine.eot();
    }
}
