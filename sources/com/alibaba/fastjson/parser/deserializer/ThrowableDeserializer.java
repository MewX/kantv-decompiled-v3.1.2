package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.parser.ParserConfig;
import java.lang.reflect.Constructor;

public class ThrowableDeserializer extends JavaBeanDeserializer {
    public int getFastMatchToken() {
        return 12;
    }

    public ThrowableDeserializer(ParserConfig parserConfig, Class<?> cls) {
        super(parserConfig, cls, cls);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0033, code lost:
        if (java.lang.Throwable.class.isAssignableFrom(r14) != false) goto L_0x0037;
     */
    /* JADX WARNING: Removed duplicated region for block: B:77:0x0135  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser r13, java.lang.reflect.Type r14, java.lang.Object r15) {
        /*
            r12 = this;
            com.alibaba.fastjson.parser.JSONLexer r15 = r13.lexer
            int r0 = r15.token()
            r1 = 8
            r2 = 0
            if (r0 != r1) goto L_0x000f
            r15.nextToken()
            return r2
        L_0x000f:
            int r0 = r13.getResolveStatus()
            r3 = 2
            java.lang.String r4 = "syntax error"
            if (r0 != r3) goto L_0x001d
            r0 = 0
            r13.setResolveStatus(r0)
            goto L_0x0025
        L_0x001d:
            int r0 = r15.token()
            r3 = 12
            if (r0 != r3) goto L_0x0174
        L_0x0025:
            if (r14 == 0) goto L_0x0036
            boolean r0 = r14 instanceof java.lang.Class
            if (r0 == 0) goto L_0x0036
            java.lang.Class r14 = (java.lang.Class) r14
            java.lang.Class<java.lang.Throwable> r0 = java.lang.Throwable.class
            boolean r0 = r0.isAssignableFrom(r14)
            if (r0 == 0) goto L_0x0036
            goto L_0x0037
        L_0x0036:
            r14 = r2
        L_0x0037:
            r3 = r14
            r14 = r2
            r0 = r14
            r5 = r0
            r6 = r5
        L_0x003c:
            com.alibaba.fastjson.parser.SymbolTable r7 = r13.getSymbolTable()
            java.lang.String r7 = r15.scanSymbol(r7)
            r8 = 13
            r9 = 16
            if (r7 != 0) goto L_0x0064
            int r10 = r15.token()
            if (r10 != r8) goto L_0x0055
            r15.nextToken(r9)
            goto L_0x00ed
        L_0x0055:
            int r10 = r15.token()
            if (r10 != r9) goto L_0x0064
            com.alibaba.fastjson.parser.Feature r10 = com.alibaba.fastjson.parser.Feature.AllowArbitraryCommas
            boolean r10 = r15.isEnabled(r10)
            if (r10 == 0) goto L_0x0064
            goto L_0x003c
        L_0x0064:
            r10 = 4
            r15.nextTokenWithColon(r10)
            java.lang.String r11 = com.alibaba.fastjson.JSON.DEFAULT_TYPE_KEY
            boolean r11 = r11.equals(r7)
            if (r11 == 0) goto L_0x0092
            int r3 = r15.token()
            if (r3 != r10) goto L_0x008c
            java.lang.String r3 = r15.stringVal()
            com.alibaba.fastjson.parser.ParserConfig r7 = r13.getConfig()
            java.lang.Class<java.lang.Throwable> r10 = java.lang.Throwable.class
            int r11 = r15.getFeatures()
            java.lang.Class r3 = r7.checkAutoType(r3, r10, r11)
            r15.nextToken(r9)
            goto L_0x00e4
        L_0x008c:
            com.alibaba.fastjson.JSONException r13 = new com.alibaba.fastjson.JSONException
            r13.<init>(r4)
            throw r13
        L_0x0092:
            java.lang.String r11 = "message"
            boolean r11 = r11.equals(r7)
            if (r11 == 0) goto L_0x00b6
            int r5 = r15.token()
            if (r5 != r1) goto L_0x00a2
            r5 = r2
            goto L_0x00ac
        L_0x00a2:
            int r5 = r15.token()
            if (r5 != r10) goto L_0x00b0
            java.lang.String r5 = r15.stringVal()
        L_0x00ac:
            r15.nextToken()
            goto L_0x00e4
        L_0x00b0:
            com.alibaba.fastjson.JSONException r13 = new com.alibaba.fastjson.JSONException
            r13.<init>(r4)
            throw r13
        L_0x00b6:
            java.lang.String r10 = "cause"
            boolean r11 = r10.equals(r7)
            if (r11 == 0) goto L_0x00c5
            java.lang.Object r0 = r12.deserialze(r13, r2, r10)
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            goto L_0x00e4
        L_0x00c5:
            java.lang.String r10 = "stackTrace"
            boolean r10 = r10.equals(r7)
            if (r10 == 0) goto L_0x00d6
            java.lang.Class<java.lang.StackTraceElement[]> r6 = java.lang.StackTraceElement[].class
            java.lang.Object r6 = r13.parseObject(r6)
            java.lang.StackTraceElement[] r6 = (java.lang.StackTraceElement[]) r6
            goto L_0x00e4
        L_0x00d6:
            if (r14 != 0) goto L_0x00dd
            java.util.HashMap r14 = new java.util.HashMap
            r14.<init>()
        L_0x00dd:
            java.lang.Object r10 = r13.parse()
            r14.put(r7, r10)
        L_0x00e4:
            int r7 = r15.token()
            if (r7 != r8) goto L_0x003c
            r15.nextToken(r9)
        L_0x00ed:
            if (r3 != 0) goto L_0x00f5
            java.lang.Exception r15 = new java.lang.Exception
            r15.<init>(r5, r0)
            goto L_0x0108
        L_0x00f5:
            java.lang.Class<java.lang.Throwable> r15 = java.lang.Throwable.class
            boolean r15 = r15.isAssignableFrom(r3)
            if (r15 == 0) goto L_0x0159
            java.lang.Throwable r15 = r12.createException(r5, r0, r3)     // Catch:{ Exception -> 0x0150 }
            if (r15 != 0) goto L_0x0108
            java.lang.Exception r15 = new java.lang.Exception     // Catch:{ Exception -> 0x0150 }
            r15.<init>(r5, r0)     // Catch:{ Exception -> 0x0150 }
        L_0x0108:
            if (r6 == 0) goto L_0x010d
            r15.setStackTrace(r6)
        L_0x010d:
            if (r14 == 0) goto L_0x014f
            if (r3 == 0) goto L_0x0126
            java.lang.Class r0 = r12.clazz
            if (r3 != r0) goto L_0x0117
            r13 = r12
            goto L_0x0127
        L_0x0117:
            com.alibaba.fastjson.parser.ParserConfig r13 = r13.getConfig()
            com.alibaba.fastjson.parser.deserializer.ObjectDeserializer r13 = r13.getDeserializer(r3)
            boolean r0 = r13 instanceof com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer
            if (r0 == 0) goto L_0x0126
            com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer r13 = (com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) r13
            goto L_0x0127
        L_0x0126:
            r13 = r2
        L_0x0127:
            java.util.Set r14 = r14.entrySet()
            java.util.Iterator r14 = r14.iterator()
        L_0x012f:
            boolean r0 = r14.hasNext()
            if (r0 == 0) goto L_0x014f
            java.lang.Object r0 = r14.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            java.lang.Object r1 = r0.getKey()
            java.lang.String r1 = (java.lang.String) r1
            java.lang.Object r0 = r0.getValue()
            com.alibaba.fastjson.parser.deserializer.FieldDeserializer r1 = r13.getFieldDeserializer(r1)
            if (r1 == 0) goto L_0x012f
            r1.setValue(r15, r0)
            goto L_0x012f
        L_0x014f:
            return r15
        L_0x0150:
            r13 = move-exception
            com.alibaba.fastjson.JSONException r14 = new com.alibaba.fastjson.JSONException
            java.lang.String r15 = "create instance error"
            r14.<init>(r15, r13)
            throw r14
        L_0x0159:
            com.alibaba.fastjson.JSONException r13 = new com.alibaba.fastjson.JSONException
            java.lang.StringBuilder r14 = new java.lang.StringBuilder
            r14.<init>()
            java.lang.String r15 = "type not match, not Throwable. "
            r14.append(r15)
            java.lang.String r15 = r3.getName()
            r14.append(r15)
            java.lang.String r14 = r14.toString()
            r13.<init>(r14)
            throw r13
        L_0x0174:
            com.alibaba.fastjson.JSONException r13 = new com.alibaba.fastjson.JSONException
            r13.<init>(r4)
            goto L_0x017b
        L_0x017a:
            throw r13
        L_0x017b:
            goto L_0x017a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.deserializer.ThrowableDeserializer.deserialze(com.alibaba.fastjson.parser.DefaultJSONParser, java.lang.reflect.Type, java.lang.Object):java.lang.Object");
    }

    private Throwable createException(String str, Throwable th, Class<?> cls) throws Exception {
        Constructor[] constructors;
        Constructor constructor = null;
        Constructor constructor2 = null;
        Constructor constructor3 = null;
        for (Constructor constructor4 : cls.getConstructors()) {
            Class<Throwable>[] parameterTypes = constructor4.getParameterTypes();
            if (parameterTypes.length == 0) {
                constructor3 = constructor4;
            } else if (parameterTypes.length == 1 && parameterTypes[0] == String.class) {
                constructor2 = constructor4;
            } else if (parameterTypes.length == 2 && parameterTypes[0] == String.class && parameterTypes[1] == Throwable.class) {
                constructor = constructor4;
            }
        }
        if (constructor != null) {
            return (Throwable) constructor.newInstance(new Object[]{str, th});
        } else if (constructor2 != null) {
            return (Throwable) constructor2.newInstance(new Object[]{str});
        } else if (constructor3 != null) {
            return (Throwable) constructor3.newInstance(new Object[0]);
        } else {
            return null;
        }
    }
}
