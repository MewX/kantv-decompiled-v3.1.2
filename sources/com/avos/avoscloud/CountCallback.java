package com.avos.avoscloud;

public abstract class CountCallback extends AVCallback<Integer> {
    public abstract void done(int i, AVException aVException);

    /* access modifiers changed from: protected */
    public final void internalDone0(Integer num, AVException aVException) {
        done(num == null ? -1 : num.intValue(), aVException);
    }
}
