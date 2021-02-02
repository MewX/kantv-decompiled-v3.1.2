package com.avos.avoscloud.java_websocket.client;

import com.avos.avoscloud.java_websocket.WebSocketImpl;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;

class WebSocketWriteThread implements Runnable {
    WebSocketImpl engine;
    OutputStream ostream;

    public WebSocketWriteThread(WebSocketImpl webSocketImpl, OutputStream outputStream) {
        this.engine = webSocketImpl;
        this.ostream = outputStream;
    }

    public void run() {
        Thread.currentThread().setName("WebsocketWriteThread");
        while (!Thread.interrupted()) {
            try {
                ByteBuffer byteBuffer = (ByteBuffer) this.engine.outQueue.take();
                this.ostream.write(byteBuffer.array(), 0, byteBuffer.limit());
                this.ostream.flush();
            } catch (IOException unused) {
                this.engine.eot();
                return;
            } catch (InterruptedException unused2) {
                return;
            }
        }
    }
}
