package com.avos.avoscloud.im.v2.callback;

import com.avos.avoscloud.AVCallback;
import com.avos.avoscloud.AVException;
import com.avos.avoscloud.im.v2.AVIMClient;
import com.avos.avoscloud.im.v2.AVIMException;

public abstract class AVIMClientCallback extends AVCallback<AVIMClient> {
    public abstract void done(AVIMClient aVIMClient, AVIMException aVIMException);

    /* access modifiers changed from: protected */
    public void internalDone0(AVIMClient aVIMClient, AVException aVException) {
        done(aVIMClient, AVIMException.wrapperAVException(aVException));
    }
}
