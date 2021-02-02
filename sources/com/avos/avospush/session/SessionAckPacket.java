package com.avos.avospush.session;

import com.avos.avoscloud.AVUtils;
import com.avos.avoscloud.Messages.AckCommand;
import com.avos.avoscloud.Messages.GenericCommand.Builder;
import java.util.ArrayList;
import java.util.List;

public class SessionAckPacket extends PeerBasedCommandPacket {
    List<String> ids;

    public SessionAckPacket() {
        setCmd("ack");
    }

    public void setMessageId(String str) {
        this.ids = new ArrayList(1);
        this.ids.add(str);
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
        if (!AVUtils.isEmptyList(this.ids)) {
            newBuilder.addAllIds(this.ids);
        }
        return newBuilder.build();
    }
}
