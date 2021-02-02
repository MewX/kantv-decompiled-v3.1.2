package com.kantv.flt_tencent_im.modules.conversation.base;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.kantv.flt_tencent_im.modules.message.MessageInfo;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class ConversationInfo implements Serializable, Comparable<ConversationInfo> {
    public static final int TYPE_COMMON = 1;
    public static final int TYPE_CUSTOM = 2;
    private String conversationId;
    private Bitmap icon;
    private List<Object> iconUrlList = new ArrayList();
    private String id;
    private boolean isGroup;
    private MessageInfo lastMessage;
    private long lastMessageTime;
    private String title;
    private boolean top;
    private int type;
    private int unRead;

    public List<Object> getIconUrlList() {
        return this.iconUrlList;
    }

    public void setIconUrlList(List<Object> list) {
        this.iconUrlList = list;
    }

    public String getConversationId() {
        return this.conversationId;
    }

    public void setConversationId(String str) {
        this.conversationId = str;
    }

    public String getId() {
        return this.id;
    }

    public void setId(String str) {
        this.id = str;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public int getUnRead() {
        return this.unRead;
    }

    public void setUnRead(int i) {
        this.unRead = i;
    }

    public boolean isGroup() {
        return this.isGroup;
    }

    public void setGroup(boolean z) {
        this.isGroup = z;
    }

    public boolean isTop() {
        return this.top;
    }

    public void setTop(boolean z) {
        this.top = z;
    }

    public long getLastMessageTime() {
        return this.lastMessageTime;
    }

    public void setLastMessageTime(long j) {
        this.lastMessageTime = j;
    }

    public int getType() {
        return this.type;
    }

    public void setType(int i) {
        this.type = i;
    }

    public MessageInfo getLastMessage() {
        return this.lastMessage;
    }

    public void setLastMessage(MessageInfo messageInfo) {
        this.lastMessage = messageInfo;
    }

    public int compareTo(@NonNull ConversationInfo conversationInfo) {
        return this.lastMessageTime > conversationInfo.lastMessageTime ? -1 : 1;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ConversationInfo{type=");
        sb.append(this.type);
        sb.append(", unRead=");
        sb.append(this.unRead);
        sb.append(", conversationId='");
        sb.append(this.conversationId);
        sb.append('\'');
        sb.append(", id='");
        sb.append(this.id);
        sb.append('\'');
        sb.append(", iconUrl='");
        sb.append(this.iconUrlList.size());
        sb.append('\'');
        sb.append(", title='");
        sb.append(this.title);
        sb.append('\'');
        sb.append(", icon=");
        sb.append(this.icon);
        sb.append(", isGroup=");
        sb.append(this.isGroup);
        sb.append(", top=");
        sb.append(this.top);
        sb.append(", lastMessageTime=");
        sb.append(this.lastMessageTime);
        sb.append(", lastMessage=");
        sb.append(this.lastMessage);
        sb.append('}');
        return sb.toString();
    }
}
