package com.avos.avoscloud.im.v2.conversation;

import java.util.HashMap;
import java.util.Map;

public class AVIMConversationMemberInfo {
    public static String ATTR_CONVID = "conversationId";
    private static String ATTR_CREATEDAT = "createdAt";
    private static String ATTR_INVITER = "inviter";
    public static String ATTR_MEMBERID = "peerId";
    private static String ATTR_NICKNAME = "nickname";
    public static String ATTR_OJBECTID = "infoId";
    public static String ATTR_ROLE = "role";
    private String conversationId;
    private String createdAt;
    private String inviter;
    private boolean isOwner;
    private String memberId;
    private String nickname;
    private String objectId;
    private ConversationMemberRole role;

    public AVIMConversationMemberInfo(String str, String str2, ConversationMemberRole conversationMemberRole) {
        this(null, str, str2, conversationMemberRole);
    }

    public AVIMConversationMemberInfo(String str, String str2, String str3, ConversationMemberRole conversationMemberRole) {
        this.conversationId = null;
        this.memberId = null;
        this.isOwner = false;
        this.createdAt = null;
        this.objectId = null;
        this.inviter = null;
        this.nickname = null;
        this.objectId = str;
        this.conversationId = str2;
        this.memberId = str3;
        this.role = conversationMemberRole;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("convId:");
        sb.append(this.conversationId);
        sb.append(", memberId:");
        sb.append(this.memberId);
        sb.append(", role:");
        sb.append(this.role.toString());
        return sb.toString();
    }

    public String getConversationId() {
        return this.conversationId;
    }

    public String getMemberId() {
        return this.memberId;
    }

    public ConversationMemberRole getRole() {
        return this.role;
    }

    public void setRole(ConversationMemberRole conversationMemberRole) {
        this.role = conversationMemberRole;
    }

    public String getCreatedAt() {
        return this.createdAt;
    }

    public void setCreatedAt(String str) {
        this.createdAt = str;
    }

    public String getObjectId() {
        return this.objectId;
    }

    public String getInviter() {
        return this.inviter;
    }

    public void setInviter(String str) {
        this.inviter = str;
    }

    public String getNickname() {
        return this.nickname;
    }

    public void setNickname(String str) {
        this.nickname = str;
    }

    public boolean isOwner() {
        return this.isOwner;
    }

    public Map<String, String> getUpdateAttrs() {
        HashMap hashMap = new HashMap();
        hashMap.put(ATTR_MEMBERID, getMemberId());
        hashMap.put(ATTR_ROLE, getRole().getName());
        hashMap.put(ATTR_OJBECTID, getObjectId());
        return hashMap;
    }

    public static AVIMConversationMemberInfo createInstance(Map<String, Object> map) {
        if (map == null) {
            return null;
        }
        return new AVIMConversationMemberInfo((String) map.get(ATTR_OJBECTID), (String) map.get(ATTR_CONVID), (String) map.get(ATTR_MEMBERID), ConversationMemberRole.fromString((String) map.get(ATTR_ROLE)));
    }
}
