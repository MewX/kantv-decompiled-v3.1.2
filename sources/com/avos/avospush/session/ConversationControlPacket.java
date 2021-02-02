package com.avos.avospush.session;

import com.avos.avoscloud.AVUtils;
import com.avos.avoscloud.Messages.ConvCommand;
import com.avos.avoscloud.Messages.ConvMemberInfo;
import com.avos.avoscloud.Messages.GenericCommand.Builder;
import com.avos.avoscloud.Messages.JsonObjectMessage;
import com.avos.avoscloud.Messages.OpType;
import com.avos.avoscloud.Signature;
import com.avos.avoscloud.im.v2.AVIMClient;
import java.util.List;
import java.util.Map;

public class ConversationControlPacket extends PeerBasedCommandPacket {
    public static final String CONVERSATION_CMD = "conv";
    private Map<String, Object> attributes;
    private String conversationId;
    private boolean isTemporary = false;
    private boolean isTransient;
    private boolean isUnique;
    private Map<String, Object> memberInfo = null;
    private List<String> members;
    private String nonce;
    private String op;
    private int queryLimit = 0;
    private int queryOffset = 0;
    private String signature;
    private int tempTTL = 0;
    private long timestamp;

    public static class ConversationControlOp {
        public static final String ADD = "add";
        public static final String ADDED = "added";
        public static final String ADD_SHUTUP = "add_shutup";
        public static final String BLOCKED = "blocked";
        public static final String COUNT = "count";
        public static final String JOINED = "joined";
        public static final String LEFT = "left";
        public static final String MAX_READ = "max_read";
        public static final String MEMBER_BLOCKED_NOTIFY = "members_blocked";
        public static final String MEMBER_COUNT_QUERY_RESULT = "result";
        public static final String MEMBER_INFO_CHANGED = "member_info_changed";
        public static final String MEMBER_JOINED = "members_joined";
        public static final String MEMBER_LEFTED = "members_left";
        public static final String MEMBER_SHUTPED = "members_shutuped";
        public static final String MEMBER_UNBLOCKED_NOTIFY = "members_unblocked";
        public static final String MEMBER_UNSHUTUPED = "members_unshutuped";
        public static final String MEMBER_UPDATE = "member_info_update";
        public static final String MEMBER_UPDATED = "member_info_updated";
        public static final String MUTE = "mute";
        public static final String QUERY = "query";
        public static final String QUERY_RESULT = "results";
        public static final String QUERY_SHUTUP = "query_shutup";
        public static final String QUERY_SHUTUP_RESULT = "shutup_result";
        public static final String REMOVE = "remove";
        public static final String REMOVED = "removed";
        public static final String REMOVE_SHUTUP = "remove_shutup";
        public static final String SHUTUPED = "shutuped";
        public static final String SHUTUP_ADDED = "shutup_added";
        public static final String SHUTUP_REMOVED = "shutup_removed";
        public static final String START = "start";
        public static final String STARTED = "started";
        public static final String UNBLOCKED = "unblocked";
        public static final String UNMUTE = "unmute";
        public static final String UNSHUTUPED = "unshutuped";
        public static final String UPDATE = "update";
        public static final String UPDATED = "updated";
    }

    public ConversationControlPacket() {
        setCmd(CONVERSATION_CMD);
    }

    public String getConversationId() {
        return this.conversationId;
    }

    public void setConversationId(String str) {
        this.conversationId = str;
    }

    public String getOp() {
        return this.op;
    }

    public void setOp(String str) {
        this.op = str;
    }

    public List<String> getMembers() {
        return this.members;
    }

    public void setMembers(List<String> list) {
        this.members = list;
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

    public Map<String, Object> getAttributes() {
        return this.attributes;
    }

    public void setAttributes(Map<String, Object> map) {
        this.attributes = map;
    }

    public boolean isTransient() {
        return this.isTransient;
    }

    public void setTransient(boolean z) {
        this.isTransient = z;
    }

    public boolean isUnique() {
        return this.isUnique;
    }

    public void setUnique(boolean z) {
        this.isUnique = z;
    }

    public boolean isTemporary() {
        return this.isTemporary;
    }

    public void setTemporary(boolean z) {
        this.isTemporary = z;
    }

    public int getTempTTL() {
        return this.tempTTL;
    }

    public void setTempTTL(int i) {
        this.tempTTL = i;
    }

    public void setMemberInfo(Map<String, Object> map) {
        this.memberInfo = map;
    }

    public int getQueryOffset() {
        return this.queryOffset;
    }

    public void setQueryOffset(int i) {
        this.queryOffset = i;
    }

    public int getQueryLimit() {
        return this.queryLimit;
    }

    public void setQueryLimit(int i) {
        this.queryLimit = i;
    }

    /* access modifiers changed from: protected */
    public Builder getGenericCommandBuilder() {
        Builder genericCommandBuilder = super.getGenericCommandBuilder();
        genericCommandBuilder.setOp(OpType.valueOf(this.op));
        genericCommandBuilder.setConvMessage(getConvCommand());
        return genericCommandBuilder;
    }

    private ConvCommand getConvCommand() {
        ConvCommand.Builder newBuilder = ConvCommand.newBuilder();
        Map<String, Object> map = this.attributes;
        if (map != null && !map.isEmpty()) {
            JsonObjectMessage.Builder newBuilder2 = JsonObjectMessage.newBuilder();
            newBuilder2.setData(this.attributes.toString());
            newBuilder.setAttr(newBuilder2);
        }
        if (!AVUtils.isEmptyList(this.members)) {
            newBuilder.addAllM(this.members);
        }
        if (getSignature() != null) {
            newBuilder.setS(getSignature());
            newBuilder.setT(getTimestamp());
            newBuilder.setN(getNonce());
        }
        if (!AVUtils.isBlankString(this.conversationId)) {
            newBuilder.setCid(this.conversationId);
        }
        boolean z = this.isTransient;
        if (z) {
            newBuilder.setTransient(z);
        }
        boolean z2 = this.isUnique;
        if (z2) {
            newBuilder.setUnique(z2);
        }
        boolean z3 = this.isTemporary;
        if (z3) {
            newBuilder.setTempConv(z3);
            newBuilder.setTempConvTTL(this.tempTTL);
        }
        if (this.memberInfo != null) {
            ConvMemberInfo.Builder newBuilder3 = ConvMemberInfo.newBuilder();
            String str = "peerId";
            if (this.memberInfo.containsKey(str)) {
                newBuilder3.setPid((String) this.memberInfo.get(str));
                newBuilder.setTargetClientId((String) this.memberInfo.get(str));
            }
            String str2 = "role";
            if (this.memberInfo.containsKey(str2)) {
                newBuilder3.setRole((String) this.memberInfo.get(str2));
            }
            String str3 = "infoId";
            if (this.memberInfo.containsKey(str3)) {
                newBuilder3.setInfoId((String) this.memberInfo.get(str3));
            }
            newBuilder.setInfo(newBuilder3.build());
        }
        int i = this.queryOffset;
        if (i > 0) {
            newBuilder.setNext(new Integer(i).toString());
        }
        int i2 = this.queryLimit;
        if (i2 > 0) {
            newBuilder.setLimit(i2);
        }
        return newBuilder.build();
    }

    public static ConversationControlPacket genConversationCommand(String str, String str2, List<String> list, String str3, Map<String, Object> map, Signature signature2, boolean z, boolean z2, boolean z3, int i, boolean z4, int i2) {
        ConversationControlPacket conversationControlPacket = new ConversationControlPacket();
        if (AVIMClient.getClientsCount() > 1) {
            conversationControlPacket.setPeerId(str);
        }
        conversationControlPacket.setConversationId(str2);
        conversationControlPacket.setRequestId(i2);
        conversationControlPacket.setTransient(z);
        conversationControlPacket.setUnique(z2);
        conversationControlPacket.setTemporary(z3);
        if (z3) {
            conversationControlPacket.setTempTTL(i);
        }
        if (!AVUtils.isEmptyList(list)) {
            conversationControlPacket.setMembers(list);
        }
        conversationControlPacket.setOp(str3);
        if (signature2 != null && (str3.equals("add") || str3.equals("remove") || str3.equals("start"))) {
            conversationControlPacket.setSignature(signature2.getSignature());
            conversationControlPacket.setNonce(signature2.getNonce());
            conversationControlPacket.setTimestamp(signature2.getTimestamp());
        }
        conversationControlPacket.setRequestId(i2);
        conversationControlPacket.setAttributes(map);
        return conversationControlPacket;
    }

    public static ConversationControlPacket genConversationCommand(String str, String str2, List<String> list, String str3, Map<String, Object> map, Signature signature2, boolean z, int i) {
        return genConversationCommand(str, str2, list, str3, map, signature2, z, false, false, 0, false, i);
    }

    public static ConversationControlPacket genConversationCommand(String str, String str2, List<String> list, String str3, Map<String, Object> map, Signature signature2, int i) {
        return genConversationCommand(str, str2, list, str3, map, signature2, false, i);
    }

    public static ConversationControlPacket genConversationMemberCommand(String str, String str2, String str3, Map<String, Object> map, Signature signature2, int i) {
        ConversationControlPacket genConversationCommand = genConversationCommand(str, str2, null, str3, null, signature2, false, false, false, 0, false, i);
        Map<String, Object> map2 = map;
        genConversationCommand.setMemberInfo(map);
        return genConversationCommand;
    }
}
