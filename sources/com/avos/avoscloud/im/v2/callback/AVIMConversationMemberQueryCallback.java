package com.avos.avoscloud.im.v2.callback;

import com.avos.avoscloud.AVCallback;
import com.avos.avoscloud.AVException;
import com.avos.avoscloud.im.v2.AVIMException;
import com.avos.avoscloud.im.v2.conversation.AVIMConversationMemberInfo;
import java.util.List;

public abstract class AVIMConversationMemberQueryCallback extends AVCallback<List<AVIMConversationMemberInfo>> {
    public abstract void done(List<AVIMConversationMemberInfo> list, AVIMException aVIMException);

    /* access modifiers changed from: protected */
    public final void internalDone0(List<AVIMConversationMemberInfo> list, AVException aVException) {
        done(list, AVIMException.wrapperAVException(aVException));
    }
}
