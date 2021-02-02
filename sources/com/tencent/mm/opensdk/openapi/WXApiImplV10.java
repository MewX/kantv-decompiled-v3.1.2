package com.tencent.mm.opensdk.openapi;

import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.app.Service;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.tencent.mm.opensdk.a.a;
import com.tencent.mm.opensdk.a.a.C0007a;
import com.tencent.mm.opensdk.a.a.a.C0008a;
import com.tencent.mm.opensdk.a.a.b;
import com.tencent.mm.opensdk.constants.ConstantsAPI;
import com.tencent.mm.opensdk.constants.ConstantsAPI.Token;
import com.tencent.mm.opensdk.constants.ConstantsAPI.WXApp;
import com.tencent.mm.opensdk.modelbase.BaseReq;
import com.tencent.mm.opensdk.modelbase.BaseResp;
import com.tencent.mm.opensdk.modelbiz.AddCardToWXCardPackage;
import com.tencent.mm.opensdk.modelbiz.ChooseCardFromWXCardPackage;
import com.tencent.mm.opensdk.modelbiz.CreateChatroom;
import com.tencent.mm.opensdk.modelbiz.JoinChatroom;
import com.tencent.mm.opensdk.modelbiz.OpenWebview;
import com.tencent.mm.opensdk.modelmsg.GetMessageFromWX.Req;
import com.tencent.mm.opensdk.modelmsg.LaunchFromWX;
import com.tencent.mm.opensdk.modelmsg.SendAuth.Resp;
import com.tencent.mm.opensdk.modelmsg.SendMessageToWX;
import com.tencent.mm.opensdk.modelmsg.ShowMessageFromWX;
import com.tencent.mm.opensdk.modelpay.PayResp;
import com.tencent.wxop.stat.MtaSDkException;
import com.tencent.wxop.stat.StatConfig;
import com.tencent.wxop.stat.StatReportStrategy;
import com.tencent.wxop.stat.StatService;
import com.tencent.wxop.stat.common.StatConstants;

final class WXApiImplV10 implements IWXAPI {
    private static final String TAG = "MicroMsg.SDK.WXApiImplV10";
    /* access modifiers changed from: private */
    public static ActivityLifecycleCb activityCb;
    private static String wxappPayEntryClassname;
    private String appId;
    private boolean checkSignature = false;
    private Context context;
    private boolean detached = false;

    private static final class ActivityLifecycleCb implements ActivityLifecycleCallbacks {
        private static final int DELAYED = 800;
        private static final String TAG = "MicroMsg.SDK.WXApiImplV10.ActivityLifecycleCb";
        /* access modifiers changed from: private */
        public Context context;
        private Handler handler;
        /* access modifiers changed from: private */
        public boolean isForeground;
        private Runnable onPausedRunnable;
        private Runnable onResumedRunnable;

        private ActivityLifecycleCb(Context context2) {
            this.isForeground = false;
            this.handler = new Handler(Looper.getMainLooper());
            this.onPausedRunnable = new Runnable() {
                public void run() {
                    if (WXApiImplV10.activityCb != null && ActivityLifecycleCb.this.isForeground) {
                        Log.v(ActivityLifecycleCb.TAG, "WXStat trigger onBackground");
                        StatService.trackCustomKVEvent(ActivityLifecycleCb.this.context, "onBackground_WX", null);
                        ActivityLifecycleCb.this.isForeground = false;
                    }
                }
            };
            this.onResumedRunnable = new Runnable() {
                public void run() {
                    if (WXApiImplV10.activityCb != null && !ActivityLifecycleCb.this.isForeground) {
                        Log.v(ActivityLifecycleCb.TAG, "WXStat trigger onForeground");
                        StatService.trackCustomKVEvent(ActivityLifecycleCb.this.context, "onForeground_WX", null);
                        ActivityLifecycleCb.this.isForeground = true;
                    }
                }
            };
            this.context = context2;
        }

        public final void detach() {
            this.handler.removeCallbacks(this.onResumedRunnable);
            this.handler.removeCallbacks(this.onPausedRunnable);
            this.context = null;
        }

        public final void onActivityCreated(Activity activity, Bundle bundle) {
        }

        public final void onActivityDestroyed(Activity activity) {
        }

        public final void onActivityPaused(Activity activity) {
            StringBuilder sb = new StringBuilder();
            sb.append(activity.getComponentName().getClassName());
            sb.append("  onActivityPaused");
            Log.v(TAG, sb.toString());
            this.handler.removeCallbacks(this.onResumedRunnable);
            this.handler.postDelayed(this.onPausedRunnable, 800);
        }

        public final void onActivityResumed(Activity activity) {
            StringBuilder sb = new StringBuilder();
            sb.append(activity.getComponentName().getClassName());
            sb.append("  onActivityResumed");
            Log.v(TAG, sb.toString());
            this.handler.removeCallbacks(this.onPausedRunnable);
            this.handler.postDelayed(this.onResumedRunnable, 800);
        }

        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        public final void onActivityStarted(Activity activity) {
        }

        public final void onActivityStopped(Activity activity) {
        }
    }

    WXApiImplV10(Context context2, String str, boolean z) {
        StringBuilder sb = new StringBuilder("<init>, appId = ");
        sb.append(str);
        sb.append(", checkSignature = ");
        sb.append(z);
        Log.d(TAG, sb.toString());
        this.context = context2;
        this.appId = str;
        this.checkSignature = z;
    }

    private boolean checkSumConsistent(byte[] bArr, byte[] bArr2) {
        String str;
        String str2 = TAG;
        if (bArr == null || bArr.length == 0 || bArr2 == null || bArr2.length == 0) {
            str = "checkSumConsistent fail, invalid arguments";
        } else if (bArr.length != bArr2.length) {
            str = "checkSumConsistent fail, length is different";
        } else {
            for (int i = 0; i < bArr.length; i++) {
                if (bArr[i] != bArr2[i]) {
                    return false;
                }
            }
            return true;
        }
        Log.e(str2, str);
        return false;
    }

    private boolean createChatroom(Context context2, Bundle bundle) {
        String str = "";
        Cursor query = context2.getContentResolver().query(Uri.parse("content://com.tencent.mm.sdk.comm.provider/createChatroom"), null, null, new String[]{this.appId, bundle.getString("_wxapi_basereq_transaction", str), bundle.getString("_wxapi_create_chatroom_group_id", str), bundle.getString("_wxapi_create_chatroom_chatroom_name", str), bundle.getString("_wxapi_create_chatroom_chatroom_nickname", str), bundle.getString("_wxapi_create_chatroom_ext_msg", str), bundle.getString("_wxapi_basereq_openid", str)}, null);
        if (query != null) {
            query.close();
        }
        return true;
    }

    private void initMta(Context context2, String str) {
        StringBuilder sb = new StringBuilder("AWXOP");
        sb.append(str);
        String sb2 = sb.toString();
        StatConfig.setAppKey(context2, sb2);
        StatConfig.setEnableSmartReporting(true);
        StatConfig.setStatSendStrategy(StatReportStrategy.PERIOD);
        StatConfig.setSendPeriodMinutes(60);
        StatConfig.setInstallChannel(context2, "Wechat_Sdk");
        try {
            StatService.startStatService(context2, sb2, StatConstants.VERSION);
        } catch (MtaSDkException e) {
            StringBuilder sb3 = new StringBuilder("initMta exception:");
            sb3.append(e.getMessage());
            Log.e(TAG, sb3.toString());
        }
    }

    private boolean joinChatroom(Context context2, Bundle bundle) {
        String str = "";
        Cursor query = context2.getContentResolver().query(Uri.parse("content://com.tencent.mm.sdk.comm.provider/joinChatroom"), null, null, new String[]{this.appId, bundle.getString("_wxapi_basereq_transaction", str), bundle.getString("_wxapi_join_chatroom_group_id", str), bundle.getString("_wxapi_join_chatroom_chatroom_nickname", str), bundle.getString("_wxapi_join_chatroom_ext_msg", str), bundle.getString("_wxapi_basereq_openid", str)}, null);
        if (query != null) {
            query.close();
        }
        return true;
    }

    private boolean sendAddCardToWX(Context context2, Bundle bundle) {
        Cursor query = context2.getContentResolver().query(Uri.parse("content://com.tencent.mm.sdk.comm.provider/addCardToWX"), null, null, new String[]{this.appId, bundle.getString("_wxapi_add_card_to_wx_card_list"), bundle.getString("_wxapi_basereq_transaction")}, null);
        if (query != null) {
            query.close();
        }
        return true;
    }

    private boolean sendChooseCardFromWX(Context context2, Bundle bundle) {
        Cursor query = context2.getContentResolver().query(Uri.parse("content://com.tencent.mm.sdk.comm.provider/chooseCardFromWX"), null, null, new String[]{bundle.getString("_wxapi_choose_card_from_wx_card_app_id"), bundle.getString("_wxapi_choose_card_from_wx_card_location_id"), bundle.getString("_wxapi_choose_card_from_wx_card_sign_type"), bundle.getString("_wxapi_choose_card_from_wx_card_card_sign"), bundle.getString("_wxapi_choose_card_from_wx_card_time_stamp"), bundle.getString("_wxapi_choose_card_from_wx_card_nonce_str"), bundle.getString("_wxapi_choose_card_from_wx_card_card_id"), bundle.getString("_wxapi_choose_card_from_wx_card_card_type"), bundle.getString("_wxapi_choose_card_from_wx_card_can_multi_select"), bundle.getString("_wxapi_basereq_transaction")}, null);
        if (query != null) {
            query.close();
        }
        return true;
    }

    private boolean sendJumpToBizProfileReq(Context context2, Bundle bundle) {
        ContentResolver contentResolver = context2.getContentResolver();
        Uri parse = Uri.parse("content://com.tencent.mm.sdk.comm.provider/jumpToBizProfile");
        StringBuilder sb = new StringBuilder();
        sb.append(bundle.getInt("_wxapi_jump_to_biz_profile_req_scene"));
        StringBuilder sb2 = new StringBuilder();
        sb2.append(bundle.getInt("_wxapi_jump_to_biz_profile_req_profile_type"));
        Cursor query = contentResolver.query(parse, null, null, new String[]{this.appId, bundle.getString("_wxapi_jump_to_biz_profile_req_to_user_name"), bundle.getString("_wxapi_jump_to_biz_profile_req_ext_msg"), sb.toString(), sb2.toString()}, null);
        if (query != null) {
            query.close();
        }
        return true;
    }

    private boolean sendJumpToBizTempSessionReq(Context context2, Bundle bundle) {
        ContentResolver contentResolver = context2.getContentResolver();
        Uri parse = Uri.parse("content://com.tencent.mm.sdk.comm.provider/jumpToBizTempSession");
        StringBuilder sb = new StringBuilder();
        sb.append(bundle.getInt("_wxapi_jump_to_biz_webview_req_show_type"));
        Cursor query = contentResolver.query(parse, null, null, new String[]{this.appId, bundle.getString("_wxapi_jump_to_biz_webview_req_to_user_name"), bundle.getString("_wxapi_jump_to_biz_webview_req_session_from"), sb.toString()}, null);
        if (query != null) {
            query.close();
        }
        return true;
    }

    private boolean sendJumpToBizWebviewReq(Context context2, Bundle bundle) {
        ContentResolver contentResolver = context2.getContentResolver();
        Uri parse = Uri.parse("content://com.tencent.mm.sdk.comm.provider/jumpToBizProfile");
        StringBuilder sb = new StringBuilder();
        sb.append(bundle.getInt("_wxapi_jump_to_biz_webview_req_scene"));
        Cursor query = contentResolver.query(parse, null, null, new String[]{this.appId, bundle.getString("_wxapi_jump_to_biz_webview_req_to_user_name"), bundle.getString("_wxapi_jump_to_biz_webview_req_ext_msg"), sb.toString()}, null);
        if (query != null) {
            query.close();
        }
        return true;
    }

    private boolean sendOpenBusiLuckyMoney(Context context2, Bundle bundle) {
        Cursor query = context2.getContentResolver().query(Uri.parse("content://com.tencent.mm.sdk.comm.provider/openBusiLuckyMoney"), null, null, new String[]{this.appId, bundle.getString("_wxapi_open_busi_lucky_money_timeStamp"), bundle.getString("_wxapi_open_busi_lucky_money_nonceStr"), bundle.getString("_wxapi_open_busi_lucky_money_signType"), bundle.getString("_wxapi_open_busi_lucky_money_signature"), bundle.getString("_wxapi_open_busi_lucky_money_package")}, null);
        if (query != null) {
            query.close();
        }
        return true;
    }

    private boolean sendOpenRankListReq(Context context2, Bundle bundle) {
        Cursor query = context2.getContentResolver().query(Uri.parse("content://com.tencent.mm.sdk.comm.provider/openRankList"), null, null, new String[0], null);
        if (query != null) {
            query.close();
        }
        return true;
    }

    private boolean sendOpenWebview(Context context2, Bundle bundle) {
        Cursor query = context2.getContentResolver().query(Uri.parse("content://com.tencent.mm.sdk.comm.provider/openWebview"), null, null, new String[]{this.appId, bundle.getString("_wxapi_jump_to_webview_url"), bundle.getString("_wxapi_basereq_transaction")}, null);
        if (query != null) {
            query.close();
        }
        return true;
    }

    private boolean sendPayReq(Context context2, Bundle bundle) {
        String str = wxappPayEntryClassname;
        String str2 = WXApp.WXAPP_PACKAGE_NAME;
        if (str == null) {
            wxappPayEntryClassname = new MMSharedPreferences(context2).getString("_wxapp_pay_entry_classname_", null);
            StringBuilder sb = new StringBuilder("pay, set wxappPayEntryClassname = ");
            sb.append(wxappPayEntryClassname);
            String sb2 = sb.toString();
            String str3 = TAG;
            Log.d(str3, sb2);
            if (wxappPayEntryClassname == null) {
                try {
                    wxappPayEntryClassname = context2.getPackageManager().getApplicationInfo(str2, 128).metaData.getString("com.tencent.mm.BuildInfo.OPEN_SDK_PAY_ENTRY_CLASSNAME", null);
                } catch (Exception e) {
                    StringBuilder sb3 = new StringBuilder("get from metaData failed : ");
                    sb3.append(e.getMessage());
                    Log.e(str3, sb3.toString());
                }
            }
            if (wxappPayEntryClassname == null) {
                Log.e(str3, "pay fail, wxappPayEntryClassname is null");
                return false;
            }
        }
        C0007a aVar = new C0007a();
        aVar.Z = bundle;
        aVar.W = str2;
        aVar.X = wxappPayEntryClassname;
        return a.a(context2, aVar);
    }

    public final void detach() {
        Application application;
        Log.d(TAG, "detach");
        this.detached = true;
        if (activityCb != null && VERSION.SDK_INT >= 14) {
            Context context2 = this.context;
            if (context2 instanceof Activity) {
                application = ((Activity) context2).getApplication();
            } else {
                if (context2 instanceof Service) {
                    application = ((Service) context2).getApplication();
                }
                activityCb.detach();
            }
            application.unregisterActivityLifecycleCallbacks(activityCb);
            activityCb.detach();
        }
        this.context = null;
    }

    public final int getWXAppSupportAPI() {
        if (!this.detached) {
            boolean isWXAppInstalled = isWXAppInstalled();
            String str = TAG;
            if (!isWXAppInstalled) {
                Log.e(str, "open wx app failed, not installed or signature check failed");
                return 0;
            }
            int i = new MMSharedPreferences(this.context).getInt("_build_info_sdk_int_", 0);
            if (i == 0) {
                try {
                    i = this.context.getPackageManager().getApplicationInfo(WXApp.WXAPP_PACKAGE_NAME, 128).metaData.getInt("com.tencent.mm.BuildInfo.OPEN_SDK_VERSION", 0);
                } catch (Exception e) {
                    StringBuilder sb = new StringBuilder("get from metaData failed : ");
                    sb.append(e.getMessage());
                    Log.e(str, sb.toString());
                }
            }
            return i;
        }
        throw new IllegalStateException("getWXAppSupportAPI fail, WXMsgImpl has been detached");
    }

    public final boolean handleIntent(Intent intent, IWXAPIEventHandler iWXAPIEventHandler) {
        String str = TAG;
        try {
            if (!WXApiImplComm.isIntentFromWx(intent, Token.WX_TOKEN_VALUE_MSG)) {
                Log.i(str, "handleIntent fail, intent not from weixin msg");
                return false;
            } else if (!this.detached) {
                String stringExtra = intent.getStringExtra(ConstantsAPI.CONTENT);
                int intExtra = intent.getIntExtra(ConstantsAPI.SDK_VERSION, 0);
                String stringExtra2 = intent.getStringExtra(ConstantsAPI.APP_PACKAGE);
                if (stringExtra2 != null) {
                    if (stringExtra2.length() != 0) {
                        if (!checkSumConsistent(intent.getByteArrayExtra(ConstantsAPI.CHECK_SUM), b.a(stringExtra, intExtra, stringExtra2))) {
                            Log.e(str, "checksum fail");
                            return false;
                        }
                        int intExtra2 = intent.getIntExtra("_wxapi_command_type", 0);
                        switch (intExtra2) {
                            case 1:
                                iWXAPIEventHandler.onResp(new Resp(intent.getExtras()));
                                return true;
                            case 2:
                                iWXAPIEventHandler.onResp(new SendMessageToWX.Resp(intent.getExtras()));
                                return true;
                            case 3:
                                iWXAPIEventHandler.onReq(new Req(intent.getExtras()));
                                return true;
                            case 4:
                                iWXAPIEventHandler.onReq(new ShowMessageFromWX.Req(intent.getExtras()));
                                return true;
                            case 5:
                                iWXAPIEventHandler.onResp(new PayResp(intent.getExtras()));
                                return true;
                            case 6:
                                iWXAPIEventHandler.onReq(new LaunchFromWX.Req(intent.getExtras()));
                                return true;
                            case 9:
                                iWXAPIEventHandler.onResp(new AddCardToWXCardPackage.Resp(intent.getExtras()));
                                return true;
                            case 12:
                                iWXAPIEventHandler.onResp(new OpenWebview.Resp(intent.getExtras()));
                                return true;
                            case 14:
                                iWXAPIEventHandler.onResp(new CreateChatroom.Resp(intent.getExtras()));
                                return true;
                            case 15:
                                iWXAPIEventHandler.onResp(new JoinChatroom.Resp(intent.getExtras()));
                                return true;
                            case 16:
                                iWXAPIEventHandler.onResp(new ChooseCardFromWXCardPackage.Resp(intent.getExtras()));
                                return true;
                            default:
                                StringBuilder sb = new StringBuilder("unknown cmd = ");
                                sb.append(intExtra2);
                                Log.e(str, sb.toString());
                                break;
                        }
                        return false;
                    }
                }
                Log.e(str, "invalid argument");
                return false;
            } else {
                throw new IllegalStateException("handleIntent fail, WXMsgImpl has been detached");
            }
        } catch (Exception e) {
            StringBuilder sb2 = new StringBuilder("handleIntent fail, ex = ");
            sb2.append(e.getMessage());
            Log.e(str, sb2.toString());
        }
    }

    public final boolean isWXAppInstalled() {
        if (!this.detached) {
            boolean z = false;
            try {
                PackageInfo packageInfo = this.context.getPackageManager().getPackageInfo(WXApp.WXAPP_PACKAGE_NAME, 64);
                if (packageInfo == null) {
                    return false;
                }
                z = WXApiImplComm.validateAppSignature(this.context, packageInfo.signatures, this.checkSignature);
                return z;
            } catch (NameNotFoundException unused) {
            }
        } else {
            throw new IllegalStateException("isWXAppInstalled fail, WXMsgImpl has been detached");
        }
    }

    public final boolean isWXAppSupportAPI() {
        if (!this.detached) {
            return getWXAppSupportAPI() >= 603979778;
        }
        throw new IllegalStateException("isWXAppSupportAPI fail, WXMsgImpl has been detached");
    }

    public final boolean openWXApp() {
        String sb;
        if (!this.detached) {
            boolean isWXAppInstalled = isWXAppInstalled();
            String str = TAG;
            if (!isWXAppInstalled) {
                sb = "open wx app failed, not installed or signature check failed";
            } else {
                try {
                    this.context.startActivity(this.context.getPackageManager().getLaunchIntentForPackage(WXApp.WXAPP_PACKAGE_NAME));
                    return true;
                } catch (Exception e) {
                    StringBuilder sb2 = new StringBuilder("startActivity fail, exception = ");
                    sb2.append(e.getMessage());
                    sb = sb2.toString();
                }
            }
            Log.e(str, sb);
            return false;
        }
        throw new IllegalStateException("openWXApp fail, WXMsgImpl has been detached");
    }

    public final boolean registerApp(String str) {
        return registerApp(str, 0);
    }

    public final boolean registerApp(String str, long j) {
        Application application;
        if (!this.detached) {
            Context context2 = this.context;
            boolean z = this.checkSignature;
            String str2 = WXApp.WXAPP_PACKAGE_NAME;
            boolean validateAppSignatureForPackage = WXApiImplComm.validateAppSignatureForPackage(context2, str2, z);
            String str3 = TAG;
            if (!validateAppSignatureForPackage) {
                Log.e(str3, "register app failed for wechat app signature check failed");
                return false;
            }
            String str4 = "registerApp, appId = ";
            StringBuilder sb = new StringBuilder(str4);
            sb.append(str);
            Log.d(str3, sb.toString());
            if (str != null) {
                this.appId = str;
            }
            if (activityCb == null && VERSION.SDK_INT >= 14) {
                Context context3 = this.context;
                if (context3 instanceof Activity) {
                    initMta(context3, str);
                    activityCb = new ActivityLifecycleCb(this.context);
                    application = ((Activity) this.context).getApplication();
                } else if (context3 instanceof Service) {
                    initMta(context3, str);
                    activityCb = new ActivityLifecycleCb(this.context);
                    application = ((Service) this.context).getApplication();
                } else {
                    Log.w(str3, "context is not instanceof Activity or Service, disable WXStat");
                }
                application.registerActivityLifecycleCallbacks(activityCb);
            }
            StringBuilder sb2 = new StringBuilder(str4);
            sb2.append(str);
            Log.d(str3, sb2.toString());
            if (str != null) {
                this.appId = str;
            }
            StringBuilder sb3 = new StringBuilder("register app ");
            sb3.append(this.context.getPackageName());
            Log.d(str3, sb3.toString());
            C0008a aVar = new C0008a();
            aVar.aa = str2;
            aVar.ab = ConstantsAPI.ACTION_HANDLE_APP_REGISTER;
            StringBuilder sb4 = new StringBuilder("weixin://registerapp?appid=");
            sb4.append(this.appId);
            aVar.Y = sb4.toString();
            aVar.ac = j;
            return com.tencent.mm.opensdk.a.a.a.a(this.context, aVar);
        }
        throw new IllegalStateException("registerApp fail, WXMsgImpl has been detached");
    }

    public final boolean sendReq(BaseReq baseReq) {
        String str;
        if (!this.detached) {
            Context context2 = this.context;
            boolean z = this.checkSignature;
            String str2 = WXApp.WXAPP_PACKAGE_NAME;
            boolean validateAppSignatureForPackage = WXApiImplComm.validateAppSignatureForPackage(context2, str2, z);
            String str3 = TAG;
            if (!validateAppSignatureForPackage) {
                str = "sendReq failed for wechat app signature check failed";
            } else if (!baseReq.checkArgs()) {
                str = "sendReq checkArgs fail";
            } else {
                StringBuilder sb = new StringBuilder("sendReq, req type = ");
                sb.append(baseReq.getType());
                Log.d(str3, sb.toString());
                Bundle bundle = new Bundle();
                baseReq.toBundle(bundle);
                if (baseReq.getType() == 5) {
                    return sendPayReq(this.context, bundle);
                }
                if (baseReq.getType() == 7) {
                    return sendJumpToBizProfileReq(this.context, bundle);
                }
                if (baseReq.getType() == 8) {
                    return sendJumpToBizWebviewReq(this.context, bundle);
                }
                if (baseReq.getType() == 10) {
                    return sendJumpToBizTempSessionReq(this.context, bundle);
                }
                if (baseReq.getType() == 9) {
                    return sendAddCardToWX(this.context, bundle);
                }
                if (baseReq.getType() == 16) {
                    return sendChooseCardFromWX(this.context, bundle);
                }
                if (baseReq.getType() == 11) {
                    return sendOpenRankListReq(this.context, bundle);
                }
                if (baseReq.getType() == 12) {
                    return sendOpenWebview(this.context, bundle);
                }
                if (baseReq.getType() == 13) {
                    return sendOpenBusiLuckyMoney(this.context, bundle);
                }
                if (baseReq.getType() == 14) {
                    return createChatroom(this.context, bundle);
                }
                if (baseReq.getType() == 15) {
                    return joinChatroom(this.context, bundle);
                }
                C0007a aVar = new C0007a();
                aVar.Z = bundle;
                StringBuilder sb2 = new StringBuilder("weixin://sendreq?appid=");
                sb2.append(this.appId);
                aVar.Y = sb2.toString();
                aVar.W = str2;
                aVar.X = WXApp.WXAPP_MSG_ENTRY_CLASSNAME;
                return a.a(this.context, aVar);
            }
            Log.e(str3, str);
            return false;
        }
        throw new IllegalStateException("sendReq fail, WXMsgImpl has been detached");
    }

    public final boolean sendResp(BaseResp baseResp) {
        String str;
        if (!this.detached) {
            Context context2 = this.context;
            boolean z = this.checkSignature;
            String str2 = WXApp.WXAPP_PACKAGE_NAME;
            boolean validateAppSignatureForPackage = WXApiImplComm.validateAppSignatureForPackage(context2, str2, z);
            String str3 = TAG;
            if (!validateAppSignatureForPackage) {
                str = "sendResp failed for wechat app signature check failed";
            } else if (!baseResp.checkArgs()) {
                str = "sendResp checkArgs fail";
            } else {
                Bundle bundle = new Bundle();
                baseResp.toBundle(bundle);
                C0007a aVar = new C0007a();
                aVar.Z = bundle;
                StringBuilder sb = new StringBuilder("weixin://sendresp?appid=");
                sb.append(this.appId);
                aVar.Y = sb.toString();
                aVar.W = str2;
                aVar.X = WXApp.WXAPP_MSG_ENTRY_CLASSNAME;
                return a.a(this.context, aVar);
            }
            Log.e(str3, str);
            return false;
        }
        throw new IllegalStateException("sendResp fail, WXMsgImpl has been detached");
    }

    public final void unregisterApp() {
        if (!this.detached) {
            Context context2 = this.context;
            boolean z = this.checkSignature;
            String str = WXApp.WXAPP_PACKAGE_NAME;
            boolean validateAppSignatureForPackage = WXApiImplComm.validateAppSignatureForPackage(context2, str, z);
            String str2 = TAG;
            if (!validateAppSignatureForPackage) {
                Log.e(str2, "unregister app failed for wechat app signature check failed");
                return;
            }
            StringBuilder sb = new StringBuilder("unregisterApp, appId = ");
            sb.append(this.appId);
            Log.d(str2, sb.toString());
            String str3 = this.appId;
            if (str3 == null || str3.length() == 0) {
                Log.e(str2, "unregisterApp fail, appId is empty");
                return;
            }
            StringBuilder sb2 = new StringBuilder("unregister app ");
            sb2.append(this.context.getPackageName());
            Log.d(str2, sb2.toString());
            C0008a aVar = new C0008a();
            aVar.aa = str;
            aVar.ab = ConstantsAPI.ACTION_HANDLE_APP_UNREGISTER;
            StringBuilder sb3 = new StringBuilder("weixin://unregisterapp?appid=");
            sb3.append(this.appId);
            aVar.Y = sb3.toString();
            com.tencent.mm.opensdk.a.a.a.a(this.context, aVar);
            return;
        }
        throw new IllegalStateException("unregisterApp fail, WXMsgImpl has been detached");
    }
}
