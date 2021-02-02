package com.avos.avoscloud;

import com.avos.avoscloud.LogUtil.log;

public abstract class AVCallback<T> {
    /* access modifiers changed from: protected */
    public abstract void internalDone0(T t, AVException aVException);

    /* access modifiers changed from: protected */
    public boolean mustRunOnUIThread() {
        return true;
    }

    public void internalDone(final T t, final AVException aVException) {
        if (!mustRunOnUIThread() || AVUtils.isMainThread()) {
            internalDone0(t, aVException);
        } else if (!AVOSCloud.handler.post(new Runnable() {
            public void run() {
                AVCallback.this.internalDone0(t, aVException);
            }
        })) {
            log.e("Post runnable to handler failed.");
        }
    }

    public void internalDone(AVException aVException) {
        internalDone(null, aVException);
    }
}
