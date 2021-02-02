package com.kantv.flt_tencent_im.modules.chat;

import com.kantv.flt_tencent_im.modules.chat.base.ChatInfo;
import com.kantv.flt_tencent_im.modules.chat.base.ChatManagerKit;

public class C2CChatManagerKit extends ChatManagerKit {
    private static final String TAG = "C2CChatManagerKit";
    private static C2CChatManagerKit mKit;
    private ChatInfo mCurrentChatInfo;

    /* access modifiers changed from: protected */
    public boolean isGroup() {
        return false;
    }

    private C2CChatManagerKit() {
        super.init();
    }

    public static C2CChatManagerKit getInstance() {
        if (mKit == null) {
            mKit = new C2CChatManagerKit();
        }
        return mKit;
    }

    public void destroyChat() {
        super.destroyChat();
        this.mCurrentChatInfo = null;
        this.mIsMore = true;
    }

    public ChatInfo getCurrentChatInfo() {
        return this.mCurrentChatInfo;
    }

    public void setCurrentChatInfo(ChatInfo chatInfo) {
        super.setCurrentChatInfo(chatInfo);
        this.mCurrentChatInfo = chatInfo;
    }
}
