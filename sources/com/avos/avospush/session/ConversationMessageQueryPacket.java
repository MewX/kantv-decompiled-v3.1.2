package com.avos.avospush.session;

import com.avos.avoscloud.AVUtils;
import com.avos.avoscloud.Messages.GenericCommand.Builder;
import com.avos.avoscloud.Messages.LogsCommand;
import com.avos.avoscloud.Messages.LogsCommand.QueryDirection;
import com.avos.avoscloud.im.v2.AVIMClient;

public class ConversationMessageQueryPacket extends PeerBasedCommandPacket {
    String conversationId;
    int direct;
    int limit;
    String msgId;
    int msgType;
    int requestId;
    boolean sclosed;
    boolean tclosed;
    long timestamp;
    String toMsgId;
    long toTimestamp;

    public ConversationMessageQueryPacket() {
        setCmd("logs");
    }

    public boolean isSclosed() {
        return this.sclosed;
    }

    public void setSclosed(boolean z) {
        this.sclosed = z;
    }

    public boolean isTclosed() {
        return this.tclosed;
    }

    public void setTclosed(boolean z) {
        this.tclosed = z;
    }

    public int getDirect() {
        return this.direct;
    }

    public void setDirect(int i) {
        this.direct = i;
    }

    public String getConversationId() {
        return this.conversationId;
    }

    public void setConversationId(String str) {
        this.conversationId = str;
    }

    public String getMsgId() {
        return this.msgId;
    }

    public void setMsgId(String str) {
        this.msgId = str;
    }

    public int getLimit() {
        return this.limit;
    }

    public void setLimit(int i) {
        this.limit = i;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public void setTimestamp(long j) {
        this.timestamp = j;
    }

    public String getToMsgId() {
        return this.toMsgId;
    }

    public void setToMsgId(String str) {
        this.toMsgId = str;
    }

    public long getToTimestamp() {
        return this.toTimestamp;
    }

    public void setToTimestamp(long j) {
        this.toTimestamp = j;
    }

    public int getRequestId() {
        return this.requestId;
    }

    public void setRequestId(int i) {
        this.requestId = i;
    }

    public int getMsgType() {
        return this.msgType;
    }

    public void setMsgType(int i) {
        this.msgType = i;
    }

    /* access modifiers changed from: protected */
    public Builder getGenericCommandBuilder() {
        Builder genericCommandBuilder = super.getGenericCommandBuilder();
        genericCommandBuilder.setLogsMessage(getLogsCommand());
        genericCommandBuilder.setI(this.requestId);
        return genericCommandBuilder;
    }

    /* access modifiers changed from: protected */
    public LogsCommand getLogsCommand() {
        LogsCommand.Builder newBuilder = LogsCommand.newBuilder();
        newBuilder.setCid(this.conversationId);
        newBuilder.setLimit(this.limit);
        if (!AVUtils.isBlankString(this.msgId)) {
            newBuilder.setMid(this.msgId);
        }
        long j = this.timestamp;
        if (j > 0) {
            newBuilder.setT(j);
        }
        newBuilder.setTIncluded(this.sclosed);
        if (!AVUtils.isBlankString(this.toMsgId)) {
            newBuilder.setTmid(this.toMsgId);
        }
        long j2 = this.toTimestamp;
        if (j2 > 0) {
            newBuilder.setTt(j2);
        }
        newBuilder.setTtIncluded(this.tclosed);
        if (this.direct == 0) {
            newBuilder.setDirection(QueryDirection.OLD);
        } else {
            newBuilder.setDirection(QueryDirection.NEW);
        }
        int i = this.msgType;
        if (i != 0) {
            newBuilder.setLctype(i);
        }
        return newBuilder.build();
    }

    public static ConversationMessageQueryPacket getConversationMessageQueryPacket(String str, String str2, String str3, long j, boolean z, String str4, long j2, boolean z2, int i, int i2, int i3, int i4) {
        ConversationMessageQueryPacket conversationMessageQueryPacket = new ConversationMessageQueryPacket();
        if (AVIMClient.getClientsCount() > 1) {
            String str5 = str;
            conversationMessageQueryPacket.setPeerId(str);
        }
        String str6 = str2;
        conversationMessageQueryPacket.setConversationId(str2);
        String str7 = str3;
        conversationMessageQueryPacket.setMsgId(str3);
        int i5 = i2;
        conversationMessageQueryPacket.setLimit(i2);
        int i6 = i;
        conversationMessageQueryPacket.setDirect(i);
        long j3 = j;
        conversationMessageQueryPacket.setTimestamp(j);
        boolean z3 = z;
        conversationMessageQueryPacket.setSclosed(z);
        conversationMessageQueryPacket.setRequestId(i4);
        String str8 = str4;
        conversationMessageQueryPacket.setToMsgId(str4);
        long j4 = j2;
        conversationMessageQueryPacket.setToTimestamp(j2);
        boolean z4 = z2;
        conversationMessageQueryPacket.setTclosed(z2);
        int i7 = i3;
        conversationMessageQueryPacket.setMsgType(i3);
        return conversationMessageQueryPacket;
    }
}
