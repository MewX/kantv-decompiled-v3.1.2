package com.avos.avoscloud.im.v2.callback;

import com.avos.avoscloud.AVCallback;
import com.avos.avoscloud.AVException;
import com.avos.avoscloud.im.v2.AVIMClient.AVIMClientStatus;

public abstract class AVIMClientStatusCallback extends AVCallback<AVIMClientStatus> {
    public abstract void done(AVIMClientStatus aVIMClientStatus);

    /* access modifiers changed from: protected */
    public void internalDone0(AVIMClientStatus aVIMClientStatus, AVException aVException) {
        done(aVIMClientStatus);
    }
}
