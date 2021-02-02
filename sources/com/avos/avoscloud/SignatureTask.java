package com.avos.avoscloud;

import android.os.AsyncTask;
import android.os.Build.VERSION;
import com.avos.avoscloud.LogUtil.avlog;

class SignatureTask extends AsyncTask<String, Integer, Signature> {
    SignatureCallback callback;
    AVException signatureException = null;

    public SignatureTask(SignatureCallback signatureCallback) {
        this.callback = signatureCallback;
    }

    /* access modifiers changed from: protected */
    public Signature doInBackground(String... strArr) {
        String str = strArr[0];
        if (this.callback.useSignatureCache()) {
            Signature sessionSignature = SignatureCache.getSessionSignature(str);
            if (sessionSignature != null && !sessionSignature.isExpired()) {
                if (AVOSCloud.isDebugLogEnabled()) {
                    avlog.d("get signature from cache");
                }
                return sessionSignature;
            } else if (AVOSCloud.isDebugLogEnabled()) {
                avlog.d("signature expired");
            }
        }
        try {
            Signature computeSignature = this.callback.computeSignature();
            if (this.callback.cacheSignature()) {
                SignatureCache.addSessionSignature(str, computeSignature);
            }
            return computeSignature;
        } catch (Exception e) {
            this.signatureException = new AVException(e);
            return null;
        }
    }

    /* access modifiers changed from: protected */
    public void onPostExecute(Signature signature) {
        this.callback.onSignatureReady(signature, this.signatureException);
    }

    public AsyncTask<String, Integer, Signature> commit(String... strArr) {
        if (VERSION.SDK_INT >= 11) {
            return executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, strArr);
        }
        return execute(strArr);
    }
}
