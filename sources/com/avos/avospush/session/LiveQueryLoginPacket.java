package com.avos.avospush.session;

import com.avos.avoscloud.AVUtils;
import com.avos.avoscloud.Messages.GenericCommand.Builder;

public class LiveQueryLoginPacket extends LoginPacket {
    public static final int SERVICE_LIVE_QUERY = 1;
    public static final int SERVICE_PUSH = 0;
    private String subscribeId;

    public void setSubscribeId(String str) {
        this.subscribeId = str;
    }

    /* access modifiers changed from: protected */
    public Builder getGenericCommandBuilder() {
        Builder genericCommandBuilder = super.getGenericCommandBuilder();
        if (!AVUtils.isBlankString(this.subscribeId)) {
            genericCommandBuilder.setInstallationId(this.subscribeId);
            genericCommandBuilder.setService(1);
        }
        return genericCommandBuilder;
    }
}
