package com.tencent.wxop.stat;

import com.tencent.wxop.stat.common.l;
import com.tencent.wxop.stat.common.r;
import org.json.JSONException;
import org.json.JSONObject;

public class StatAccount {
    public static final int CUSTOM_TYPE = 7;
    public static final int DEFAULT_TYPE = 0;
    public static final int EMAIL_TYPE = 6;
    public static final int PHONE_NUM_TYPE = 5;
    public static final int QQ_NUM_TYPE = 1;
    public static final int QQ_OPENID_TYPE = 3;
    public static final int WECHAT_ID_TYPE = 2;
    public static final int WECHAT_OPENID_TYPE = 4;
    private String a;
    private int b = 0;
    private String c;
    private String d;

    public StatAccount(String str) {
        String str2 = "";
        this.a = str2;
        this.c = str2;
        this.d = str2;
        this.a = str;
    }

    public StatAccount(String str, int i) {
        String str2 = "";
        this.a = str2;
        this.c = str2;
        this.d = str2;
        this.a = str;
        this.b = i;
    }

    public String getAccount() {
        return this.a;
    }

    public int getAccountType() {
        return this.b;
    }

    public String getExt() {
        return this.c;
    }

    public String getExt1() {
        return this.d;
    }

    public void setAccount(String str) {
        this.a = str;
    }

    public void setAccountType(int i) {
        this.b = i;
    }

    public void setExt(String str) {
        this.c = str;
    }

    public void setExt1(String str) {
        this.d = str;
    }

    public String toJsonString() {
        JSONObject jSONObject = new JSONObject();
        if (l.c(this.a)) {
            try {
                r.a(jSONObject, "a", this.a);
                jSONObject.put("t", this.b);
                r.a(jSONObject, "e", this.c);
                r.a(jSONObject, "e1", this.d);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        return jSONObject.toString();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("StatAccount [account=");
        sb.append(this.a);
        sb.append(", accountType=");
        sb.append(this.b);
        sb.append(", ext=");
        sb.append(this.c);
        sb.append(", ext1=");
        sb.append(this.d);
        sb.append("]");
        return sb.toString();
    }
}
