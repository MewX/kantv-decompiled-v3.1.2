package com.avos.avoscloud.java_websocket.handshake;

public class HandshakeImpl1Client extends HandshakedataImpl1 implements ClientHandshakeBuilder {
    private String resourceDescriptor = "*";

    public void setResourceDescriptor(String str) throws IllegalArgumentException {
        if (str != null) {
            this.resourceDescriptor = str;
            return;
        }
        throw new IllegalArgumentException("http resource descriptor must not be null");
    }

    public String getResourceDescriptor() {
        return this.resourceDescriptor;
    }
}
