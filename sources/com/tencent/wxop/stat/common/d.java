package com.tencent.wxop.stat.common;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import com.avos.avoscloud.im.v2.Conversation;
import com.google.android.exoplayer2.offline.DownloadRequest;
import com.kantv.flt_tencent_im.utils.TUIKitConstants.ProfileType;
import com.tencent.wxop.stat.StatConfig;
import com.tencent.wxop.stat.a;
import com.tencent.wxop.stat.au;
import java.util.Locale;
import java.util.TimeZone;
import org.json.JSONArray;
import org.json.JSONObject;

class d {
    String a;
    String b;
    DisplayMetrics c;
    int d;
    String e;
    String f;
    String g;
    String h;
    String i;
    String j;
    String k;
    int l;
    String m;
    String n;
    Context o;
    private String p;

    /* renamed from: q reason: collision with root package name */
    private String f9q;
    private String r;
    private String s;

    private d(Context context) {
        this.b = StatConstants.VERSION;
        this.d = VERSION.SDK_INT;
        this.e = Build.MODEL;
        this.f = Build.MANUFACTURER;
        this.g = Locale.getDefault().getLanguage();
        this.l = 0;
        this.m = null;
        this.n = null;
        this.o = null;
        this.p = null;
        this.f9q = null;
        this.r = null;
        this.s = null;
        this.o = context.getApplicationContext();
        this.c = l.d(this.o);
        this.a = l.h(this.o);
        this.h = StatConfig.getInstallChannel(this.o);
        this.i = l.g(this.o);
        this.j = TimeZone.getDefault().getID();
        this.l = l.m(this.o);
        this.k = l.n(this.o);
        this.m = this.o.getPackageName();
        if (this.d >= 14) {
            this.p = l.t(this.o);
        }
        this.f9q = l.s(this.o).toString();
        this.r = l.r(this.o);
        this.s = l.d();
        this.n = l.A(this.o);
    }

    /* access modifiers changed from: 0000 */
    public void a(JSONObject jSONObject, Thread thread) {
        String str;
        String str2;
        if (thread == null) {
            if (this.c != null) {
                StringBuilder sb = new StringBuilder();
                sb.append(this.c.widthPixels);
                String str3 = "*";
                sb.append(str3);
                sb.append(this.c.heightPixels);
                jSONObject.put("sr", sb.toString());
                StringBuilder sb2 = new StringBuilder();
                sb2.append(this.c.xdpi);
                sb2.append(str3);
                sb2.append(this.c.ydpi);
                jSONObject.put("dpi", sb2.toString());
            }
            if (a.a(this.o).e()) {
                JSONObject jSONObject2 = new JSONObject();
                r.a(jSONObject2, "bs", r.d(this.o));
                r.a(jSONObject2, DownloadRequest.TYPE_SS, r.e(this.o));
                if (jSONObject2.length() > 0) {
                    r.a(jSONObject, "wf", jSONObject2.toString());
                }
            }
            JSONArray a2 = r.a(this.o, 10);
            if (a2 != null && a2.length() > 0) {
                r.a(jSONObject, "wflist", a2.toString());
            }
            str = this.p;
            str2 = "sen";
        } else {
            r.a(jSONObject, "thn", thread.getName());
            r.a(jSONObject, "qq", StatConfig.getQQ(this.o));
            r.a(jSONObject, "cui", StatConfig.getCustomUserId(this.o));
            String str4 = "/";
            if (l.c(this.r) && this.r.split(str4).length == 2) {
                r.a(jSONObject, "fram", this.r.split(str4)[0]);
            }
            if (l.c(this.s) && this.s.split(str4).length == 2) {
                r.a(jSONObject, ProfileType.FROM, this.s.split(str4)[0]);
            }
            if (au.a(this.o).b(this.o) != null) {
                jSONObject.put("ui", au.a(this.o).b(this.o).b());
            }
            str = StatConfig.getLocalMidOnly(this.o);
            str2 = Conversation.PARAM_MESSAGE_QUERY_MSGID;
        }
        r.a(jSONObject, str2, str);
        r.a(jSONObject, "pcn", l.o(this.o));
        r.a(jSONObject, "osn", VERSION.RELEASE);
        r.a(jSONObject, "av", this.a);
        r.a(jSONObject, "ch", this.h);
        r.a(jSONObject, "mf", this.f);
        r.a(jSONObject, "sv", this.b);
        r.a(jSONObject, "osd", Build.DISPLAY);
        r.a(jSONObject, "prod", Build.PRODUCT);
        r.a(jSONObject, "tags", Build.TAGS);
        r.a(jSONObject, "id", Build.ID);
        r.a(jSONObject, "fng", Build.FINGERPRINT);
        r.a(jSONObject, "lch", this.n);
        r.a(jSONObject, "ov", Integer.toString(this.d));
        jSONObject.put("os", 1);
        r.a(jSONObject, "op", this.i);
        r.a(jSONObject, "lg", this.g);
        r.a(jSONObject, "md", this.e);
        r.a(jSONObject, "tz", this.j);
        int i2 = this.l;
        if (i2 != 0) {
            jSONObject.put("jb", i2);
        }
        r.a(jSONObject, "sd", this.k);
        r.a(jSONObject, "apn", this.m);
        r.a(jSONObject, "cpu", this.f9q);
        r.a(jSONObject, "abi", Build.CPU_ABI);
        r.a(jSONObject, "abi2", Build.CPU_ABI2);
        r.a(jSONObject, "ram", this.r);
        r.a(jSONObject, "rom", this.s);
    }
}
