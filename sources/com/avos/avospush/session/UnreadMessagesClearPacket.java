package com.avos.avospush.session;

import com.avos.avoscloud.AVUtils;
import com.avos.avoscloud.Messages.GenericCommand.Builder;
import com.avos.avoscloud.Messages.ReadCommand;
import com.avos.avoscloud.Messages.ReadTuple;
import com.avos.avoscloud.im.v2.AVIMClient;

public class UnreadMessagesClearPacket extends PeerBasedCommandPacket {
    String conversationId;
    String messageId;
    long messageTS;

    public UnreadMessagesClearPacket() {
        setCmd("read");
    }

    /* access modifiers changed from: 0000 */
    public String getConversationId() {
        return this.conversationId;
    }

    /* access modifiers changed from: 0000 */
    public void setConversationId(String str) {
        this.conversationId = str;
    }

    /* access modifiers changed from: 0000 */
    public void setMessageId(String str) {
        this.messageId = str;
    }

    /* access modifiers changed from: 0000 */
    public void setMessageTS(long j) {
        this.messageTS = j;
    }

    /* access modifiers changed from: protected */
    public Builder getGenericCommandBuilder() {
        Builder genericCommandBuilder = super.getGenericCommandBuilder();
        genericCommandBuilder.setReadMessage(getReadCommand());
        return genericCommandBuilder;
    }

    /* access modifiers changed from: protected */
    public ReadCommand getReadCommand() {
        ReadCommand.Builder newBuilder = ReadCommand.newBuilder();
        ReadTuple.Builder addConvsBuilder = newBuilder.addConvsBuilder();
        if (!AVUtils.isBlankString(this.messageId)) {
            addConvsBuilder.setMid(this.messageId);
        }
        long j = this.messageTS;
        if (j > 0) {
            addConvsBuilder.setTimestamp(j);
        }
        addConvsBuilder.setCid(this.conversationId);
        return newBuilder.build();
    }

    public static UnreadMessagesClearPacket getUnreadClearPacket(String str, String str2, String str3, long j, int i) {
        UnreadMessagesClearPacket unreadMessagesClearPacket = new UnreadMessagesClearPacket();
        if (AVIMClient.getClientsCount() > 1) {
            unreadMessagesClearPacket.setPeerId(str);
        }
        unreadMessagesClearPacket.setConversationId(str2);
        unreadMessagesClearPacket.setRequestId(i);
        unreadMessagesClearPacket.setMessageId(str3);
        unreadMessagesClearPacket.setMessageTS(j);
        return unreadMessagesClearPacket;
    }
}
