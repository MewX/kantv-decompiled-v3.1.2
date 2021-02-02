package com.kantv.flt_tencent_im;

import android.content.Context;
import android.text.TextUtils;
import com.kantv.flt_tencent_im.base.IMEventListener;
import com.kantv.flt_tencent_im.base.IUIKitCallBack;
import com.kantv.flt_tencent_im.config.GeneralConfig;
import com.kantv.flt_tencent_im.config.TUIKitConfigs;
import com.kantv.flt_tencent_im.modules.conversation.ConversationManagerKit;
import com.kantv.flt_tencent_im.modules.message.MessageRevokedManager;
import com.kantv.flt_tencent_im.utils.BackgroundTasks;
import com.kantv.flt_tencent_im.utils.FileUtil;
import com.kantv.flt_tencent_im.utils.NetWorkUtils;
import com.kantv.flt_tencent_im.utils.TUIKitLog;
import com.tencent.imsdk.TIMCallBack;
import com.tencent.imsdk.TIMConnListener;
import com.tencent.imsdk.TIMConversation;
import com.tencent.imsdk.TIMGroupEventListener;
import com.tencent.imsdk.TIMGroupManager;
import com.tencent.imsdk.TIMGroupTipsElem;
import com.tencent.imsdk.TIMManager;
import com.tencent.imsdk.TIMMessage;
import com.tencent.imsdk.TIMMessageListener;
import com.tencent.imsdk.TIMRefreshListener;
import com.tencent.imsdk.TIMSNSChangeInfo;
import com.tencent.imsdk.TIMSdkConfig;
import com.tencent.imsdk.TIMUserConfig;
import com.tencent.imsdk.TIMUserStatusListener;
import com.tencent.imsdk.TIMValueCallBack;
import com.tencent.imsdk.ext.message.TIMMessageReceipt;
import com.tencent.imsdk.ext.message.TIMMessageReceiptListener;
import com.tencent.imsdk.friendship.TIMFriendPendencyInfo;
import com.tencent.imsdk.friendship.TIMFriendshipListener;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class TUIKitImpl {
    private static final String TAG = "TUIKit";
    private static Context sAppContext;
    private static TUIKitConfigs sConfigs;
    /* access modifiers changed from: private */
    public static List<IMEventListener> sIMEventListeners = new ArrayList();

    public static void init(Context context, int i, TUIKitConfigs tUIKitConfigs) {
        String str = TAG;
        TUIKitLog.e(str, "init tuikit version: ");
        sAppContext = context;
        sConfigs = tUIKitConfigs;
        if (sConfigs.getGeneralConfig() == null) {
            sConfigs.setGeneralConfig(new GeneralConfig());
        }
        String appCacheDir = sConfigs.getGeneralConfig().getAppCacheDir();
        if (TextUtils.isEmpty(appCacheDir)) {
            TUIKitLog.e(str, "appCacheDir is empty, use default dir");
            sConfigs.getGeneralConfig().setAppCacheDir(context.getFilesDir().getPath());
        } else {
            File file = new File(appCacheDir);
            if (file.exists()) {
                if (file.isFile()) {
                    TUIKitLog.e(str, "appCacheDir is a file, use default dir");
                    sConfigs.getGeneralConfig().setAppCacheDir(context.getFilesDir().getPath());
                } else if (!file.canWrite()) {
                    TUIKitLog.e(str, "appCacheDir can not write, use default dir");
                    sConfigs.getGeneralConfig().setAppCacheDir(context.getFilesDir().getPath());
                }
            } else if (!file.mkdirs()) {
                TUIKitLog.e(str, "appCacheDir is invalid, use default dir");
                sConfigs.getGeneralConfig().setAppCacheDir(context.getFilesDir().getPath());
            }
        }
        initIM(context, i);
        BackgroundTasks.initInstance();
        FileUtil.initPath();
    }

    public static void login(String str, String str2, final IUIKitCallBack iUIKitCallBack) {
        TIMManager.getInstance().login(str, str2, new TIMCallBack() {
            public void onError(int i, String str) {
                iUIKitCallBack.onError(TUIKitImpl.TAG, i, str);
            }

            public void onSuccess() {
                iUIKitCallBack.onSuccess(null);
            }
        });
    }

    public static void autoLogin(String str, final IUIKitCallBack iUIKitCallBack) {
        TIMManager.getInstance().autoLogin(str, new TIMCallBack() {
            public void onError(int i, String str) {
                iUIKitCallBack.onError(TUIKitImpl.TAG, i, str);
            }

            public void onSuccess() {
                iUIKitCallBack.onSuccess(null);
            }
        });
    }

    public static void loginOut(final IUIKitCallBack iUIKitCallBack) {
        TIMManager.getInstance().logout(new TIMCallBack() {
            public void onError(int i, String str) {
                iUIKitCallBack.onError(TUIKitImpl.TAG, i, str);
                TUIKitImpl.unInit();
            }

            public void onSuccess() {
                TUIKitImpl.unInit();
                iUIKitCallBack.onSuccess(null);
            }
        });
    }

    public static void joinGroup(String str, final IUIKitCallBack iUIKitCallBack) {
        TIMGroupManager.getInstance().applyJoinGroup(str, "", new TIMCallBack() {
            public void onError(int i, String str) {
                iUIKitCallBack.onError(TUIKitImpl.TAG, i, str);
            }

            public void onSuccess() {
                iUIKitCallBack.onSuccess(null);
            }
        });
    }

    public static void quitGroup(String str, final IUIKitCallBack iUIKitCallBack) {
        TIMGroupManager.getInstance().quitGroup(str, new TIMCallBack() {
            public void onError(int i, String str) {
                IUIKitCallBack iUIKitCallBack = iUIKitCallBack;
                if (iUIKitCallBack != null) {
                    iUIKitCallBack.onError(TUIKitImpl.TAG, i, str);
                }
            }

            public void onSuccess() {
                IUIKitCallBack iUIKitCallBack = iUIKitCallBack;
                if (iUIKitCallBack != null) {
                    iUIKitCallBack.onSuccess(null);
                }
            }
        });
    }

    public static void getMessage(TIMConversation tIMConversation, int i, TIMMessage tIMMessage, final IUIKitCallBack iUIKitCallBack) {
        tIMConversation.getMessage(i, tIMMessage, new TIMValueCallBack<List<TIMMessage>>() {
            public void onError(int i, String str) {
                iUIKitCallBack.onError(TUIKitImpl.TAG, i, str);
            }

            public void onSuccess(List<TIMMessage> list) {
                iUIKitCallBack.onSuccess(list);
            }
        });
    }

    public static void sendMessage(TIMConversation tIMConversation, TIMMessage tIMMessage, final IUIKitCallBack iUIKitCallBack) {
        tIMConversation.sendMessage(tIMMessage, new TIMValueCallBack<TIMMessage>() {
            public void onError(int i, String str) {
                IUIKitCallBack iUIKitCallBack = iUIKitCallBack;
                if (iUIKitCallBack != null) {
                    iUIKitCallBack.onError(TUIKitImpl.TAG, i, str);
                }
            }

            public void onSuccess(TIMMessage tIMMessage) {
                IUIKitCallBack iUIKitCallBack = iUIKitCallBack;
                if (iUIKitCallBack != null) {
                    iUIKitCallBack.onSuccess(tIMMessage);
                }
            }
        });
    }

    private static void initIM(Context context, int i) {
        TIMSdkConfig sdkConfig = sConfigs.getSdkConfig();
        if (sdkConfig == null) {
            sdkConfig = new TIMSdkConfig(i);
            sConfigs.setSdkConfig(sdkConfig);
        }
        GeneralConfig generalConfig = sConfigs.getGeneralConfig();
        sdkConfig.setLogLevel(generalConfig.getLogLevel());
        sdkConfig.enableLogPrint(generalConfig.isLogPrint());
        TIMManager.getInstance().init(context, sdkConfig);
        TIMUserConfig tIMUserConfig = new TIMUserConfig();
        tIMUserConfig.setReadReceiptEnabled(true);
        tIMUserConfig.setMessageReceiptListener(new TIMMessageReceiptListener() {
            public void onRecvReceipt(List<TIMMessageReceipt> list) {
            }
        });
        tIMUserConfig.setUserStatusListener(new TIMUserStatusListener() {
            public void onForceOffline() {
                for (IMEventListener onForceOffline : TUIKitImpl.sIMEventListeners) {
                    onForceOffline.onForceOffline();
                }
                TUIKitImpl.unInit();
            }

            public void onUserSigExpired() {
                for (IMEventListener onUserSigExpired : TUIKitImpl.sIMEventListeners) {
                    onUserSigExpired.onUserSigExpired();
                }
                TUIKitImpl.unInit();
            }
        });
        tIMUserConfig.setConnectionListener(new TIMConnListener() {
            public void onConnected() {
                NetWorkUtils.sIMSDKConnected = true;
                for (IMEventListener onConnected : TUIKitImpl.sIMEventListeners) {
                    onConnected.onConnected();
                }
            }

            public void onDisconnected(int i, String str) {
                NetWorkUtils.sIMSDKConnected = false;
                for (IMEventListener onDisconnected : TUIKitImpl.sIMEventListeners) {
                    onDisconnected.onDisconnected(i, str);
                }
            }

            public void onWifiNeedAuth(String str) {
                for (IMEventListener onWifiNeedAuth : TUIKitImpl.sIMEventListeners) {
                    onWifiNeedAuth.onWifiNeedAuth(str);
                }
            }
        });
        tIMUserConfig.setRefreshListener(new TIMRefreshListener() {
            public void onRefresh() {
            }

            public void onRefreshConversation(List<TIMConversation> list) {
                for (IMEventListener onRefreshConversation : TUIKitImpl.sIMEventListeners) {
                    onRefreshConversation.onRefreshConversation(list);
                }
            }
        });
        tIMUserConfig.setGroupEventListener(new TIMGroupEventListener() {
            public void onGroupTipsEvent(TIMGroupTipsElem tIMGroupTipsElem) {
                for (IMEventListener onGroupTipsEvent : TUIKitImpl.sIMEventListeners) {
                    onGroupTipsEvent.onGroupTipsEvent(tIMGroupTipsElem);
                }
            }
        });
        tIMUserConfig.setFriendshipListener(new TIMFriendshipListener() {
            public void onAddFriends(List<String> list) {
                StringBuilder sb = new StringBuilder();
                sb.append("onAddFriends: ");
                sb.append(list.size());
                TUIKitLog.i(TUIKitImpl.TAG, sb.toString());
            }

            public void onDelFriends(List<String> list) {
                StringBuilder sb = new StringBuilder();
                sb.append("onDelFriends: ");
                sb.append(list.size());
                TUIKitLog.i(TUIKitImpl.TAG, sb.toString());
            }

            public void onFriendProfileUpdate(List<TIMSNSChangeInfo> list) {
                StringBuilder sb = new StringBuilder();
                sb.append("onFriendProfileUpdate: ");
                sb.append(list.size());
                TUIKitLog.i(TUIKitImpl.TAG, sb.toString());
            }

            public void onAddFriendReqs(List<TIMFriendPendencyInfo> list) {
                StringBuilder sb = new StringBuilder();
                sb.append("onAddFriendReqs: ");
                sb.append(list.size());
                TUIKitLog.i(TUIKitImpl.TAG, sb.toString());
            }
        });
        TIMManager.getInstance().addMessageListener(new TIMMessageListener() {
            public boolean onNewMessages(List<TIMMessage> list) {
                for (IMEventListener onNewMessages : TUIKitImpl.sIMEventListeners) {
                    onNewMessages.onNewMessages(list);
                }
                return false;
            }
        });
        tIMUserConfig.setMessageRevokedListener(MessageRevokedManager.getInstance());
        TIMManager.getInstance().setUserConfig(tIMUserConfig);
    }

    public static void unInit() {
        ConversationManagerKit.getInstance().destroyConversation();
    }

    public static Context getAppContext() {
        return sAppContext;
    }

    public static TUIKitConfigs getConfigs() {
        if (sConfigs == null) {
            sConfigs = TUIKitConfigs.getConfigs();
        }
        return sConfigs;
    }

    public static void addIMEventListener(IMEventListener iMEventListener) {
        if (iMEventListener != null && !sIMEventListeners.contains(iMEventListener)) {
            sIMEventListeners.add(iMEventListener);
        }
    }

    public static void removeIMEventListener(IMEventListener iMEventListener) {
        if (iMEventListener == null) {
            sIMEventListeners.clear();
        } else {
            sIMEventListeners.remove(iMEventListener);
        }
    }
}
