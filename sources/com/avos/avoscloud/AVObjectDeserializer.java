package com.avos.avoscloud;

import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.avos.avoscloud.ops.AVOp;
import com.avos.avoscloud.ops.AddRelationOp;
import com.avos.avoscloud.ops.CollectionOp;
import com.avos.avoscloud.ops.CompoundOp;
import com.avos.avoscloud.ops.RemoveRelationOp;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

class AVObjectDeserializer implements ObjectDeserializer {
    static final String LOG_TAG = "AVObjectDeserializer";
    public static final AVObjectDeserializer instance = new AVObjectDeserializer();

    public int getFastMatchToken() {
        return 12;
    }

    AVObjectDeserializer() {
    }

    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0090, code lost:
        r2 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:52:0x0151, code lost:
        r12 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x0153, code lost:
        r12 = e;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Incorrect type for immutable var: ssa=java.lang.reflect.Type, code=T, for r13v0, types: [T, java.lang.reflect.Type] */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x0151 A[ExcHandler: IllegalAccessException (e java.lang.IllegalAccessException), Splitter:B:6:0x0031] */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x0153 A[ExcHandler: InstantiationException (e java.lang.InstantiationException), Splitter:B:6:0x0031] */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x0160 A[Catch:{ InstantiationException -> 0x0175, IllegalAccessException -> 0x0166, Exception -> 0x0157, all -> 0x0155, all -> 0x0183 }] */
    /* JADX WARNING: Removed duplicated region for block: B:67:0x016f A[Catch:{ InstantiationException -> 0x0175, IllegalAccessException -> 0x0166, Exception -> 0x0157, all -> 0x0155, all -> 0x0183 }] */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x017e A[Catch:{ InstantiationException -> 0x0175, IllegalAccessException -> 0x0166, Exception -> 0x0157, all -> 0x0155, all -> 0x0183 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser r12, T r13, java.lang.Object r14) {
        /*
            r11 = this;
            java.lang.String r14 = "source"
            java.lang.String r0 = "messageId"
            java.lang.String r1 = "inboxType"
            java.lang.String r2 = "dataMap"
            java.lang.String r3 = "serverData"
            java.lang.String r4 = "operationQueue"
            java.lang.String r5 = "keyValues"
            java.lang.String r6 = "relationClassName"
            java.lang.String r7 = ""
            java.lang.Class<com.avos.avoscloud.AVObject> r8 = com.avos.avoscloud.AVObject.class
            r9 = r13
            java.lang.Class r9 = (java.lang.Class) r9
            boolean r8 = r8.isAssignableFrom(r9)
            if (r8 == 0) goto L_0x0184
            java.util.HashMap r8 = new java.util.HashMap
            r8.<init>()
            r12.parseObject(r8)
            r12 = 0
            r9 = r13
            java.lang.Class r9 = (java.lang.Class) r9     // Catch:{ InstantiationException -> 0x0175, IllegalAccessException -> 0x0166, Exception -> 0x0157, all -> 0x0155 }
            java.lang.Object r9 = r9.newInstance()     // Catch:{ InstantiationException -> 0x0175, IllegalAccessException -> 0x0166, Exception -> 0x0157, all -> 0x0155 }
            com.avos.avoscloud.AVObject r9 = (com.avos.avoscloud.AVObject) r9     // Catch:{ InstantiationException -> 0x0175, IllegalAccessException -> 0x0166, Exception -> 0x0157, all -> 0x0155 }
            java.lang.String r10 = "className"
            java.lang.Object r10 = r8.get(r10)     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            java.lang.String r10 = (java.lang.String) r10     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            r9.setClassName(r10)     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            java.lang.String r10 = "objectId"
            java.lang.Object r10 = r8.get(r10)     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            java.lang.String r10 = (java.lang.String) r10     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            r9.setObjectId(r10)     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            java.lang.String r10 = "createdAt"
            java.lang.Object r10 = r8.get(r10)     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            java.lang.String r10 = (java.lang.String) r10     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            r9.setCreatedAt(r10)     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            java.lang.String r10 = "updatedAt"
            java.lang.Object r10 = r8.get(r10)     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            java.lang.String r10 = (java.lang.String) r10     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            r9.setUpdatedAt(r10)     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            boolean r10 = r8.containsKey(r5)     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            if (r10 == 0) goto L_0x00d7
            java.lang.Object r13 = r8.get(r5)     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            java.util.Map r13 = (java.util.Map) r13     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            java.util.Set r13 = r13.entrySet()     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            java.util.Iterator r13 = r13.iterator()     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
        L_0x006f:
            boolean r14 = r13.hasNext()     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            if (r14 == 0) goto L_0x014b
            java.lang.Object r14 = r13.next()     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            java.util.Map$Entry r14 = (java.util.Map.Entry) r14     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            java.lang.Object r0 = r14.getValue()     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            com.alibaba.fastjson.JSONObject r0 = (com.alibaba.fastjson.JSONObject) r0     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            java.lang.String r1 = "value"
            java.lang.Object r1 = r0.get(r1)     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            java.lang.String r2 = "op"
            java.lang.Object r2 = r0.get(r2)     // Catch:{ Exception -> 0x0090, InstantiationException -> 0x0153, IllegalAccessException -> 0x0151 }
            com.avos.avoscloud.ops.AVOp r2 = (com.avos.avoscloud.ops.AVOp) r2     // Catch:{ Exception -> 0x0090, InstantiationException -> 0x0153, IllegalAccessException -> 0x0151 }
            goto L_0x0091
        L_0x0090:
            r2 = r12
        L_0x0091:
            if (r2 == 0) goto L_0x00a5
            boolean r3 = r2 instanceof com.avos.avoscloud.ops.NullOP     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            if (r3 != 0) goto L_0x00a5
            com.avos.avoscloud.ops.AVOp r0 = r11.updateOp(r2, r1)     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            java.util.Map<java.lang.String, com.avos.avoscloud.ops.AVOp> r1 = r9.operationQueue     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            java.lang.Object r14 = r14.getKey()     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            r1.put(r14, r0)     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            goto L_0x006f
        L_0x00a5:
            boolean r2 = r0.containsKey(r6)     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            if (r2 != 0) goto L_0x00b5
            java.util.Map<java.lang.String, java.lang.Object> r0 = r9.serverData     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            java.lang.Object r14 = r14.getKey()     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            r0.put(r14, r1)     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            goto L_0x006f
        L_0x00b5:
            boolean r1 = r0.containsKey(r6)     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            if (r1 == 0) goto L_0x006f
            com.avos.avoscloud.AVRelation r1 = new com.avos.avoscloud.AVRelation     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            java.lang.Object r2 = r14.getKey()     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            java.lang.String r2 = (java.lang.String) r2     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            r1.<init>(r9, r2)     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            java.lang.String r0 = r0.getString(r6)     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            r1.setTargetClass(r0)     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            java.util.Map<java.lang.String, java.lang.Object> r0 = r9.serverData     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            java.lang.Object r14 = r14.getKey()     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            r0.put(r14, r1)     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            goto L_0x006f
        L_0x00d7:
            boolean r12 = r8.containsKey(r4)     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            if (r12 == 0) goto L_0x00e8
            java.util.Map<java.lang.String, com.avos.avoscloud.ops.AVOp> r12 = r9.operationQueue     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            java.lang.Object r4 = r8.get(r4)     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            java.util.Map r4 = (java.util.Map) r4     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            r12.putAll(r4)     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
        L_0x00e8:
            boolean r12 = r8.containsKey(r3)     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            if (r12 == 0) goto L_0x00f9
            java.util.Map<java.lang.String, java.lang.Object> r12 = r9.serverData     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            java.lang.Object r3 = r8.get(r3)     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            java.util.Map r3 = (java.util.Map) r3     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            r12.putAll(r3)     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
        L_0x00f9:
            java.lang.Class<com.avos.avoscloud.AVStatus> r12 = com.avos.avoscloud.AVStatus.class
            java.lang.Class r13 = (java.lang.Class) r13     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            boolean r12 = r12.isAssignableFrom(r13)     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            if (r12 == 0) goto L_0x014b
            java.lang.Class<com.avos.avoscloud.AVStatus> r12 = com.avos.avoscloud.AVStatus.class
            com.avos.avoscloud.AVObject r12 = com.avos.avoscloud.AVObject.cast(r9, r12)     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            com.avos.avoscloud.AVStatus r12 = (com.avos.avoscloud.AVStatus) r12     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            boolean r13 = r8.containsKey(r2)     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            if (r13 == 0) goto L_0x011a
            java.lang.Object r13 = r8.get(r2)     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            java.util.Map r13 = (java.util.Map) r13     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            r12.setData(r13)     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
        L_0x011a:
            boolean r13 = r8.containsKey(r1)     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            if (r13 == 0) goto L_0x0129
            java.lang.Object r13 = r8.get(r1)     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            java.lang.String r13 = (java.lang.String) r13     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            r12.setInboxType(r13)     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
        L_0x0129:
            boolean r13 = r8.containsKey(r0)     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            if (r13 == 0) goto L_0x013c
            java.lang.Object r13 = r8.get(r0)     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            java.lang.Long r13 = (java.lang.Long) r13     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            long r0 = r13.longValue()     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            r12.setMessageId(r0)     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
        L_0x013c:
            boolean r13 = r8.containsKey(r14)     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            if (r13 == 0) goto L_0x014b
            java.lang.Object r13 = r8.get(r14)     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            com.avos.avoscloud.AVObject r13 = (com.avos.avoscloud.AVObject) r13     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            r12.setSource(r13)     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
        L_0x014b:
            r9.rebuildInstanceData()     // Catch:{ InstantiationException -> 0x0153, IllegalAccessException -> 0x0151, Exception -> 0x014f }
            return r9
        L_0x014f:
            r12 = move-exception
            goto L_0x015a
        L_0x0151:
            r12 = move-exception
            goto L_0x0169
        L_0x0153:
            r12 = move-exception
            goto L_0x0178
        L_0x0155:
            r9 = r12
            goto L_0x0183
        L_0x0157:
            r13 = move-exception
            r9 = r12
            r12 = r13
        L_0x015a:
            boolean r13 = com.avos.avoscloud.AVOSCloud.isDebugLogEnabled()     // Catch:{ all -> 0x0183 }
            if (r13 == 0) goto L_0x0165
            java.lang.String r13 = LOG_TAG     // Catch:{ all -> 0x0183 }
            com.avos.avoscloud.LogUtil.log.e(r13, r7, r12)     // Catch:{ all -> 0x0183 }
        L_0x0165:
            return r9
        L_0x0166:
            r13 = move-exception
            r9 = r12
            r12 = r13
        L_0x0169:
            boolean r13 = com.avos.avoscloud.AVOSCloud.isDebugLogEnabled()     // Catch:{ all -> 0x0183 }
            if (r13 == 0) goto L_0x0174
            java.lang.String r13 = LOG_TAG     // Catch:{ all -> 0x0183 }
            com.avos.avoscloud.LogUtil.log.e(r13, r7, r12)     // Catch:{ all -> 0x0183 }
        L_0x0174:
            return r9
        L_0x0175:
            r13 = move-exception
            r9 = r12
            r12 = r13
        L_0x0178:
            boolean r13 = com.avos.avoscloud.AVOSCloud.isDebugLogEnabled()     // Catch:{ all -> 0x0183 }
            if (r13 == 0) goto L_0x0183
            java.lang.String r13 = LOG_TAG     // Catch:{ all -> 0x0183 }
            com.avos.avoscloud.LogUtil.log.e(r13, r7, r12)     // Catch:{ all -> 0x0183 }
        L_0x0183:
            return r9
        L_0x0184:
            com.alibaba.fastjson.JSONObject r12 = r12.parseObject()
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.avos.avoscloud.AVObjectDeserializer.deserialze(com.alibaba.fastjson.parser.DefaultJSONParser, java.lang.reflect.Type, java.lang.Object):java.lang.Object");
    }

    public AVOp updateOp(AVOp aVOp, Object obj) {
        if ((aVOp instanceof AddRelationOp) || (aVOp instanceof RemoveRelationOp)) {
            try {
                Set<JSONObject> set = (Set) aVOp.getValues();
                HashSet hashSet = new HashSet();
                for (JSONObject jSONObject : set) {
                    hashSet.add((AVObject) JSONObject.parseObject(jSONObject.toString(), AVObject.class));
                }
                ((CollectionOp) aVOp).setValues(hashSet);
            } catch (Exception unused) {
            }
        }
        if (aVOp instanceof CompoundOp) {
            for (AVOp updateOp : (List) aVOp.getValues()) {
                updateOp(updateOp, null);
            }
        }
        return aVOp;
    }
}
