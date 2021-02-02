package com.tencent.connect.common;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.tencent.open.a.f;
import com.tencent.open.b.d;
import org.json.JSONObject;

/* compiled from: ProGuard */
public class AssistActivity extends Activity {
    public static final String EXTRA_INTENT = "openSDK_LOG.AssistActivity.ExtraIntent";
    protected boolean a = false;
    protected Handler b = new Handler() {
        public void handleMessage(Message message) {
            if (message.what == 0 && !AssistActivity.this.isFinishing()) {
                f.d("openSDK_LOG.AssistActivity", "-->finish by timeout");
                AssistActivity.this.finish();
            }
        }
    };
    private boolean c = false;
    private String d;

    public static Intent getAssistActivityIntent(Context context) {
        return new Intent(context, AssistActivity.class);
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        int i;
        String str;
        requestWindowFeature(1);
        super.onCreate(bundle);
        setRequestedOrientation(3);
        String str2 = "openSDK_LOG.AssistActivity";
        f.b(str2, "--onCreate--");
        if (getIntent() == null) {
            f.e(str2, "-->onCreate--getIntent() returns null");
            finish();
        }
        Intent intent = (Intent) getIntent().getParcelableExtra(EXTRA_INTENT);
        if (intent == null) {
            i = 0;
        } else {
            i = intent.getIntExtra(Constants.KEY_REQUEST_CODE, 0);
        }
        if (intent == null) {
            str = "";
        } else {
            str = intent.getStringExtra("appid");
        }
        this.d = str;
        Bundle bundleExtra = getIntent().getBundleExtra("h5_share_data");
        if (bundle != null) {
            this.c = bundle.getBoolean("RESTART_FLAG");
            this.a = bundle.getBoolean("RESUME_FLAG", false);
        }
        if (this.c) {
            f.b(str2, "is restart");
        } else if (bundleExtra != null) {
            f.d(str2, "--onCreate--h5 bundle not null, will open browser");
            a(bundleExtra);
        } else if (intent != null) {
            StringBuilder sb = new StringBuilder();
            sb.append("--onCreate--activityIntent not null, will start activity, reqcode = ");
            sb.append(i);
            f.c(str2, sb.toString());
            startActivityForResult(intent, i);
        } else {
            f.e(str2, "--onCreate--activityIntent is null");
            finish();
        }
    }

    /* access modifiers changed from: protected */
    public void onStart() {
        f.b("openSDK_LOG.AssistActivity", "-->onStart");
        super.onStart();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        f.b("openSDK_LOG.AssistActivity", "-->onResume");
        super.onResume();
        Intent intent = getIntent();
        if (!intent.getBooleanExtra("is_login", false)) {
            if (!intent.getBooleanExtra("is_qq_mobile_share", false) && this.c && !isFinishing()) {
                finish();
            }
            if (this.a) {
                this.b.sendMessage(this.b.obtainMessage(0));
                return;
            }
            this.a = true;
        }
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        f.b("openSDK_LOG.AssistActivity", "-->onPause");
        this.b.removeMessages(0);
        super.onPause();
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        f.b("openSDK_LOG.AssistActivity", "-->onStop");
        super.onStop();
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        f.b("openSDK_LOG.AssistActivity", "-->onDestroy");
        super.onDestroy();
    }

    /* access modifiers changed from: protected */
    public void onNewIntent(Intent intent) {
        String str = "openSDK_LOG.AssistActivity";
        f.c(str, "--onNewIntent");
        super.onNewIntent(intent);
        intent.putExtra(Constants.KEY_ACTION, "action_share");
        setResult(-1, intent);
        if (!isFinishing()) {
            f.c(str, "--onNewIntent--activity not finished, finish now");
            finish();
        }
    }

    /* access modifiers changed from: protected */
    public void onSaveInstanceState(Bundle bundle) {
        f.b("openSDK_LOG.AssistActivity", "--onSaveInstanceState--");
        bundle.putBoolean("RESTART_FLAG", true);
        bundle.putBoolean("RESUME_FLAG", this.a);
        super.onSaveInstanceState(bundle);
    }

    /* access modifiers changed from: protected */
    public void onActivityResult(int i, int i2, Intent intent) {
        StringBuilder sb = new StringBuilder();
        sb.append("--onActivityResult--requestCode: ");
        sb.append(i);
        sb.append(" | resultCode: ");
        sb.append(i2);
        sb.append("data = null ? ");
        sb.append(intent == null);
        f.c("openSDK_LOG.AssistActivity", sb.toString());
        super.onActivityResult(i, i2, intent);
        if (i != 0) {
            if (intent != null) {
                intent.putExtra(Constants.KEY_ACTION, "action_login");
            }
            setResultData(i, intent);
            finish();
        }
    }

    public void setResultData(int i, Intent intent) {
        String str = "openSDK_LOG.AssistActivity";
        if (intent == null) {
            f.d(str, "--setResultData--intent is null, setResult ACTIVITY_CANCEL");
            setResult(0);
            if (i == 11101) {
                d.a().a("", this.d, "2", "1", "7", "2");
            }
            return;
        }
        try {
            String stringExtra = intent.getStringExtra(Constants.KEY_RESPONSE);
            StringBuilder sb = new StringBuilder();
            sb.append("--setResultDataForLogin-- ");
            sb.append(stringExtra);
            f.b(str, sb.toString());
            if (!TextUtils.isEmpty(stringExtra)) {
                JSONObject jSONObject = new JSONObject(stringExtra);
                String optString = jSONObject.optString("openid");
                String optString2 = jSONObject.optString(Constants.PARAM_ACCESS_TOKEN);
                if (TextUtils.isEmpty(optString) || TextUtils.isEmpty(optString2)) {
                    f.d(str, "--setResultData--openid or token is empty, setResult ACTIVITY_CANCEL");
                    setResult(0, intent);
                    d.a().a("", this.d, "2", "1", "7", "1");
                } else {
                    f.c(str, "--setResultData--openid and token not empty, setResult ACTIVITY_OK");
                    setResult(-1, intent);
                    d.a().a(optString, this.d, "2", "1", "7", "0");
                }
            } else {
                f.d(str, "--setResultData--response is empty, setResult ACTIVITY_OK");
                setResult(-1, intent);
            }
        } catch (Exception e) {
            f.e(str, "--setResultData--parse response failed");
            e.printStackTrace();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x0043  */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x006e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(android.os.Bundle r13) {
        /*
            r12 = this;
            java.lang.String r0 = "viaShareType"
            java.lang.String r8 = r13.getString(r0)
            java.lang.String r0 = "callbackAction"
            java.lang.String r0 = r13.getString(r0)
            java.lang.String r1 = "url"
            java.lang.String r1 = r13.getString(r1)
            java.lang.String r2 = "openId"
            java.lang.String r2 = r13.getString(r2)
            java.lang.String r3 = "appId"
            java.lang.String r3 = r13.getString(r3)
            java.lang.String r13 = "shareToQQ"
            boolean r13 = r13.equals(r0)
            java.lang.String r4 = ""
            if (r13 == 0) goto L_0x002f
            java.lang.String r13 = "ANDROIDQQ.SHARETOQQ.XX"
            java.lang.String r4 = "10"
        L_0x002c:
            r5 = r4
            r4 = r13
            goto L_0x003d
        L_0x002f:
            java.lang.String r13 = "shareToQzone"
            boolean r13 = r13.equals(r0)
            if (r13 == 0) goto L_0x003c
            java.lang.String r13 = "ANDROIDQQ.SHARETOQZ.XX"
            java.lang.String r4 = "11"
            goto L_0x002c
        L_0x003c:
            r5 = r4
        L_0x003d:
            boolean r13 = com.tencent.open.utils.k.a(r12, r1)
            if (r13 != 0) goto L_0x006e
            com.tencent.connect.common.UIListenerManager r13 = com.tencent.connect.common.UIListenerManager.getInstance()
            com.tencent.tauth.IUiListener r13 = r13.getListnerWithAction(r0)
            if (r13 == 0) goto L_0x0059
            com.tencent.tauth.UiError r0 = new com.tencent.tauth.UiError
            r1 = -6
            r6 = 0
            java.lang.String r7 = "打开浏览器失败!"
            r0.<init>(r1, r7, r6)
            r13.onError(r0)
        L_0x0059:
            com.tencent.open.b.d r1 = com.tencent.open.b.d.a()
            java.lang.String r6 = "3"
            java.lang.String r7 = "1"
            java.lang.String r9 = "0"
            java.lang.String r10 = "2"
            java.lang.String r11 = "0"
            r1.a(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)
            r12.finish()
            goto L_0x007f
        L_0x006e:
            com.tencent.open.b.d r1 = com.tencent.open.b.d.a()
            java.lang.String r6 = "3"
            java.lang.String r7 = "0"
            java.lang.String r9 = "0"
            java.lang.String r10 = "2"
            java.lang.String r11 = "0"
            r1.a(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)
        L_0x007f:
            android.content.Intent r13 = r12.getIntent()
            java.lang.String r0 = "shareH5"
            r13.removeExtra(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.connect.common.AssistActivity.a(android.os.Bundle):void");
    }
}
