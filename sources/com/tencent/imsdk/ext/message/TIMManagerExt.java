package com.tencent.imsdk.ext.message;

import androidx.annotation.NonNull;
import com.tencent.imsdk.TIMCallBack;
import com.tencent.imsdk.TIMConversation;
import com.tencent.imsdk.TIMConversationType;
import com.tencent.imsdk.TIMManager;
import com.tencent.imsdk.TIMMessage;
import com.tencent.imsdk.conversation.Conversation;
import com.tencent.imsdk.conversation.ConversationManager;
import com.tencent.imsdk.log.QLog;
import com.tencent.imsdk.manager.BaseManager;
import java.util.List;

public class TIMManagerExt {
    private static final String TAG;
    private ConversationManager mConversationManager;
    private TIMManager manager;

    static {
        StringBuilder sb = new StringBuilder();
        sb.append("imsdk.");
        sb.append(TIMManagerExt.class.getSimpleName());
        TAG = sb.toString();
    }

    private TIMManagerExt(@NonNull TIMManager tIMManager) {
        if (tIMManager == null) {
            TIMManager.getInstance();
        }
        this.mConversationManager = ConversationManager.getInstance();
    }

    public static TIMManagerExt getInstance() {
        return new TIMManagerExt(TIMManager.getInstance());
    }

    @Deprecated
    public int initStorage(@NonNull String str, @NonNull TIMCallBack tIMCallBack) {
        return BaseManager.getInstance().initStorage(str, tIMCallBack);
    }

    @Deprecated
    public long getConversationCount() {
        List conversationList = getConversationList();
        if (conversationList != null) {
            return (long) conversationList.size();
        }
        return 0;
    }

    @Deprecated
    public List<TIMConversation> getConversationList() {
        return this.mConversationManager.getConversationList();
    }

    @Deprecated
    public boolean deleteConversation(TIMConversationType tIMConversationType, String str) {
        this.mConversationManager.deleteConversation(tIMConversationType, str);
        return true;
    }

    @Deprecated
    public boolean deleteConversationAndLocalMsgs(TIMConversationType tIMConversationType, String str) {
        String str2 = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("deleteConversationAndLocalMsgs, conversation type = ");
        sb.append(tIMConversationType == null ? "null" : Integer.valueOf(tIMConversationType.value()));
        sb.append(", peer = ");
        sb.append(str);
        QLog.i(str2, sb.toString());
        this.mConversationManager.deleteConversationAndLocalMsgs(tIMConversationType, str);
        return true;
    }

    public void sendMessageToMultiUsers(@NonNull List<String> list, @NonNull TIMMessage tIMMessage, TIMSendMsgToMultiUserCallback tIMSendMsgToMultiUserCallback) {
        if (list == null || list.isEmpty() || tIMMessage == null || tIMSendMsgToMultiUserCallback == null) {
            QLog.e(TAG, "sendMessageToMultiUsers fail, users, msg or cb is empty");
        } else {
            Conversation.sendMessageToMultiUsers(list, tIMMessage, tIMSendMsgToMultiUserCallback);
        }
    }

    public void setCustomVersion(String str) {
        BaseManager.getInstance().setCustomVersion(str);
    }

    @Deprecated
    public void setOnlyDNSSource() {
        BaseManager.getInstance().setOnlyDNSSource();
    }

    @Deprecated
    public void reduceUnreadNumberWhenRemoveMessage() {
        BaseManager.getInstance().reduceUnreadNumberWhenRemoveMessage();
    }
}
