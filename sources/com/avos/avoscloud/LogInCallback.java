package com.avos.avoscloud;

import com.avos.avoscloud.AVUser;

public abstract class LogInCallback<T extends AVUser> extends AVCallback<T> {
    public abstract void done(T t, AVException aVException);

    /* access modifiers changed from: protected */
    public final void internalDone0(T t, AVException aVException) {
        done(t, aVException);
    }
}
