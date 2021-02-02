package com.avos.avoscloud.im.v2.callback;

import com.avos.avoscloud.AVCallback;
import com.avos.avoscloud.AVException;
import com.avos.avoscloud.im.v2.AVIMException;
import com.avos.avoscloud.im.v2.AVIMMessage;

public abstract class AVIMSingleMessageQueryCallback extends AVCallback<AVIMMessage> {
    public abstract void done(AVIMMessage aVIMMessage, AVIMException aVIMException);

    /* access modifiers changed from: protected */
    public final void internalDone0(AVIMMessage aVIMMessage, AVException aVException) {
        done(aVIMMessage, AVIMException.wrapperAVException(aVException));
    }
}
