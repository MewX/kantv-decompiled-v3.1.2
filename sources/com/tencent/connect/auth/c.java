package com.tencent.connect.auth;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.text.TextUtils;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.tencent.connect.a.a;
import com.tencent.connect.common.BaseApi;
import com.tencent.open.a.f;
import com.tencent.open.utils.e;
import com.tencent.tauth.IUiListener;
import java.io.File;
import java.util.Iterator;

/* compiled from: ProGuard */
public class c {
    private AuthAgent a = new AuthAgent(this.b);
    private QQToken b;

    private c(String str, Context context) {
        String str2 = "openSDK_LOG.QQAuth";
        f.c(str2, "new QQAuth() --start");
        this.b = new QQToken(str);
        a.c(context, this.b);
        f.c(str2, "new QQAuth() --end");
    }

    public static c a(String str, Context context) {
        e.a(context.getApplicationContext());
        String str2 = "openSDK_LOG.QQAuth";
        f.c(str2, "QQAuth -- createInstance() --start");
        try {
            PackageManager packageManager = context.getPackageManager();
            packageManager.getActivityInfo(new ComponentName(context.getPackageName(), "com.tencent.tauth.AuthActivity"), 0);
            packageManager.getActivityInfo(new ComponentName(context.getPackageName(), "com.tencent.connect.common.AssistActivity"), 0);
            c cVar = new c(str, context);
            f.c(str2, "QQAuth -- createInstance()  --end");
            return cVar;
        } catch (NameNotFoundException e) {
            f.b(str2, "createInstance() error --end", e);
            Toast.makeText(context.getApplicationContext(), "请参照文档在Androidmanifest.xml加上AuthActivity和AssitActivity的定义 ", 1).show();
            return null;
        }
    }

    public int a(Activity activity, String str, IUiListener iUiListener) {
        f.c("openSDK_LOG.QQAuth", "login()");
        return a(activity, str, iUiListener, "");
    }

    public int a(Activity activity, String str, IUiListener iUiListener, boolean z) {
        f.c("openSDK_LOG.QQAuth", "login()");
        return a(activity, (Fragment) null, str, iUiListener, "", z);
    }

    public int a(Activity activity, String str, IUiListener iUiListener, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append("-->login activity: ");
        sb.append(activity);
        f.c("openSDK_LOG.QQAuth", sb.toString());
        return a(activity, (Fragment) null, str, iUiListener, str2);
    }

    public int a(Fragment fragment, String str, IUiListener iUiListener, String str2) {
        FragmentActivity activity = fragment.getActivity();
        StringBuilder sb = new StringBuilder();
        sb.append("-->login activity: ");
        sb.append(activity);
        f.c("openSDK_LOG.QQAuth", sb.toString());
        return a((Activity) activity, fragment, str, iUiListener, str2);
    }

    public int a(Fragment fragment, String str, IUiListener iUiListener, String str2, boolean z) {
        FragmentActivity activity = fragment.getActivity();
        StringBuilder sb = new StringBuilder();
        sb.append("-->login activity: ");
        sb.append(activity);
        f.c("openSDK_LOG.QQAuth", sb.toString());
        return a((Activity) activity, fragment, str, iUiListener, str2, z);
    }

    private int a(Activity activity, Fragment fragment, String str, IUiListener iUiListener, String str2) {
        return a(activity, fragment, str, iUiListener, str2, false);
    }

    private int a(Activity activity, Fragment fragment, String str, IUiListener iUiListener, String str2, boolean z) {
        String str3 = "openSDK_LOG.QQAuth";
        String packageName = activity.getApplicationContext().getPackageName();
        String str4 = null;
        try {
            Iterator it = activity.getPackageManager().getInstalledApplications(128).iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                ApplicationInfo applicationInfo = (ApplicationInfo) it.next();
                if (packageName.equals(applicationInfo.packageName)) {
                    str4 = applicationInfo.sourceDir;
                    break;
                }
            }
            if (str4 != null) {
                String a2 = com.tencent.open.utils.a.a(new File(str4));
                if (!TextUtils.isEmpty(a2)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("-->login channelId: ");
                    sb.append(a2);
                    f.a(str3, sb.toString());
                    return a(activity, str, iUiListener, a2, a2, "");
                }
            }
        } catch (Throwable th) {
            f.b(str3, "-->login get channel id exception.", th);
            th.printStackTrace();
        }
        f.b(str3, "-->login channelId is null ");
        BaseApi.isOEM = false;
        return this.a.doLogin(activity, str, iUiListener, false, fragment, z);
    }

    @Deprecated
    public int a(Activity activity, String str, IUiListener iUiListener, String str2, String str3, String str4) {
        f.c("openSDK_LOG.QQAuth", "loginWithOEM");
        BaseApi.isOEM = true;
        String str5 = "";
        String str6 = "null";
        if (str2.equals(str5)) {
            str2 = str6;
        }
        if (str3.equals(str5)) {
            str3 = str6;
        }
        if (str4.equals(str5)) {
            str4 = str6;
        }
        BaseApi.installChannel = str3;
        BaseApi.registerChannel = str2;
        BaseApi.businessId = str4;
        return this.a.doLogin(activity, str, iUiListener);
    }

    public int b(Activity activity, String str, IUiListener iUiListener) {
        f.c("openSDK_LOG.QQAuth", "reAuth()");
        return this.a.doLogin(activity, str, iUiListener, true, null);
    }

    public void a() {
        this.a.a((IUiListener) null);
    }

    public void a(IUiListener iUiListener) {
        this.a.b(iUiListener);
    }

    public QQToken b() {
        return this.b;
    }

    public void a(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append("setAccessToken(), validTimeInSecond = ");
        sb.append(str2);
        sb.append("");
        f.a("openSDK_LOG.QQAuth", sb.toString());
        this.b.setAccessToken(str, str2);
    }

    public boolean c() {
        StringBuilder sb = new StringBuilder();
        sb.append("isSessionValid(), result = ");
        sb.append(this.b.isSessionValid() ? "true" : "false");
        sb.append("");
        f.a("openSDK_LOG.QQAuth", sb.toString());
        return this.b.isSessionValid();
    }

    public void a(Context context, String str) {
        String str2 = "openSDK_LOG.QQAuth";
        f.a(str2, "setOpenId() --start");
        this.b.setOpenId(str);
        a.d(context, this.b);
        f.a(str2, "setOpenId() --end");
    }
}
