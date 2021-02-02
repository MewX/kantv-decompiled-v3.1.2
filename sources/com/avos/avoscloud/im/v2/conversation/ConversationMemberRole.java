package com.avos.avoscloud.im.v2.conversation;

public enum ConversationMemberRole {
    MANAGER("Manager"),
    MEMBER("Member");
    
    private String role;

    private ConversationMemberRole(String str) {
        this.role = str;
    }

    public String getName() {
        return this.role;
    }

    public static ConversationMemberRole fromString(String str) {
        ConversationMemberRole[] values;
        for (ConversationMemberRole conversationMemberRole : values()) {
            if (conversationMemberRole.role.equalsIgnoreCase(str)) {
                return conversationMemberRole;
            }
        }
        return null;
    }
}
