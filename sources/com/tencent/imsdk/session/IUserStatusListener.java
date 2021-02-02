package com.tencent.imsdk.session;

public interface IUserStatusListener {
    void onForceOffline();

    void onUserSigExpired();
}
