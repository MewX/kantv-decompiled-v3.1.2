package com.avos.avoscloud.java_websocket;

import com.avos.avoscloud.java_websocket.drafts.Draft;
import java.net.Socket;
import java.util.List;

public interface WebSocketFactory {
    WebSocket createWebSocket(WebSocketAdapter webSocketAdapter, Draft draft, Socket socket);

    WebSocket createWebSocket(WebSocketAdapter webSocketAdapter, List<Draft> list, Socket socket);
}
