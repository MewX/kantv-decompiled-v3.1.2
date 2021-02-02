package com.avos.avoscloud;

import com.avos.avoscloud.LogUtil.avlog;

public abstract class GenericObjectCallback {
    public boolean isRequestStatisticNeed() {
        return true;
    }

    public boolean isRetryNeeded(int i, Throwable th) {
        return false;
    }

    public void onFailure(Throwable th, String str) {
    }

    public void onGroupRequestFinished(int i, int i2, AVObject aVObject) {
    }

    public void onSuccess(String str, AVException aVException) {
    }

    public void retry(Throwable th, String str) {
    }

    public void onFailure(int i, Throwable th, String str) {
        if (isRetryNeeded(i, th)) {
            if (AVOSCloud.showInternalDebugLog()) {
                avlog.d("retry this request");
            }
            retry(th, str);
            return;
        }
        onFailure(th, str);
    }
}
