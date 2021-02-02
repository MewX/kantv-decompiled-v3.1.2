package com.avos.avoscloud;

import com.avos.avoscloud.AVObject;
import java.util.Map;

public abstract class FollowersAndFolloweesCallback<T extends AVObject> extends AVCallback<Map<String, T>> {
    public abstract void done(Map<String, T> map, AVException aVException);

    /* access modifiers changed from: protected */
    public final void internalDone0(Map<String, T> map, AVException aVException) {
        done(map, aVException);
    }
}
