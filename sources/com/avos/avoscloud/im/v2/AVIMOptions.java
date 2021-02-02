package com.avos.avoscloud.im.v2;

import com.avos.avoscloud.SignatureFactory;

public class AVIMOptions {
    private static final AVIMOptions globalOptions = new AVIMOptions();
    private String rtmServer = "";
    private SignatureFactory signatureFactory = null;
    private int timeoutInSecs = 15;

    public static AVIMOptions getGlobalOptions() {
        return globalOptions;
    }

    public void setRTMServer(String str) {
        this.rtmServer = str;
    }

    public String getRTMServer() {
        return this.rtmServer;
    }

    public SignatureFactory getSignatureFactory() {
        return this.signatureFactory;
    }

    public void setSignatureFactory(SignatureFactory signatureFactory2) {
        this.signatureFactory = signatureFactory2;
    }

    public int getTimeoutInSecs() {
        return this.timeoutInSecs;
    }

    public void setTimeoutInSecs(int i) {
        this.timeoutInSecs = i;
    }

    private AVIMOptions() {
    }
}
