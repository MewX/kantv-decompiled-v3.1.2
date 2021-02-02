package com.avos.avoscloud.java_websocket.handshake;

public interface ServerHandshake extends Handshakedata {
    short getHttpStatus();

    String getHttpStatusMessage();
}
