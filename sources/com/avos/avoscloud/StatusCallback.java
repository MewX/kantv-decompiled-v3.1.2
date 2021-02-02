package com.avos.avoscloud;

public abstract class StatusCallback extends AVCallback<AVStatus> {
    public abstract void done(AVStatus aVStatus, AVException aVException);

    /* access modifiers changed from: protected */
    public final void internalDone0(AVStatus aVStatus, AVException aVException) {
        done(aVStatus, aVException);
    }
}
