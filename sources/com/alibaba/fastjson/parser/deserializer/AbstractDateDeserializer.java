package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.parser.DefaultJSONParser;
import java.lang.reflect.Type;

public abstract class AbstractDateDeserializer extends ContextObjectDeserializer implements ObjectDeserializer {
    /* access modifiers changed from: protected */
    public abstract <T> T cast(DefaultJSONParser defaultJSONParser, Type type, Object obj, Object obj2);

    public <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj) {
        return deserialze(defaultJSONParser, type, obj, null, 0);
    }

    /* JADX WARNING: type inference failed for: r5v0 */
    /* JADX WARNING: type inference failed for: r5v1, types: [java.lang.Object] */
    /* JADX WARNING: type inference failed for: r5v2, types: [java.lang.Object] */
    /* JADX WARNING: type inference failed for: r5v3, types: [java.lang.Object] */
    /* JADX WARNING: type inference failed for: r5v4, types: [java.lang.Long] */
    /* JADX WARNING: type inference failed for: r2v4, types: [java.lang.String] */
    /* JADX WARNING: type inference failed for: r5v5 */
    /* JADX WARNING: type inference failed for: r2v5 */
    /* JADX WARNING: type inference failed for: r5v6 */
    /* JADX WARNING: type inference failed for: r2v6 */
    /* JADX WARNING: type inference failed for: r2v7, types: [java.util.Date] */
    /* JADX WARNING: type inference failed for: r13v22, types: [java.util.Date] */
    /* JADX WARNING: type inference failed for: r13v23 */
    /* JADX WARNING: type inference failed for: r5v7 */
    /* JADX WARNING: type inference failed for: r13v24, types: [java.util.Date] */
    /* JADX WARNING: type inference failed for: r5v8, types: [java.lang.Long] */
    /* JADX WARNING: type inference failed for: r5v9 */
    /* JADX WARNING: type inference failed for: r5v10 */
    /* JADX WARNING: type inference failed for: r5v11 */
    /* JADX WARNING: type inference failed for: r5v12 */
    /* JADX WARNING: type inference failed for: r2v8 */
    /* JADX WARNING: type inference failed for: r2v9 */
    /* JADX WARNING: type inference failed for: r13v30 */
    /* JADX WARNING: type inference failed for: r13v31 */
    /* JADX WARNING: type inference failed for: r5v13 */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r2v4, types: [java.lang.String]
      assigns: [java.lang.String, java.util.Date]
      uses: [java.lang.String, ?[OBJECT, ARRAY]]
      mth insns count: 122
    	at jadx.core.dex.visitors.typeinference.TypeSearch.fillTypeCandidates(TypeSearch.java:237)
    	at java.util.ArrayList.forEach(ArrayList.java:1257)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:53)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runMultiVariableSearch(TypeInferenceVisitor.java:99)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:92)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
    	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
    	at java.util.ArrayList.forEach(ArrayList.java:1257)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
    	at jadx.core.ProcessClass.process(ProcessClass.java:30)
    	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
    	at jadx.api.JavaClass.decompile(JavaClass.java:62)
    	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
     */
    /* JADX WARNING: Unknown variable types count: 11 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser r10, java.lang.reflect.Type r11, java.lang.Object r12, java.lang.String r13, int r14) {
        /*
            r9 = this;
            java.lang.String r14 = "yyyy-MM-dd'T'HH:mm:ss"
            java.lang.String r0 = "yyyy-MM-dd'T'HH:mm:ss.SSS"
            com.alibaba.fastjson.parser.JSONLexer r1 = r10.lexer
            int r2 = r1.token()
            r3 = 16
            r4 = 2
            r5 = 0
            if (r2 != r4) goto L_0x001d
            long r13 = r1.longValue()
            java.lang.Long r5 = java.lang.Long.valueOf(r13)
            r1.nextToken(r3)
            goto L_0x015f
        L_0x001d:
            int r2 = r1.token()
            r6 = 4
            if (r2 != r6) goto L_0x009a
            java.lang.String r2 = r1.stringVal()
            if (r13 == 0) goto L_0x0074
            java.text.SimpleDateFormat r4 = new java.text.SimpleDateFormat     // Catch:{ IllegalArgumentException -> 0x0035 }
            java.util.Locale r6 = com.alibaba.fastjson.JSON.defaultLocale     // Catch:{ IllegalArgumentException -> 0x0035 }
            r4.<init>(r13, r6)     // Catch:{ IllegalArgumentException -> 0x0035 }
            r8 = r4
            r4 = r13
            r13 = r8
            goto L_0x0056
        L_0x0035:
            java.lang.String r4 = "yyyy-MM-ddTHH:mm:ss.SSS"
            boolean r4 = r13.equals(r4)
            if (r4 == 0) goto L_0x0045
            java.text.SimpleDateFormat r13 = new java.text.SimpleDateFormat
            r13.<init>(r0)
            r4 = r0
            goto L_0x0056
        L_0x0045:
            java.lang.String r4 = "yyyy-MM-ddTHH:mm:ss"
            boolean r4 = r13.equals(r4)
            if (r4 == 0) goto L_0x0054
            java.text.SimpleDateFormat r13 = new java.text.SimpleDateFormat
            r13.<init>(r14)
            r4 = r14
            goto L_0x0056
        L_0x0054:
            r4 = r13
            r13 = r5
        L_0x0056:
            java.util.Date r13 = r13.parse(r2)     // Catch:{ ParseException -> 0x005c }
        L_0x005a:
            r5 = r13
            goto L_0x0074
        L_0x005c:
            boolean r13 = r4.equals(r0)
            if (r13 == 0) goto L_0x0074
            int r13 = r2.length()
            r0 = 19
            if (r13 != r0) goto L_0x0074
            java.text.SimpleDateFormat r13 = new java.text.SimpleDateFormat     // Catch:{ ParseException -> 0x0074 }
            r13.<init>(r14)     // Catch:{ ParseException -> 0x0074 }
            java.util.Date r13 = r13.parse(r2)     // Catch:{ ParseException -> 0x0074 }
            goto L_0x005a
        L_0x0074:
            if (r5 != 0) goto L_0x015f
            r1.nextToken(r3)
            com.alibaba.fastjson.parser.Feature r13 = com.alibaba.fastjson.parser.Feature.AllowISO8601DateFormat
            boolean r13 = r1.isEnabled(r13)
            if (r13 == 0) goto L_0x0097
            com.alibaba.fastjson.parser.JSONScanner r13 = new com.alibaba.fastjson.parser.JSONScanner
            r13.<init>(r2)
            boolean r14 = r13.scanISO8601DateIfMatch()
            if (r14 == 0) goto L_0x0094
            java.util.Calendar r14 = r13.getCalendar()
            java.util.Date r2 = r14.getTime()
        L_0x0094:
            r13.close()
        L_0x0097:
            r5 = r2
            goto L_0x015f
        L_0x009a:
            int r13 = r1.token()
            r14 = 8
            if (r13 != r14) goto L_0x00a7
            r1.nextToken()
            goto L_0x015f
        L_0x00a7:
            int r13 = r1.token()
            r14 = 12
            r0 = 13
            r2 = 17
            java.lang.String r7 = "syntax error"
            if (r13 != r14) goto L_0x0122
            r1.nextToken()
            int r13 = r1.token()
            if (r13 != r6) goto L_0x011c
            java.lang.String r13 = r1.stringVal()
            java.lang.String r14 = com.alibaba.fastjson.JSON.DEFAULT_TYPE_KEY
            boolean r13 = r14.equals(r13)
            if (r13 == 0) goto L_0x00e9
            r1.nextToken()
            r10.accept(r2)
            java.lang.String r13 = r1.stringVal()
            com.alibaba.fastjson.parser.ParserConfig r14 = r10.getConfig()
            int r2 = r1.getFeatures()
            java.lang.Class r13 = r14.checkAutoType(r13, r5, r2)
            if (r13 == 0) goto L_0x00e3
            r11 = r13
        L_0x00e3:
            r10.accept(r6)
            r10.accept(r3)
        L_0x00e9:
            r1.nextTokenWithColon(r4)
            int r13 = r1.token()
            if (r13 != r4) goto L_0x0101
            long r13 = r1.longValue()
            r1.nextToken()
            java.lang.Long r5 = java.lang.Long.valueOf(r13)
            r10.accept(r0)
            goto L_0x015f
        L_0x0101:
            com.alibaba.fastjson.JSONException r10 = new com.alibaba.fastjson.JSONException
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r12 = "syntax error : "
            r11.append(r12)
            java.lang.String r12 = r1.tokenName()
            r11.append(r12)
            java.lang.String r11 = r11.toString()
            r10.<init>(r11)
            throw r10
        L_0x011c:
            com.alibaba.fastjson.JSONException r10 = new com.alibaba.fastjson.JSONException
            r10.<init>(r7)
            throw r10
        L_0x0122:
            int r13 = r10.getResolveStatus()
            if (r13 != r4) goto L_0x015b
            r13 = 0
            r10.setResolveStatus(r13)
            r10.accept(r3)
            int r13 = r1.token()
            if (r13 != r6) goto L_0x0155
            java.lang.String r13 = r1.stringVal()
            java.lang.String r14 = "val"
            boolean r13 = r14.equals(r13)
            if (r13 == 0) goto L_0x014f
            r1.nextToken()
            r10.accept(r2)
            java.lang.Object r5 = r10.parse()
            r10.accept(r0)
            goto L_0x015f
        L_0x014f:
            com.alibaba.fastjson.JSONException r10 = new com.alibaba.fastjson.JSONException
            r10.<init>(r7)
            throw r10
        L_0x0155:
            com.alibaba.fastjson.JSONException r10 = new com.alibaba.fastjson.JSONException
            r10.<init>(r7)
            throw r10
        L_0x015b:
            java.lang.Object r5 = r10.parse()
        L_0x015f:
            java.lang.Object r10 = r9.cast(r10, r11, r12, r5)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.deserializer.AbstractDateDeserializer.deserialze(com.alibaba.fastjson.parser.DefaultJSONParser, java.lang.reflect.Type, java.lang.Object, java.lang.String, int):java.lang.Object");
    }
}
