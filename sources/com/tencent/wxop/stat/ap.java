package com.tencent.wxop.stat;

import android.content.Context;
import com.koushikdutta.async.http.AsyncHttpRequest;
import com.tencent.wxop.stat.common.StatLogger;
import com.tencent.wxop.stat.event.i;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import org.json.JSONArray;

class ap implements Runnable {
    private Context a = null;
    private Map<String, Integer> b = null;
    private StatSpecifyReportedInfo c = null;

    public ap(Context context, Map<String, Integer> map, StatSpecifyReportedInfo statSpecifyReportedInfo) {
        this.a = context;
        this.c = statSpecifyReportedInfo;
        if (map != null) {
            this.b = map;
        }
    }

    private NetworkMonitor a(String str, int i) {
        int i2;
        NetworkMonitor networkMonitor = new NetworkMonitor();
        Socket socket = new Socket();
        try {
            networkMonitor.setDomain(str);
            networkMonitor.setPort(i);
            long currentTimeMillis = System.currentTimeMillis();
            InetSocketAddress inetSocketAddress = new InetSocketAddress(str, i);
            socket.connect(inetSocketAddress, AsyncHttpRequest.DEFAULT_TIMEOUT);
            networkMonitor.setMillisecondsConsume(System.currentTimeMillis() - currentTimeMillis);
            networkMonitor.setRemoteIp(inetSocketAddress.getAddress().getHostAddress());
            socket.close();
            try {
                socket.close();
            } catch (Throwable th) {
                StatServiceImpl.f8q.e(th);
            }
            i2 = 0;
        } catch (IOException e) {
            try {
                StatServiceImpl.f8q.e((Throwable) e);
                socket.close();
            } catch (Throwable th2) {
                StatServiceImpl.f8q.e(th2);
            }
        } catch (Throwable th3) {
            StatServiceImpl.f8q.e(th3);
        }
        networkMonitor.setStatusCode(i2);
        return networkMonitor;
        i2 = -1;
        networkMonitor.setStatusCode(i2);
        return networkMonitor;
        throw th;
    }

    private Map<String, Integer> a() {
        HashMap hashMap = new HashMap();
        String a2 = StatConfig.a("__MTA_TEST_SPEED__", (String) null);
        if (!(a2 == null || a2.trim().length() == 0)) {
            for (String split : a2.split(";")) {
                String[] split2 = split.split(",");
                if (split2 != null && split2.length == 2) {
                    String str = split2[0];
                    if (!(str == null || str.trim().length() == 0)) {
                        try {
                            hashMap.put(str, Integer.valueOf(Integer.valueOf(split2[1]).intValue()));
                        } catch (NumberFormatException e) {
                            StatServiceImpl.f8q.e((Throwable) e);
                        }
                    }
                }
            }
        }
        return hashMap;
    }

    public void run() {
        StatLogger f;
        String str;
        try {
            if (this.b == null) {
                this.b = a();
            }
            if (this.b != null) {
                if (this.b.size() != 0) {
                    JSONArray jSONArray = new JSONArray();
                    for (Entry entry : this.b.entrySet()) {
                        String str2 = (String) entry.getKey();
                        if (str2 != null) {
                            if (str2.length() != 0) {
                                if (((Integer) entry.getValue()) == null) {
                                    f = StatServiceImpl.f8q;
                                    StringBuilder sb = new StringBuilder("port is null for ");
                                    sb.append(str2);
                                    str = sb.toString();
                                    f.w(str);
                                } else {
                                    jSONArray.put(a((String) entry.getKey(), ((Integer) entry.getValue()).intValue()).toJSONObject());
                                }
                            }
                        }
                        f = StatServiceImpl.f8q;
                        str = "empty domain name.";
                        f.w(str);
                    }
                    if (jSONArray.length() != 0) {
                        i iVar = new i(this.a, StatServiceImpl.a(this.a, false, this.c), this.c);
                        iVar.a(jSONArray.toString());
                        new aq(iVar).a();
                        return;
                    }
                    return;
                }
            }
            StatServiceImpl.f8q.i("empty domain list.");
        } catch (Throwable th) {
            StatServiceImpl.f8q.e(th);
        }
    }
}
