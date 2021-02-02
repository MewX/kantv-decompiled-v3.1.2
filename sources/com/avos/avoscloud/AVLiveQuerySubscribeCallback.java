package com.avos.avoscloud;

public abstract class AVLiveQuerySubscribeCallback extends AVCallback<Void> {
    public abstract void done(AVException aVException);

    /* access modifiers changed from: protected */
    public void internalDone0(Void voidR, AVException aVException) {
        done(aVException);
    }
}
