package com.kantv.flt_tencent_im.modules.chat.base;

import com.tencent.imsdk.TIMConversationType;
import java.io.Serializable;

public class ChatInfo implements Serializable {
    private String chatName;
    private String id = "";
    private boolean isTopChat;
    private TIMConversationType type = TIMConversationType.C2C;

    public String getChatName() {
        return this.chatName;
    }

    public void setChatName(String str) {
        this.chatName = str;
    }

    public TIMConversationType getType() {
        return this.type;
    }

    public void setType(TIMConversationType tIMConversationType) {
        this.type = tIMConversationType;
    }

    public String getId() {
        return this.id;
    }

    public void setId(String str) {
        this.id = str;
    }

    public boolean isTopChat() {
        return this.isTopChat;
    }

    public void setTopChat(boolean z) {
        this.isTopChat = z;
    }
}
