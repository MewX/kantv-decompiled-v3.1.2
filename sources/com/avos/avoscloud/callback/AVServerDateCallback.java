package com.avos.avoscloud.callback;

import com.avos.avoscloud.AVCallback;
import com.avos.avoscloud.AVException;
import java.util.Date;

public abstract class AVServerDateCallback extends AVCallback<Date> {
    public abstract void done(Date date, AVException aVException);

    /* access modifiers changed from: protected */
    public void internalDone0(Date date, AVException aVException) {
        done(date, aVException);
    }
}
