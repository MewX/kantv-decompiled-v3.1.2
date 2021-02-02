package com.tencent.open.utils;

import android.content.Context;
import android.content.SharedPreferences;
import com.tencent.open.a.f;
import java.lang.ref.WeakReference;
import java.net.URL;

/* compiled from: ProGuard */
public class g {
    private static g a;
    private volatile WeakReference<SharedPreferences> b = null;

    public static synchronized g a() {
        g gVar;
        synchronized (g.class) {
            if (a == null) {
                a = new g();
            }
            gVar = a;
        }
        return gVar;
    }

    public String a(Context context, String str) {
        String str2 = "openSDK_LOG.ServerSetting";
        if (this.b == null || this.b.get() == null) {
            this.b = new WeakReference<>(context.getSharedPreferences("ServerPrefs", 0));
        }
        try {
            String host = new URL(str).getHost();
            if (host == null) {
                StringBuilder sb = new StringBuilder();
                sb.append("Get host error. url=");
                sb.append(str);
                f.e(str2, sb.toString());
                return str;
            }
            String string = ((SharedPreferences) this.b.get()).getString(host, null);
            if (string != null) {
                if (!host.equals(string)) {
                    String replace = str.replace(host, string);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("return environment url : ");
                    sb2.append(replace);
                    f.a(str2, sb2.toString());
                    return replace;
                }
            }
            StringBuilder sb3 = new StringBuilder();
            sb3.append("host=");
            sb3.append(host);
            sb3.append(", envHost=");
            sb3.append(string);
            f.a(str2, sb3.toString());
            return str;
        } catch (Exception e) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append("getEnvUrl url=");
            sb4.append(str);
            sb4.append("error.: ");
            sb4.append(e.getMessage());
            f.e(str2, sb4.toString());
            return str;
        }
    }
}
