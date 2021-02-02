package com.avos.avospush.session;

import com.avos.avoscloud.AVUtils;
import com.avos.avoscloud.Messages.CommandType;
import com.avos.avoscloud.Messages.GenericCommand;
import com.avos.avoscloud.Messages.GenericCommand.Builder;

public abstract class CommandPacket {
    public static final int UNSUPPORTED_OPERATION = -65537;
    private String appId;
    private String cmd;
    private String installationId;
    private int requestId = UNSUPPORTED_OPERATION;

    public int getRequestId() {
        return this.requestId;
    }

    public void setRequestId(int i) {
        this.requestId = i;
    }

    public String getCmd() {
        return this.cmd;
    }

    public void setCmd(String str) {
        this.cmd = str;
    }

    public String getAppId() {
        return this.appId;
    }

    public void setAppId(String str) {
        this.appId = str;
    }

    public String getInstallationId() {
        return this.installationId;
    }

    public void setInstallationId(String str) {
        this.installationId = str;
    }

    /* access modifiers changed from: protected */
    public Builder getGenericCommandBuilder() {
        Builder newBuilder = GenericCommand.newBuilder();
        if (!AVUtils.isBlankContent(this.appId)) {
            newBuilder.setAppId(this.appId);
        }
        newBuilder.setCmd(CommandType.valueOf(getCmd()));
        if (getInstallationId() != null) {
            newBuilder.setInstallationId(getInstallationId());
        }
        int i = this.requestId;
        if (i > -65537) {
            newBuilder.setI(i);
        }
        return newBuilder;
    }

    public GenericCommand getGenericCommand() {
        return getGenericCommandBuilder().build();
    }

    public int getLength() {
        return getGenericCommandBuilder().build().getSerializedSize();
    }
}
