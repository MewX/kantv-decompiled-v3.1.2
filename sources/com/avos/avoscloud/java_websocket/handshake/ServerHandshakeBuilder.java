package com.avos.avoscloud.java_websocket.handshake;

public interface ServerHandshakeBuilder extends HandshakeBuilder, ServerHandshake {
    void setHttpStatus(short s);

    void setHttpStatusMessage(String str);
}
