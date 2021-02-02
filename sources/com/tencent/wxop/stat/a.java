package com.tencent.wxop.stat;

import android.content.Context;
import android.content.IntentFilter;
import com.tencent.wxop.stat.common.StatConstants;
import com.tencent.wxop.stat.common.StatLogger;
import com.tencent.wxop.stat.common.e;
import com.tencent.wxop.stat.common.l;
import com.tencent.wxop.stat.common.r;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.regex.Pattern;
import org.apache.http.HttpHost;
import org.json.JSONObject;

public class a {
    private static a g;
    private List<String> a = null;
    private volatile int b = 2;
    private volatile String c = "";
    private volatile HttpHost d = null;
    /* access modifiers changed from: private */
    public e e = null;
    private int f = 0;
    private Context h = null;
    private StatLogger i = null;

    private a(Context context) {
        this.h = context.getApplicationContext();
        this.e = new e();
        i.a(context);
        this.i = l.b();
        l();
        i();
        g();
    }

    public static a a(Context context) {
        if (g == null) {
            synchronized (a.class) {
                if (g == null) {
                    g = new a(context);
                }
            }
        }
        return g;
    }

    private boolean b(String str) {
        return Pattern.compile("(2[5][0-5]|2[0-4]\\d|1\\d{2}|\\d{1,2})\\.(25[0-5]|2[0-4]\\d|1\\d{2}|\\d{1,2})\\.(25[0-5]|2[0-4]\\d|1\\d{2}|\\d{1,2})\\.(25[0-5]|2[0-4]\\d|1\\d{2}|\\d{1,2})").matcher(str).matches();
    }

    private void i() {
        this.a = new ArrayList(10);
        this.a.add("117.135.169.101");
        this.a.add("140.207.54.125");
        this.a.add("180.153.8.53");
        this.a.add("120.198.203.175");
        this.a.add("14.17.43.18");
        this.a.add("163.177.71.186");
        this.a.add("111.30.131.31");
        this.a.add("123.126.121.167");
        this.a.add("123.151.152.111");
        this.a.add("113.142.45.79");
        this.a.add("123.138.162.90");
        this.a.add("103.7.30.94");
    }

    private String j() {
        String str = StatConstants.MTA_SERVER_HOST;
        try {
            if (!b(str)) {
                return InetAddress.getByName(str).getHostAddress();
            }
        } catch (Exception e2) {
            this.i.e((Throwable) e2);
        }
        return "";
    }

    private void k() {
        String j = j();
        if (StatConfig.isDebugEnable()) {
            StatLogger statLogger = this.i;
            StringBuilder sb = new StringBuilder("remoteIp ip is ");
            sb.append(j);
            statLogger.i(sb.toString());
        }
        if (l.c(j)) {
            if (!this.a.contains(j)) {
                String str = (String) this.a.get(this.f);
                if (StatConfig.isDebugEnable()) {
                    StatLogger statLogger2 = this.i;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(j);
                    sb2.append(" not in ip list, change to:");
                    sb2.append(str);
                    statLogger2.w(sb2.toString());
                }
                j = str;
            }
            StringBuilder sb3 = new StringBuilder("http://");
            sb3.append(j);
            sb3.append(":80/mstat/report");
            StatConfig.setStatReportUrl(sb3.toString());
        }
    }

    private void l() {
        this.b = 0;
        this.d = null;
        this.c = null;
    }

    public HttpHost a() {
        return this.d;
    }

    public void a(String str) {
        String[] split;
        if (StatConfig.isDebugEnable()) {
            StatLogger statLogger = this.i;
            StringBuilder sb = new StringBuilder("updateIpList ");
            sb.append(str);
            statLogger.i(sb.toString());
        }
        try {
            if (l.c(str)) {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.length() > 0) {
                    Iterator keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String string = jSONObject.getString((String) keys.next());
                        if (l.c(string)) {
                            for (String str2 : string.split(";")) {
                                if (l.c(str2)) {
                                    String[] split2 = str2.split(":");
                                    if (split2.length > 1) {
                                        String str3 = split2[0];
                                        if (b(str3) && !this.a.contains(str3)) {
                                            if (StatConfig.isDebugEnable()) {
                                                StatLogger statLogger2 = this.i;
                                                StringBuilder sb2 = new StringBuilder("add new ip:");
                                                sb2.append(str3);
                                                statLogger2.i(sb2.toString());
                                            }
                                            this.a.add(str3);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } catch (Exception e2) {
            this.i.e((Throwable) e2);
        }
        this.f = new Random().nextInt(this.a.size());
    }

    public String b() {
        return this.c;
    }

    public int c() {
        return this.b;
    }

    public void d() {
        this.f = (this.f + 1) % this.a.size();
    }

    public boolean e() {
        return this.b == 1;
    }

    public boolean f() {
        return this.b != 0;
    }

    /* access modifiers changed from: 0000 */
    public void g() {
        if (r.f(this.h)) {
            if (StatConfig.g) {
                k();
            }
            this.c = l.j(this.h);
            if (StatConfig.isDebugEnable()) {
                StatLogger statLogger = this.i;
                StringBuilder sb = new StringBuilder("NETWORK name:");
                sb.append(this.c);
                statLogger.i(sb.toString());
            }
            if (l.c(this.c)) {
                this.b = "WIFI".equalsIgnoreCase(this.c) ? 1 : 2;
                this.d = l.a(this.h);
            }
            if (StatServiceImpl.a()) {
                StatServiceImpl.d(this.h);
            }
        } else {
            if (StatConfig.isDebugEnable()) {
                this.i.i("NETWORK TYPE: network is close.");
            }
            l();
        }
    }

    public void h() {
        this.h.getApplicationContext().registerReceiver(new b(this), new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }
}
