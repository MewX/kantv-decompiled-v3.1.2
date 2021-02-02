package com.tencent.connect.common;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import androidx.fragment.app.Fragment;
import com.tencent.connect.auth.QQToken;
import com.tencent.connect.auth.c;
import com.tencent.open.TDialog;
import com.tencent.open.a.f;
import com.tencent.open.utils.HttpUtils;
import com.tencent.open.utils.HttpUtils.HttpStatusException;
import com.tencent.open.utils.HttpUtils.NetworkUnavailableException;
import com.tencent.open.utils.e;
import com.tencent.open.utils.h;
import com.tencent.open.utils.k;
import com.tencent.tauth.IRequestListener;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import org.apache.http.conn.ConnectTimeoutException;
import org.json.JSONException;
import org.json.JSONObject;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* compiled from: ProGuard */
public abstract class BaseApi {
    public static String businessId = null;
    public static String installChannel = null;
    public static boolean isOEM = false;
    public static String registerChannel;
    protected c a;
    /* access modifiers changed from: protected */
    public QQToken b;

    /* compiled from: ProGuard */
    public class TempRequestListener implements IRequestListener {
        /* access modifiers changed from: private */
        public final IUiListener b;
        private final Handler c;

        public TempRequestListener(IUiListener iUiListener) {
            this.b = iUiListener;
            this.c = new Handler(e.a().getMainLooper(), BaseApi.this) {
                public void handleMessage(Message message) {
                    if (message.what == 0) {
                        TempRequestListener.this.b.onComplete(message.obj);
                    } else {
                        TempRequestListener.this.b.onError(new UiError(message.what, (String) message.obj, null));
                    }
                }
            };
        }

        public void onComplete(JSONObject jSONObject) {
            Message obtainMessage = this.c.obtainMessage();
            obtainMessage.obj = jSONObject;
            obtainMessage.what = 0;
            this.c.sendMessage(obtainMessage);
        }

        public void onIOException(IOException iOException) {
            Message obtainMessage = this.c.obtainMessage();
            obtainMessage.obj = iOException.getMessage();
            obtainMessage.what = -2;
            this.c.sendMessage(obtainMessage);
        }

        public void onMalformedURLException(MalformedURLException malformedURLException) {
            Message obtainMessage = this.c.obtainMessage();
            obtainMessage.obj = malformedURLException.getMessage();
            obtainMessage.what = -3;
            this.c.sendMessage(obtainMessage);
        }

        public void onJSONException(JSONException jSONException) {
            Message obtainMessage = this.c.obtainMessage();
            obtainMessage.obj = jSONException.getMessage();
            obtainMessage.what = -4;
            this.c.sendMessage(obtainMessage);
        }

        public void onConnectTimeoutException(ConnectTimeoutException connectTimeoutException) {
            Message obtainMessage = this.c.obtainMessage();
            obtainMessage.obj = connectTimeoutException.getMessage();
            obtainMessage.what = -7;
            this.c.sendMessage(obtainMessage);
        }

        public void onSocketTimeoutException(SocketTimeoutException socketTimeoutException) {
            Message obtainMessage = this.c.obtainMessage();
            obtainMessage.obj = socketTimeoutException.getMessage();
            obtainMessage.what = -8;
            this.c.sendMessage(obtainMessage);
        }

        public void onNetworkUnavailableException(NetworkUnavailableException networkUnavailableException) {
            Message obtainMessage = this.c.obtainMessage();
            obtainMessage.obj = networkUnavailableException.getMessage();
            obtainMessage.what = -10;
            this.c.sendMessage(obtainMessage);
        }

        public void onHttpStatusException(HttpStatusException httpStatusException) {
            Message obtainMessage = this.c.obtainMessage();
            obtainMessage.obj = httpStatusException.getMessage();
            obtainMessage.what = -9;
            this.c.sendMessage(obtainMessage);
        }

        public void onUnknowException(Exception exc) {
            Message obtainMessage = this.c.obtainMessage();
            obtainMessage.obj = exc.getMessage();
            obtainMessage.what = -6;
            this.c.sendMessage(obtainMessage);
        }
    }

    public void releaseResource() {
    }

    public BaseApi(c cVar, QQToken qQToken) {
        this.a = cVar;
        this.b = qQToken;
    }

    public BaseApi(QQToken qQToken) {
        this(null, qQToken);
    }

    /* access modifiers changed from: protected */
    public Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putString(IjkMediaMeta.IJKM_KEY_FORMAT, "json");
        bundle.putString("status_os", VERSION.RELEASE);
        bundle.putString("status_machine", Build.MODEL);
        bundle.putString("status_version", VERSION.SDK);
        bundle.putString("sdkv", Constants.SDK_VERSION);
        bundle.putString("sdkp", "a");
        QQToken qQToken = this.b;
        if (qQToken != null && qQToken.isSessionValid()) {
            bundle.putString(Constants.PARAM_ACCESS_TOKEN, this.b.getAccessToken());
            bundle.putString("oauth_consumer_key", this.b.getAppId());
            bundle.putString("openid", this.b.getOpenId());
            bundle.putString("appid_for_getting_config", this.b.getAppId());
        }
        SharedPreferences sharedPreferences = e.a().getSharedPreferences(Constants.PREFERENCE_PF, 0);
        boolean z = isOEM;
        String str = Constants.PARAM_PLATFORM_ID;
        if (z) {
            StringBuilder sb = new StringBuilder();
            sb.append("desktop_m_qq-");
            sb.append(installChannel);
            String str2 = "-";
            sb.append(str2);
            sb.append("android");
            sb.append(str2);
            sb.append(registerChannel);
            sb.append(str2);
            sb.append(businessId);
            bundle.putString(str, sb.toString());
        } else {
            bundle.putString(str, sharedPreferences.getString(str, Constants.DEFAULT_PF));
        }
        return bundle;
    }

    /* access modifiers changed from: protected */
    public String a(String str) {
        Bundle a2 = a();
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(str)) {
            a2.putString("need_version", str);
        }
        sb.append("http://openmobile.qq.com/oauth2.0/m_jump_by_version?");
        sb.append(HttpUtils.encodeUrl(a2));
        return sb.toString();
    }

    /* access modifiers changed from: protected */
    public Bundle b() {
        Bundle bundle = new Bundle();
        bundle.putString("appid", this.b.getAppId());
        if (this.b.isSessionValid()) {
            bundle.putString(Constants.PARAM_KEY_STR, this.b.getAccessToken());
            bundle.putString(Constants.PARAM_KEY_TYPE, "0x80");
        }
        String openId = this.b.getOpenId();
        if (openId != null) {
            bundle.putString("hopenid", openId);
        }
        bundle.putString(Constants.PARAM_PLATFORM, "androidqz");
        SharedPreferences sharedPreferences = e.a().getSharedPreferences(Constants.PREFERENCE_PF, 0);
        boolean z = isOEM;
        String str = Constants.PARAM_PLATFORM_ID;
        if (z) {
            StringBuilder sb = new StringBuilder();
            sb.append("desktop_m_qq-");
            sb.append(installChannel);
            String str2 = "-";
            sb.append(str2);
            sb.append("android");
            sb.append(str2);
            sb.append(registerChannel);
            sb.append(str2);
            sb.append(businessId);
            bundle.putString(str, sb.toString());
        } else {
            String str3 = Constants.DEFAULT_PF;
            bundle.putString(str, sharedPreferences.getString(str, str3));
            bundle.putString(str, str3);
        }
        bundle.putString("sdkv", Constants.SDK_VERSION);
        bundle.putString("sdkp", "a");
        return bundle;
    }

    private Intent a(Activity activity, Intent intent) {
        Intent intent2 = new Intent(activity.getApplicationContext(), AssistActivity.class);
        intent2.putExtra("is_login", true);
        intent2.putExtra(AssistActivity.EXTRA_INTENT, intent);
        return intent2;
    }

    /* access modifiers changed from: protected */
    public void a(Activity activity, int i, Intent intent, boolean z) {
        Intent intent2 = new Intent(activity.getApplicationContext(), AssistActivity.class);
        if (z) {
            intent2.putExtra("is_qq_mobile_share", true);
        }
        intent2.putExtra(AssistActivity.EXTRA_INTENT, intent);
        activity.startActivityForResult(intent2, i);
    }

    /* access modifiers changed from: protected */
    public void a(Activity activity, Intent intent, int i) {
        intent.putExtra(Constants.KEY_REQUEST_CODE, i);
        activity.startActivityForResult(a(activity, intent), i);
    }

    /* access modifiers changed from: protected */
    public void a(Fragment fragment, Intent intent, int i) {
        intent.putExtra(Constants.KEY_REQUEST_CODE, i);
        fragment.startActivityForResult(a(fragment.getActivity(), intent), i);
    }

    /* access modifiers changed from: protected */
    public boolean a(Intent intent) {
        if (intent != null) {
            return h.a(e.a(), intent);
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public Intent b(String str) {
        Intent intent = new Intent();
        if (k.d(e.a())) {
            intent.setClassName(Constants.PACKAGE_QQ_PAD, str);
            if (h.a(e.a(), intent)) {
                return intent;
            }
        }
        intent.setClassName("com.tencent.mobileqq", str);
        if (h.a(e.a(), intent)) {
            return intent;
        }
        intent.setClassName(Constants.PACKAGE_TIM, str);
        if (h.a(e.a(), intent)) {
            return intent;
        }
        return null;
    }

    /* access modifiers changed from: protected */
    public void a(Activity activity, Bundle bundle, IUiListener iUiListener) {
        f.c("openSDK_LOG.BaseApi", "--handleDownloadLastestQQ");
        StringBuilder sb = new StringBuilder();
        sb.append("http://qzs.qq.com/open/mobile/login/qzsjump.html?");
        sb.append(HttpUtils.encodeUrl(bundle));
        Activity activity2 = activity;
        TDialog tDialog = new TDialog(activity2, "", sb.toString(), null, this.b);
        tDialog.show();
    }

    /* access modifiers changed from: protected */
    public Intent c(String str) {
        Intent intent = new Intent();
        Intent b2 = b(str);
        if (b2 == null || b2.getComponent() == null) {
            return null;
        }
        intent.setClassName(b2.getComponent().getPackageName(), "com.tencent.open.agent.AgentActivity");
        return intent;
    }
}
