package com.tencent.a.a.a.a;

import android.util.Log;
import com.avos.avoscloud.im.v2.Conversation;
import org.json.JSONException;
import org.json.JSONObject;

public final class c {
    long T = 0;
    String a = null;
    String b = null;
    String c = "0";

    static c e(String str) {
        String str2 = "ts";
        String str3 = Conversation.PARAM_MESSAGE_QUERY_MSGID;
        String str4 = "mc";
        String str5 = "ui";
        c cVar = new c();
        if (h.b(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (!jSONObject.isNull(str5)) {
                    cVar.a = jSONObject.getString(str5);
                }
                if (!jSONObject.isNull(str4)) {
                    cVar.b = jSONObject.getString(str4);
                }
                if (!jSONObject.isNull(str3)) {
                    cVar.c = jSONObject.getString(str3);
                }
                if (!jSONObject.isNull(str2)) {
                    cVar.T = jSONObject.getLong(str2);
                }
            } catch (JSONException e) {
                Log.w("MID", e);
            }
        }
        return cVar;
    }

    private JSONObject n() {
        JSONObject jSONObject = new JSONObject();
        try {
            h.a(jSONObject, "ui", this.a);
            h.a(jSONObject, "mc", this.b);
            h.a(jSONObject, Conversation.PARAM_MESSAGE_QUERY_MSGID, this.c);
            jSONObject.put("ts", this.T);
        } catch (JSONException e) {
            Log.w("MID", e);
        }
        return jSONObject;
    }

    public final String a() {
        return this.c;
    }

    public final String toString() {
        return n().toString();
    }
}
