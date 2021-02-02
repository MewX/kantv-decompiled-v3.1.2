package com.avos.avoscloud;

public abstract class ProgressCallback extends AVCallback<Integer> {
    public abstract void done(Integer num);

    /* access modifiers changed from: protected */
    public final void internalDone0(Integer num, AVException aVException) {
        done(num);
    }
}
