package com.tencent.connect.auth;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.NinePatch;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import android.graphics.drawable.PaintDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager;
import android.webkit.CookieSyncManager;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.avos.avoscloud.AVException;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.kantv.ui.config.Definition.UserPreference;
import com.tencent.connect.common.BaseApi;
import com.tencent.connect.common.BaseApi.TempRequestListener;
import com.tencent.connect.common.Constants;
import com.tencent.connect.common.UIListenerManager;
import com.tencent.open.TDialog;
import com.tencent.open.a.f;
import com.tencent.open.b.d;
import com.tencent.open.utils.HttpUtils;
import com.tencent.open.utils.e;
import com.tencent.open.utils.g;
import com.tencent.open.utils.h;
import com.tencent.open.utils.i;
import com.tencent.open.utils.k;
import com.tencent.open.web.security.JniInterface;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.URLDecoder;
import org.json.JSONException;
import org.json.JSONObject;
import tv.cjump.jni.DeviceUtils;

/* compiled from: ProGuard */
public class AuthAgent extends BaseApi {
    public static final String SECURE_LIB_ARM64_FILE_NAME = "libwbsafeedit_64";
    public static final String SECURE_LIB_ARM_FILE_NAME = "libwbsafeedit";
    public static String SECURE_LIB_FILE_NAME = "libwbsafeedit";
    public static String SECURE_LIB_NAME = null;
    public static final String SECURE_LIB_X86_64_FILE_NAME = "libwbsafeedit_x86_64";
    public static final String SECURE_LIB_X86_FILE_NAME = "libwbsafeedit_x86";
    private IUiListener c;
    private String d;
    /* access modifiers changed from: private */
    public WeakReference<Activity> e;

    /* compiled from: ProGuard */
    private class a implements IUiListener {
        IUiListener a;

        public a(IUiListener iUiListener) {
            this.a = iUiListener;
        }

        public void onComplete(Object obj) {
            String str;
            String str2 = "ret";
            String str3 = "openSDK_LOG.AuthAgent";
            if (obj == null) {
                f.e(str3, "CheckLoginListener response data is null");
                return;
            }
            JSONObject jSONObject = (JSONObject) obj;
            try {
                int i = jSONObject.getInt(str2);
                String str4 = "msg";
                if (i == 0) {
                    str = Param.SUCCESS;
                } else {
                    str = jSONObject.getString(str4);
                }
                if (this.a != null) {
                    this.a.onComplete(new JSONObject().put(str2, i).put(str4, str));
                }
            } catch (JSONException e) {
                e.printStackTrace();
                f.e(str3, "CheckLoginListener response data format error");
            }
        }

        public void onError(UiError uiError) {
            IUiListener iUiListener = this.a;
            if (iUiListener != null) {
                iUiListener.onError(uiError);
            }
        }

        public void onCancel() {
            IUiListener iUiListener = this.a;
            if (iUiListener != null) {
                iUiListener.onCancel();
            }
        }
    }

    /* compiled from: ProGuard */
    private class b implements IUiListener {
        IUiListener a;
        private final String c = "sendinstall";
        private final String d = "installwording";
        private final String e = "http://appsupport.qq.com/cgi-bin/qzapps/mapp_addapp.cgi";

        /* compiled from: ProGuard */
        private abstract class a implements OnClickListener {
            Dialog d;

            a(Dialog dialog) {
                this.d = dialog;
            }
        }

        public b(IUiListener iUiListener) {
            this.a = iUiListener;
        }

        public void onComplete(Object obj) {
            String str;
            String str2 = "openSDK_LOG.AuthAgent";
            if (obj != null) {
                JSONObject jSONObject = (JSONObject) obj;
                if (jSONObject != null) {
                    boolean z = false;
                    try {
                        if (jSONObject.getInt("sendinstall") == 1) {
                            z = true;
                        }
                        str = jSONObject.getString("installwording");
                    } catch (JSONException unused) {
                        f.d(str2, "FeedConfirmListener onComplete There is no value for sendinstall.");
                        str = "";
                    }
                    String decode = URLDecoder.decode(str);
                    StringBuilder sb = new StringBuilder();
                    sb.append(" WORDING = ");
                    sb.append(decode);
                    sb.append("xx");
                    f.a(str2, sb.toString());
                    if (z && !TextUtils.isEmpty(decode)) {
                        a(decode, this.a, obj);
                    } else if (this.a != null) {
                        if (AuthAgent.this.b != null) {
                            AuthAgent.this.b.saveSession(jSONObject);
                        }
                        this.a.onComplete(obj);
                    }
                }
            }
        }

        private void a(String str, final IUiListener iUiListener, final Object obj) {
            PackageInfo packageInfo;
            if (AuthAgent.this.e != null) {
                Activity activity = (Activity) AuthAgent.this.e.get();
                if (activity != null) {
                    Dialog dialog = new Dialog(activity);
                    dialog.requestWindowFeature(1);
                    PackageManager packageManager = activity.getPackageManager();
                    Drawable drawable = null;
                    try {
                        packageInfo = packageManager.getPackageInfo(activity.getPackageName(), 0);
                    } catch (NameNotFoundException e2) {
                        e2.printStackTrace();
                        packageInfo = null;
                    }
                    if (packageInfo != null) {
                        drawable = packageInfo.applicationInfo.loadIcon(packageManager);
                    }
                    AnonymousClass1 r5 = new a(dialog) {
                        public void onClick(View view) {
                            b.this.a();
                            if (this.d != null && this.d.isShowing()) {
                                this.d.dismiss();
                            }
                            IUiListener iUiListener = iUiListener;
                            if (iUiListener != null) {
                                iUiListener.onComplete(obj);
                            }
                        }
                    };
                    AnonymousClass2 r6 = new a(dialog) {
                        public void onClick(View view) {
                            if (this.d != null && this.d.isShowing()) {
                                this.d.dismiss();
                            }
                            IUiListener iUiListener = iUiListener;
                            if (iUiListener != null) {
                                iUiListener.onComplete(obj);
                            }
                        }
                    };
                    ColorDrawable colorDrawable = new ColorDrawable();
                    colorDrawable.setAlpha(0);
                    dialog.getWindow().setBackgroundDrawable(colorDrawable);
                    dialog.setContentView(a(activity, drawable, str, r5, r6));
                    dialog.setOnCancelListener(new OnCancelListener() {
                        public void onCancel(DialogInterface dialogInterface) {
                            IUiListener iUiListener = iUiListener;
                            if (iUiListener != null) {
                                iUiListener.onComplete(obj);
                            }
                        }
                    });
                    if (activity != null && !activity.isFinishing()) {
                        dialog.show();
                    }
                }
            }
        }

        private Drawable a(String str, Context context) {
            Bitmap bitmap;
            Drawable drawable = null;
            try {
                InputStream open = context.getApplicationContext().getAssets().open(str);
                if (open == null) {
                    return null;
                }
                if (str.endsWith(".9.png")) {
                    try {
                        bitmap = BitmapFactory.decodeStream(open);
                    } catch (OutOfMemoryError e2) {
                        e2.printStackTrace();
                        bitmap = null;
                    }
                    if (bitmap == null) {
                        return null;
                    }
                    byte[] ninePatchChunk = bitmap.getNinePatchChunk();
                    NinePatch.isNinePatchChunk(ninePatchChunk);
                    drawable = new NinePatchDrawable(bitmap, ninePatchChunk, new Rect(), null);
                } else {
                    drawable = Drawable.createFromStream(open, str);
                    open.close();
                }
                return drawable;
            } catch (IOException e3) {
                e3.printStackTrace();
            }
        }

        private View a(Context context, Drawable drawable, String str, OnClickListener onClickListener, OnClickListener onClickListener2) {
            Context context2 = context;
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) context2.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            float f = displayMetrics.density;
            RelativeLayout relativeLayout = new RelativeLayout(context2);
            ImageView imageView = new ImageView(context2);
            imageView.setImageDrawable(drawable);
            imageView.setScaleType(ScaleType.FIT_XY);
            imageView.setId(1);
            int i = (int) (60.0f * f);
            int i2 = (int) (f * 14.0f);
            int i3 = (int) (18.0f * f);
            int i4 = (int) (6.0f * f);
            LayoutParams layoutParams = new LayoutParams(i, i);
            layoutParams.addRule(9);
            layoutParams.setMargins(0, i3, i4, i3);
            relativeLayout.addView(imageView, layoutParams);
            TextView textView = new TextView(context2);
            textView.setText(str);
            textView.setTextSize(14.0f);
            textView.setGravity(3);
            textView.setIncludeFontPadding(false);
            textView.setPadding(0, 0, 0, 0);
            textView.setLines(2);
            textView.setId(5);
            textView.setMinWidth((int) (185.0f * f));
            LayoutParams layoutParams2 = new LayoutParams(-2, -2);
            layoutParams2.addRule(1, 1);
            layoutParams2.addRule(6, 1);
            float f2 = 5.0f * f;
            layoutParams2.setMargins(0, 0, (int) f2, 0);
            relativeLayout.addView(textView, layoutParams2);
            View view = new View(context2);
            view.setBackgroundColor(Color.rgb(AVException.USER_MOBILE_PHONENUMBER_TAKEN, AVException.USER_MOBILE_PHONENUMBER_TAKEN, AVException.USER_MOBILE_PHONENUMBER_TAKEN));
            view.setId(3);
            LayoutParams layoutParams3 = new LayoutParams(-2, 2);
            layoutParams3.addRule(3, 1);
            layoutParams3.addRule(5, 1);
            layoutParams3.addRule(7, 5);
            int i5 = (int) (12.0f * f);
            layoutParams3.setMargins(0, 0, 0, i5);
            relativeLayout.addView(view, layoutParams3);
            LinearLayout linearLayout = new LinearLayout(context2);
            LayoutParams layoutParams4 = new LayoutParams(-2, -2);
            layoutParams4.addRule(5, 1);
            layoutParams4.addRule(7, 5);
            layoutParams4.addRule(3, 3);
            Button button = new Button(context2);
            button.setText("跳过");
            button.setBackgroundDrawable(a("buttonNegt.png", context2));
            button.setTextColor(Color.rgb(36, 97, 131));
            button.setTextSize(20.0f);
            button.setOnClickListener(onClickListener2);
            button.setId(4);
            int i6 = (int) (45.0f * f);
            LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(0, i6);
            layoutParams5.rightMargin = i2;
            int i7 = (int) (4.0f * f);
            layoutParams5.leftMargin = i7;
            layoutParams5.weight = 1.0f;
            linearLayout.addView(button, layoutParams5);
            Button button2 = new Button(context2);
            button2.setText("确定");
            button2.setTextSize(20.0f);
            button2.setTextColor(Color.rgb(255, 255, 255));
            button2.setBackgroundDrawable(a("buttonPost.png", context2));
            button2.setOnClickListener(onClickListener);
            LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(0, i6);
            layoutParams6.weight = 1.0f;
            layoutParams6.rightMargin = i7;
            linearLayout.addView(button2, layoutParams6);
            relativeLayout.addView(linearLayout, layoutParams4);
            FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams((int) (279.0f * f), (int) (f * 163.0f));
            relativeLayout.setPadding(i2, 0, i5, i5);
            relativeLayout.setLayoutParams(layoutParams7);
            relativeLayout.setBackgroundColor(Color.rgb(247, AVException.INVALID_LINKED_SESSION, 247));
            PaintDrawable paintDrawable = new PaintDrawable(Color.rgb(247, AVException.INVALID_LINKED_SESSION, 247));
            paintDrawable.setCornerRadius(f2);
            relativeLayout.setBackgroundDrawable(paintDrawable);
            return relativeLayout;
        }

        /* access modifiers changed from: protected */
        public void a() {
            Bundle j = AuthAgent.this.b();
            if (AuthAgent.this.e != null) {
                Activity activity = (Activity) AuthAgent.this.e.get();
                if (activity != null) {
                    HttpUtils.requestAsync(AuthAgent.this.b, activity, "http://appsupport.qq.com/cgi-bin/qzapps/mapp_addapp.cgi", j, "POST", null);
                }
            }
        }

        public void onError(UiError uiError) {
            IUiListener iUiListener = this.a;
            if (iUiListener != null) {
                iUiListener.onError(uiError);
            }
        }

        public void onCancel() {
            IUiListener iUiListener = this.a;
            if (iUiListener != null) {
                iUiListener.onCancel();
            }
        }
    }

    /* compiled from: ProGuard */
    private class c implements IUiListener {
        private final IUiListener b;
        private final boolean c;
        private final Context d;

        public c(Context context, IUiListener iUiListener, boolean z, boolean z2) {
            this.d = context;
            this.b = iUiListener;
            this.c = z;
            f.b("openSDK_LOG.AuthAgent", "OpenUi, TokenListener()");
        }

        public void onComplete(Object obj) {
            String str = Constants.PARAM_PLATFORM_ID;
            String str2 = "OpenUi, TokenListener() onComplete error";
            String str3 = "openSDK_LOG.AuthAgent";
            f.b(str3, "OpenUi, TokenListener() onComplete");
            JSONObject jSONObject = (JSONObject) obj;
            try {
                String string = jSONObject.getString(Constants.PARAM_ACCESS_TOKEN);
                String string2 = jSONObject.getString(Constants.PARAM_EXPIRES_IN);
                String string3 = jSONObject.getString("openid");
                if (!(string == null || AuthAgent.this.b == null || string3 == null)) {
                    AuthAgent.this.b.setAccessToken(string, string2);
                    AuthAgent.this.b.setOpenId(string3);
                    com.tencent.connect.a.a.d(this.d, AuthAgent.this.b);
                }
                String string4 = jSONObject.getString(str);
                if (string4 != null) {
                    try {
                        this.d.getSharedPreferences(Constants.PREFERENCE_PF, 0).edit().putString(str, string4).commit();
                    } catch (Exception e) {
                        e.printStackTrace();
                        f.b(str3, str2, e);
                    }
                }
                if (this.c) {
                    CookieSyncManager.getInstance().sync();
                }
            } catch (JSONException e2) {
                e2.printStackTrace();
                f.b(str3, str2, e2);
            }
            this.b.onComplete(jSONObject);
            AuthAgent.this.releaseResource();
            f.b();
        }

        public void onError(UiError uiError) {
            f.b("openSDK_LOG.AuthAgent", "OpenUi, TokenListener() onError");
            this.b.onError(uiError);
            f.b();
        }

        public void onCancel() {
            f.b("openSDK_LOG.AuthAgent", "OpenUi, TokenListener() onCancel");
            this.b.onCancel();
            f.b();
        }
    }

    static {
        StringBuilder sb = new StringBuilder();
        sb.append(SECURE_LIB_FILE_NAME);
        String str = ".so";
        sb.append(str);
        SECURE_LIB_NAME = sb.toString();
        String str2 = Build.CPU_ABI;
        String str3 = "is arm(default) architecture";
        String str4 = SECURE_LIB_ARM_FILE_NAME;
        String str5 = "openSDK_LOG.AuthAgent";
        if (str2 == null || str2.equals("")) {
            SECURE_LIB_FILE_NAME = str4;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(SECURE_LIB_FILE_NAME);
            sb2.append(str);
            SECURE_LIB_NAME = sb2.toString();
            f.c(str5, str3);
        } else if (str2.equalsIgnoreCase("arm64-v8a")) {
            SECURE_LIB_FILE_NAME = SECURE_LIB_ARM64_FILE_NAME;
            StringBuilder sb3 = new StringBuilder();
            sb3.append(SECURE_LIB_FILE_NAME);
            sb3.append(str);
            SECURE_LIB_NAME = sb3.toString();
            f.c(str5, "is arm64-v8a architecture");
        } else if (str2.equalsIgnoreCase(DeviceUtils.ABI_X86)) {
            SECURE_LIB_FILE_NAME = SECURE_LIB_X86_FILE_NAME;
            StringBuilder sb4 = new StringBuilder();
            sb4.append(SECURE_LIB_FILE_NAME);
            sb4.append(str);
            SECURE_LIB_NAME = sb4.toString();
            f.c(str5, "is x86 architecture");
        } else if (str2.equalsIgnoreCase("x86_64")) {
            SECURE_LIB_FILE_NAME = SECURE_LIB_X86_64_FILE_NAME;
            StringBuilder sb5 = new StringBuilder();
            sb5.append(SECURE_LIB_FILE_NAME);
            sb5.append(str);
            SECURE_LIB_NAME = sb5.toString();
            f.c(str5, "is x86_64 architecture");
        } else {
            SECURE_LIB_FILE_NAME = str4;
            StringBuilder sb6 = new StringBuilder();
            sb6.append(SECURE_LIB_FILE_NAME);
            sb6.append(str);
            SECURE_LIB_NAME = sb6.toString();
            f.c(str5, str3);
        }
    }

    public AuthAgent(QQToken qQToken) {
        super(qQToken);
    }

    public int doLogin(Activity activity, String str, IUiListener iUiListener) {
        return doLogin(activity, str, iUiListener, false, null);
    }

    public int doLogin(Activity activity, String str, IUiListener iUiListener, boolean z, Fragment fragment) {
        return doLogin(activity, str, iUiListener, z, fragment, false);
    }

    public int doLogin(Activity activity, String str, IUiListener iUiListener, boolean z, Fragment fragment, boolean z2) {
        this.d = str;
        this.e = new WeakReference<>(activity);
        this.c = iUiListener;
        String str2 = "openSDK_LOG.AuthAgent";
        if (com.tencent.open.utils.f.a((Context) activity, this.b.getAppId()).b("C_LoginWeb") || !a(activity, fragment, z)) {
            d.a().a(this.b.getOpenId(), this.b.getAppId(), "2", "1", "5", "1", "0", "0");
            f.d(str2, "doLogin startActivity fail show dialog.");
            this.c = new b(this.c);
            return a(z, this.c, z2);
        }
        f.c(str2, "OpenUi, showUi, return Constants.UI_ACTIVITY");
        d.a().a(this.b.getOpenId(), this.b.getAppId(), "2", "1", "5", "0", "0", "0");
        return 1;
    }

    public void releaseResource() {
        this.c = null;
    }

    private int a(boolean z, IUiListener iUiListener, boolean z2) {
        String str = "openSDK_LOG.AuthAgent";
        f.c(str, "OpenUi, showDialog -- start");
        CookieSyncManager.createInstance(e.a());
        Bundle a2 = a();
        String str2 = "1";
        if (z) {
            a2.putString("isadd", str2);
        }
        a2.putString(Constants.PARAM_SCOPE, this.d);
        a2.putString(Constants.PARAM_CLIENT_ID, this.b.getAppId());
        boolean z3 = isOEM;
        String str3 = Constants.PARAM_PLATFORM_ID;
        if (z3) {
            StringBuilder sb = new StringBuilder();
            sb.append("desktop_m_qq-");
            sb.append(installChannel);
            String str4 = "-";
            sb.append(str4);
            sb.append("android");
            sb.append(str4);
            sb.append(registerChannel);
            sb.append(str4);
            sb.append(businessId);
            a2.putString(str3, sb.toString());
        } else {
            a2.putString(str3, Constants.DEFAULT_PF);
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(System.currentTimeMillis() / 1000);
        sb2.append("");
        String sb3 = sb2.toString();
        a2.putString("sign", h.b(e.a(), sb3));
        a2.putString("time", sb3);
        a2.putString("display", UserPreference.MOBILE);
        a2.putString("response_type", "token");
        a2.putString("redirect_uri", "auth://tauth.qq.com/");
        a2.putString("cancel_display", str2);
        a2.putString("switch", str2);
        a2.putString("status_userip", k.a());
        if (z2) {
            a2.putString(TtmlNode.TAG_STYLE, "qr");
        }
        StringBuilder sb4 = new StringBuilder();
        sb4.append(g.a().a(e.a(), "https://openmobile.qq.com/oauth2.0/m_authorize?"));
        sb4.append(HttpUtils.encodeUrl(a2));
        final String sb5 = sb4.toString();
        final c cVar = new c(e.a(), iUiListener, true, false);
        f.b(str, "OpenUi, showDialog TDialog");
        i.a(new Runnable() {
            public void run() {
                h.a(AuthAgent.SECURE_LIB_FILE_NAME, AuthAgent.SECURE_LIB_NAME, 3);
                JniInterface.loadSo();
                if (AuthAgent.this.e != null) {
                    final Activity activity = (Activity) AuthAgent.this.e.get();
                    if (activity != null) {
                        activity.runOnUiThread(new Runnable() {
                            public void run() {
                                if (JniInterface.isJniOk) {
                                    a aVar = new a(activity, "action_login", sb5, cVar, AuthAgent.this.b);
                                    if (!activity.isFinishing()) {
                                        aVar.show();
                                        return;
                                    }
                                    return;
                                }
                                f.d("openSDK_LOG.AuthAgent", "OpenUi, secure so load failed, goto download QQ.");
                                TDialog tDialog = new TDialog(activity, "", AuthAgent.this.a(""), null, AuthAgent.this.b);
                                if (!activity.isFinishing()) {
                                    tDialog.show();
                                }
                            }
                        });
                    }
                }
            }
        });
        f.c(str, "OpenUi, showDialog -- end");
        return 2;
    }

    private boolean a(Activity activity, Fragment fragment, boolean z) {
        String str = "openSDK_LOG.AuthAgent";
        f.c(str, "startActionActivity() -- start");
        Intent b2 = b("com.tencent.open.agent.AgentActivity");
        if (b2 != null) {
            Bundle a2 = a();
            String str2 = "1";
            if (z) {
                a2.putString("isadd", str2);
            }
            a2.putString(Constants.PARAM_SCOPE, this.d);
            a2.putString(Constants.PARAM_CLIENT_ID, this.b.getAppId());
            boolean z2 = isOEM;
            String str3 = Constants.PARAM_PLATFORM_ID;
            if (z2) {
                StringBuilder sb = new StringBuilder();
                sb.append("desktop_m_qq-");
                sb.append(installChannel);
                String str4 = "-";
                sb.append(str4);
                sb.append("android");
                sb.append(str4);
                sb.append(registerChannel);
                sb.append(str4);
                sb.append(businessId);
                a2.putString(str3, sb.toString());
            } else {
                a2.putString(str3, Constants.DEFAULT_PF);
            }
            a2.putString("need_pay", str2);
            a2.putString(Constants.KEY_APP_NAME, h.a(e.a()));
            b2.putExtra(Constants.KEY_ACTION, "action_login");
            b2.putExtra(Constants.KEY_PARAMS, a2);
            b2.putExtra("appid", this.b.getAppId());
            if (a(b2)) {
                this.c = new b(this.c);
                UIListenerManager.getInstance().setListenerWithRequestcode(Constants.REQUEST_LOGIN, this.c);
                if (fragment != null) {
                    f.b(str, "startAssitActivity fragment");
                    a(fragment, b2, (int) Constants.REQUEST_LOGIN);
                } else {
                    f.b(str, "startAssitActivity activity");
                    a(activity, b2, (int) Constants.REQUEST_LOGIN);
                }
                f.c(str, "startActionActivity() -- end, found activity for loginIntent");
                d.a().a(0, "LOGIN_CHECK_SDK", Constants.DEFAULT_UIN, this.b.getAppId(), "", Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, "");
                return true;
            }
        }
        d.a().a(1, "LOGIN_CHECK_SDK", Constants.DEFAULT_UIN, this.b.getAppId(), "", Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, "startActionActivity fail");
        f.c(str, "startActionActivity() -- end, no target activity for loginIntent");
        return false;
    }

    /* access modifiers changed from: protected */
    public void a(IUiListener iUiListener) {
        String str;
        String str2 = "openSDK_LOG.AuthAgent";
        f.c(str2, "reportDAU() -- start");
        String accessToken = this.b.getAccessToken();
        String openId = this.b.getOpenId();
        String appId = this.b.getAppId();
        if (TextUtils.isEmpty(accessToken) || TextUtils.isEmpty(openId) || TextUtils.isEmpty(appId)) {
            str = "";
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append("tencent&sdk&qazxc***14969%%");
            sb.append(accessToken);
            sb.append(appId);
            sb.append(openId);
            sb.append("qzone3.4");
            str = k.f(sb.toString());
        }
        if (TextUtils.isEmpty(str)) {
            f.e(str2, "reportDAU -- encrytoken is null");
            return;
        }
        Bundle a2 = a();
        a2.putString("encrytoken", str);
        HttpUtils.requestAsync(this.b, e.a(), "https://openmobile.qq.com/user/user_login_statis", a2, "POST", null);
        f.c(str2, "reportDAU() -- end");
    }

    /* access modifiers changed from: protected */
    public void b(IUiListener iUiListener) {
        Bundle a2 = a();
        a2.putString("reqType", "checkLogin");
        HttpUtils.requestAsync(this.b, e.a(), "https://openmobile.qq.com/v3/user/get_info", a2, "GET", new TempRequestListener(new a(iUiListener)));
    }
}
