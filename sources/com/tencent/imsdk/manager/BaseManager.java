package com.tencent.imsdk.manager;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.kantv.flt_tencent_im.IPluginMessage;
import com.tencent.imsdk.BaseConstants;
import com.tencent.imsdk.TIMBackgroundParam;
import com.tencent.imsdk.TIMCallBack;
import com.tencent.imsdk.TIMConnListener;
import com.tencent.imsdk.TIMFriendshipManager;
import com.tencent.imsdk.TIMNetworkStatus;
import com.tencent.imsdk.TIMOfflinePushListener;
import com.tencent.imsdk.TIMOfflinePushNotification;
import com.tencent.imsdk.TIMOfflinePushSettings;
import com.tencent.imsdk.TIMOfflinePushToken;
import com.tencent.imsdk.TIMSdkConfig;
import com.tencent.imsdk.TIMUser;
import com.tencent.imsdk.TIMUserConfig;
import com.tencent.imsdk.TIMUserStatusListener;
import com.tencent.imsdk.TIMValueCallBack;
import com.tencent.imsdk.common.ICallback;
import com.tencent.imsdk.common.IContextFetcher;
import com.tencent.imsdk.common.IMContext;
import com.tencent.imsdk.conversation.ConversationManager;
import com.tencent.imsdk.log.QLog;
import com.tencent.imsdk.session.IConnectionListener;
import com.tencent.imsdk.session.IUserStatusListener;
import com.tencent.imsdk.session.SessionWrapper;
import com.tencent.imsdk.utils.IMErrInfo;
import com.tencent.imsdk.utils.IMFunc;
import java.io.File;
import java.lang.reflect.Method;
import java.util.UUID;
import java.util.regex.Pattern;

public class BaseManager {
    private static final String TAG = "BaseManager";
    private static final BaseManager instance = new BaseManager();
    private static Handler mainHandler = new Handler(Looper.getMainLooper());
    private boolean inited;
    /* access modifiers changed from: private */
    public boolean logined;
    /* access modifiers changed from: private */
    public Context mContext;
    /* access modifiers changed from: private */
    public TIMNetworkStatus mNetworkStatus;
    private TIMOfflinePushListener mOfflinePushListener;
    private TIMSdkConfig mSdkConfig = new TIMSdkConfig(0);
    private TIMUserConfig mUserConfig = new TIMUserConfig();
    private int mode = 1;

    static {
        String str = TAG;
        try {
            System.loadLibrary("ImSDK");
            Log.i(str, "system load so library succ, libImSDK.so");
        } catch (UnsatisfiedLinkError e) {
            Log.e(str, "system load so library failed, libImSDK.so \n ", e);
        }
    }

    private BaseManager() {
        IMContext.getInstance().init(new IContextFetcher() {
            public boolean isInited() {
                return BaseManager.this.isInited();
            }

            public boolean isOnline() {
                return BaseManager.this.isLogined();
            }

            public Context getContext() {
                return BaseManager.this.mContext;
            }
        });
    }

    public static BaseManager getInstance() {
        return instance;
    }

    public int getMode() {
        return this.mode;
    }

    public void setMode(int i) {
        this.mode = i;
    }

    public boolean init(Context context, TIMSdkConfig tIMSdkConfig) {
        boolean z;
        String str = TAG;
        if (context == null || tIMSdkConfig == null) {
            StringBuilder sb = new StringBuilder();
            sb.append("init with invalid param context: ");
            sb.append(context);
            sb.append("|config: ");
            sb.append(tIMSdkConfig);
            QLog.e(str, sb.toString());
            return false;
        }
        this.mContext = context.getApplicationContext();
        String version = getVersion();
        String str2 = "ebfa608d4d";
        Context context2 = this.mContext;
        Editor edit = context.getSharedPreferences("BuglySdkInfos", 0).edit();
        edit.putString(str2, version);
        edit.commit();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("BuglySdkInfos sdkappid:");
        sb2.append(str2);
        sb2.append(" ver:");
        sb2.append(version);
        QLog.i(str, sb2.toString());
        String initLogPath = initLogPath(tIMSdkConfig.getLogPath());
        tIMSdkConfig.setLogPath(initLogPath);
        int clientInstType = IMFunc.getClientInstType();
        StringBuilder sb3 = new StringBuilder();
        sb3.append("init: ");
        sb3.append(tIMSdkConfig.toString());
        QLog.i(str, sb3.toString());
        if (this.mode == 1) {
            try {
                SessionWrapper.getInstance().init(context);
                setSessionConnectionListener();
                setSessionUserStatusListener();
                try {
                    z = Class.forName("com.tencent.qcloud.tim.uikit.TUIKit") != null;
                } catch (ClassNotFoundException unused) {
                    z = false;
                }
                this.mSdkConfig = tIMSdkConfig;
                NativeManager.nativeInitSdk((long) tIMSdkConfig.getSdkAppId(), initLogPath, getFilePath(context), getDeviceId(), Build.MODEL, VERSION.RELEASE, clientInstType, z);
                NativeManager.initNativeLog(tIMSdkConfig.getLogLevel(), tIMSdkConfig.getLogCallbackLevel(), tIMSdkConfig.isLogPrintEnabled(), tIMSdkConfig.getLogListener());
                loadConversationModule();
                loadGroupModule();
                loadFriendshipModule();
            } catch (Exception e) {
                QLog.writeException(str, "init failed, exception: ", e);
                setMode(0);
                return false;
            }
        } else {
            this.mSdkConfig = tIMSdkConfig;
        }
        this.inited = true;
        return true;
    }

    private void setSessionUserStatusListener() {
        SessionWrapper.getInstance().setUserStatusListener(new IUserStatusListener() {
            public void onForceOffline() {
                StringBuilder sb = new StringBuilder();
                sb.append("ForceOffline|1-Recv|Succ|recv forceoffline id: ");
                sb.append(BaseManager.this.getLoginUser());
                String sb2 = sb.toString();
                String str = BaseManager.TAG;
                QLog.i(str, sb2);
                if (BaseManager.this.getUserConfig() == null) {
                    QLog.e(str, "ForceOffline|3-Callback|Fail|no user config found");
                    return;
                }
                final TIMUserStatusListener userStatusListener = BaseManager.this.getUserConfig().getUserStatusListener();
                if (userStatusListener != null) {
                    IMContext.getInstance().runOnMainThread(new Runnable() {
                        public void run() {
                            userStatusListener.onForceOffline();
                            StringBuilder sb = new StringBuilder();
                            sb.append("ForceOffline|3-Callback|Succ, getLoginUser = ");
                            sb.append(BaseManager.this.getLoginUser());
                            QLog.d(BaseManager.TAG, sb.toString());
                        }
                    });
                } else {
                    QLog.e(str, "ForceOffline|3-Callback|Fail|no listener found");
                }
            }

            public void onUserSigExpired() {
                StringBuilder sb = new StringBuilder();
                sb.append("userSig expired|1-Recv|Succ|recv userSig expired id: ");
                sb.append(BaseManager.this.getLoginUser());
                String sb2 = sb.toString();
                String str = BaseManager.TAG;
                QLog.i(str, sb2);
                if (TextUtils.isEmpty(BaseManager.this.getLoginUser())) {
                    QLog.i(str, "userSig expired|2-Logout|no need to logout and callback");
                } else if (BaseManager.this.getUserConfig() == null) {
                    QLog.e(str, "userSig expired|3-Callback|Fail|no user config found");
                } else {
                    final TIMUserStatusListener userStatusListener = BaseManager.this.getUserConfig().getUserStatusListener();
                    if (userStatusListener != null) {
                        IMContext.getInstance().runOnMainThread(new Runnable() {
                            public void run() {
                                userStatusListener.onUserSigExpired();
                                QLog.e(BaseManager.TAG, "userSig expired|3-Callback|Succ");
                            }
                        });
                    } else {
                        QLog.e(str, "userSig expired|3-Callback|Fail|no listener found");
                    }
                }
            }
        });
    }

    private void setSessionConnectionListener() {
        SessionWrapper.getInstance().setConnectionListener(new IConnectionListener() {
            public void onConnected() {
                QLog.i(BaseManager.TAG, "onConnected");
                BaseManager.this.mNetworkStatus = TIMNetworkStatus.TIM_NETWORK_STATUS_CONNECTED;
                IMContext.getInstance().runOnMainThread(new Runnable() {
                    public void run() {
                        TIMConnListener connectionListener = BaseManager.this.getUserConfig().getConnectionListener();
                        if (connectionListener != null) {
                            connectionListener.onConnected();
                        } else {
                            QLog.i(BaseManager.TAG, "no connection listener found");
                        }
                    }
                });
            }

            public void onDisconnected(final int i, final String str) {
                StringBuilder sb = new StringBuilder();
                sb.append("onDisconnected, code: ");
                sb.append(i);
                sb.append("|descr: ");
                sb.append(str);
                QLog.i(BaseManager.TAG, sb.toString());
                BaseManager.this.mNetworkStatus = TIMNetworkStatus.TIM_NETWORK_STATUS_DISCONNECTED;
                IMContext.getInstance().runOnMainThread(new Runnable() {
                    public void run() {
                        TIMConnListener connectionListener = BaseManager.this.getUserConfig().getConnectionListener();
                        if (connectionListener != null) {
                            connectionListener.onDisconnected(i, str);
                        } else {
                            QLog.i(BaseManager.TAG, "no connection listener found");
                        }
                    }
                });
            }

            public void onConnecting() {
                QLog.i(BaseManager.TAG, IPluginMessage.onConnecting);
            }

            public void onConnectFailed(int i, String str) {
                StringBuilder sb = new StringBuilder();
                sb.append("onConnectFailed, code: ");
                sb.append(i);
                sb.append("|descr: ");
                sb.append(str);
                QLog.i(BaseManager.TAG, sb.toString());
            }

            public void onWifiNeedAuth(final String str) {
                StringBuilder sb = new StringBuilder();
                sb.append("onWifiNeedAuth, wifi name: ");
                sb.append(str);
                QLog.i(BaseManager.TAG, sb.toString());
                BaseManager.this.mNetworkStatus = TIMNetworkStatus.TIM_NETWORK_STATUS_DISCONNECTED;
                IMContext.getInstance().runOnMainThread(new Runnable() {
                    public void run() {
                        TIMConnListener connectionListener = BaseManager.this.getUserConfig().getConnectionListener();
                        if (connectionListener != null) {
                            connectionListener.onWifiNeedAuth(str);
                        } else {
                            QLog.i(BaseManager.TAG, "no connection listener found");
                        }
                    }
                });
            }
        });
    }

    private String getDeviceId() {
        String str;
        SharedPreferences sharedPreferences = this.mContext.getSharedPreferences(BaseConstants.DEVICE_INFO, 0);
        String str2 = BaseConstants.DEVICE_ID;
        boolean z = true;
        if (!sharedPreferences.contains(str2)) {
            str = UUID.randomUUID().toString();
        } else {
            String string = sharedPreferences.getString(str2, "");
            if (!Pattern.matches("\\w{8}(-\\w{4}){3}-\\w{12}", string) || TextUtils.isEmpty(string)) {
                str = UUID.randomUUID().toString();
            } else {
                str = string;
                z = false;
            }
        }
        if (z) {
            Editor edit = sharedPreferences.edit();
            edit.putString(str2, str);
            edit.apply();
        }
        return str;
    }

    public String initLogPath(String str) {
        String str2;
        StringBuilder sb = new StringBuilder();
        String str3 = "logPath: ";
        sb.append(str3);
        sb.append(str);
        String sb2 = sb.toString();
        String str4 = TAG;
        QLog.i(str4, sb2);
        String str5 = "/";
        if (TextUtils.isEmpty(str)) {
            try {
                str2 = this.mContext.getPackageName();
            } catch (Exception unused) {
                str2 = "unknown";
            }
            StringBuilder sb3 = new StringBuilder();
            sb3.append(Environment.getExternalStorageDirectory().getPath());
            sb3.append("/tencent/imsdklogs/");
            sb3.append(str2.replace(".", str5));
            str = sb3.toString();
            if (this.mContext == null) {
                return str;
            }
        }
        System.out.println(str);
        File file = new File(str);
        if (!file.exists() && !file.mkdirs()) {
            file = this.mContext.getFilesDir();
            QLog.d(str4, "create imsdklogs folder failed");
        }
        StringBuilder sb4 = new StringBuilder();
        sb4.append(str3);
        sb4.append(file.getAbsolutePath());
        sb4.append(str5);
        QLog.i(str4, sb4.toString());
        StringBuilder sb5 = new StringBuilder();
        sb5.append(file.getAbsolutePath());
        sb5.append(str5);
        return sb5.toString();
    }

    private String getFilePath(Context context) {
        return context.getFilesDir().toString();
    }

    public boolean unInit() {
        try {
            NativeManager.nativeUnInitSdk();
            this.inited = false;
            return true;
        } catch (Exception e) {
            QLog.writeException(TAG, "unInit fail, exception: ", e);
            return false;
        }
    }

    public void login(String str, String str2, TIMCallBack tIMCallBack) {
        boolean z = this.inited;
        String str3 = TAG;
        if (!z) {
            String str4 = "sdk not initialized";
            QLog.e(str3, str4);
            tIMCallBack.onError(BaseConstants.ERR_INVALID_PARAMETERS, str4);
        } else if (TextUtils.isEmpty(str)) {
            String str5 = "identifier is empty";
            QLog.e(str3, str5);
            tIMCallBack.onError(BaseConstants.ERR_INVALID_PARAMETERS, str5);
        } else {
            final TIMUser tIMUser = new TIMUser();
            tIMUser.setIdentifier(str);
            tIMUser.setSdkAppid((long) getSdkAppId());
            tIMUser.setAppIdAt3rd(String.valueOf(getSdkAppId()));
            NativeManager.nativeLogin(str, str2, new ICallback(tIMCallBack) {
                public void done(Object obj) {
                    BaseManager.this.logined = true;
                    StringBuilder sb = new StringBuilder();
                    sb.append("Login succ, user: ");
                    sb.append(tIMUser);
                    QLog.i(BaseManager.TAG, sb.toString());
                    super.done(obj);
                }

                public void fail(int i, String str) {
                    IMErrInfo iMErrInfo = new IMErrInfo(i, str);
                    if (i == 1002) {
                        iMErrInfo.setCode(BaseConstants.ERR_LOGIN_KICKED_OFF_BY_OTHER);
                        iMErrInfo.setMsg("kick off by other devices");
                    }
                    if (iMErrInfo.getCode() == 6208) {
                        BaseManager.this.logout(null);
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append("Login failed, code ");
                    sb.append(iMErrInfo.getCode());
                    sb.append("|msg ");
                    sb.append(iMErrInfo.getMsg());
                    QLog.i(BaseManager.TAG, sb.toString());
                    super.fail(iMErrInfo.getCode(), iMErrInfo.getMsg());
                }
            });
        }
    }

    public void logout(TIMCallBack tIMCallBack) {
        final String loginUser = getLoginUser();
        StringBuilder sb = new StringBuilder();
        sb.append("Logout, user ");
        sb.append(loginUser);
        String sb2 = sb.toString();
        String str = TAG;
        QLog.i(str, sb2);
        if (!this.inited) {
            QLog.e(str, "Logout failed, sdk not initialized");
            if (tIMCallBack != null) {
                tIMCallBack.onError(BaseConstants.ERR_INVALID_PARAMETERS, "sdk not initialized");
                return;
            }
            return;
        }
        NativeManager.nativeLogout(new ICallback(tIMCallBack) {
            public void done(Object obj) {
                StringBuilder sb = new StringBuilder();
                sb.append("Logout succ, user ");
                sb.append(loginUser);
                QLog.i(BaseManager.TAG, sb.toString());
                BaseManager.this.logined = false;
                super.done(obj);
            }

            public void fail(int i, String str) {
                StringBuilder sb = new StringBuilder();
                sb.append("Logout failed, user ");
                sb.append(loginUser);
                sb.append(", code ");
                sb.append(i);
                sb.append("|descr ");
                sb.append(str);
                QLog.e(BaseManager.TAG, sb.toString());
                super.fail(i, str);
            }
        });
    }

    public TIMUserConfig getUserConfig() {
        return this.mUserConfig;
    }

    public void setUserConfig(TIMUserConfig tIMUserConfig) {
        this.mUserConfig = tIMUserConfig;
        NativeManager.nativeSetUserConfig(tIMUserConfig);
    }

    public TIMNetworkStatus getNetworkStatus() {
        return this.mNetworkStatus;
    }

    public void setToken(TIMOfflinePushToken tIMOfflinePushToken, TIMCallBack tIMCallBack) {
        int clientInstType = IMFunc.getClientInstType();
        StringBuilder sb = new StringBuilder();
        sb.append("setToken: token=");
        sb.append(tIMOfflinePushToken.getBussid());
        String str = ":";
        sb.append(str);
        sb.append(tIMOfflinePushToken.getToken());
        sb.append(str);
        sb.append(clientInstType);
        QLog.i(TAG, sb.toString());
        NativeManager.nativeSetToken(clientInstType, (int) tIMOfflinePushToken.getBussid(), tIMOfflinePushToken.getToken(), new ICallback(tIMCallBack) {
            public void done(Object obj) {
                QLog.i(BaseManager.TAG, "setToken succ");
                super.done(obj);
            }

            public void fail(int i, String str) {
                StringBuilder sb = new StringBuilder();
                sb.append("setToken failed, code ");
                sb.append(i);
                sb.append("|descr ");
                sb.append(str);
                QLog.e(BaseManager.TAG, sb.toString());
                super.fail(i, str);
            }
        });
    }

    public int initStorage(String str, TIMCallBack tIMCallBack) {
        boolean isEmpty = TextUtils.isEmpty(str);
        String str2 = TAG;
        if (isEmpty) {
            QLog.e(str2, "initStorage, identifier is empty, ignore");
            return 1;
        } else if (TextUtils.isEmpty(getLoginUser())) {
            return NativeManager.nativeInitStorage(str, new ICallback(tIMCallBack) {
                public void done(Object obj) {
                    QLog.i(BaseManager.TAG, "initStorage succ");
                    super.done(obj);
                }

                public void fail(int i, String str) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("initStorage failed, code ");
                    sb.append(i);
                    sb.append("|descr ");
                    sb.append(str);
                    QLog.e(BaseManager.TAG, sb.toString());
                    super.fail(i, str);
                }
            });
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append("initStorage, current login user is ");
            sb.append(getLoginUser());
            sb.append(", you need call logout first");
            QLog.e(str2, sb.toString());
            return 1;
        }
    }

    public void setOfflinePushConfig(final TIMOfflinePushSettings tIMOfflinePushSettings) {
        int i = tIMOfflinePushSettings.isEnabled() ? 1 : 2;
        String str = "";
        String uri = tIMOfflinePushSettings.getC2cMsgRemindSound() != null ? tIMOfflinePushSettings.getC2cMsgRemindSound().toString() : str;
        String uri2 = tIMOfflinePushSettings.getGroupMsgRemindSound() != null ? tIMOfflinePushSettings.getGroupMsgRemindSound().toString() : str;
        if (tIMOfflinePushSettings.getVideoSound() != null) {
            str = tIMOfflinePushSettings.getVideoSound().toString();
        }
        NativeManager.nativeSetOfflinePushConfig(i, uri, uri2, str, new ICallback(null) {
            public void done(Object obj) {
                QLog.i(BaseManager.TAG, "setOfflinePushConfig succ");
                TIMOfflinePushNotification.globleC2CRemindSound = tIMOfflinePushSettings.getC2cMsgRemindSound();
                TIMOfflinePushNotification.globleGroupRemindSound = tIMOfflinePushSettings.getGroupMsgRemindSound();
                super.done(obj);
            }

            public void fail(int i, String str) {
                StringBuilder sb = new StringBuilder();
                sb.append("setOfflinePushConfig failed, code = ");
                sb.append(i);
                sb.append(", descr = ");
                sb.append(str);
                QLog.e(BaseManager.TAG, sb.toString());
                super.fail(i, str);
            }
        });
    }

    public void getOfflinePushConfig(TIMValueCallBack<TIMOfflinePushSettings> tIMValueCallBack) {
        NativeManager.nativeGetOfflinePushConfig(new ICallback<TIMOfflinePushSettings>(tIMValueCallBack) {
            public void done(TIMOfflinePushSettings tIMOfflinePushSettings) {
                super.done(tIMOfflinePushSettings);
            }

            public void fail(int i, String str) {
                super.fail(i, str);
            }
        });
    }

    public void doBackground(TIMBackgroundParam tIMBackgroundParam, TIMCallBack tIMCallBack) {
        NativeManager.nativeDoBackground(tIMBackgroundParam, new ICallback(tIMCallBack) {
            public void done(Object obj) {
                QLog.i(BaseManager.TAG, "doBackground success");
                super.done(obj);
            }

            public void fail(int i, String str) {
                StringBuilder sb = new StringBuilder();
                sb.append("doBackground err code = ");
                sb.append(i);
                sb.append(", desc = ");
                sb.append(str);
                QLog.i(BaseManager.TAG, sb.toString());
                super.fail(i, str);
            }
        });
    }

    public void doForeground(TIMCallBack tIMCallBack) {
        NativeManager.nativeDoForeground(new ICallback(tIMCallBack) {
            public void done(Object obj) {
                QLog.i(BaseManager.TAG, "doForeground success");
                super.done(obj);
            }

            public void fail(int i, String str) {
                StringBuilder sb = new StringBuilder();
                sb.append("doForeground err code = ");
                sb.append(i);
                sb.append(", desc = ");
                sb.append(str);
                QLog.i(BaseManager.TAG, sb.toString());
                super.fail(i, str);
            }
        });
    }

    public void setCustomVersion(String str) {
        boolean isEmpty = TextUtils.isEmpty(str);
        String str2 = TAG;
        if (isEmpty) {
            QLog.e(str2, "setCustomVersion empty, ignore");
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("setCustomVersion = ");
        sb.append(str);
        QLog.e(str2, sb.toString());
        NativeManager.nativeSetCustomVersion(str);
    }

    public void setOnlyDNSSource() {
        NativeManager.nativeSetOnlyDNSSource();
    }

    public void reduceUnreadNumberWhenRemoveMessage() {
        NativeManager.nativeReduceUnreadNumberWhenRemoveMessage();
    }

    public String getLoginUser() {
        return NativeManager.nativeGetIdentifier();
    }

    public long getTinyId() {
        return NativeManager.nativeGetTinyid();
    }

    public int getSdkAppId() {
        TIMSdkConfig tIMSdkConfig = this.mSdkConfig;
        if (tIMSdkConfig == null) {
            return 0;
        }
        return tIMSdkConfig.getSdkAppId();
    }

    public TIMSdkConfig getmSdkConfig() {
        return this.mSdkConfig;
    }

    public long getServerTimeDiff() {
        return NativeManager.nativeGetServerTimeDiff();
    }

    public boolean isInited() {
        return this.inited;
    }

    public boolean isLogined() {
        return this.logined;
    }

    public String getVersion() {
        return NativeManager.nativeGetVersion();
    }

    public static void loginErrOnMainthread(final TIMCallBack tIMCallBack, final int i, final String str) {
        mainHandler.post(new Runnable() {
            public void run() {
                tIMCallBack.onError(i, str);
            }
        });
    }

    private void loadConversationModule() {
        ConversationManager.getInstance().init();
    }

    private void loadGroupModule() {
        String str = "not support group module";
        String str2 = TAG;
        try {
            Class cls = Class.forName("com.tencent.imsdk.group.GroupBaseManager");
            if (cls != null) {
                Method method = cls.getMethod("initGroupModule", new Class[0]);
                if (method != null) {
                    method.invoke(null, new Object[0]);
                }
            } else {
                QLog.i(str2, str);
            }
        } catch (Throwable unused) {
            QLog.i(str2, str);
        }
    }

    private void loadFriendshipModule() {
        QLog.i(TAG, "loadFriendshipModule init statt");
        TIMFriendshipManager.getInstance().init();
    }
}
