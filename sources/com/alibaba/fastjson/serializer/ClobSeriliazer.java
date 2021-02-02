package com.alibaba.fastjson.serializer;

public class ClobSeriliazer implements ObjectSerializer {
    public static final ClobSeriliazer instance = new ClobSeriliazer();

    /* JADX WARNING: Code restructure failed: missing block: B:15:0x002c, code lost:
        r2 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0034, code lost:
        throw new com.alibaba.fastjson.JSONException("read string from reader error", r2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0035, code lost:
        r2 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x003e, code lost:
        throw new java.io.IOException("write clob error", r2);
     */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [B:1:0x0002, B:6:0x0013] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void write(com.alibaba.fastjson.serializer.JSONSerializer r2, java.lang.Object r3, java.lang.Object r4, java.lang.reflect.Type r5, int r6) throws java.io.IOException {
        /*
            r1 = this;
            if (r3 != 0) goto L_0x0006
            r2.writeNull()     // Catch:{ SQLException -> 0x0035 }
            return
        L_0x0006:
            java.sql.Clob r3 = (java.sql.Clob) r3     // Catch:{ SQLException -> 0x0035 }
            java.io.Reader r3 = r3.getCharacterStream()     // Catch:{ SQLException -> 0x0035 }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ SQLException -> 0x0035 }
            r4.<init>()     // Catch:{ SQLException -> 0x0035 }
            r5 = 2048(0x800, float:2.87E-42)
            char[] r5 = new char[r5]     // Catch:{ Exception -> 0x002c }
        L_0x0015:
            int r6 = r5.length     // Catch:{ Exception -> 0x002c }
            r0 = 0
            int r6 = r3.read(r5, r0, r6)     // Catch:{ Exception -> 0x002c }
            if (r6 >= 0) goto L_0x0028
            java.lang.String r4 = r4.toString()     // Catch:{ SQLException -> 0x0035 }
            r3.close()     // Catch:{ SQLException -> 0x0035 }
            r2.write(r4)     // Catch:{ SQLException -> 0x0035 }
            return
        L_0x0028:
            r4.append(r5, r0, r6)     // Catch:{ Exception -> 0x002c }
            goto L_0x0015
        L_0x002c:
            r2 = move-exception
            com.alibaba.fastjson.JSONException r3 = new com.alibaba.fastjson.JSONException     // Catch:{ SQLException -> 0x0035 }
            java.lang.String r4 = "read string from reader error"
            r3.<init>(r4, r2)     // Catch:{ SQLException -> 0x0035 }
            throw r3     // Catch:{ SQLException -> 0x0035 }
        L_0x0035:
            r2 = move-exception
            java.io.IOException r3 = new java.io.IOException
            java.lang.String r4 = "write clob error"
            r3.<init>(r4, r2)
            goto L_0x003f
        L_0x003e:
            throw r3
        L_0x003f:
            goto L_0x003e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.serializer.ClobSeriliazer.write(com.alibaba.fastjson.serializer.JSONSerializer, java.lang.Object, java.lang.Object, java.lang.reflect.Type, int):void");
    }
}
