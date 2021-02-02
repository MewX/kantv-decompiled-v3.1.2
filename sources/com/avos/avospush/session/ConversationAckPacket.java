package com.avos.avospush.session;

import android.text.TextUtils;
import com.avos.avoscloud.Messages.AckCommand;
import com.avos.avoscloud.Messages.GenericCommand.Builder;

public class ConversationAckPacket extends PeerBasedCommandPacket {
    String conversationId;
    Long largestTimeStamp;
    String messageId;

    public ConversationAckPacket() {
        super.setCmd("ack");
    }

    public String getConversationId() {
        return this.conversationId;
    }

    public void setConversationId(String str) {
        this.conversationId = str;
    }

    public String getMessageId() {
        return this.messageId;
    }

    public void setMessageId(String str) {
        this.messageId = str;
    }

    public void setTimestamp(long j) {
        this.largestTimeStamp = Long.valueOf(j);
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
        if (!TextUtils.isEmpty(this.messageId)) {
            newBuilder.setMid(this.messageId);
        }
        Long l = this.largestTimeStamp;
        if (l != null) {
            newBuilder.setTots(l.longValue());
        }
        if (!TextUtils.isEmpty(this.conversationId)) {
            newBuilder.setCid(this.conversationId);
        }
        return newBuilder.build();
    }

    public static ConversationAckPacket getConversationAckPacket(String str, String str2, String str3) {
        ConversationAckPacket conversationAckPacket = new ConversationAckPacket();
        conversationAckPacket.setPeerId(str);
        conversationAckPacket.setConversationId(str2);
        conversationAckPacket.setMessageId(str3);
        return conversationAckPacket;
    }

    public static ConversationAckPacket getConversationAckPacket(String str, String str2, Long l) {
        ConversationAckPacket conversationAckPacket = new ConversationAckPacket();
        conversationAckPacket.setPeerId(str);
        conversationAckPacket.setConversationId(str2);
        conversationAckPacket.setTimestamp(l.longValue());
        return conversationAckPacket;
    }
}
