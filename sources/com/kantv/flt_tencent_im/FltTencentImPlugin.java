package com.kantv.flt_tencent_im;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import com.avos.avospush.session.ConversationControlPacket.ConversationControlOp;
import com.google.android.exoplayer2.util.MimeTypes;
import com.kantv.flt_tencent_im.base.IMEventListener;
import com.kantv.flt_tencent_im.base.IUIKitCallBack;
import com.kantv.flt_tencent_im.config.ConfigHelper;
import com.kantv.flt_tencent_im.config.GenerateTestUserSig;
import com.kantv.flt_tencent_im.modules.group.info.GroupInfo;
import com.kantv.flt_tencent_im.modules.group.info.GroupInfoProvider;
import com.kantv.flt_tencent_im.modules.message.MessageInfo;
import com.kantv.flt_tencent_im.modules.message.MessageInfoUtil;
import com.kantv.flt_tencent_im.utils.ToastUtil;
import com.tencent.imsdk.TIMConversation;
import com.tencent.imsdk.TIMConversationType;
import com.tencent.imsdk.TIMElemType;
import com.tencent.imsdk.TIMFriendshipManager;
import com.tencent.imsdk.TIMGroupManager;
import com.tencent.imsdk.TIMGroupTipsElem;
import com.tencent.imsdk.TIMManager;
import com.tencent.imsdk.TIMMessage;
import com.tencent.imsdk.TIMUserProfile;
import com.tencent.imsdk.TIMValueCallBack;
import com.tencent.imsdk.ext.group.TIMGroupBaseInfo;
import com.tencent.imsdk.session.SessionWrapper;
import com.tencent.open.SocialConstants;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.EventChannel.EventSink;
import io.flutter.plugin.common.EventChannel.StreamHandler;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class FltTencentImPlugin extends IMEventListener implements MethodCallHandler, StreamHandler, IPluginMessage {
    /* access modifiers changed from: private */
    public static String TAG = "FltTencentImPlugin";
    public static FltTencentImPlugin mFltTencentImPlugin;
    private Context context;
    private final CompositeDisposable disposables = new CompositeDisposable();
    /* access modifiers changed from: private */
    public EventSink mEventSink;
    /* access modifiers changed from: private */
    public GroupInfo mGroupInfo;
    private GroupInfoProvider mGroupInfoProvider;
    /* access modifiers changed from: private */
    public final Handler mHandler = new Handler();
    private IMEventListener mIMEventListerner = new IMEventListener() {
        public void onForceOffline() {
            Log.d(FltTencentImPlugin.TAG, "recv onForceOffline");
        }

        public void onUserSigExpired() {
            Log.d(FltTencentImPlugin.TAG, "recv onUserSigExpired");
            if (FltTencentImPlugin.this.mISecretKey != null) {
                FltTencentImPlugin.this.mISecretKey.getSecretKey(GenerateTestUserSig.id, new SecretKeyCallBack() {
                    public void onSecretKeyCall(String str, int i) {
                        GenerateTestUserSig.USERSIG = str;
                        GenerateTestUserSig.EXPIRETIME = i;
                        FltTencentImPlugin.this.doLogin(GenerateTestUserSig.id, null);
                    }
                });
            }
        }

        public void onConnected() {
            Log.d(FltTencentImPlugin.TAG, "recv onConnected");
        }

        public void onDisconnected(int i, String str) {
            String access$000 = FltTencentImPlugin.TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("recv onDisconnected, code ");
            sb.append(i);
            sb.append("|desc ");
            sb.append(str);
            Log.d(access$000, sb.toString());
        }

        public void onWifiNeedAuth(String str) {
            String access$000 = FltTencentImPlugin.TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("recv onWifiNeedAuth, wifi name ");
            sb.append(str);
            Log.d(access$000, sb.toString());
        }

        public void onRefreshConversation(List<TIMConversation> list) {
            String access$000 = FltTencentImPlugin.TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("recv onRefreshConversation, size ");
            sb.append(list != null ? list.size() : 0);
            Log.d(access$000, sb.toString());
            if (list != null) {
                list.size();
            }
        }

        public void onNewMessages(List<TIMMessage> list) {
            String access$000 = FltTencentImPlugin.TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("recv onNewMessages, size ");
            sb.append(list != null ? list.size() : 0);
            Log.d(access$000, sb.toString());
            FltTencentImPlugin.this.getTTMessage(false, null, list);
        }

        public void onGroupTipsEvent(TIMGroupTipsElem tIMGroupTipsElem) {
            String access$000 = FltTencentImPlugin.TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("recv onGroupTipsEvent, groupid: ");
            sb.append(tIMGroupTipsElem.getGroupId());
            sb.append("|type: ");
            sb.append(tIMGroupTipsElem.getTipsType());
            Log.d(access$000, sb.toString());
        }
    };
    public ISecretKey mISecretKey;
    List<TIMMessage> mTIMMessageHistroy = new ArrayList();

    /* renamed from: com.kantv.flt_tencent_im.FltTencentImPlugin$14 reason: invalid class name */
    static /* synthetic */ class AnonymousClass14 {
        static final /* synthetic */ int[] $SwitchMap$com$tencent$imsdk$TIMElemType = new int[TIMElemType.values().length];

        static {
            try {
                $SwitchMap$com$tencent$imsdk$TIMElemType[TIMElemType.Text.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    public interface ISecretKey {

        public interface NickNameAndFaceCallBakc {
            void onNickNameAndFaceUrl(String str, String str2);
        }

        public interface SecretKeyCallBack {
            void onSecretKeyCall(String str, int i);
        }

        void getNickNameAndFaceUrl(String str, NickNameAndFaceCallBakc nickNameAndFaceCallBakc);

        void getSecretKey(String str, SecretKeyCallBack secretKeyCallBack);
    }

    public void getProfiles(Map map, Result result) {
    }

    public FltTencentImPlugin(Context context2) {
        this.context = context2;
        if (SessionWrapper.isMainProcess(context2.getApplicationContext())) {
            TUIKit.init(context2, GenerateTestUserSig.SDKAPPID, new ConfigHelper().getConfigs(context2));
            TUIKit.addIMEventListener(this.mIMEventListerner);
            this.mGroupInfo = new GroupInfo();
            this.mGroupInfoProvider = new GroupInfoProvider();
            this.mGroupInfoProvider.loadGroupInfo(this.mGroupInfo);
        }
    }

    public static FltTencentImPlugin getIntance(Context context2) {
        if (mFltTencentImPlugin == null) {
            mFltTencentImPlugin = new FltTencentImPlugin(context2);
        }
        return mFltTencentImPlugin;
    }

    public static FltTencentImPlugin getIntance() {
        return mFltTencentImPlugin;
    }

    public void setISecretKey(ISecretKey iSecretKey) {
        this.mISecretKey = iSecretKey;
    }

    public static void registerWith(Registrar registrar) {
        FltTencentImPlugin intance = getIntance(registrar.context());
        new MethodChannel(registrar.messenger(), "plugins/fltTencentIm/method").setMethodCallHandler(intance);
        new EventChannel(registrar.messenger(), "plugins/fltTencentIm/event").setStreamHandler(intance);
    }

    public void onMethodCall(MethodCall methodCall, Result result) {
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("onMethodCall ");
        sb.append(methodCall.method);
        sb.append(" args:");
        sb.append(methodCall.arguments);
        Log.e(str, sb.toString());
        Class<FltTencentImPlugin> cls = FltTencentImPlugin.class;
        try {
            cls.getMethod(methodCall.method, new Class[]{Map.class, Result.class}).invoke(this, new Object[]{methodCall.arguments, result});
        } catch (Exception e) {
            result.notImplemented();
            e.printStackTrace();
        }
    }

    public void onListen(Object obj, EventSink eventSink) {
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("onListen ");
        sb.append(obj);
        sb.append(" ");
        sb.append(eventSink);
        Log.d(str, sb.toString());
        this.mEventSink = eventSink;
    }

    public void onCancel(Object obj) {
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("onCancel ");
        sb.append(obj);
        sb.append(" ");
        Log.d(str, sb.toString());
        destory();
    }

    public void login(Map map, final Result result) {
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("login ");
        sb.append(map);
        sb.append(" ");
        Log.d(str, sb.toString());
        final String str2 = (String) map.get(SettingsJsonConstants.APP_IDENTIFIER_KEY);
        GenerateTestUserSig.id = str2;
        TUIKit.autoLogin(str2, new IUIKitCallBack() {
            public void onSuccess(Object obj) {
                String access$000 = FltTencentImPlugin.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("autoLogin onSuccess");
                sb.append(obj);
                Log.d(access$000, sb.toString());
                FltTencentImPlugin.this.quitAllGroup();
                FltTencentImPlugin.this.getOrUpdateNickName();
                if (result != null) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("isSuccess", "1");
                    hashMap.put("value", "");
                    result.success(hashMap);
                }
            }

            public void onError(String str, int i, String str2) {
                String access$000 = FltTencentImPlugin.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("autoLogin onError ");
                sb.append(str);
                sb.append(" errCode ");
                sb.append(i);
                sb.append(" errMsg ");
                sb.append(str2);
                Log.e(access$000, sb.toString());
                if (i != 6026) {
                    return;
                }
                if (TextUtils.isEmpty(GenerateTestUserSig.USERSIG)) {
                    FltTencentImPlugin.this.getUsersig(str2, result);
                } else {
                    FltTencentImPlugin.this.doLogin(str2, result);
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void getOrUpdateNickName() {
        ISecretKey iSecretKey = this.mISecretKey;
        if (iSecretKey != null) {
            iSecretKey.getNickNameAndFaceUrl(GenerateTestUserSig.id, new NickNameAndFaceCallBakc() {
                public void onNickNameAndFaceUrl(String str, String str2) {
                    GenerateTestUserSig.name = str;
                    GenerateTestUserSig.faceUrl = str2;
                    TIMFriendshipManager.getInstance().getSelfProfile(new TIMValueCallBack<TIMUserProfile>() {
                        public void onError(int i, String str) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("Error code = ");
                            sb.append(i);
                            String str2 = ", desc = ";
                            sb.append(str2);
                            sb.append(str);
                            ToastUtil.toastShortMessage(sb.toString());
                            String access$000 = FltTencentImPlugin.TAG;
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("getSelfProfile Error code = ");
                            sb2.append(i);
                            sb2.append(str2);
                            sb2.append(str);
                            Log.d(access$000, sb2.toString());
                        }

                        public void onSuccess(TIMUserProfile tIMUserProfile) {
                            try {
                                String nickName = tIMUserProfile.getNickName();
                                String faceUrl = tIMUserProfile.getFaceUrl();
                                if (!GenerateTestUserSig.name.equals(nickName) || !GenerateTestUserSig.faceUrl.equals(faceUrl)) {
                                    TUIKit.updateProfile(GenerateTestUserSig.faceUrl, GenerateTestUserSig.name);
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                    });
                }
            });
        }
    }

    /* access modifiers changed from: private */
    public void getUsersig(final String str, final Result result) {
        ISecretKey iSecretKey = this.mISecretKey;
        if (iSecretKey != null) {
            iSecretKey.getSecretKey(str, new SecretKeyCallBack() {
                public void onSecretKeyCall(String str, int i) {
                    GenerateTestUserSig.USERSIG = str;
                    GenerateTestUserSig.EXPIRETIME = i;
                    FltTencentImPlugin.this.doLogin(str, result);
                }
            });
            return;
        }
        throw new RuntimeException("使用插件需要实现ISecretKey");
    }

    public void doLogin(String str, final Result result) {
        String str2 = GenerateTestUserSig.USERSIG;
        String str3 = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("doLogin id ");
        sb.append(str);
        sb.append(" userSig ");
        sb.append(str2);
        Log.d(str3, sb.toString());
        TUIKit.login(str, str2, new IUIKitCallBack() {
            public void onSuccess(Object obj) {
                String access$000 = FltTencentImPlugin.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("Login onSuccess");
                sb.append(obj);
                Log.d(access$000, sb.toString());
                FltTencentImPlugin.this.quitAllGroup();
                FltTencentImPlugin.this.getOrUpdateNickName();
                if (result != null) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("isSuccess", "1");
                    hashMap.put("value", "");
                    result.success(hashMap);
                }
            }

            public void onError(String str, int i, String str2) {
                String access$000 = FltTencentImPlugin.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("Login onError ");
                sb.append(str);
                sb.append(" errCode ");
                sb.append(i);
                sb.append(" errMsg ");
                sb.append(str2);
                Log.e(access$000, sb.toString());
            }
        });
    }

    public void loginOut(Map map, final Result result) {
        quitAllGroup();
        TUIKit.loginOut(new IUIKitCallBack() {
            public void onSuccess(Object obj) {
                String access$000 = FltTencentImPlugin.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("loginOut onSuccess");
                sb.append(obj);
                Log.d(access$000, sb.toString());
                if (result != null) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("isSuccess", "1");
                    hashMap.put("value", "");
                    result.success(hashMap);
                }
            }

            public void onError(String str, int i, String str2) {
                String access$000 = FltTencentImPlugin.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("loginOut onError ");
                sb.append(str);
                sb.append(" errCode ");
                sb.append(i);
                sb.append(" errMsg ");
                sb.append(str2);
                Log.e(access$000, sb.toString());
            }
        });
    }

    public void sendTextMsg(Map map, final Result result) {
        String str = (String) ((Map) map.get("msg")).get(MimeTypes.BASE_TYPE_TEXT);
        Map map2 = (Map) map.get("chatRoom");
        String str2 = (String) map2.get("groupType");
        TUIKit.sendMessage(TIMManager.getInstance().getConversation(TIMConversationType.values()[((Integer) map2.get("chatType")).intValue()], (String) map2.get(SocialConstants.PARAM_RECEIVER)), str, str, new IUIKitCallBack() {
            public void onSuccess(Object obj) {
                String access$000 = FltTencentImPlugin.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("sendMessage onSuccess ");
                sb.append(obj);
                Log.d(access$000, sb.toString());
                if (result != null) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("isSuccess", "1");
                    hashMap.put("value", "");
                    result.success(hashMap);
                }
            }

            public void onError(String str, int i, String str2) {
                String access$000 = FltTencentImPlugin.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("sendMessage onError ");
                sb.append(str);
                sb.append(" errCode ");
                sb.append(i);
                sb.append(" errMsg ");
                sb.append(str2);
                Log.e(access$000, sb.toString());
            }
        });
    }

    public void joinGroup(Map map, final Result result) {
        new ArrayList().add(GenerateTestUserSig.id);
        String str = (String) map.get("groupId");
        if (TextUtils.isEmpty(this.mGroupInfo.getId()) || !this.mGroupInfo.getId().equals(str)) {
            this.mTIMMessageHistroy.clear();
            this.mGroupInfo.setId(str);
            TUIKit.joinGroup(this.mGroupInfo.getId(), new IUIKitCallBack() {
                public void onSuccess(Object obj) {
                    String access$000 = FltTencentImPlugin.TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("joinGroup onSuccess");
                    sb.append(obj);
                    Log.d(access$000, sb.toString());
                    if (result != null) {
                        HashMap hashMap = new HashMap();
                        hashMap.put("isSuccess", "1");
                        hashMap.put("value", "");
                        result.success(hashMap);
                    }
                }

                public void onError(String str, int i, String str2) {
                    String access$000 = FltTencentImPlugin.TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("joinGroup onError ");
                    sb.append(str);
                    sb.append(" errCode ");
                    sb.append(i);
                    sb.append(" errMsg ");
                    sb.append(str2);
                    Log.e(access$000, sb.toString());
                    if (result != null) {
                        HashMap hashMap = new HashMap();
                        hashMap.put("isSuccess", "0");
                        result.success(hashMap);
                    }
                }
            });
        } else if (result != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("isSuccess", "1");
            hashMap.put("value", "");
            result.success(hashMap);
        }
    }

    public void quitGroup(Map map, final Result result) {
        new ArrayList().add(GenerateTestUserSig.id);
        String str = (String) map.get("groupId");
        GroupInfo groupInfo = this.mGroupInfo;
        if (groupInfo != null && groupInfo.getId().equals(str)) {
            this.mGroupInfo.setId("");
        }
        TUIKit.quitGroup(str, new IUIKitCallBack() {
            public void onSuccess(Object obj) {
                String access$000 = FltTencentImPlugin.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("quitGroup onSuccess");
                sb.append(obj);
                Log.d(access$000, sb.toString());
                if (result != null) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("isSuccess", "1");
                    hashMap.put("value", "");
                    result.success(hashMap);
                }
            }

            public void onError(String str, int i, String str2) {
                String access$000 = FltTencentImPlugin.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("quitGroup onError ");
                sb.append(str);
                sb.append(" errCode ");
                sb.append(i);
                sb.append(" errMsg ");
                sb.append(str2);
                Log.e(access$000, sb.toString());
            }
        });
    }

    public void getMessage(Map map, final Result result) {
        TIMMessage tIMMessage;
        int intValue = ((Integer) map.get(ConversationControlOp.COUNT)).intValue();
        String str = (String) ((Map) map.get("chatRoom")).get(SocialConstants.PARAM_RECEIVER);
        Object obj = map.get("lastMsg");
        if (obj != null && (obj instanceof Map)) {
            String str2 = (String) ((Map) obj).get("msgId");
            int i = 0;
            while (true) {
                if (i >= this.mTIMMessageHistroy.size()) {
                    break;
                }
                tIMMessage = (TIMMessage) this.mTIMMessageHistroy.get(i);
                if (tIMMessage.getMsgId().equals(str2)) {
                    break;
                }
                i++;
            }
            TUIKit.getMessage(TIMManager.getInstance().getConversation(TIMConversationType.Group, str), intValue, tIMMessage, new IUIKitCallBack() {
                public void onSuccess(Object obj) {
                    Log.d(FltTencentImPlugin.TAG, "getMessage onSuccess ");
                    FltTencentImPlugin.this.getTTMessage(true, result, (List) obj);
                }

                public void onError(String str, int i, String str2) {
                    String access$000 = FltTencentImPlugin.TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("getMessage onError ");
                    sb.append(str);
                    sb.append(" errCode ");
                    sb.append(i);
                    sb.append(" errMsg ");
                    sb.append(str2);
                    Log.e(access$000, sb.toString());
                }
            });
        }
        tIMMessage = null;
        TUIKit.getMessage(TIMManager.getInstance().getConversation(TIMConversationType.Group, str), intValue, tIMMessage, new IUIKitCallBack() {
            public void onSuccess(Object obj) {
                Log.d(FltTencentImPlugin.TAG, "getMessage onSuccess ");
                FltTencentImPlugin.this.getTTMessage(true, result, (List) obj);
            }

            public void onError(String str, int i, String str2) {
                String access$000 = FltTencentImPlugin.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("getMessage onError ");
                sb.append(str);
                sb.append(" errCode ");
                sb.append(i);
                sb.append(" errMsg ");
                sb.append(str2);
                Log.e(access$000, sb.toString());
            }
        });
    }

    /* access modifiers changed from: private */
    public void getTTMessage(final boolean z, final Result result, List<TIMMessage> list) {
        if (list != null && list.size() > 0) {
            List TIMMessages2MessageInfos = MessageInfoUtil.TIMMessages2MessageInfos(list, true);
            final ArrayList arrayList = new ArrayList();
            Observable.fromIterable(TIMMessages2MessageInfos).observeOn(Schedulers.io()).doOnEach((Observer<? super T>) new Observer<MessageInfo>() {
                public void onSubscribe(Disposable disposable) {
                    String access$000 = FltTencentImPlugin.TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("getMessage onSubscribe");
                    sb.append(disposable);
                    Log.d(access$000, sb.toString());
                }

                public void onNext(final MessageInfo messageInfo) {
                    try {
                        if (FltTencentImPlugin.this.mGroupInfo.getId().equals(messageInfo.getTIMMessage().getConversation().getPeer())) {
                            if (AnonymousClass14.$SwitchMap$com$tencent$imsdk$TIMElemType[messageInfo.getElement().getType().ordinal()] == 1) {
                                final boolean[] zArr = {false};
                                messageInfo.getTIMMessage().getSenderProfile(new TIMValueCallBack<TIMUserProfile>() {
                                    public void onError(int i, String str) {
                                        zArr[0] = true;
                                    }

                                    public void onSuccess(TIMUserProfile tIMUserProfile) {
                                        arrayList.add(messageInfo.toMap(tIMUserProfile));
                                        zArr[0] = true;
                                        FltTencentImPlugin.this.mTIMMessageHistroy.add(messageInfo.getTIMMessage());
                                    }
                                });
                                while (!zArr[0]) {
                                    try {
                                        Thread.sleep(200);
                                    } catch (InterruptedException e) {
                                        e.printStackTrace();
                                    }
                                }
                            }
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }

                public void onError(Throwable th) {
                    th.printStackTrace();
                }

                public void onComplete() {
                    Log.d(FltTencentImPlugin.TAG, "getMessage Observable onComplete");
                    FltTencentImPlugin.this.mHandler.post(new Runnable() {
                        public void run() {
                            String access$000 = FltTencentImPlugin.TAG;
                            StringBuilder sb = new StringBuilder();
                            sb.append("back:");
                            sb.append(arrayList.size());
                            sb.append(" ");
                            sb.append(arrayList);
                            Log.d(access$000, sb.toString());
                            String str = "value";
                            if (z) {
                                if (result != null) {
                                    HashMap hashMap = new HashMap();
                                    hashMap.put("isSuccess", "1");
                                    hashMap.put(str, arrayList);
                                    result.success(hashMap);
                                }
                            } else if (FltTencentImPlugin.this.mEventSink != null) {
                                for (int i = 0; i < arrayList.size(); i++) {
                                    HashMap hashMap2 = new HashMap();
                                    hashMap2.put("event", IPluginMessage.onNewMessage);
                                    hashMap2.put(str, arrayList.get(i));
                                    FltTencentImPlugin.this.mEventSink.success(hashMap2);
                                }
                            }
                        }
                    });
                }
            }).subscribeOn(AndroidSchedulers.mainThread()).subscribe((Consumer<? super T>) new Consumer<MessageInfo>() {
                public void accept(MessageInfo messageInfo) throws Exception {
                }
            }).isDisposed();
        } else if (z && result != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("isSuccess", "1");
            result.success(hashMap);
        }
    }

    public void destory() {
        TUIKit.unInit();
        IMEventListener iMEventListener = this.mIMEventListerner;
        if (iMEventListener != null) {
            TUIKit.removeIMEventListener(iMEventListener);
        }
        this.disposables.clear();
    }

    public void quitAllGroup() {
        TIMGroupManager.getInstance().getGroupList(new TIMValueCallBack<List<TIMGroupBaseInfo>>() {
            public void onError(int i, String str) {
                String access$000 = FltTencentImPlugin.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("get gruop list failed: ");
                sb.append(i);
                sb.append(" desc");
                Log.e(access$000, sb.toString());
            }

            public void onSuccess(List<TIMGroupBaseInfo> list) {
                Log.d(FltTencentImPlugin.TAG, "get gruop list succ");
                for (TIMGroupBaseInfo tIMGroupBaseInfo : list) {
                    String access$000 = FltTencentImPlugin.TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("group id: ");
                    sb.append(tIMGroupBaseInfo.getGroupId());
                    sb.append(" group name: ");
                    sb.append(tIMGroupBaseInfo.getGroupName());
                    sb.append(" group type: ");
                    sb.append(tIMGroupBaseInfo.getGroupType());
                    Log.d(access$000, sb.toString());
                    String access$0002 = FltTencentImPlugin.TAG;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("quitAllGroup ");
                    sb2.append(tIMGroupBaseInfo.getGroupId());
                    Log.d(access$0002, sb2.toString());
                    TUIKit.quitGroup(tIMGroupBaseInfo.getGroupId(), null);
                }
            }
        });
    }
}
