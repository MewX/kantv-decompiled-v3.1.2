package com.avos.avoscloud.im.v2.callback;

import com.avos.avoscloud.AVCallback;
import com.avos.avoscloud.AVException;
import com.avos.avoscloud.im.v2.AVIMException;

public abstract class AVIMConversationMemberCountCallback extends AVCallback<Integer> {
    public abstract void done(Integer num, AVIMException aVIMException);

    /* access modifiers changed from: protected */
    public final void internalDone0(Integer num, AVException aVException) {
        done(num, AVIMException.wrapperAVException(aVException));
    }
}
