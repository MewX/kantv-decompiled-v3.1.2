package com.avos.avoscloud.im.v2;

import com.avos.avoscloud.im.v2.AVIMTypedMessage;

public class AVIMTypedMessageHandler<T extends AVIMTypedMessage> extends MessageHandler<T> {
    public void onMessage(T t, AVIMConversation aVIMConversation, AVIMClient aVIMClient) {
    }

    public void onMessageReceipt(T t, AVIMConversation aVIMConversation, AVIMClient aVIMClient) {
    }
}
