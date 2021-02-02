package com.avos.avoscloud.java_websocket.server;

import com.avos.avoscloud.java_websocket.SSLSocketChannel2;
import com.avos.avoscloud.java_websocket.WebSocketAdapter;
import com.avos.avoscloud.java_websocket.WebSocketImpl;
import com.avos.avoscloud.java_websocket.WebSocketListener;
import com.avos.avoscloud.java_websocket.drafts.Draft;
import com.avos.avoscloud.java_websocket.server.WebSocketServer.WebSocketServerFactory;
import java.io.IOException;
import java.net.Socket;
import java.nio.channels.ByteChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.SocketChannel;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLEngine;

public class DefaultSSLWebSocketServerFactory implements WebSocketServerFactory {
    protected ExecutorService exec;
    protected SSLContext sslcontext;

    public DefaultSSLWebSocketServerFactory(SSLContext sSLContext) {
        this(sSLContext, Executors.newSingleThreadScheduledExecutor());
    }

    public DefaultSSLWebSocketServerFactory(SSLContext sSLContext, ExecutorService executorService) {
        if (sSLContext == null || executorService == null) {
            throw new IllegalArgumentException();
        }
        this.sslcontext = sSLContext;
        this.exec = executorService;
    }

    public ByteChannel wrapChannel(SocketChannel socketChannel, SelectionKey selectionKey) throws IOException {
        SSLEngine createSSLEngine = this.sslcontext.createSSLEngine();
        createSSLEngine.setUseClientMode(false);
        return new SSLSocketChannel2(socketChannel, createSSLEngine, this.exec, selectionKey);
    }

    public WebSocketImpl createWebSocket(WebSocketAdapter webSocketAdapter, Draft draft, Socket socket) {
        return new WebSocketImpl((WebSocketListener) webSocketAdapter, draft);
    }

    public WebSocketImpl createWebSocket(WebSocketAdapter webSocketAdapter, List<Draft> list, Socket socket) {
        return new WebSocketImpl((WebSocketListener) webSocketAdapter, list);
    }
}
