package com.avos.avoscloud.im.v2;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.avos.avospush.util.FieldAttribute;
import java.lang.reflect.Field;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public abstract class AVIMTypedMessage extends AVIMMessage {
    private static final String KEY_MESSAGE_CONTENT = "msg";
    private static final String KEY_MESSAGE_FROM = "msg_from";
    private static final String KEY_MESSAGE_ID = "msg_mid";
    private static final String KEY_MESSAGE_TIMESTAMP = "msg_timestamp";
    static ConcurrentHashMap<Class<? extends AVIMTypedMessage>, Map<String, FieldAttribute>> fieldCache = new ConcurrentHashMap<>();
    private int messageType;

    public AVIMTypedMessage() {
        initMessageType();
    }

    private void initMessageType() {
        this.messageType = ((AVIMMessageType) getClass().getAnnotation(AVIMMessageType.class)).type();
    }

    public int getMessageType() {
        return this.messageType;
    }

    /* access modifiers changed from: protected */
    public void setMessageType(int i) {
        this.messageType = i;
    }

    public final String getContent() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("_lctype", (Object) Integer.valueOf(getMessageType()));
        if (!fieldCache.contains(getClass())) {
            computeFieldAttribute(getClass());
        }
        for (FieldAttribute fieldAttribute : ((Map) fieldCache.get(getClass())).values()) {
            jSONObject.put(fieldAttribute.getAliaName(), fieldAttribute.get(this));
        }
        return jSONObject.toJSONString();
    }

    public final void setContent(String str) {
        Map map = (Map) JSONObject.parseObject(str, Map.class);
        if (!fieldCache.contains(getClass())) {
            computeFieldAttribute(getClass());
        }
        for (FieldAttribute fieldAttribute : ((Map) fieldCache.get(getClass())).values()) {
            Object obj = map.get(fieldAttribute.getAliaName());
            if ((obj instanceof Map) && fieldAttribute.getFieldType() != null) {
                obj = JSON.parseObject(JSON.toJSONString(obj), fieldAttribute.getFieldType());
            }
            fieldAttribute.set(this, obj);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:80:0x01c2  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected static void computeFieldAttribute(java.lang.Class r19) {
        /*
            r0 = r19
            java.util.HashMap r1 = new java.util.HashMap
            r1.<init>()
            java.util.LinkedList r2 = new java.util.LinkedList
            r2.<init>()
            r3 = r0
        L_0x000d:
            if (r3 == 0) goto L_0x0023
            java.lang.Class<java.lang.Object> r4 = java.lang.Object.class
            if (r3 == r4) goto L_0x0023
            java.lang.reflect.Method[] r4 = r3.getDeclaredMethods()
            android.util.Pair r4 = android.util.Pair.create(r4, r3)
            r2.add(r4)
            java.lang.Class r3 = r3.getSuperclass()
            goto L_0x000d
        L_0x0023:
            java.util.Collections.reverse(r2)
            java.util.Iterator r2 = r2.iterator()
        L_0x002a:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L_0x0224
            java.lang.Object r3 = r2.next()
            android.util.Pair r3 = (android.util.Pair) r3
            java.lang.Object r4 = r3.second
            java.lang.Class r4 = (java.lang.Class) r4
            java.lang.Object r3 = r3.first
            java.lang.reflect.Method[] r3 = (java.lang.reflect.Method[]) r3
            int r5 = r3.length
            r7 = 0
        L_0x0040:
            if (r7 >= r5) goto L_0x002a
            r14 = r3[r7]
            java.lang.String r8 = r14.getName()
            int r9 = r8.length()
            r10 = 3
            if (r9 >= r10) goto L_0x0053
        L_0x004f:
            r17 = 0
            goto L_0x0220
        L_0x0053:
            int r9 = r14.getModifiers()
            boolean r9 = java.lang.reflect.Modifier.isStatic(r9)
            if (r9 == 0) goto L_0x005e
            goto L_0x004f
        L_0x005e:
            java.lang.Class r9 = r14.getReturnType()
            boolean r9 = r9.equals(r0)
            if (r9 == 0) goto L_0x0069
            goto L_0x004f
        L_0x0069:
            java.lang.Class[] r9 = r14.getParameterTypes()
            int r9 = r9.length
            r15 = 1
            if (r9 == r15) goto L_0x0079
            java.lang.Class[] r9 = r14.getParameterTypes()
            int r9 = r9.length
            if (r9 == 0) goto L_0x0079
            goto L_0x004f
        L_0x0079:
            java.lang.String r9 = "set"
            boolean r11 = r8.startsWith(r9)
            java.lang.String r12 = "get"
            java.lang.String r13 = "is"
            if (r11 != 0) goto L_0x00ae
            java.lang.String r11 = r14.getName()
            java.lang.String r15 = "getMetaClass"
            boolean r11 = r11.equals(r15)
            if (r11 == 0) goto L_0x00ae
            java.lang.Class r11 = r14.getReturnType()
            java.lang.String r11 = r11.getName()
            java.lang.String r15 = "groovy.lang.MetaClass"
            boolean r11 = r11.equals(r15)
            if (r11 == 0) goto L_0x00ae
            boolean r11 = r8.startsWith(r12)
            if (r11 != 0) goto L_0x00ae
            boolean r11 = r8.startsWith(r13)
            if (r11 != 0) goto L_0x00ae
            goto L_0x004f
        L_0x00ae:
            boolean r9 = r8.startsWith(r9)
            boolean r11 = r8.startsWith(r12)
            boolean r12 = r8.startsWith(r13)
            r15 = 4
            if (r9 == 0) goto L_0x00f8
            char r6 = r8.charAt(r10)
            boolean r18 = java.lang.Character.isUpperCase(r6)
            if (r18 == 0) goto L_0x00e5
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            char r10 = r8.charAt(r10)
            char r10 = java.lang.Character.toLowerCase(r10)
            r6.append(r10)
            java.lang.String r8 = r8.substring(r15)
            r6.append(r8)
            java.lang.String r6 = r6.toString()
        L_0x00e2:
            r15 = r6
            goto L_0x018c
        L_0x00e5:
            r10 = 95
            if (r6 != r10) goto L_0x00ee
            java.lang.String r6 = r8.substring(r15)
            goto L_0x00e2
        L_0x00ee:
            r10 = 102(0x66, float:1.43E-43)
            if (r6 != r10) goto L_0x004f
            r6 = 3
            java.lang.String r6 = r8.substring(r6)
            goto L_0x00e2
        L_0x00f8:
            if (r11 == 0) goto L_0x0146
            int r6 = r8.length()
            if (r6 >= r15) goto L_0x0102
            goto L_0x004f
        L_0x0102:
            java.lang.String r6 = "getClass"
            boolean r6 = r8.equals(r6)
            if (r6 == 0) goto L_0x010c
            goto L_0x004f
        L_0x010c:
            r6 = 3
            char r10 = r8.charAt(r6)
            boolean r18 = java.lang.Character.isUpperCase(r10)
            if (r18 == 0) goto L_0x0133
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            char r6 = r8.charAt(r6)
            char r6 = java.lang.Character.toLowerCase(r6)
            r10.append(r6)
            java.lang.String r6 = r8.substring(r15)
            r10.append(r6)
            java.lang.String r6 = r10.toString()
            goto L_0x00e2
        L_0x0133:
            r6 = 95
            if (r10 != r6) goto L_0x013c
            java.lang.String r6 = r8.substring(r15)
            goto L_0x00e2
        L_0x013c:
            r6 = 102(0x66, float:1.43E-43)
            if (r10 != r6) goto L_0x004f
            r6 = 3
            java.lang.String r6 = r8.substring(r6)
            goto L_0x00e2
        L_0x0146:
            r6 = 3
            if (r12 == 0) goto L_0x018b
            int r10 = r8.length()
            if (r10 >= r6) goto L_0x0151
            goto L_0x004f
        L_0x0151:
            r10 = 2
            char r15 = r8.charAt(r10)
            boolean r18 = java.lang.Character.isUpperCase(r15)
            if (r18 == 0) goto L_0x0178
            java.lang.StringBuilder r15 = new java.lang.StringBuilder
            r15.<init>()
            char r10 = r8.charAt(r10)
            char r10 = java.lang.Character.toLowerCase(r10)
            r15.append(r10)
            java.lang.String r6 = r8.substring(r6)
            r15.append(r6)
            java.lang.String r15 = r15.toString()
            goto L_0x018c
        L_0x0178:
            r10 = 95
            if (r15 != r10) goto L_0x0181
            java.lang.String r15 = r8.substring(r6)
            goto L_0x018c
        L_0x0181:
            r6 = 102(0x66, float:1.43E-43)
            if (r15 != r6) goto L_0x004f
            r6 = 2
            java.lang.String r15 = r8.substring(r6)
            goto L_0x018c
        L_0x018b:
            r15 = 0
        L_0x018c:
            java.lang.reflect.Field r6 = getField(r4, r15)
            if (r6 != 0) goto L_0x01be
            if (r12 != 0) goto L_0x0196
            if (r9 == 0) goto L_0x01be
        L_0x0196:
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            r6.append(r13)
            r13 = 0
            char r8 = r15.charAt(r13)
            char r8 = java.lang.Character.toUpperCase(r8)
            r6.append(r8)
            r8 = 1
            java.lang.String r10 = r15.substring(r8)
            r6.append(r10)
            java.lang.String r6 = r6.toString()
            java.lang.reflect.Field r8 = getField(r4, r6)
            if (r8 == 0) goto L_0x01c0
            r15 = r6
            goto L_0x01c0
        L_0x01be:
            r13 = 0
            r8 = r6
        L_0x01c0:
            if (r8 == 0) goto L_0x004f
            java.lang.Class<com.avos.avoscloud.im.v2.AVIMMessageField> r6 = com.avos.avoscloud.im.v2.AVIMMessageField.class
            java.lang.annotation.Annotation r6 = r8.getAnnotation(r6)
            com.avos.avoscloud.im.v2.AVIMMessageField r6 = (com.avos.avoscloud.im.v2.AVIMMessageField) r6
            if (r6 == 0) goto L_0x004f
            java.lang.String r10 = r6.name()
            boolean r6 = r1.containsKey(r15)
            if (r6 == 0) goto L_0x01dd
            java.lang.Object r6 = r1.get(r15)
            com.avos.avospush.util.FieldAttribute r6 = (com.avos.avospush.util.FieldAttribute) r6
            goto L_0x01de
        L_0x01dd:
            r6 = 0
        L_0x01de:
            if (r9 == 0) goto L_0x01fd
            if (r6 != 0) goto L_0x01f7
            com.avos.avospush.util.FieldAttribute r6 = new com.avos.avospush.util.FieldAttribute
            r11 = 0
            java.lang.Class r16 = r8.getType()
            r8 = r6
            r9 = r15
            r12 = r14
            r17 = 0
            r13 = r16
            r8.<init>(r9, r10, r11, r12, r13)
            r1.put(r15, r6)
            goto L_0x0204
        L_0x01f7:
            r17 = 0
            r6.setSetterMethod(r14)
            goto L_0x0204
        L_0x01fd:
            r17 = 0
            if (r12 != 0) goto L_0x0206
            if (r11 == 0) goto L_0x0204
            goto L_0x0206
        L_0x0204:
            r6 = 1
            goto L_0x021d
        L_0x0206:
            if (r6 != 0) goto L_0x0219
            com.avos.avospush.util.FieldAttribute r6 = new com.avos.avospush.util.FieldAttribute
            r12 = 0
            java.lang.Class r13 = r8.getType()
            r8 = r6
            r9 = r15
            r11 = r14
            r8.<init>(r9, r10, r11, r12, r13)
            r1.put(r15, r6)
            goto L_0x0204
        L_0x0219:
            r6.setGetterMethod(r14)
            goto L_0x0204
        L_0x021d:
            r14.setAccessible(r6)
        L_0x0220:
            int r7 = r7 + 1
            goto L_0x0040
        L_0x0224:
            java.util.concurrent.ConcurrentHashMap<java.lang.Class<? extends com.avos.avoscloud.im.v2.AVIMTypedMessage>, java.util.Map<java.lang.String, com.avos.avospush.util.FieldAttribute>> r2 = fieldCache
            r2.put(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.avos.avoscloud.im.v2.AVIMTypedMessage.computeFieldAttribute(java.lang.Class):void");
    }

    private static Field getField(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Exception unused) {
            return null;
        }
    }

    static AVIMMessage parseMessage(String str, JSONObject jSONObject) {
        if (jSONObject != null) {
            String str2 = KEY_MESSAGE_ID;
            if (jSONObject.containsKey(str2)) {
                try {
                    String string = jSONObject.getString(KEY_MESSAGE_FROM);
                    String string2 = jSONObject.getString("msg");
                    long longValue = jSONObject.getLong(KEY_MESSAGE_TIMESTAMP).longValue();
                    String string3 = jSONObject.getString(str2);
                    AVIMMessage aVIMMessage = new AVIMMessage(str, string, longValue, -1);
                    aVIMMessage.setMessageId(string3);
                    aVIMMessage.setContent(string2);
                    return AVIMMessageManagerHelper.parseTypedMessage(aVIMMessage);
                } catch (Exception unused) {
                }
            }
        }
        return null;
    }

    public static AVIMMessage getMessage(String str, String str2, String str3, String str4, long j, long j2, long j3) {
        AVIMMessage aVIMMessage = new AVIMMessage(str, str4, j, j2, j3);
        String str5 = str2;
        aVIMMessage.setMessageId(str2);
        String str6 = str3;
        aVIMMessage.setContent(str3);
        return AVIMMessageManagerHelper.parseTypedMessage(aVIMMessage);
    }
}
