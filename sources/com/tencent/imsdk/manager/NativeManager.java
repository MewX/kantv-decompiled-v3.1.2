package com.tencent.imsdk.manager;

import com.tencent.imsdk.TIMBackgroundParam;
import com.tencent.imsdk.TIMLogListener;
import com.tencent.imsdk.TIMUserConfig;
import com.tencent.imsdk.common.ICallback;
import com.tencent.imsdk.log.QLog;
import com.tencent.imsdk.session.IConnectionListener;
import com.tencent.imsdk.session.IUserStatusListener;
import com.tencent.imsdk.session.NetConnectInfoCenter;
import com.tencent.imsdk.session.SessionWrapper;

public class NativeManager {
    private static final String TAG = "NativeManager";

    protected static native void nativeDoBackground(TIMBackgroundParam tIMBackgroundParam, ICallback iCallback);

    protected static native void nativeDoForeground(ICallback iCallback);

    private static native void nativeEnableConsole(boolean z);

    protected static native String nativeGetIdentifier();

    protected static native void nativeGetOfflinePushConfig(ICallback iCallback);

    public static native long nativeGetServerTimeDiff();

    protected static native long nativeGetTinyid();

    protected static native String nativeGetVersion();

    protected static native void nativeInitSdk(long j, String str, String str2, String str3, String str4, String str5, int i, boolean z);

    public static native int nativeInitStorage(String str, ICallback iCallback);

    protected static native void nativeLogin(String str, String str2, ICallback iCallback);

    protected static native void nativeLogout(ICallback iCallback);

    public static native void nativeOnNetworkChanged(boolean z);

    public static native void nativeReduceUnreadNumberWhenRemoveMessage();

    private static native void nativeSetCallbackLogLevel(int i);

    public static native void nativeSetCustomVersion(String str);

    private static native void nativeSetLogLevel(int i);

    private static native void nativeSetLogListener(TIMLogListener tIMLogListener);

    protected static native void nativeSetOfflinePushConfig(int i, String str, String str2, String str3, ICallback iCallback);

    public static native void nativeSetOnlyDNSSource();

    protected static native void nativeSetToken(int i, int i2, String str, ICallback iCallback);

    protected static native void nativeSetUserConfig(TIMUserConfig tIMUserConfig);

    protected static native void nativeUnInitSdk();

    public static void onNetworkStatusChanged(int i, int i2, String str) {
        String str2 = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("onNetworkStatusChanged Enter; type:");
        sb.append(i);
        sb.append(" code:");
        sb.append(i2);
        sb.append(" errMsg:");
        sb.append(str);
        QLog.i(str2, sb.toString());
        IConnectionListener connectionListener = SessionWrapper.getInstance().getConnectionListener();
        if (connectionListener == null) {
            QLog.w(TAG, "onNetworkStatusChanged IConnectionListener == null");
            return;
        }
        if (i == 1) {
            connectionListener.onConnected();
        } else if (i == 2) {
            connectionListener.onConnecting();
        } else if (i == 3) {
            connectionListener.onDisconnected(i2, str);
        } else if (i != 4) {
            String str3 = TAG;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onNetworkStatusChanged, unknown type: ");
            sb2.append(i);
            QLog.e(str3, sb2.toString());
        } else {
            connectionListener.onConnectFailed(i2, str);
        }
    }

    public static void onForceOffline() {
        QLog.i(TAG, "onForceOffline Enter");
        IUserStatusListener userStatusListener = SessionWrapper.getInstance().getUserStatusListener();
        if (userStatusListener == null) {
            QLog.w(TAG, "onForceOffline IUserStatusListener == null");
        } else {
            userStatusListener.onForceOffline();
        }
    }

    public static void onUserSigExpired() {
        QLog.i(TAG, "onUserSigExpired Enter");
        IUserStatusListener userStatusListener = SessionWrapper.getInstance().getUserStatusListener();
        if (userStatusListener == null) {
            QLog.w(TAG, "onUserSigExpired IUserStatusListener == null");
        } else {
            userStatusListener.onUserSigExpired();
        }
    }

    public static int getNetType() {
        return NetConnectInfoCenter.getInstance().getNetworkType();
    }

    public static String getNetSSID() {
        return NetConnectInfoCenter.getInstance().getNetworkSSID();
    }

    public static String getNetworkProvider() {
        return NetConnectInfoCenter.getInstance().getProviderName();
    }

    public static void initNativeLog(int i, int i2, boolean z, TIMLogListener tIMLogListener) {
        nativeSetLogLevel(i);
        nativeSetCallbackLogLevel(i2);
        nativeEnableConsole(z);
        if (tIMLogListener != null) {
            nativeSetLogListener(tIMLogListener);
        }
    }
}
