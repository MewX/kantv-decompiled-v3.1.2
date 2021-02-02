package com.avos.avospush.session;

import com.avos.avoscloud.Messages.GenericCommand.Builder;

public class PeerBasedCommandPacket extends CommandPacket {
    private String peerId;

    public String getPeerId() {
        return this.peerId;
    }

    public void setPeerId(String str) {
        this.peerId = str;
    }

    /* access modifiers changed from: protected */
    public Builder getGenericCommandBuilder() {
        Builder genericCommandBuilder = super.getGenericCommandBuilder();
        if (getPeerId() != null) {
            genericCommandBuilder.setPeerId(getPeerId());
        }
        return genericCommandBuilder;
    }
}
