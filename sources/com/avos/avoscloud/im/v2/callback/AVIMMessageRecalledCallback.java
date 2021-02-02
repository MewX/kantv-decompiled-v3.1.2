package com.avos.avoscloud.im.v2.callback;

import com.avos.avoscloud.AVCallback;
import com.avos.avoscloud.AVException;
import com.avos.avoscloud.im.v2.messages.AVIMRecalledMessage;

public abstract class AVIMMessageRecalledCallback extends AVCallback<AVIMRecalledMessage> {
    public abstract void done(AVIMRecalledMessage aVIMRecalledMessage, AVException aVException);

    /* access modifiers changed from: protected */
    public void internalDone0(AVIMRecalledMessage aVIMRecalledMessage, AVException aVException) {
        done(aVIMRecalledMessage, aVException);
    }
}
