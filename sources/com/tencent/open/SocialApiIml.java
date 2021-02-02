package com.tencent.open;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.CookieSyncManager;
import android.webkit.WebSettings;
import com.tencent.connect.auth.QQToken;
import com.tencent.connect.auth.c;
import com.tencent.connect.common.BaseApi;
import com.tencent.connect.common.Constants;
import com.tencent.connect.common.UIListenerManager;
import com.tencent.open.a.f;
import com.tencent.open.c.b;
import com.tencent.open.utils.HttpUtils;
import com.tencent.open.utils.e;
import com.tencent.open.utils.g;
import com.tencent.open.utils.h;
import com.tencent.open.utils.k;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: ProGuard */
public class SocialApiIml extends BaseApi {
    /* access modifiers changed from: private */
    public Activity c;

    /* compiled from: ProGuard */
    private class a implements IUiListener {
        private IUiListener b;
        private String c;
        private String d;
        private Bundle e;
        private Activity f;

        a(Activity activity, IUiListener iUiListener, String str, String str2, Bundle bundle) {
            this.b = iUiListener;
            this.c = str;
            this.d = str2;
            this.e = bundle;
        }

        public void onComplete(Object obj) {
            String str;
            String str2 = "openSDK_LOG.SocialApiIml";
            try {
                str = ((JSONObject) obj).getString(SocialConstants.PARAM_ENCRY_EOKEN);
            } catch (JSONException e2) {
                e2.printStackTrace();
                f.b(str2, "OpenApi, EncrytokenListener() onComplete error", e2);
                str = null;
            }
            this.e.putString("encrytoken", str);
            SocialApiIml socialApiIml = SocialApiIml.this;
            socialApiIml.a((Context) socialApiIml.c, this.c, this.e, this.d, this.b);
            if (TextUtils.isEmpty(str)) {
                f.b(str2, "The token get from qq or qzone is empty. Write temp token to localstorage.");
                SocialApiIml.this.writeEncryToken(this.f);
            }
        }

        public void onError(UiError uiError) {
            StringBuilder sb = new StringBuilder();
            sb.append("OpenApi, EncryptTokenListener() onError");
            sb.append(uiError.errorMessage);
            f.b("openSDK_LOG.SocialApiIml", sb.toString());
            this.b.onError(uiError);
        }

        public void onCancel() {
            this.b.onCancel();
        }
    }

    public SocialApiIml(QQToken qQToken) {
        super(qQToken);
    }

    public SocialApiIml(c cVar, QQToken qQToken) {
        super(cVar, qQToken);
    }

    public void gift(Activity activity, Bundle bundle, IUiListener iUiListener) {
        a(activity, SocialConstants.ACTION_GIFT, bundle, iUiListener);
    }

    public void ask(Activity activity, Bundle bundle, IUiListener iUiListener) {
        a(activity, SocialConstants.ACTION_ASK, bundle, iUiListener);
    }

    private void a(Activity activity, String str, Bundle bundle, IUiListener iUiListener) {
        this.c = activity;
        Intent c2 = c(SocialConstants.ACTIVITY_FRIEND_CHOOSER);
        if (c2 == null) {
            f.c("openSDK_LOG.SocialApiIml", "--askgift--friend chooser not found");
            c2 = c(SocialConstants.ACTIVITY_ASK_GIFT);
        }
        Intent intent = c2;
        bundle.putAll(b());
        String str2 = "type";
        if (SocialConstants.ACTION_ASK.equals(str)) {
            bundle.putString(str2, SocialConstants.TYPE_REQUEST);
        } else if (SocialConstants.ACTION_GIFT.equals(str)) {
            bundle.putString(str2, SocialConstants.TYPE_FREEGIFT);
        }
        a(activity, intent, str, bundle, g.a().a(e.a(), "http://qzs.qq.com/open/mobile/request/sdk_request.html?"), iUiListener, false);
    }

    public void invite(Activity activity, Bundle bundle, IUiListener iUiListener) {
        this.c = activity;
        Intent c2 = c(SocialConstants.ACTIVITY_FRIEND_CHOOSER);
        if (c2 == null) {
            f.c("openSDK_LOG.SocialApiIml", "--invite--friend chooser not found");
            c2 = c(SocialConstants.ACTIVITY_INVITE);
        }
        Intent intent = c2;
        bundle.putAll(b());
        Activity activity2 = activity;
        a(activity2, intent, SocialConstants.ACTION_INVITE, bundle, g.a().a(e.a(), "http://qzs.qq.com/open/mobile/invite/sdk_invite.html?"), iUiListener, false);
    }

    public void story(Activity activity, Bundle bundle, IUiListener iUiListener) {
        this.c = activity;
        Intent c2 = c(SocialConstants.ACTIVITY_STORY);
        bundle.putAll(b());
        Activity activity2 = activity;
        a(activity2, c2, SocialConstants.ACTION_STORY, bundle, g.a().a(e.a(), "http://qzs.qq.com/open/mobile/sendstory/sdk_sendstory_v1.3.html?"), iUiListener, false);
    }

    private void a(Activity activity, Intent intent, String str, Bundle bundle, String str2, IUiListener iUiListener, boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append("-->handleIntent action = ");
        sb.append(str);
        sb.append(", activityIntent = null ? ");
        boolean z2 = true;
        sb.append(intent == null);
        f.c("openSDK_LOG.SocialApiIml", sb.toString());
        if (intent != null) {
            a(activity, intent, str, bundle, iUiListener);
            return;
        }
        com.tencent.open.utils.f a2 = com.tencent.open.utils.f.a(e.a(), this.b.getAppId());
        if (!z && !a2.b("C_LoginH5")) {
            z2 = false;
        }
        if (z2) {
            a(activity, str, bundle, str2, iUiListener);
        } else {
            a(activity, bundle, iUiListener);
        }
    }

    private void a(Activity activity, Intent intent, String str, Bundle bundle, IUiListener iUiListener) {
        StringBuilder sb = new StringBuilder();
        sb.append("-->handleIntentWithAgent action = ");
        sb.append(str);
        f.c("openSDK_LOG.SocialApiIml", sb.toString());
        intent.putExtra(Constants.KEY_ACTION, str);
        intent.putExtra(Constants.KEY_PARAMS, bundle);
        UIListenerManager.getInstance().setListenerWithRequestcode(Constants.REQUEST_SOCIAL_API, iUiListener);
        a(activity, intent, (int) Constants.REQUEST_SOCIAL_API);
    }

    private void a(Activity activity, String str, Bundle bundle, String str2, IUiListener iUiListener) {
        StringBuilder sb = new StringBuilder();
        sb.append("-->handleIntentWithH5 action = ");
        sb.append(str);
        String str3 = "openSDK_LOG.SocialApiIml";
        f.c(str3, sb.toString());
        Intent b = b("com.tencent.open.agent.AgentActivity");
        a aVar = new a(activity, iUiListener, str, str2, bundle);
        Intent b2 = b("com.tencent.open.agent.EncryTokenActivity");
        if (b2 == null || b == null || b.getComponent() == null || b2.getComponent() == null || !b.getComponent().getPackageName().equals(b2.getComponent().getPackageName())) {
            f.c(str3, "-->handleIntentWithH5--token activity not found");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("tencent&sdk&qazxc***14969%%");
            sb2.append(this.b.getAccessToken());
            sb2.append(this.b.getAppId());
            sb2.append(this.b.getOpenId());
            sb2.append("qzone3.4");
            String f = k.f(sb2.toString());
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(SocialConstants.PARAM_ENCRY_EOKEN, f);
            } catch (JSONException e) {
                e.printStackTrace();
            }
            aVar.onComplete(jSONObject);
            return;
        }
        b2.putExtra("oauth_consumer_key", this.b.getAppId());
        b2.putExtra("openid", this.b.getOpenId());
        b2.putExtra(Constants.PARAM_ACCESS_TOKEN, this.b.getAccessToken());
        b2.putExtra(Constants.KEY_ACTION, SocialConstants.ACTION_CHECK_TOKEN);
        if (a(b2)) {
            f.c(str3, "-->handleIntentWithH5--found token activity");
            UIListenerManager.getInstance().setListenerWithRequestcode(Constants.REQUEST_SOCIAL_H5, aVar);
            a(activity, b2, (int) Constants.REQUEST_SOCIAL_H5);
        }
    }

    /* access modifiers changed from: private */
    public void a(Context context, String str, Bundle bundle, String str2, IUiListener iUiListener) {
        String str3 = Constants.DEFAULT_PF;
        String str4 = Constants.PARAM_PLATFORM_ID;
        String str5 = "openSDK_LOG.SocialApiIml";
        f.a(str5, "OpenUi, showDialog --start");
        CookieSyncManager.createInstance(context);
        bundle.putString("oauth_consumer_key", this.b.getAppId());
        if (this.b.isSessionValid()) {
            bundle.putString(Constants.PARAM_ACCESS_TOKEN, this.b.getAccessToken());
        }
        String openId = this.b.getOpenId();
        if (openId != null) {
            bundle.putString("openid", openId);
        }
        try {
            bundle.putString(str4, e.a().getSharedPreferences(Constants.PREFERENCE_PF, 0).getString(str4, str3));
        } catch (Exception e) {
            e.printStackTrace();
            bundle.putString(str4, str3);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str2);
        sb.append(HttpUtils.encodeUrl(bundle));
        String sb2 = sb.toString();
        f.b(str5, "OpenUi, showDialog TDialog");
        if (SocialConstants.ACTION_CHALLENGE.equals(str) || SocialConstants.ACTION_BRAG.equals(str)) {
            f.b(str5, "OpenUi, showDialog PKDialog");
            c cVar = new c(this.c, str, sb2, iUiListener, this.b);
            cVar.show();
            return;
        }
        TDialog tDialog = new TDialog(this.c, str, sb2, iUiListener, this.b);
        tDialog.show();
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    public void writeEncryToken(Context context) {
        String str;
        String accessToken = this.b.getAccessToken();
        String appId = this.b.getAppId();
        String openId = this.b.getOpenId();
        if (accessToken == null || accessToken.length() <= 0 || appId == null || appId.length() <= 0 || openId == null || openId.length() <= 0) {
            str = null;
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append("tencent&sdk&qazxc***14969%%");
            sb.append(accessToken);
            sb.append(appId);
            sb.append(openId);
            sb.append("qzone3.4");
            str = k.f(sb.toString());
        }
        b bVar = new b(context);
        WebSettings settings = bVar.getSettings();
        settings.setDomStorageEnabled(true);
        settings.setJavaScriptEnabled(true);
        settings.setDatabaseEnabled(true);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("<!DOCTYPE HTML><html lang=\"en-US\"><head><meta charset=\"UTF-8\"><title>localStorage Test</title><script type=\"text/javascript\">document.domain = 'qq.com';localStorage[\"");
        sb2.append(this.b.getOpenId());
        sb2.append(EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR);
        sb2.append(this.b.getAppId());
        sb2.append("\"]=\"");
        sb2.append(str);
        sb2.append("\";</script></head><body></body></html>");
        String sb3 = sb2.toString();
        String a2 = g.a().a(context, "http://qzs.qq.com");
        bVar.loadDataWithBaseURL(a2, sb3, "text/html", "utf-8", a2);
    }

    /* access modifiers changed from: protected */
    public Intent b(String str) {
        Intent intent = new Intent();
        String str2 = Constants.PACKAGE_QZONE;
        intent.setClassName(str2, str);
        Intent intent2 = new Intent();
        intent2.setClassName("com.tencent.mobileqq", str);
        Intent intent3 = new Intent();
        intent3.setClassName(Constants.PACKAGE_QQ_PAD, str);
        if (k.d(e.a()) && h.a(e.a(), intent3)) {
            return intent3;
        }
        if (h.a(e.a(), intent2) && h.c(e.a(), "4.7") >= 0) {
            return intent2;
        }
        if (!h.a(e.a(), intent) || h.a(h.a(e.a(), str2), "4.2") < 0) {
            return null;
        }
        if (!h.a(e.a(), intent.getComponent().getPackageName(), Constants.SIGNATRUE_QZONE)) {
            intent = null;
        }
        return intent;
    }
}
