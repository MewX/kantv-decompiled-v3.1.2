package com.avos.avospush.session;

import com.avos.avoscloud.AVUtils;
import com.avos.avoscloud.Messages.DirectCommand;
import com.avos.avoscloud.Messages.GenericCommand.Builder;
import com.avos.avoscloud.im.v2.Conversation;
import java.util.Collection;

public class DirectMessagePacket extends PeerBasedCommandPacket {
    private String msg;
    private boolean receipt;
    private String roomId;
    private Collection<String> toPeerIds;
    private boolean transi;

    public DirectMessagePacket() {
        setCmd(Conversation.PARAM_MESSAGE_QUERY_DIRECT);
    }

    public String getMsg() {
        return this.msg;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public Collection<String> getToPeerIds() {
        return this.toPeerIds;
    }

    public void setToPeerIds(Collection<String> collection) {
        this.toPeerIds = collection;
    }

    public boolean isTransient() {
        return this.transi;
    }

    public void setTransient(boolean z) {
        this.transi = z;
    }

    public String getGroupId() {
        return this.roomId;
    }

    public void setGroupId(String str) {
        this.roomId = str;
    }

    public boolean isReceipt() {
        return this.receipt;
    }

    public void setReceipt(boolean z) {
        this.receipt = z;
    }

    /* access modifiers changed from: protected */
    public Builder getGenericCommandBuilder() {
        Builder genericCommandBuilder = super.getGenericCommandBuilder();
        genericCommandBuilder.setDirectMessage(getDirectCommand());
        return genericCommandBuilder;
    }

    /* access modifiers changed from: protected */
    public DirectCommand getDirectCommand() {
        DirectCommand.Builder newBuilder = DirectCommand.newBuilder();
        newBuilder.setMsg(getMsg());
        if (getToPeerIds() != null && !getToPeerIds().isEmpty()) {
            newBuilder.addAllToPeerIds(getToPeerIds());
        }
        if (this.receipt) {
            newBuilder.setR(true);
        }
        if (!AVUtils.isBlankString(getGroupId())) {
            newBuilder.setRoomId(getGroupId());
        }
        if (isTransient()) {
            newBuilder.setTransient(isTransient());
        }
        return newBuilder.build();
    }
}
