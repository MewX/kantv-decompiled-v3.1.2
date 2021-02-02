package com.avos.avoscloud.im.v2;

import com.avos.avoscloud.AVIMEventHandler;
import com.avos.avoscloud.im.v2.AVIMMessage;

public abstract class MessageHandler<T extends AVIMMessage> extends AVIMEventHandler {
    public abstract void onMessage(T t, AVIMConversation aVIMConversation, AVIMClient aVIMClient);

    public abstract void onMessageReceipt(T t, AVIMConversation aVIMConversation, AVIMClient aVIMClient);

    /* access modifiers changed from: protected */
    public final void processEvent0(int i, Object obj, Object obj2, Object obj3) {
        processMessage(i, obj2, (AVIMConversation) obj3);
    }

    private void processMessage(int i, Object obj, AVIMConversation aVIMConversation) {
        switch (i) {
            case 50000:
                onMessage((AVIMMessage) obj, aVIMConversation, aVIMConversation.client);
                return;
            case 50001:
                onMessageReceipt((AVIMMessage) obj, aVIMConversation, aVIMConversation.client);
                return;
            default:
                return;
        }
    }
}
