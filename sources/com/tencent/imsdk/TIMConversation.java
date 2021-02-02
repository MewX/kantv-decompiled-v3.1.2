package com.tencent.imsdk;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.tencent.imsdk.conversation.Conversation;
import com.tencent.imsdk.ext.group.TIMGroupDetailInfo;
import com.tencent.imsdk.ext.message.TIMMessageDraft;
import com.tencent.imsdk.ext.message.TIMMessageLocator;
import com.tencent.imsdk.log.QLog;
import java.util.List;

public class TIMConversation {
    private static final String TAG = "TIMConversation";
    private Conversation mConversation;
    private String peer = "";
    private TIMConversationType type = TIMConversationType.Invalid;

    TIMConversation(TIMConversationType tIMConversationType, String str) {
        this.peer = str;
        if (!(tIMConversationType == TIMConversationType.C2C || tIMConversationType == TIMConversationType.Group || tIMConversationType == TIMConversationType.System)) {
            tIMConversationType = TIMConversationType.Invalid;
        }
        this.type = tIMConversationType;
        String str2 = "conversation is null because type = ";
        if (tIMConversationType == TIMConversationType.Invalid) {
            String str3 = TAG;
            StringBuilder sb = new StringBuilder();
            sb.append(str2);
            sb.append(tIMConversationType.value());
            QLog.e(str3, sb.toString());
            this.mConversation = null;
        } else if (tIMConversationType == TIMConversationType.System || !TextUtils.isEmpty(str)) {
            this.mConversation = new Conversation(tIMConversationType.value(), str);
        } else {
            String str4 = TAG;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str2);
            sb2.append(tIMConversationType.value());
            QLog.e(str4, sb2.toString());
            this.mConversation = null;
        }
    }

    TIMConversation(int i, String str) {
        TIMConversationType[] values = TIMConversationType.values();
        int length = values.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                break;
            }
            TIMConversationType tIMConversationType = values[i2];
            if (tIMConversationType.value() == i) {
                this.type = tIMConversationType;
                break;
            }
            i2++;
        }
        this.peer = str;
        String str2 = "conversation is null because type = ";
        if (i == TIMConversationType.Invalid.value()) {
            String str3 = TAG;
            StringBuilder sb = new StringBuilder();
            sb.append(str2);
            sb.append(i);
            QLog.i(str3, sb.toString());
            this.mConversation = null;
        } else if (i == TIMConversationType.System.value() || !TextUtils.isEmpty(str)) {
            this.mConversation = new Conversation(i, str);
        } else {
            String str4 = TAG;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str2);
            sb2.append(i);
            QLog.e(str4, sb2.toString());
            this.mConversation = null;
        }
    }

    public void sendMessage(@NonNull TIMMessage tIMMessage, @NonNull TIMValueCallBack<TIMMessage> tIMValueCallBack) {
        if (tIMValueCallBack == null) {
            QLog.e(TAG, "sendMessage ignore, callback is null");
            return;
        }
        Conversation conversation = this.mConversation;
        if (conversation == null) {
            QLog.e(TAG, "sendMessage fail because mConversation is null");
        } else {
            conversation.sendMessage(false, tIMMessage, tIMValueCallBack);
        }
    }

    public void sendOnlineMessage(@NonNull TIMMessage tIMMessage, @NonNull TIMValueCallBack<TIMMessage> tIMValueCallBack) {
        if (tIMValueCallBack == null) {
            QLog.e(TAG, "sendOnlineMessage ignore, callback is null");
            return;
        }
        Conversation conversation = this.mConversation;
        if (conversation == null) {
            QLog.e(TAG, "sendOnlineMessage fail because mConversation is null");
        } else {
            conversation.sendMessage(true, tIMMessage, tIMValueCallBack);
        }
    }

    public void getMessage(int i, TIMMessage tIMMessage, @NonNull TIMValueCallBack<List<TIMMessage>> tIMValueCallBack) {
        if (tIMValueCallBack == null) {
            QLog.e(TAG, "getMessage ignore, callback is null");
            return;
        }
        Conversation conversation = this.mConversation;
        if (conversation == null) {
            QLog.e(TAG, "getMessage fail because mConversation is null");
        } else {
            conversation.getMessages(i, tIMMessage, true, false, tIMValueCallBack);
        }
    }

    public void getLocalMessage(int i, TIMMessage tIMMessage, @NonNull TIMValueCallBack<List<TIMMessage>> tIMValueCallBack) {
        if (tIMValueCallBack == null) {
            QLog.e(TAG, "getLocalMessage ignore, callback is null");
            return;
        }
        Conversation conversation = this.mConversation;
        if (conversation == null) {
            QLog.e(TAG, "getLocalMessage fail because mConversation is null");
        } else {
            conversation.getMessages(i, tIMMessage, false, false, tIMValueCallBack);
        }
    }

    public TIMMessage getLastMsg() {
        Conversation conversation = this.mConversation;
        if (conversation != null) {
            return conversation.getLastMsg();
        }
        QLog.e(TAG, "getLastMsg fail because mConversation is null");
        return null;
    }

    public void setReadMessage(TIMMessage tIMMessage, @NonNull TIMCallBack tIMCallBack) {
        if (tIMCallBack == null) {
            QLog.e(TAG, "setReadMessage ignore, callback is null");
            return;
        }
        Conversation conversation = this.mConversation;
        if (conversation == null) {
            QLog.e(TAG, "setReadMessage fail because mConversation is null");
        } else {
            conversation.reportReaded(tIMMessage, tIMCallBack);
        }
    }

    public long getUnreadMessageNum() {
        Conversation conversation = this.mConversation;
        if (conversation != null) {
            return (long) conversation.getUnreadMessageNum();
        }
        QLog.e(TAG, "getUnreadMessageNum fail because mConversation is null");
        return 0;
    }

    public void revokeMessage(@NonNull TIMMessage tIMMessage, @NonNull TIMCallBack tIMCallBack) {
        if (tIMCallBack == null) {
            QLog.e(TAG, "revokeMessage ignore, callback is null");
            return;
        }
        Conversation conversation = this.mConversation;
        if (conversation == null) {
            QLog.e(TAG, "revokeMessage fail because mConversation is null");
        } else {
            conversation.revokeMessage(tIMMessage, tIMCallBack);
        }
    }

    public void deleteLocalMessage(@NonNull TIMCallBack tIMCallBack) {
        if (tIMCallBack == null) {
            QLog.e(TAG, "deleteLocalMessage ignore, callback is null");
            return;
        }
        Conversation conversation = this.mConversation;
        if (conversation == null) {
            QLog.e(TAG, "deleteLocalMessage fail because mConversation is null");
        } else {
            conversation.deleteLocalMessage(tIMCallBack);
        }
    }

    public TIMConversationType getType() {
        return this.type;
    }

    public String getPeer() {
        return this.peer;
    }

    public String getGroupName() {
        String str = null;
        if (this.mConversation == null) {
            QLog.e(TAG, "getGroupName fail because mConversation is null");
            return null;
        }
        if (this.type.value() == TIMConversationType.Group.value()) {
            str = this.mConversation.getGroupName();
            if (!TextUtils.isEmpty(str)) {
                return str;
            }
            TIMGroupDetailInfo queryGroupInfo = TIMGroupManager.getInstance().queryGroupInfo(this.peer);
            if (queryGroupInfo != null && !TextUtils.isEmpty(queryGroupInfo.getGroupName())) {
                str = queryGroupInfo.getGroupName();
            }
        }
        return str;
    }

    public TIMMessageDraft getDraft() {
        Conversation conversation = this.mConversation;
        if (conversation != null) {
            return conversation.getDraft();
        }
        QLog.e(TAG, "getDraft fail because mConversation is null");
        return null;
    }

    public void setDraft(TIMMessageDraft tIMMessageDraft) {
        Conversation conversation = this.mConversation;
        if (conversation == null) {
            QLog.e(TAG, "setDraft fail because mConversation is null");
        } else {
            conversation.setDraft(tIMMessageDraft);
        }
    }

    public boolean hasDraft() {
        Conversation conversation = this.mConversation;
        if (conversation != null) {
            return conversation.hasDraft();
        }
        QLog.e(TAG, "hasDraft fail because mConversation is null");
        return false;
    }

    public int saveMessage(@NonNull TIMMessage tIMMessage, @NonNull String str, boolean z) {
        Conversation conversation = this.mConversation;
        if (conversation != null) {
            return conversation.saveMessage(tIMMessage, str, z);
        }
        QLog.e(TAG, "saveMessage fail because mConversation is null");
        return BaseConstants.ERR_INVALID_PARAMETERS;
    }

    public int importMsg(@NonNull List<TIMMessage> list) {
        Conversation conversation = this.mConversation;
        if (conversation != null) {
            return conversation.importMsg(list);
        }
        QLog.e(TAG, "importMsg fail because mConversation is null");
        return BaseConstants.ERR_INVALID_PARAMETERS;
    }

    public void findMessages(@NonNull List<TIMMessageLocator> list, @NonNull TIMValueCallBack<List<TIMMessage>> tIMValueCallBack) {
        if (tIMValueCallBack == null) {
            QLog.e(TAG, "findMessages ignore, callback is null");
            return;
        }
        Conversation conversation = this.mConversation;
        if (conversation == null) {
            QLog.e(TAG, "findMessages fail because mConversation is null");
        } else {
            conversation.findMessages(list, tIMValueCallBack);
        }
    }
}
