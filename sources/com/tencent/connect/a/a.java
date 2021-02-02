package com.tencent.connect.a;

import android.content.Context;
import android.text.TextUtils;
import com.tencent.connect.auth.QQToken;
import com.tencent.connect.common.Constants;
import com.tencent.open.b.d;
import com.tencent.open.utils.f;
import java.lang.reflect.Method;

/* compiled from: ProGuard */
public class a {
    private static Class<?> a = null;
    private static Class<?> b = null;
    private static Method c = null;
    private static Method d = null;
    private static Method e = null;
    private static Method f = null;
    private static boolean g = false;

    public static boolean a(Context context, QQToken qQToken) {
        return f.a(context, qQToken.getAppId()).b("Common_ta_enable");
    }

    public static void b(Context context, QQToken qQToken) {
        try {
            if (a(context, qQToken)) {
                f.invoke(a, new Object[]{Boolean.valueOf(true)});
                return;
            }
            f.invoke(a, new Object[]{Boolean.valueOf(false)});
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void c(Context context, QQToken qQToken) {
        String appId = qQToken.getAppId();
        StringBuilder sb = new StringBuilder();
        sb.append("Aqc");
        sb.append(appId);
        String sb2 = sb.toString();
        try {
            a = Class.forName("com.tencent.stat.StatConfig");
            b = Class.forName("com.tencent.stat.StatService");
            c = b.getMethod("reportQQ", new Class[]{Context.class, String.class});
            d = b.getMethod("trackCustomEvent", new Class[]{Context.class, String.class, String[].class});
            e = b.getMethod("commitEvents", new Class[]{Context.class, Integer.TYPE});
            f = a.getMethod("setEnableStatService", new Class[]{Boolean.TYPE});
            b(context, qQToken);
            a.getMethod("setAutoExceptionCaught", new Class[]{Boolean.TYPE}).invoke(a, new Object[]{Boolean.valueOf(false)});
            a.getMethod("setEnableSmartReporting", new Class[]{Boolean.TYPE}).invoke(a, new Object[]{Boolean.valueOf(true)});
            a.getMethod("setSendPeriodMinutes", new Class[]{Integer.TYPE}).invoke(a, new Object[]{Integer.valueOf(1440)});
            Class cls = Class.forName("com.tencent.stat.StatReportStrategy");
            a.getMethod("setStatSendStrategy", new Class[]{cls}).invoke(a, new Object[]{cls.getField("PERIOD").get(null)});
            b.getMethod("startStatService", new Class[]{Context.class, String.class, String.class}).invoke(b, new Object[]{context, sb2, Class.forName("com.tencent.stat.common.StatConstants").getField("VERSION").get(null)});
            g = true;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void d(Context context, QQToken qQToken) {
        if (!TextUtils.isEmpty(qQToken.getOpenId())) {
            d.a().a(qQToken.getOpenId(), qQToken.getAppId(), "2", "1", Constants.VIA_REPORT_TYPE_SHARE_TO_QZONE, "0", "0", "0");
        }
        if (g) {
            b(context, qQToken);
            if (qQToken.getOpenId() != null) {
                try {
                    c.invoke(b, new Object[]{context, qQToken.getOpenId()});
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public static void a(Context context, QQToken qQToken, String str, String... strArr) {
        if (g) {
            b(context, qQToken);
            try {
                d.invoke(b, new Object[]{context, str, strArr});
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }
}
