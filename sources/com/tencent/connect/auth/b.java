package com.tencent.connect.auth;

import com.tencent.tauth.IUiListener;
import java.util.HashMap;

/* compiled from: ProGuard */
public class b {
    public static b a;
    static final /* synthetic */ boolean d = (!b.class.desiredAssertionStatus());
    private static int e = 0;
    public HashMap<String, a> b = new HashMap<>();
    public final String c = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";

    /* compiled from: ProGuard */
    public static class a {
        public IUiListener a;
        public a b;
        public String c;
    }

    public static b a() {
        if (a == null) {
            a = new b();
        }
        return a;
    }

    public static int b() {
        int i = e + 1;
        e = i;
        return i;
    }

    public String a(a aVar) {
        String str = "";
        int b2 = b();
        try {
            HashMap<String, a> hashMap = this.b;
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(b2);
            hashMap.put(sb.toString(), aVar);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(b2);
        return sb2.toString();
    }

    public String c() {
        int ceil = (int) Math.ceil((Math.random() * 20.0d) + 3.0d);
        char[] charArray = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".toCharArray();
        int length = charArray.length;
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < ceil; i++) {
            double random = Math.random();
            double d2 = (double) length;
            Double.isNaN(d2);
            stringBuffer.append(charArray[(int) (random * d2)]);
        }
        return stringBuffer.toString();
    }
}
