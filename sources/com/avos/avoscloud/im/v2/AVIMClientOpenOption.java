package com.avos.avoscloud.im.v2;

public class AVIMClientOpenOption {
    private boolean isForceSingleLogin = true;
    private boolean isReconnect = false;

    public boolean isReconnect() {
        return this.isReconnect;
    }

    public void setReconnect(boolean z) {
        this.isReconnect = z;
    }

    @Deprecated
    public boolean isForceSingleLogin() {
        return this.isForceSingleLogin;
    }

    @Deprecated
    public void setForceSingleLogin(boolean z) {
        this.isForceSingleLogin = z;
        this.isReconnect = !z;
    }
}
