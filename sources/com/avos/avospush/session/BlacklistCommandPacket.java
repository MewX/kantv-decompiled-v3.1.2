package com.avos.avospush.session;

import com.avos.avoscloud.AVUtils;
import com.avos.avoscloud.Messages.BlacklistCommand;
import com.avos.avoscloud.Messages.GenericCommand.Builder;
import com.avos.avoscloud.Messages.OpType;
import com.avos.avoscloud.Signature;
import com.avos.avoscloud.im.v2.AVIMClient;
import java.util.List;

public class BlacklistCommandPacket extends PeerBasedCommandPacket {
    public static final String BLACKLIST_CMD = "blacklist";
    private List<String> clientIds;
    private String conversationId;
    private int limit = 0;
    private String nonce;
    private int offset = 0;
    private String op;
    private String signature;
    private long timestamp;

    public static class BlacklistCommandOp {
        public static final String BLOCK = "block";
        public static final String BLOCKED = "blocked";
        public static final String MEMBER_BLOCKED = "members_blocked";
        public static final String MEMBER_UNBLOCKED = "members_unblocked";
        public static final String QUERY = "query";
        public static final String QUERY_RESULT = "query_result";
        public static final String UNBLOCK = "unblock";
        public static final String UNBLOCKED = "unblocked";
    }

    public BlacklistCommandPacket() {
        setCmd(BLACKLIST_CMD);
    }

    public String getOp() {
        return this.op;
    }

    public void setOp(String str) {
        this.op = str;
    }

    public String getConversationId() {
        return this.conversationId;
    }

    public void setConversationId(String str) {
        this.conversationId = str;
    }

    public List<String> getClientIds() {
        return this.clientIds;
    }

    public void setClientIds(List<String> list) {
        this.clientIds = list;
    }

    public String getSignature() {
        return this.signature;
    }

    public void setSignature(String str) {
        this.signature = str;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public void setTimestamp(long j) {
        this.timestamp = j;
    }

    public String getNonce() {
        return this.nonce;
    }

    public void setNonce(String str) {
        this.nonce = str;
    }

    public int getOffset() {
        return this.offset;
    }

    public void setOffset(int i) {
        this.offset = i;
    }

    public int getLimit() {
        return this.limit;
    }

    public void setLimit(int i) {
        this.limit = i;
    }

    /* access modifiers changed from: protected */
    public Builder getGenericCommandBuilder() {
        Builder genericCommandBuilder = super.getGenericCommandBuilder();
        genericCommandBuilder.setOp(OpType.valueOf(this.op));
        genericCommandBuilder.setBlacklistMessage(getBlacklistCommand());
        return genericCommandBuilder;
    }

    /* access modifiers changed from: protected */
    public BlacklistCommand getBlacklistCommand() {
        BlacklistCommand.Builder newBuilder = BlacklistCommand.newBuilder();
        newBuilder.setSrcCid(getConversationId());
        List<String> list = this.clientIds;
        if (list != null && list.size() > 0) {
            newBuilder.addAllToPids(this.clientIds);
        }
        int i = this.offset;
        if (i > 0) {
            newBuilder.setNext(new Integer(i).toString());
        }
        int i2 = this.limit;
        if (i2 > 0) {
            newBuilder.setLimit(i2);
        }
        if (!AVUtils.isBlankString(this.signature)) {
            newBuilder.setS(getSignature());
            newBuilder.setT(getTimestamp());
            newBuilder.setN(getNonce());
        }
        return newBuilder.build();
    }

    public static BlacklistCommandPacket genBlacklistCommandPacket(String str, String str2, String str3, List<String> list, Signature signature2, int i) {
        BlacklistCommandPacket blacklistCommandPacket = new BlacklistCommandPacket();
        if (AVIMClient.getClientsCount() > 1) {
            blacklistCommandPacket.setPeerId(str);
        }
        blacklistCommandPacket.setConversationId(str2);
        blacklistCommandPacket.setOp(str3);
        blacklistCommandPacket.setClientIds(list);
        blacklistCommandPacket.setRequestId(i);
        if (signature2 != null) {
            blacklistCommandPacket.setSignature(signature2.getSignature());
            blacklistCommandPacket.setNonce(signature2.getNonce());
            blacklistCommandPacket.setTimestamp(signature2.getTimestamp());
        }
        return blacklistCommandPacket;
    }

    public static BlacklistCommandPacket genBlacklistCommandPacket(String str, String str2, String str3, int i, int i2, int i3) {
        BlacklistCommandPacket blacklistCommandPacket = new BlacklistCommandPacket();
        if (AVIMClient.getClientsCount() > 1) {
            blacklistCommandPacket.setPeerId(str);
        }
        blacklistCommandPacket.setConversationId(str2);
        blacklistCommandPacket.setOp(str3);
        blacklistCommandPacket.setLimit(i2);
        blacklistCommandPacket.setOffset(i);
        blacklistCommandPacket.setRequestId(i3);
        return blacklistCommandPacket;
    }
}
