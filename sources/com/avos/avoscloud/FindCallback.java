package com.avos.avoscloud;

import com.avos.avoscloud.AVObject;
import java.util.List;

public abstract class FindCallback<T extends AVObject> extends AVCallback<List<T>> {
    public abstract void done(List<T> list, AVException aVException);

    /* access modifiers changed from: protected */
    public final void internalDone0(List<T> list, AVException aVException) {
        done(list, aVException);
    }
}
