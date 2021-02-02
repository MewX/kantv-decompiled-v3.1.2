package com.avos.avoscloud;

import com.avos.avoscloud.SignatureFactory.SignatureException;

abstract class SignatureCallback {
    public boolean cacheSignature() {
        return false;
    }

    public abstract Signature computeSignature() throws SignatureException;

    public abstract void onSignatureReady(Signature signature, AVException aVException);

    public boolean useSignatureCache() {
        return false;
    }

    SignatureCallback() {
    }
}
