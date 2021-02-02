package com.tencent.open;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebSettings.RenderPriority;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.Toast;
import com.tencent.connect.auth.QQToken;
import com.tencent.connect.common.Constants;
import com.tencent.open.a.f;
import com.tencent.open.c.a;
import com.tencent.open.c.a.C0011a;
import com.tencent.open.c.b;
import com.tencent.open.utils.g;
import com.tencent.open.utils.k;
import com.tencent.tauth.AuthActivity;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: ProGuard */
public class c extends b implements C0011a {
    static Toast c;
    private String d;
    private IUiListener e;
    /* access modifiers changed from: private */
    public C0012c f;
    private Handler g;
    private a h;
    /* access modifiers changed from: private */
    public b i;
    /* access modifiers changed from: private */
    public WeakReference<Context> j;
    private int k;

    /* compiled from: ProGuard */
    private class a extends WebViewClient {
        private a() {
        }

        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            StringBuilder sb = new StringBuilder();
            sb.append("Redirect URL: ");
            sb.append(str);
            f.a("openSDK_LOG.PKDialog", sb.toString());
            if (str.startsWith(g.a().a((Context) c.this.j.get(), "auth://tauth.qq.com/"))) {
                c.this.f.onComplete(k.c(str));
                c.this.dismiss();
                return true;
            } else if (str.startsWith(Constants.CANCEL_URI)) {
                c.this.f.onCancel();
                c.this.dismiss();
                return true;
            } else if (!str.startsWith(Constants.CLOSE_URI)) {
                return false;
            } else {
                c.this.dismiss();
                return true;
            }
        }

        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            c.this.f.onError(new UiError(i, str, str2));
            if (!(c.this.j == null || c.this.j.get() == null)) {
                Toast.makeText((Context) c.this.j.get(), "网络连接异常或系统错误", 0).show();
            }
            c.this.dismiss();
        }

        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            StringBuilder sb = new StringBuilder();
            sb.append("Webview loading URL: ");
            sb.append(str);
            f.a("openSDK_LOG.PKDialog", sb.toString());
            super.onPageStarted(webView, str, bitmap);
        }

        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            c.this.i.setVisibility(0);
        }
    }

    /* compiled from: ProGuard */
    private class b extends com.tencent.open.a.b {
        private b() {
        }
    }

    /* renamed from: com.tencent.open.c$c reason: collision with other inner class name */
    /* compiled from: ProGuard */
    private static class C0012c implements IUiListener {
        String a;
        String b;
        private WeakReference<Context> c;
        private String d;
        private IUiListener e;

        public C0012c(Context context, String str, String str2, String str3, IUiListener iUiListener) {
            this.c = new WeakReference<>(context);
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
            com.tencent.open.b.g a2 = com.tencent.open.b.g.a();
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
            String str2 = str;
            com.tencent.open.b.g a2 = com.tencent.open.b.g.a();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.d);
            sb2.append("_H5");
            a2.a(sb2.toString(), SystemClock.elapsedRealtime(), 0, 0, uiError.errorCode, str2, false);
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
    private class d extends Handler {
        private C0012c b;

        public d(C0012c cVar, Looper looper) {
            super(looper);
            this.b = cVar;
        }

        public void handleMessage(Message message) {
            StringBuilder sb = new StringBuilder();
            sb.append("msg = ");
            sb.append(message.what);
            f.b("openSDK_LOG.PKDialog", sb.toString());
            int i = message.what;
            if (i == 1) {
                this.b.a((String) message.obj);
            } else if (i == 2) {
                this.b.onCancel();
            } else if (i != 3) {
                if (i != 4 && i == 5 && c.this.j != null && c.this.j.get() != null) {
                    c.d((Context) c.this.j.get(), (String) message.obj);
                }
            } else if (c.this.j != null && c.this.j.get() != null) {
                c.c((Context) c.this.j.get(), (String) message.obj);
            }
        }
    }

    public c(Context context, String str, String str2, IUiListener iUiListener, QQToken qQToken) {
        super(context, 16973840);
        this.j = new WeakReference<>(context);
        this.d = str2;
        C0012c cVar = new C0012c(context, str, str2, qQToken.getAppId(), iUiListener);
        this.f = cVar;
        this.g = new d(this.f, context.getMainLooper());
        this.e = iUiListener;
        this.k = Math.round(context.getResources().getDisplayMetrics().density * 185.0f);
        StringBuilder sb = new StringBuilder();
        sb.append("density=");
        sb.append(context.getResources().getDisplayMetrics().density);
        sb.append("; webviewHeight=");
        sb.append(this.k);
        f.e("openSDK_LOG.PKDialog", sb.toString());
    }

    public void onBackPressed() {
        super.onBackPressed();
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        getWindow().setSoftInputMode(16);
        getWindow().setSoftInputMode(1);
        b();
        c();
    }

    private void b() {
        this.h = new a((Context) this.j.get());
        this.h.setBackgroundColor(1711276032);
        this.h.setLayoutParams(new LayoutParams(-1, -1));
        this.i = new b((Context) this.j.get());
        this.i.setBackgroundColor(0);
        this.i.setBackgroundDrawable(null);
        if (VERSION.SDK_INT >= 11) {
            try {
                View.class.getMethod("setLayerType", new Class[]{Integer.TYPE, Paint.class}).invoke(this.i, new Object[]{Integer.valueOf(1), new Paint()});
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        LayoutParams layoutParams = new LayoutParams(-1, this.k);
        layoutParams.addRule(13, -1);
        this.i.setLayoutParams(layoutParams);
        this.h.addView(this.i);
        this.h.a(this);
        setContentView(this.h);
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    private void c() {
        this.i.setVerticalScrollBarEnabled(false);
        this.i.setHorizontalScrollBarEnabled(false);
        this.i.setWebViewClient(new a());
        this.i.setWebChromeClient(this.b);
        this.i.clearFormData();
        WebSettings settings = this.i.getSettings();
        if (settings != null) {
            settings.setSavePassword(false);
            settings.setSaveFormData(false);
            settings.setCacheMode(-1);
            settings.setNeedInitialFocus(false);
            settings.setBuiltInZoomControls(true);
            settings.setSupportZoom(true);
            settings.setRenderPriority(RenderPriority.HIGH);
            settings.setJavaScriptEnabled(true);
            WeakReference<Context> weakReference = this.j;
            if (!(weakReference == null || weakReference.get() == null)) {
                settings.setDatabaseEnabled(true);
                settings.setDatabasePath(((Context) this.j.get()).getApplicationContext().getDir("databases", 0).getPath());
            }
            settings.setDomStorageEnabled(true);
            this.a.a((com.tencent.open.a.b) new b(), "sdk_js_if");
            this.i.clearView();
            this.i.loadUrl(this.d);
            this.i.getSettings().setSavePassword(false);
        }
    }

    /* access modifiers changed from: private */
    public static void c(Context context, String str) {
        try {
            JSONObject d2 = k.d(str);
            int i2 = d2.getInt("type");
            String string = d2.getString("msg");
            if (i2 == 0) {
                if (c == null) {
                    c = Toast.makeText(context, string, 0);
                } else {
                    c.setView(c.getView());
                    c.setText(string);
                    c.setDuration(0);
                }
                c.show();
            } else if (i2 == 1) {
                if (c == null) {
                    c = Toast.makeText(context, string, 1);
                } else {
                    c.setView(c.getView());
                    c.setText(string);
                    c.setDuration(1);
                }
                c.show();
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    /* access modifiers changed from: private */
    public static void d(Context context, String str) {
        if (context != null && str != null) {
            try {
                JSONObject d2 = k.d(str);
                d2.getInt(AuthActivity.ACTION_KEY);
                d2.getString("msg");
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
    }

    public void a(int i2) {
        WeakReference<Context> weakReference = this.j;
        if (!(weakReference == null || weakReference.get() == null)) {
            if (i2 >= this.k || 2 != ((Context) this.j.get()).getResources().getConfiguration().orientation) {
                this.i.getLayoutParams().height = this.k;
            } else {
                this.i.getLayoutParams().height = i2;
            }
        }
        f.e("openSDK_LOG.PKDialog", "onKeyboardShown keyboard show");
    }

    public void a() {
        this.i.getLayoutParams().height = this.k;
        f.e("openSDK_LOG.PKDialog", "onKeyboardHidden keyboard hide");
    }

    /* access modifiers changed from: protected */
    public void a(String str) {
        f.b("openSDK_LOG.PKDialog", "--onConsoleMessage--");
        try {
            this.a.a((WebView) this.i, str);
        } catch (Exception unused) {
        }
    }
}
