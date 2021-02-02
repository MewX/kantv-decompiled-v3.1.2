package com.avos.avoscloud.java_websocket;

import com.avos.avoscloud.java_websocket.drafts.Draft;
import com.avos.avoscloud.java_websocket.exceptions.InvalidDataException;
import com.avos.avoscloud.java_websocket.exceptions.InvalidHandshakeException;
import com.avos.avoscloud.java_websocket.framing.Framedata;
import com.avos.avoscloud.java_websocket.framing.Framedata.Opcode;
import com.avos.avoscloud.java_websocket.framing.FramedataImpl1;
import com.avos.avoscloud.java_websocket.handshake.ClientHandshake;
import com.avos.avoscloud.java_websocket.handshake.HandshakeImpl1Server;
import com.avos.avoscloud.java_websocket.handshake.ServerHandshake;
import com.avos.avoscloud.java_websocket.handshake.ServerHandshakeBuilder;
import java.net.InetSocketAddress;

public abstract class WebSocketAdapter implements WebSocketListener {
    public void onWebsocketHandshakeReceivedAsClient(WebSocket webSocket, ClientHandshake clientHandshake, ServerHandshake serverHandshake) throws InvalidDataException {
    }

    public void onWebsocketHandshakeSentAsClient(WebSocket webSocket, ClientHandshake clientHandshake) throws InvalidDataException {
    }

    public void onWebsocketMessageFragment(WebSocket webSocket, Framedata framedata) {
    }

    public void onWebsocketPong(WebSocket webSocket, Framedata framedata) {
    }

    public ServerHandshakeBuilder onWebsocketHandshakeReceivedAsServer(WebSocket webSocket, Draft draft, ClientHandshake clientHandshake) throws InvalidDataException {
        return new HandshakeImpl1Server();
    }

    public void onWebsocketPing(WebSocket webSocket, Framedata framedata) {
        FramedataImpl1 framedataImpl1 = new FramedataImpl1(framedata);
        framedataImpl1.setOptcode(Opcode.PONG);
        webSocket.sendFrame(framedataImpl1);
    }

    public String getFlashPolicy(WebSocket webSocket) throws InvalidDataException {
        InetSocketAddress localSocketAddress = webSocket.getLocalSocketAddress();
        if (localSocketAddress != null) {
            StringBuffer stringBuffer = new StringBuffer(90);
            stringBuffer.append("<cross-domain-policy><allow-access-from domain=\"*\" to-ports=\"");
            stringBuffer.append(localSocketAddress.getPort());
            stringBuffer.append("\" /></cross-domain-policy>\u0000");
            return stringBuffer.toString();
        }
        throw new InvalidHandshakeException("socket not bound");
    }
}
