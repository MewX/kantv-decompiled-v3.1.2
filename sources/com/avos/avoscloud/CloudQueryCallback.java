package com.avos.avoscloud;

import com.avos.avoscloud.AVCloudQueryResult;

public abstract class CloudQueryCallback<T extends AVCloudQueryResult> extends AVCallback<AVCloudQueryResult> {
    public abstract void done(AVCloudQueryResult aVCloudQueryResult, AVException aVException);

    /* access modifiers changed from: protected */
    public final void internalDone0(AVCloudQueryResult aVCloudQueryResult, AVException aVException) {
        done(aVCloudQueryResult, aVException);
    }
}
