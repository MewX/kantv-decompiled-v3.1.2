package com.avos.avoscloud.im.v2.callback;

import com.avos.avoscloud.AVCallback;
import com.avos.avoscloud.AVException;
import com.avos.avoscloud.im.v2.AVIMMessage;

public abstract class AVIMMessageUpdatedCallback extends AVCallback<AVIMMessage> {
    public abstract void done(AVIMMessage aVIMMessage, AVException aVException);

    /* access modifiers changed from: protected */
    public void internalDone0(AVIMMessage aVIMMessage, AVException aVException) {
        done(aVIMMessage, aVException);
    }
}
