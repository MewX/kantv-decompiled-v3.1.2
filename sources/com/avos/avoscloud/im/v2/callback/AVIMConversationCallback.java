package com.avos.avoscloud.im.v2.callback;

import com.avos.avoscloud.AVCallback;
import com.avos.avoscloud.AVException;
import com.avos.avoscloud.im.v2.AVIMException;

public abstract class AVIMConversationCallback extends AVCallback<Void> {
    public abstract void done(AVIMException aVIMException);

    /* access modifiers changed from: protected */
    public final void internalDone0(Void voidR, AVException aVException) {
        done(AVIMException.wrapperAVException(aVException));
    }
}
