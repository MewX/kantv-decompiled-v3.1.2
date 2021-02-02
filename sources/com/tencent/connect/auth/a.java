package com.tencent.connect.auth;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnLongClickListener;
import android.view.View.OnTouchListener;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebSettings.RenderPriority;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.google.android.exoplayer2.C;
import com.tencent.connect.common.Constants;
import com.tencent.imsdk.BaseConstants;
import com.tencent.open.a.f;
import com.tencent.open.b.g;
import com.tencent.open.utils.HttpUtils;
import com.tencent.open.utils.k;
import com.tencent.open.web.security.JniInterface;
import com.tencent.open.web.security.SecureJsInterface;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: ProGuard */
public class a extends Dialog {
    /* access modifiers changed from: private */
    public String a;
    /* access modifiers changed from: private */
    public b b;
    private IUiListener c;
    /* access modifiers changed from: private */
    public Handler d;
    private FrameLayout e;
    private LinearLayout f;
    /* access modifiers changed from: private */
    public FrameLayout g;
    private ProgressBar h;
    private String i;
    /* access modifiers changed from: private */
    public com.tencent.open.c.c j;
    /* access modifiers changed from: private */
    public Context k;
    /* access modifiers changed from: private */
    public com.tencent.open.web.security.b l;
    /* access modifiers changed from: private */
    public boolean m = false;
    /* access modifiers changed from: private */
    public int n;
    /* access modifiers changed from: private */
    public String o;
    /* access modifiers changed from: private */
    public String p;
    /* access modifiers changed from: private */

    /* renamed from: q reason: collision with root package name */
    public long f6q = 0;
    /* access modifiers changed from: private */
    public long r = 30000;
    /* access modifiers changed from: private */
    public HashMap<String, Runnable> s;

    /* renamed from: com.tencent.connect.auth.a$a reason: collision with other inner class name */
    /* compiled from: ProGuard */
    private class C0006a extends WebViewClient {
        private C0006a() {
        }

        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            Uri uri;
            StringBuilder sb = new StringBuilder();
            sb.append("-->Redirect URL: ");
            sb.append(str);
            String str2 = "openSDK_LOG.AuthDialog";
            f.a(str2, sb.toString());
            if (str.startsWith("auth://browser")) {
                JSONObject c = k.c(str);
                a aVar = a.this;
                aVar.m = aVar.e();
                if (!a.this.m) {
                    String str3 = "fail_cb";
                    if (c.optString(str3, null) != null) {
                        a.this.a(c.optString(str3), "");
                    } else if (c.optInt("fall_to_wv") == 1) {
                        a aVar2 = a.this;
                        String str4 = "?";
                        if (aVar2.a.indexOf(str4) > -1) {
                            str4 = "&";
                        }
                        a.a(aVar2, (Object) str4);
                        a.a(a.this, (Object) "browser_error=1");
                        a.this.j.loadUrl(a.this.a);
                    } else {
                        String optString = c.optString("redir", null);
                        if (optString != null) {
                            a.this.j.loadUrl(optString);
                        }
                    }
                }
                return true;
            } else if (str.startsWith("auth://tauth.qq.com/")) {
                a.this.b.onComplete(k.c(str));
                a.this.dismiss();
                return true;
            } else if (str.startsWith(Constants.CANCEL_URI)) {
                a.this.b.onCancel();
                a.this.dismiss();
                return true;
            } else if (str.startsWith(Constants.CLOSE_URI)) {
                a.this.dismiss();
                return true;
            } else {
                String str5 = Constants.DOWNLOAD_URI;
                if (str.startsWith(str5) || str.endsWith(".apk")) {
                    try {
                        if (str.startsWith(str5)) {
                            uri = Uri.parse(Uri.decode(str.substring(11)));
                        } else {
                            uri = Uri.parse(Uri.decode(str));
                        }
                        Intent intent = new Intent("android.intent.action.VIEW", uri);
                        intent.addFlags(C.ENCODING_PCM_MU_LAW);
                        a.this.k.startActivity(intent);
                    } catch (Exception e) {
                        f.b(str2, "-->start download activity exception, e: ", e);
                    }
                    return true;
                } else if (str.startsWith("auth://progress")) {
                    try {
                        List pathSegments = Uri.parse(str).getPathSegments();
                        if (pathSegments.isEmpty()) {
                            return true;
                        }
                        int intValue = Integer.valueOf((String) pathSegments.get(0)).intValue();
                        if (intValue == 0) {
                            a.this.g.setVisibility(8);
                            a.this.j.setVisibility(0);
                        } else if (intValue == 1) {
                            a.this.g.setVisibility(0);
                        }
                        return true;
                    } catch (Exception unused) {
                    }
                } else if (str.startsWith("auth://onLoginSubmit")) {
                    try {
                        List pathSegments2 = Uri.parse(str).getPathSegments();
                        if (!pathSegments2.isEmpty()) {
                            a.this.p = (String) pathSegments2.get(0);
                        }
                    } catch (Exception unused2) {
                    }
                    return true;
                } else if (a.this.l.a(a.this.j, str)) {
                    return true;
                } else {
                    f.c(str2, "-->Redirect URL: return false");
                    return false;
                }
            }
        }

        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            StringBuilder sb = new StringBuilder();
            sb.append("-->onReceivedError, errorCode: ");
            sb.append(i);
            sb.append(" | description: ");
            sb.append(str);
            f.c("openSDK_LOG.AuthDialog", sb.toString());
            if (!k.b(a.this.k)) {
                a.this.b.onError(new UiError(BaseConstants.ERR_SDK_FRIENDSHIP_INVALID_PROFILE_KEY, "当前网络不可用，请稍后重试！", str2));
                a.this.dismiss();
            } else if (!a.this.o.startsWith("http://qzs.qq.com/open/mobile/login/qzsjump.html?")) {
                long elapsedRealtime = SystemClock.elapsedRealtime() - a.this.f6q;
                if (a.this.n >= 1 || elapsedRealtime >= a.this.r) {
                    a.this.j.loadUrl(a.this.a());
                } else {
                    a.this.n = a.this.n + 1;
                    a.this.d.postDelayed(new Runnable() {
                        public void run() {
                            a.this.j.loadUrl(a.this.o);
                        }
                    }, 500);
                }
            } else {
                a.this.b.onError(new UiError(i, str, str2));
                a.this.dismiss();
            }
        }

        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            StringBuilder sb = new StringBuilder();
            sb.append("-->onPageStarted, url: ");
            sb.append(str);
            f.a("openSDK_LOG.AuthDialog", sb.toString());
            super.onPageStarted(webView, str, bitmap);
            a.this.g.setVisibility(0);
            a.this.f6q = SystemClock.elapsedRealtime();
            if (!TextUtils.isEmpty(a.this.o)) {
                a.this.d.removeCallbacks((Runnable) a.this.s.remove(a.this.o));
            }
            a.this.o = str;
            a aVar = a.this;
            d dVar = new d(aVar.o);
            a.this.s.put(str, dVar);
            a.this.d.postDelayed(dVar, 120000);
        }

        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            StringBuilder sb = new StringBuilder();
            sb.append("-->onPageFinished, url: ");
            sb.append(str);
            f.a("openSDK_LOG.AuthDialog", sb.toString());
            a.this.g.setVisibility(8);
            if (a.this.j != null) {
                a.this.j.setVisibility(0);
            }
            if (!TextUtils.isEmpty(str)) {
                a.this.d.removeCallbacks((Runnable) a.this.s.remove(str));
            }
        }

        @TargetApi(8)
        public void onReceivedSslError(WebView webView, final SslErrorHandler sslErrorHandler, SslError sslError) {
            String str;
            String str2;
            String str3;
            StringBuilder sb = new StringBuilder();
            sb.append("-->onReceivedSslError ");
            sb.append(sslError.getPrimaryError());
            sb.append("请求不合法，请检查手机安全设置，如系统时间、代理等");
            f.e("openSDK_LOG.AuthDialog", sb.toString());
            if (Locale.getDefault().getLanguage().equals("zh")) {
                str2 = "ssl证书无效，是否继续访问？";
                str = "是";
                str3 = "否";
            } else {
                str2 = "The SSL certificate is invalid,do you countinue?";
                str = "yes";
                str3 = "no";
            }
            Builder builder = new Builder(a.this.k);
            builder.setMessage(str2);
            builder.setPositiveButton(str, new OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    sslErrorHandler.proceed();
                }
            });
            builder.setNegativeButton(str3, new OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    sslErrorHandler.cancel();
                    a.this.dismiss();
                }
            });
            builder.create().show();
        }
    }

    /* compiled from: ProGuard */
    private class b implements IUiListener {
        String a;
        String b;
        private String d;
        private IUiListener e;

        public b(String str, String str2, String str3, IUiListener iUiListener) {
            this.d = str;
            this.a = str2;
            this.b = str3;
            this.e = iUiListener;
        }

        /* access modifiers changed from: private */
        public void a(String str) {
            try {
                onComplete(k.d(str));
            } catch (JSONException e2) {
                e2.printStackTrace();
                onError(new UiError(-4, Constants.MSG_JSON_ERROR, str));
            }
        }

        public void onComplete(Object obj) {
            JSONObject jSONObject = (JSONObject) obj;
            g a2 = g.a();
            StringBuilder sb = new StringBuilder();
            sb.append(this.d);
            sb.append("_H5");
            a2.a(sb.toString(), SystemClock.elapsedRealtime(), 0, 0, jSONObject.optInt("ret", -6), this.a, false);
            IUiListener iUiListener = this.e;
            if (iUiListener != null) {
                iUiListener.onComplete(jSONObject);
                this.e = null;
            }
        }

        public void onError(UiError uiError) {
            String str;
            if (uiError.errorMessage != null) {
                StringBuilder sb = new StringBuilder();
                sb.append(uiError.errorMessage);
                sb.append(this.a);
                str = sb.toString();
            } else {
                str = this.a;
            }
            g a2 = g.a();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.d);
            sb2.append("_H5");
            a2.a(sb2.toString(), SystemClock.elapsedRealtime(), 0, 0, uiError.errorCode, str, false);
            a.this.a(str);
            IUiListener iUiListener = this.e;
            if (iUiListener != null) {
                iUiListener.onError(uiError);
                this.e = null;
            }
        }

        public void onCancel() {
            IUiListener iUiListener = this.e;
            if (iUiListener != null) {
                iUiListener.onCancel();
                this.e = null;
            }
        }
    }

    /* compiled from: ProGuard */
    private class c extends Handler {
        private b b;

        public c(b bVar, Looper looper) {
            super(looper);
            this.b = bVar;
        }

        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                this.b.a((String) message.obj);
            } else if (i == 2) {
                this.b.onCancel();
            } else if (i == 3) {
                a.b(a.this.k, (String) message.obj);
            }
        }
    }

    /* compiled from: ProGuard */
    class d implements Runnable {
        String a = "";

        public d(String str) {
            this.a = str;
        }

        public void run() {
            StringBuilder sb = new StringBuilder();
            sb.append("-->timeoutUrl: ");
            sb.append(this.a);
            sb.append(" | mRetryUrl: ");
            sb.append(a.this.o);
            f.a("openSDK_LOG.AuthDialog", sb.toString());
            if (this.a.equals(a.this.o)) {
                a.this.b.onError(new UiError(BaseConstants.ERR_SDK_FRIENDSHIP_INVALID_ADD_REMARK, "请求页面超时，请稍后重试！", a.this.o));
                a.this.dismiss();
            }
        }
    }

    static /* synthetic */ String a(a aVar, Object obj) {
        StringBuilder sb = new StringBuilder();
        sb.append(aVar.a);
        sb.append(obj);
        String sb2 = sb.toString();
        aVar.a = sb2;
        return sb2;
    }

    public a(Context context, String str, String str2, IUiListener iUiListener, QQToken qQToken) {
        super(context, 16973840);
        this.k = context;
        this.a = str2;
        b bVar = new b(str, str2, qQToken.getAppId(), iUiListener);
        this.b = bVar;
        this.d = new c(this.b, context.getMainLooper());
        this.c = iUiListener;
        this.i = str;
        this.l = new com.tencent.open.web.security.b();
        getWindow().setSoftInputMode(32);
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        b();
        d();
        this.s = new HashMap<>();
    }

    public void onBackPressed() {
        if (!this.m) {
            this.b.onCancel();
        }
        super.onBackPressed();
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        super.onStop();
    }

    /* access modifiers changed from: private */
    public String a(String str) {
        StringBuilder sb = new StringBuilder(str);
        if (!TextUtils.isEmpty(this.p) && this.p.length() >= 4) {
            String str2 = this.p;
            String substring = str2.substring(str2.length() - 4);
            sb.append("_u_");
            sb.append(substring);
        }
        return sb.toString();
    }

    /* access modifiers changed from: private */
    public String a() {
        String str = this.a;
        String substring = str.substring(str.indexOf("?") + 1);
        StringBuilder sb = new StringBuilder();
        sb.append("http://qzs.qq.com/open/mobile/login/qzsjump.html?");
        sb.append(substring);
        String sb2 = sb.toString();
        f.c("openSDK_LOG.AuthDialog", "-->generateDownloadUrl, url: http://qzs.qq.com/open/mobile/login/qzsjump.html?");
        return sb2;
    }

    private void b() {
        c();
        LayoutParams layoutParams = new LayoutParams(-1, -1);
        this.j = new com.tencent.open.c.c(this.k);
        if (VERSION.SDK_INT >= 11) {
            this.j.setLayerType(1, null);
        }
        this.j.setLayoutParams(layoutParams);
        this.e = new FrameLayout(this.k);
        layoutParams.gravity = 17;
        this.e.setLayoutParams(layoutParams);
        this.e.addView(this.j);
        this.e.addView(this.g);
        setContentView(this.e);
    }

    private void c() {
        TextView textView;
        this.h = new ProgressBar(this.k);
        this.h.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        this.f = new LinearLayout(this.k);
        if (this.i.equals("action_login")) {
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.gravity = 16;
            layoutParams.leftMargin = 5;
            textView = new TextView(this.k);
            if (Locale.getDefault().getLanguage().equals("zh")) {
                textView.setText("登录中...");
            } else {
                textView.setText("Logging in...");
            }
            textView.setTextColor(Color.rgb(255, 255, 255));
            textView.setTextSize(18.0f);
            textView.setLayoutParams(layoutParams);
        } else {
            textView = null;
        }
        LayoutParams layoutParams2 = new LayoutParams(-2, -2);
        layoutParams2.gravity = 17;
        this.f.setLayoutParams(layoutParams2);
        this.f.addView(this.h);
        if (textView != null) {
            this.f.addView(textView);
        }
        this.g = new FrameLayout(this.k);
        LayoutParams layoutParams3 = new LayoutParams(-1, -2);
        layoutParams3.leftMargin = 80;
        layoutParams3.rightMargin = 80;
        layoutParams3.topMargin = 40;
        layoutParams3.bottomMargin = 40;
        layoutParams3.gravity = 17;
        this.g.setLayoutParams(layoutParams3);
        this.g.setBackgroundResource(17301504);
        this.g.addView(this.f);
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    private void d() {
        this.j.setVerticalScrollBarEnabled(false);
        this.j.setHorizontalScrollBarEnabled(false);
        this.j.setWebViewClient(new C0006a());
        this.j.setWebChromeClient(new WebChromeClient());
        this.j.clearFormData();
        this.j.clearSslPreferences();
        this.j.setOnLongClickListener(new OnLongClickListener() {
            public boolean onLongClick(View view) {
                return true;
            }
        });
        this.j.setOnTouchListener(new OnTouchListener() {
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int action = motionEvent.getAction();
                if ((action == 0 || action == 1) && !view.hasFocus()) {
                    view.requestFocus();
                }
                return false;
            }
        });
        WebSettings settings = this.j.getSettings();
        settings.setSavePassword(false);
        settings.setSaveFormData(false);
        settings.setCacheMode(-1);
        settings.setNeedInitialFocus(false);
        settings.setBuiltInZoomControls(true);
        settings.setSupportZoom(true);
        settings.setRenderPriority(RenderPriority.HIGH);
        settings.setJavaScriptEnabled(true);
        settings.setDatabaseEnabled(true);
        settings.setDatabasePath(this.k.getDir("databases", 0).getPath());
        settings.setDomStorageEnabled(true);
        StringBuilder sb = new StringBuilder();
        sb.append("-->mUrl : ");
        sb.append(this.a);
        f.a("openSDK_LOG.AuthDialog", sb.toString());
        String str = this.a;
        this.o = str;
        this.j.loadUrl(str);
        this.j.setVisibility(4);
        this.j.getSettings().setSavePassword(false);
        this.l.a((com.tencent.open.a.b) new SecureJsInterface(), "SecureJsInterface");
        SecureJsInterface.isPWDEdit = false;
        super.setOnDismissListener(new OnDismissListener() {
            public void onDismiss(DialogInterface dialogInterface) {
                try {
                    if (JniInterface.isJniOk) {
                        JniInterface.clearAllPWD();
                    }
                } catch (Exception unused) {
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public boolean e() {
        b a2 = b.a();
        String c2 = a2.c();
        com.tencent.connect.auth.b.a aVar = new com.tencent.connect.auth.b.a();
        aVar.a = this.c;
        aVar.b = this;
        aVar.c = c2;
        String a3 = a2.a(aVar);
        String str = this.a;
        String str2 = "?";
        String substring = str.substring(0, str.indexOf(str2));
        Bundle b2 = k.b(this.a);
        b2.putString("token_key", c2);
        b2.putString("serial", a3);
        b2.putString("browser", "1");
        StringBuilder sb = new StringBuilder();
        sb.append(substring);
        sb.append(str2);
        sb.append(HttpUtils.encodeUrl(b2));
        this.a = sb.toString();
        return k.a(this.k, this.a);
    }

    /* access modifiers changed from: private */
    public static void b(Context context, String str) {
        try {
            JSONObject d2 = k.d(str);
            int i2 = d2.getInt("type");
            Toast.makeText(context.getApplicationContext(), d2.getString("msg"), i2).show();
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public void a(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append("javascript:");
        sb.append(str);
        sb.append("(");
        sb.append(str2);
        sb.append(");void(");
        sb.append(System.currentTimeMillis());
        sb.append(");");
        this.j.loadUrl(sb.toString());
    }

    public void dismiss() {
        this.s.clear();
        this.d.removeCallbacksAndMessages(null);
        if (isShowing()) {
            super.dismiss();
        }
        com.tencent.open.c.c cVar = this.j;
        if (cVar != null) {
            cVar.destroy();
            this.j = null;
        }
    }
}
