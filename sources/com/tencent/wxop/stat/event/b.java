package com.tencent.wxop.stat.event;

import android.content.Context;
import com.tencent.wxop.stat.StatServiceImpl;
import com.tencent.wxop.stat.StatSpecifyReportedInfo;
import java.util.Map.Entry;
import java.util.Properties;
import org.json.JSONException;
import org.json.JSONObject;

public class b extends e {
    protected c a = new c();
    private long m = -1;

    public b(Context context, int i, String str, StatSpecifyReportedInfo statSpecifyReportedInfo) {
        super(context, i, statSpecifyReportedInfo);
        this.a.a = str;
    }

    private void h() {
        if (this.a.a != null) {
            Properties commonKeyValueForKVEvent = StatServiceImpl.getCommonKeyValueForKVEvent(this.a.a);
            if (commonKeyValueForKVEvent != null && commonKeyValueForKVEvent.size() > 0) {
                if (this.a.c == null || this.a.c.length() == 0) {
                    this.a.c = new JSONObject(commonKeyValueForKVEvent);
                    return;
                }
                for (Entry entry : commonKeyValueForKVEvent.entrySet()) {
                    try {
                        this.a.c.put(entry.getKey().toString(), entry.getValue());
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }

    public EventType a() {
        return EventType.CUSTOM;
    }

    public void a(long j) {
        this.m = j;
    }

    public boolean a(JSONObject jSONObject) {
        String str;
        Object obj;
        jSONObject.put("ei", this.a.a);
        long j = this.m;
        if (j > 0) {
            jSONObject.put("du", j);
        }
        if (this.a.b == null) {
            h();
            obj = this.a.c;
            str = "kv";
        } else {
            obj = this.a.b;
            str = "ar";
        }
        jSONObject.put(str, obj);
        return true;
    }

    public c b() {
        return this.a;
    }
}
