package com.tencent.open;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.widget.Toast;
import com.tencent.connect.auth.QQToken;
import com.tencent.connect.common.BaseApi;
import com.tencent.connect.common.Constants;
import com.tencent.open.a.f;
import com.tencent.open.b.d;
import com.tencent.open.utils.HttpUtils;
import com.tencent.open.utils.k;

/* compiled from: ProGuard */
public class SocialOperation extends BaseApi {
    public static final String GAME_FRIEND_ADD_MESSAGE = "add_msg";
    public static final String GAME_FRIEND_LABEL = "friend_label";
    public static final String GAME_FRIEND_OPENID = "fopen_id";
    public static final String GAME_SIGNATURE = "signature";
    public static final String GAME_UNION_ID = "unionid";
    public static final String GAME_UNION_NAME = "union_name";
    public static final String GAME_ZONE_ID = "zoneid";

    public SocialOperation(QQToken qQToken) {
        super(qQToken);
    }

    public void makeFriend(Activity activity, Bundle bundle) {
        String str = "openSDK_LOG.GameAppOperation";
        f.c(str, "-->makeFriend()  -- start");
        if (bundle == null) {
            f.e(str, "-->makeFriend params is null");
            d.a().a(this.b.getOpenId(), this.b.getAppId(), Constants.VIA_MAKE_FRIEND, Constants.VIA_REPORT_TYPE_MAKE_FRIEND, "18", "1");
            return;
        }
        String string = bundle.getString(GAME_FRIEND_OPENID);
        if (TextUtils.isEmpty(string)) {
            f.e(str, "-->make friend, fOpenid is empty.");
            d.a().a(this.b.getOpenId(), this.b.getAppId(), Constants.VIA_MAKE_FRIEND, Constants.VIA_REPORT_TYPE_MAKE_FRIEND, "18", "1");
            return;
        }
        String string2 = bundle.getString(GAME_FRIEND_LABEL);
        String string3 = bundle.getString(GAME_FRIEND_ADD_MESSAGE);
        String a = k.a((Context) activity);
        String openId = this.b.getOpenId();
        String appId = this.b.getAppId();
        StringBuilder sb = new StringBuilder();
        sb.append("-->make friend, fOpenid: ");
        sb.append(string);
        sb.append(" | label: ");
        sb.append(string2);
        sb.append(" | message: ");
        sb.append(string3);
        sb.append(" | openid: ");
        sb.append(openId);
        sb.append(" | appid:");
        sb.append(appId);
        f.a(str, sb.toString());
        StringBuffer stringBuffer = new StringBuffer("mqqapi://gamesdk/add_friend?src_type=app&version=1");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("&fopen_id=");
        sb2.append(Base64.encodeToString(k.i(string), 2));
        stringBuffer.append(sb2.toString());
        if (!TextUtils.isEmpty(openId)) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("&open_id=");
            sb3.append(Base64.encodeToString(k.i(openId), 2));
            stringBuffer.append(sb3.toString());
        }
        if (!TextUtils.isEmpty(appId)) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append("&app_id=");
            sb4.append(appId);
            stringBuffer.append(sb4.toString());
        }
        if (!TextUtils.isEmpty(string2)) {
            StringBuilder sb5 = new StringBuilder();
            sb5.append("&friend_label=");
            sb5.append(Base64.encodeToString(k.i(string2), 2));
            stringBuffer.append(sb5.toString());
        }
        if (!TextUtils.isEmpty(string3)) {
            StringBuilder sb6 = new StringBuilder();
            sb6.append("&add_msg=");
            sb6.append(Base64.encodeToString(k.i(string3), 2));
            stringBuffer.append(sb6.toString());
        }
        if (!TextUtils.isEmpty(a)) {
            StringBuilder sb7 = new StringBuilder();
            sb7.append("&app_name=");
            sb7.append(Base64.encodeToString(k.i(a), 2));
            stringBuffer.append(sb7.toString());
        }
        StringBuilder sb8 = new StringBuilder();
        sb8.append("-->make friend, url: ");
        sb8.append(stringBuffer.toString());
        f.a(str, sb8.toString());
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(stringBuffer.toString()));
        if (!a(intent) || k.f(activity, "5.1.0")) {
            f.d(str, "-->make friend, there is no activity.");
            a(activity);
            d.a().a(this.b.getOpenId(), this.b.getAppId(), Constants.VIA_MAKE_FRIEND, Constants.VIA_REPORT_TYPE_MAKE_FRIEND, "18", "1");
        } else {
            f.c(str, "-->makeFriend target activity found, qqver greater than 5.1.0");
            try {
                activity.startActivity(intent);
                d.a().a(this.b.getOpenId(), this.b.getAppId(), Constants.VIA_MAKE_FRIEND, Constants.VIA_REPORT_TYPE_MAKE_FRIEND, "18", "0");
            } catch (Exception e) {
                f.b(str, "-->make friend, start activity exception.", e);
                a(activity);
                d.a().a(this.b.getOpenId(), this.b.getAppId(), Constants.VIA_MAKE_FRIEND, Constants.VIA_REPORT_TYPE_MAKE_FRIEND, "18", "1");
            }
        }
        f.c(str, "-->makeFriend()  -- end");
    }

    public void bindQQGroup(Activity activity, Bundle bundle) {
        String str = "openSDK_LOG.GameAppOperation";
        f.c(str, "-->bindQQGroup()  -- start");
        if (activity == null) {
            f.e(str, "-->bindQQGroup, activity is empty.");
            d.a().a(this.b.getOpenId(), this.b.getAppId(), Constants.VIA_BIND_GROUP, "18", "18", "1");
        } else if (bundle == null) {
            Toast.makeText(activity, "Bundle参数为空", 0).show();
            f.e(str, "-->bindQQGroup, params is empty.");
            d.a().a(this.b.getOpenId(), this.b.getAppId(), Constants.VIA_BIND_GROUP, "18", "18", "1");
        } else {
            String a = k.a((Context) activity);
            StringBuffer stringBuffer = new StringBuffer("mqqapi://gamesdk/bind_group?src_type=app&version=1");
            if (!TextUtils.isEmpty(a)) {
                StringBuilder sb = new StringBuilder();
                sb.append("&app_name=");
                sb.append(Base64.encodeToString(k.i(a), 2));
                stringBuffer.append(sb.toString());
            }
            String string = bundle.getString(GAME_UNION_ID);
            if (TextUtils.isEmpty(string)) {
                Toast.makeText(activity, "游戏公会ID为空", 0).show();
                f.e(str, "-->bindQQGroup, game union id is empty.");
                d.a().a(this.b.getOpenId(), this.b.getAppId(), Constants.VIA_BIND_GROUP, "18", "18", "1");
                return;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("&unionid=");
            sb2.append(Base64.encodeToString(k.i(string), 2));
            stringBuffer.append(sb2.toString());
            String string2 = bundle.getString(GAME_UNION_NAME);
            if (TextUtils.isEmpty(string2)) {
                Toast.makeText(activity, "游戏公会名称为空", 0).show();
                f.e(str, "-->bindQQGroup, game union name is empty.");
                d.a().a(this.b.getOpenId(), this.b.getAppId(), Constants.VIA_BIND_GROUP, "18", "18", "1");
                return;
            }
            StringBuilder sb3 = new StringBuilder();
            sb3.append("&union_name=");
            sb3.append(Base64.encodeToString(k.i(string2), 2));
            stringBuffer.append(sb3.toString());
            String string3 = bundle.getString(GAME_ZONE_ID);
            if (TextUtils.isEmpty(string3)) {
                Toast.makeText(activity, "游戏区域ID为空", 0).show();
                f.e(str, "-->bindQQGroup, game zone id  is empty.");
                d.a().a(this.b.getOpenId(), this.b.getAppId(), Constants.VIA_BIND_GROUP, "18", "18", "1");
                return;
            }
            StringBuilder sb4 = new StringBuilder();
            sb4.append("&zoneid=");
            sb4.append(Base64.encodeToString(k.i(string3), 2));
            stringBuffer.append(sb4.toString());
            String string4 = bundle.getString(GAME_SIGNATURE);
            if (TextUtils.isEmpty(string4)) {
                Toast.makeText(activity, "游戏签名为空", 0).show();
                f.e(str, "-->bindQQGroup, game signature is empty.");
                d.a().a(this.b.getOpenId(), this.b.getAppId(), Constants.VIA_BIND_GROUP, "18", "18", "1");
                return;
            }
            StringBuilder sb5 = new StringBuilder();
            sb5.append("&signature=");
            sb5.append(Base64.encodeToString(k.i(string4), 2));
            stringBuffer.append(sb5.toString());
            String openId = this.b.getOpenId();
            if (!TextUtils.isEmpty(openId)) {
                StringBuilder sb6 = new StringBuilder();
                sb6.append("&openid=");
                sb6.append(Base64.encodeToString(k.i(openId), 2));
                stringBuffer.append(sb6.toString());
                Bundle b = b();
                for (String str2 : b.keySet()) {
                    b.putString(str2, Base64.encodeToString(k.i(b.getString(str2)), 2));
                }
                StringBuilder sb7 = new StringBuilder();
                sb7.append("&");
                sb7.append(HttpUtils.encodeUrl(b));
                stringBuffer.append(sb7.toString());
                StringBuilder sb8 = new StringBuilder();
                sb8.append("-->bindQQGroup, url: ");
                sb8.append(stringBuffer.toString());
                f.a(str, sb8.toString());
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(Uri.parse(stringBuffer.toString()));
                if (!a(intent) || k.f(activity, "5.1.0")) {
                    f.d(str, "-->bind group, there is no activity, show download page.");
                    d.a().a(this.b.getOpenId(), this.b.getAppId(), Constants.VIA_BIND_GROUP, "18", "18", "1");
                    a(activity);
                } else {
                    f.c(str, "-->bingQQGroup target activity found, qqver > 5.1.0");
                    try {
                        activity.startActivity(intent);
                        d.a().a(this.b.getOpenId(), this.b.getAppId(), Constants.VIA_BIND_GROUP, "18", "18", "0");
                    } catch (Exception e) {
                        f.b(str, "-->bind group, start activity exception.", e);
                        d.a().a(this.b.getOpenId(), this.b.getAppId(), Constants.VIA_BIND_GROUP, "18", "18", "1");
                        a(activity);
                    }
                }
                f.c(str, "-->bindQQGroup()  -- end");
                return;
            }
            Toast.makeText(activity, "Openid为空", 0).show();
            f.e(str, "-->bindQQGroup, openid is empty.");
            d.a().a(this.b.getOpenId(), this.b.getAppId(), Constants.VIA_BIND_GROUP, "18", "18", "1");
        }
    }

    private void a(Activity activity) {
        a(activity, "");
    }

    private void a(Activity activity, String str) {
        Activity activity2 = activity;
        TDialog tDialog = new TDialog(activity2, "", a(str), null, this.b);
        tDialog.show();
    }
}
