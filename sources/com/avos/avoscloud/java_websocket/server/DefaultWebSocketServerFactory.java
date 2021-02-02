package com.avos.avoscloud.java_websocket.server;

import com.avos.avoscloud.java_websocket.WebSocketAdapter;
import com.avos.avoscloud.java_websocket.WebSocketImpl;
import com.avos.avoscloud.java_websocket.WebSocketListener;
import com.avos.avoscloud.java_websocket.drafts.Draft;
import com.avos.avoscloud.java_websocket.server.WebSocketServer.WebSocketServerFactory;
import java.net.Socket;
import java.nio.channels.SelectionKey;
import java.nio.channels.SocketChannel;
import java.util.List;

public class DefaultWebSocketServerFactory implements WebSocketServerFactory {
    public SocketChannel wrapChannel(SocketChannel socketChannel, SelectionKey selectionKey) {
        return socketChannel;
    }

    public WebSocketImpl createWebSocket(WebSocketAdapter webSocketAdapter, Draft draft, Socket socket) {
        return new WebSocketImpl((WebSocketListener) webSocketAdapter, draft);
    }

    public WebSocketImpl createWebSocket(WebSocketAdapter webSocketAdapter, List<Draft> list, Socket socket) {
        return new WebSocketImpl((WebSocketListener) webSocketAdapter, list);
    }
}
