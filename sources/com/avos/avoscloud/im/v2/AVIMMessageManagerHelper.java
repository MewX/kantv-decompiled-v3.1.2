package com.avos.avoscloud.im.v2;

public class AVIMMessageManagerHelper {
    public static void processMessage(AVIMMessage aVIMMessage, int i, AVIMClient aVIMClient, boolean z, boolean z2) {
        aVIMMessage.setCurrentClient(aVIMClient.getClientId());
        AVIMMessageManager.processMessage(aVIMMessage, i, aVIMClient, z, z2);
    }

    public static void processMessageReceipt(AVIMMessage aVIMMessage, AVIMClient aVIMClient) {
        AVIMMessageManager.processMessageReceipt(aVIMMessage, aVIMClient);
    }

    public static AVIMClientEventHandler getClientEventHandler() {
        return AVIMClient.getClientEventHandler();
    }

    public static AVIMConversationEventHandler getConversationEventHandler() {
        return AVIMMessageManager.getConversationEventHandler();
    }

    public static AVIMMessage parseTypedMessage(AVIMMessage aVIMMessage) {
        return AVIMMessageManager.parseTypedMessage(aVIMMessage);
    }

    public static void removeConversationCache(AVIMConversation aVIMConversation) {
        aVIMConversation.storage.deleteConversationData(aVIMConversation.getConversationId());
    }

    public static String getMessageToken(AVIMMessage aVIMMessage) {
        return aVIMMessage.getUniqueToken();
    }
}
