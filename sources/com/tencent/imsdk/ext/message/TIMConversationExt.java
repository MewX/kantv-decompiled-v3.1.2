package com.tencent.imsdk.ext.message;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.tencent.imsdk.BaseConstants;
import com.tencent.imsdk.TIMCallBack;
import com.tencent.imsdk.TIMConversation;
import com.tencent.imsdk.TIMConversationType;
import com.tencent.imsdk.TIMMessage;
import com.tencent.imsdk.TIMValueCallBack;
import com.tencent.imsdk.conversation.Conversation;
import com.tencent.imsdk.log.QLog;
import java.util.List;

@Deprecated
public class TIMConversationExt {
    private static final String TAG = "TIMConversationExt";
    private TIMConversation conversation;
    private Conversation mConversation;

    public TIMConversationExt(@NonNull TIMConversation tIMConversation) {
        this.conversation = tIMConversation;
        String str = "conversation is null because type = ";
        if (tIMConversation.getType() == TIMConversationType.Invalid) {
            String str2 = TAG;
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(tIMConversation.getType().value());
            QLog.e(str2, sb.toString());
            this.mConversation = null;
        } else if (tIMConversation.getType() == TIMConversationType.System || !TextUtils.isEmpty(tIMConversation.getPeer())) {
            this.mConversation = new Conversation(tIMConversation.getType().value(), tIMConversation.getPeer());
        } else {
            String str3 = TAG;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            sb2.append(tIMConversation.getType());
            QLog.e(str3, sb2.toString());
            this.mConversation = null;
        }
    }

    @Deprecated
    public void getMessage(int i, TIMMessage tIMMessage, @NonNull TIMValueCallBack<List<TIMMessage>> tIMValueCallBack) {
        if (tIMValueCallBack == null) {
            QLog.e(TAG, "getMessage ignore, callback is null");
            return;
        }
        Conversation conversation2 = this.mConversation;
        if (conversation2 == null) {
            QLog.e(TAG, "getMessage fail because mConversation is null");
        } else {
            conversation2.getMessages(i, tIMMessage, true, false, tIMValueCallBack);
        }
    }

    public void getMessageForward(int i, @NonNull TIMMessage tIMMessage, @NonNull TIMValueCallBack<List<TIMMessage>> tIMValueCallBack) {
        if (tIMValueCallBack == null) {
            QLog.e(TAG, "getMessageForward ignore, callback is null");
            return;
        }
        Conversation conversation2 = this.mConversation;
        if (conversation2 == null) {
            QLog.e(TAG, "getMessageForward fail because mConversation is null");
        } else {
            conversation2.getMessages(i, tIMMessage, true, true, tIMValueCallBack);
        }
    }

    @Deprecated
    public void getLocalMessage(int i, TIMMessage tIMMessage, @NonNull TIMValueCallBack<List<TIMMessage>> tIMValueCallBack) {
        if (tIMValueCallBack == null) {
            QLog.e(TAG, "getLocalMessage ignore, callback is null");
            return;
        }
        Conversation conversation2 = this.mConversation;
        if (conversation2 == null) {
            QLog.e(TAG, "getMessageForward fail because mConversation is null");
        } else {
            conversation2.getMessages(i, tIMMessage, false, false, tIMValueCallBack);
        }
    }

    @Deprecated
    public void deleteLocalMessage(@NonNull TIMCallBack tIMCallBack) {
        if (tIMCallBack == null) {
            QLog.e(TAG, "deleteLocalMessage ignore, callback is null");
            return;
        }
        Conversation conversation2 = this.mConversation;
        if (conversation2 == null) {
            QLog.e(TAG, "deleteLocalMessage fail because mConversation is null");
        } else {
            conversation2.deleteLocalMessage(tIMCallBack);
        }
    }

    @Deprecated
    public void setReadMessage(TIMMessage tIMMessage, @NonNull TIMCallBack tIMCallBack) {
        if (tIMCallBack == null) {
            QLog.e(TAG, "setReadMessage ignore, callback is null");
            return;
        }
        Conversation conversation2 = this.mConversation;
        if (conversation2 == null) {
            QLog.e(TAG, "setReadMessage fail because mConversation is null");
        } else {
            conversation2.reportReaded(tIMMessage, tIMCallBack);
        }
    }

    @Deprecated
    public long getUnreadMessageNum() {
        Conversation conversation2 = this.mConversation;
        if (conversation2 != null) {
            return (long) conversation2.getUnreadMessageNum();
        }
        QLog.e(TAG, "getUnreadMessageNum fail because mConversation is null");
        return 0;
    }

    @Deprecated
    public int saveMessage(@NonNull TIMMessage tIMMessage, @NonNull String str, boolean z) {
        Conversation conversation2 = this.mConversation;
        if (conversation2 != null) {
            return conversation2.saveMessage(tIMMessage, str, z);
        }
        QLog.e(TAG, "saveMessage fail because mConversation is null");
        return BaseConstants.ERR_INVALID_CONVERSATION;
    }

    @Deprecated
    public int importMsg(@NonNull List<TIMMessage> list) {
        Conversation conversation2 = this.mConversation;
        if (conversation2 != null) {
            return conversation2.importMsg(list);
        }
        QLog.e(TAG, "importMsg fail because mConversation is null");
        return BaseConstants.ERR_INVALID_CONVERSATION;
    }

    @Deprecated
    public TIMMessage getLastMsg() {
        Conversation conversation2 = this.mConversation;
        if (conversation2 != null) {
            return conversation2.getLastMsg();
        }
        QLog.e(TAG, "getLastMsg fail because mConversation is null");
        return null;
    }

    @Deprecated
    public TIMMessageDraft getDraft() {
        Conversation conversation2 = this.mConversation;
        if (conversation2 != null) {
            return conversation2.getDraft();
        }
        QLog.e(TAG, "setDraft fail because mConversation is null");
        return null;
    }

    @Deprecated
    public void setDraft(TIMMessageDraft tIMMessageDraft) {
        Conversation conversation2 = this.mConversation;
        if (conversation2 == null) {
            QLog.e(TAG, "setDraft fail because mConversation is null");
        } else {
            conversation2.setDraft(tIMMessageDraft);
        }
    }

    @Deprecated
    public boolean hasDraft() {
        Conversation conversation2 = this.mConversation;
        if (conversation2 != null) {
            return conversation2.hasDraft();
        }
        QLog.e(TAG, "hasDraft fail because mConversation is null");
        return false;
    }

    @Deprecated
    public void findMessages(@NonNull List<TIMMessageLocator> list, @NonNull TIMValueCallBack<List<TIMMessage>> tIMValueCallBack) {
        if (tIMValueCallBack == null) {
            QLog.e(TAG, "findMessages ignore, callback is null");
            return;
        }
        Conversation conversation2 = this.mConversation;
        if (conversation2 == null) {
            QLog.e(TAG, "findMessages fail because mConversation is null");
        } else {
            conversation2.findMessages(list, tIMValueCallBack);
        }
    }

    @Deprecated
    public void revokeMessage(@NonNull TIMMessage tIMMessage, @NonNull TIMCallBack tIMCallBack) {
        if (tIMCallBack == null) {
            QLog.e(TAG, "revokeMessage ignore, callback is null");
            return;
        }
        Conversation conversation2 = this.mConversation;
        if (conversation2 == null) {
            QLog.e(TAG, "revokeMessage fail because mConversation is null");
        } else {
            conversation2.revokeMessage(tIMMessage, tIMCallBack);
        }
    }
}
