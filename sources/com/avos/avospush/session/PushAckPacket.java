package com.avos.avospush.session;

import com.avos.avoscloud.Messages.AckCommand;
import com.avos.avoscloud.Messages.GenericCommand.Builder;
import java.util.List;

public class PushAckPacket extends CommandPacket {
    List<String> ids;

    public PushAckPacket() {
        setCmd("ack");
    }

    public void setMessageIds(List<String> list) {
        this.ids = list;
    }

    /* access modifiers changed from: protected */
    public Builder getGenericCommandBuilder() {
        Builder genericCommandBuilder = super.getGenericCommandBuilder();
        genericCommandBuilder.setAckMessage(getAckCommand());
        return genericCommandBuilder;
    }

    /* access modifiers changed from: protected */
    public AckCommand getAckCommand() {
        AckCommand.Builder newBuilder = AckCommand.newBuilder();
        newBuilder.addAllIds(this.ids);
        return newBuilder.build();
    }
}
