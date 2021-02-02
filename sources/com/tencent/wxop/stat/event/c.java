package com.tencent.wxop.stat.event;

import java.util.Properties;
import org.json.JSONArray;
import org.json.JSONObject;

public class c {
    public String a;
    public JSONArray b;
    public JSONObject c = null;

    public c() {
    }

    public c(String str, String[] strArr, Properties properties) {
        JSONObject jSONObject;
        this.a = str;
        if (properties != null) {
            jSONObject = new JSONObject(properties);
        } else if (strArr != null) {
            this.b = new JSONArray();
            for (String put : strArr) {
                this.b.put(put);
            }
            return;
        } else {
            jSONObject = new JSONObject();
        }
        this.c = jSONObject;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        return toString().equals(((c) obj).toString());
    }

    public int hashCode() {
        return toString().hashCode();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.a);
        sb.append(",");
        JSONArray jSONArray = this.b;
        if (jSONArray != null) {
            sb.append(jSONArray.toString());
        }
        JSONObject jSONObject = this.c;
        if (jSONObject != null) {
            sb.append(jSONObject.toString());
        }
        return sb.toString();
    }
}
