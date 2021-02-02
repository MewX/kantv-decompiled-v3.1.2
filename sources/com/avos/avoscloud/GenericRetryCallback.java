package com.avos.avoscloud;

abstract class GenericRetryCallback extends GenericObjectCallback {
    GenericObjectCallback callback;

    public GenericRetryCallback(GenericObjectCallback genericObjectCallback) {
        this.callback = genericObjectCallback;
    }

    public void onSuccess(String str, AVException aVException) {
        GenericObjectCallback genericObjectCallback = this.callback;
        if (genericObjectCallback != null) {
            genericObjectCallback.onSuccess(str, aVException);
        }
    }

    public void onFailure(Throwable th, String str) {
        GenericObjectCallback genericObjectCallback = this.callback;
        if (genericObjectCallback != null) {
            genericObjectCallback.onFailure(th, str);
        }
    }

    public boolean isRequestStatisticNeed() {
        return this.callback.isRequestStatisticNeed();
    }
}
