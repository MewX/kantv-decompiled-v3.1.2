package com.tencent.tauth;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.tencent.connect.common.AssistActivity;
import com.tencent.connect.common.Constants;
import com.tencent.connect.common.UIListenerManager;
import com.tencent.open.a.f;
import com.tencent.open.utils.h;
import com.tencent.open.utils.k;

/* compiled from: ProGuard */
public class AuthActivity extends Activity {
    public static final String ACTION_KEY = "action";
    public static final String ACTION_SHARE_PRIZE = "sharePrize";
    private static int a;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String str = "openSDK_LOG.AuthActivity";
        if (getIntent() == null) {
            f.d(str, "-->onCreate, getIntent() return null");
            finish();
            return;
        }
        Uri uri = null;
        try {
            uri = getIntent().getData();
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append("-->onCreate, getIntent().getData() has exception! ");
            sb.append(e.getMessage());
            f.e(str, sb.toString());
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("-->onCreate, uri: ");
        sb2.append(uri);
        f.a(str, sb2.toString());
        a(uri);
    }

    private void a(Uri uri) {
        String str = "activityid";
        String str2 = "openSDK_LOG.AuthActivity";
        f.c(str2, "-->handleActionUri--start");
        if (!(uri == null || uri.toString() == null)) {
            String str3 = "";
            if (!uri.toString().equals(str3)) {
                String uri2 = uri.toString();
                Bundle a2 = k.a(uri2.substring(uri2.indexOf("#") + 1));
                if (a2 == null) {
                    f.d(str2, "-->handleActionUri, bundle is null");
                    finish();
                    return;
                }
                String string = a2.getString(ACTION_KEY);
                StringBuilder sb = new StringBuilder();
                sb.append("-->handleActionUri, action: ");
                sb.append(string);
                f.c(str2, sb.toString());
                if (string == null) {
                    finish();
                } else {
                    String str4 = "shareToQzone";
                    if (string.equals("shareToQQ") || string.equals(str4) || string.equals("sendToMyComputer") || string.equals("shareToTroopBar")) {
                        if (string.equals(str4) && h.a((Context) this, "com.tencent.mobileqq") != null && h.c(this, "5.2.0") < 0) {
                            a++;
                            if (a == 2) {
                                a = 0;
                                finish();
                                return;
                            }
                        }
                        f.c(str2, "-->handleActionUri, most share action, start assistactivity");
                        Intent intent = new Intent(this, AssistActivity.class);
                        intent.putExtras(a2);
                        intent.setFlags(603979776);
                        startActivity(intent);
                        finish();
                    } else if (string.equals("addToQQFavorites")) {
                        Intent intent2 = getIntent();
                        intent2.putExtras(a2);
                        intent2.putExtra(Constants.KEY_ACTION, "action_share");
                        IUiListener listnerWithAction = UIListenerManager.getInstance().getListnerWithAction(string);
                        if (listnerWithAction != null) {
                            UIListenerManager.getInstance().handleDataToListener(intent2, listnerWithAction);
                        }
                        finish();
                    } else {
                        String str5 = ACTION_SHARE_PRIZE;
                        if (string.equals(str5)) {
                            Intent launchIntentForPackage = getPackageManager().getLaunchIntentForPackage(getPackageName());
                            try {
                                str3 = k.d(a2.getString("response")).getString(str);
                            } catch (Exception e) {
                                f.b(str2, "sharePrize parseJson has exception.", e);
                            }
                            if (!TextUtils.isEmpty(str3)) {
                                launchIntentForPackage.putExtra(str5, true);
                                Bundle bundle = new Bundle();
                                bundle.putString(str, str3);
                                launchIntentForPackage.putExtras(bundle);
                            }
                            startActivity(launchIntentForPackage);
                            finish();
                        } else {
                            finish();
                        }
                    }
                }
                return;
            }
        }
        f.d(str2, "-->handleActionUri, uri invalid");
        finish();
    }
}
