package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.PropertyNamingStrategy;
import com.alibaba.fastjson.util.TypeUtils;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class JavaBeanSerializer extends SerializeFilterable implements ObjectSerializer {
    protected SerializeBeanInfo beanInfo;
    protected final FieldSerializer[] getters;
    private volatile transient long[] hashArray;
    private volatile transient short[] hashArrayMapping;
    protected final FieldSerializer[] sortedGetters;

    public JavaBeanSerializer(Class<?> cls) {
        this(cls, null);
    }

    public JavaBeanSerializer(Class<?> cls, String... strArr) {
        this(cls, createAliasMap(strArr));
    }

    static Map<String, String> createAliasMap(String... strArr) {
        HashMap hashMap = new HashMap();
        for (String str : strArr) {
            hashMap.put(str, str);
        }
        return hashMap;
    }

    public JavaBeanSerializer(Class<?> cls, Map<String, String> map) {
        this(TypeUtils.buildBeanInfo(cls, map, null));
    }

    public JavaBeanSerializer(SerializeBeanInfo serializeBeanInfo) {
        this.beanInfo = serializeBeanInfo;
        this.sortedGetters = new FieldSerializer[serializeBeanInfo.sortedFields.length];
        int i = 0;
        int i2 = 0;
        while (true) {
            FieldSerializer[] fieldSerializerArr = this.sortedGetters;
            if (i2 >= fieldSerializerArr.length) {
                break;
            }
            fieldSerializerArr[i2] = new FieldSerializer(serializeBeanInfo.beanType, serializeBeanInfo.sortedFields[i2]);
            i2++;
        }
        if (serializeBeanInfo.fields == serializeBeanInfo.sortedFields) {
            this.getters = this.sortedGetters;
            return;
        }
        this.getters = new FieldSerializer[serializeBeanInfo.fields.length];
        while (true) {
            FieldSerializer[] fieldSerializerArr2 = this.getters;
            if (i < fieldSerializerArr2.length) {
                fieldSerializerArr2[i] = getFieldSerializer(serializeBeanInfo.fields[i].name);
                i++;
            } else {
                return;
            }
        }
    }

    public void writeDirectNonContext(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws IOException {
        write(jSONSerializer, obj, obj2, type, i);
    }

    public void writeAsArray(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws IOException {
        write(jSONSerializer, obj, obj2, type, i);
    }

    public void writeAsArrayNonContext(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws IOException {
        write(jSONSerializer, obj, obj2, type, i);
    }

    public void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws IOException {
        write(jSONSerializer, obj, obj2, type, i, false);
    }

    public void writeNoneASM(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws IOException {
        write(jSONSerializer, obj, obj2, type, i, false);
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:278:0x037e, code lost:
        throw r3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:281:0x039a, code lost:
        r0 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:282:0x039b, code lost:
        r1 = r28;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:299:0x03d5, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:300:0x03d6, code lost:
        r2 = r20;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:303:0x03dd, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:304:0x03de, code lost:
        r2 = r14;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:305:0x03e0, code lost:
        r0 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:306:0x03e1, code lost:
        r1 = r9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:70:0x00e8, code lost:
        if (r10.fieldTransient != false) goto L_0x037f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:87:0x011a, code lost:
        if (r8.isWriteClassName(r11, r9) != false) goto L_0x037f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:90:0x0123, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:91:0x0124, code lost:
        r3 = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:94:0x012b, code lost:
        if (r12.isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.IgnoreErrorGetter) != false) goto L_0x012d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:95:0x012d, code lost:
        r0 = null;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:264:0x0356 A[Catch:{ InvocationTargetException -> 0x0123, Exception -> 0x039a, all -> 0x03d5 }] */
    /* JADX WARNING: Removed duplicated region for block: B:277:0x037b A[Catch:{ InvocationTargetException -> 0x0123, Exception -> 0x039a, all -> 0x03d5 }] */
    /* JADX WARNING: Removed duplicated region for block: B:287:0x03ad  */
    /* JADX WARNING: Removed duplicated region for block: B:288:0x03b0  */
    /* JADX WARNING: Removed duplicated region for block: B:296:0x03cb A[Catch:{ Exception -> 0x03d9, all -> 0x03d5 }] */
    /* JADX WARNING: Removed duplicated region for block: B:299:0x03d5 A[ExcHandler: all (th java.lang.Throwable), PHI: r20 
      PHI: (r20v2 com.alibaba.fastjson.serializer.SerialContext) = (r20v0 com.alibaba.fastjson.serializer.SerialContext), (r20v3 com.alibaba.fastjson.serializer.SerialContext), (r20v3 com.alibaba.fastjson.serializer.SerialContext), (r20v3 com.alibaba.fastjson.serializer.SerialContext), (r20v3 com.alibaba.fastjson.serializer.SerialContext), (r20v3 com.alibaba.fastjson.serializer.SerialContext), (r20v3 com.alibaba.fastjson.serializer.SerialContext), (r20v3 com.alibaba.fastjson.serializer.SerialContext), (r20v3 com.alibaba.fastjson.serializer.SerialContext), (r20v3 com.alibaba.fastjson.serializer.SerialContext) binds: [B:289:0x03b3, B:64:0x00dc, B:65:?, B:75:0x00f6, B:107:0x014c, B:102:0x013c, B:92:0x0125, B:83:0x010c, B:68:0x00e6, B:69:?] A[DONT_GENERATE, DONT_INLINE], Splitter:B:75:0x00f6] */
    /* JADX WARNING: Removed duplicated region for block: B:303:0x03dd A[ExcHandler: all (th java.lang.Throwable), PHI: r14 
      PHI: (r14v2 com.alibaba.fastjson.serializer.SerialContext) = (r14v3 com.alibaba.fastjson.serializer.SerialContext), (r14v3 com.alibaba.fastjson.serializer.SerialContext), (r14v0 com.alibaba.fastjson.serializer.SerialContext) binds: [B:61:0x00d2, B:62:?, B:22:0x0059] A[DONT_GENERATE, DONT_INLINE], Splitter:B:22:0x0059] */
    /* JADX WARNING: Removed duplicated region for block: B:310:0x03e7 A[SYNTHETIC, Splitter:B:310:0x03e7] */
    /* JADX WARNING: Removed duplicated region for block: B:314:0x0407 A[Catch:{ all -> 0x043f }] */
    /* JADX WARNING: Removed duplicated region for block: B:317:0x0421 A[Catch:{ all -> 0x043f }] */
    /* JADX WARNING: Removed duplicated region for block: B:328:0x0387 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00a6 A[Catch:{ Exception -> 0x03e0, all -> 0x03dd }] */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x00a9 A[Catch:{ Exception -> 0x03e0, all -> 0x03dd }] */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x00bd A[Catch:{ Exception -> 0x03e0, all -> 0x03dd }] */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x00bf A[Catch:{ Exception -> 0x03e0, all -> 0x03dd }] */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x00d2 A[SYNTHETIC, Splitter:B:61:0x00d2] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void write(com.alibaba.fastjson.serializer.JSONSerializer r27, java.lang.Object r28, java.lang.Object r29, java.lang.reflect.Type r30, int r31, boolean r32) throws java.io.IOException {
        /*
            r26 = this;
            r7 = r26
            r8 = r27
            r9 = r28
            r10 = r29
            r11 = r30
            r0 = r31
            com.alibaba.fastjson.serializer.SerializeWriter r12 = r8.out
            if (r9 != 0) goto L_0x0014
            r12.writeNull()
            return
        L_0x0014:
            boolean r1 = r7.writeReference(r8, r9, r0)
            if (r1 == 0) goto L_0x001b
            return
        L_0x001b:
            boolean r1 = r12.sortField
            if (r1 == 0) goto L_0x0022
            com.alibaba.fastjson.serializer.FieldSerializer[] r1 = r7.sortedGetters
            goto L_0x0024
        L_0x0022:
            com.alibaba.fastjson.serializer.FieldSerializer[] r1 = r7.getters
        L_0x0024:
            r13 = r1
            com.alibaba.fastjson.serializer.SerialContext r14 = r8.context
            com.alibaba.fastjson.serializer.SerializeBeanInfo r1 = r7.beanInfo
            java.lang.Class<?> r1 = r1.beanType
            boolean r1 = r1.isEnum()
            if (r1 != 0) goto L_0x0041
            com.alibaba.fastjson.serializer.SerializeBeanInfo r1 = r7.beanInfo
            int r5 = r1.features
            r1 = r27
            r2 = r14
            r3 = r28
            r4 = r29
            r6 = r31
            r1.setContext(r2, r3, r4, r5, r6)
        L_0x0041:
            boolean r15 = r7.isWriteAsArray(r8, r0)
            if (r15 == 0) goto L_0x004a
            r1 = 91
            goto L_0x004c
        L_0x004a:
            r1 = 123(0x7b, float:1.72E-43)
        L_0x004c:
            if (r15 == 0) goto L_0x0053
            r2 = 93
            r6 = 93
            goto L_0x0057
        L_0x0053:
            r2 = 125(0x7d, float:1.75E-43)
            r6 = 125(0x7d, float:1.75E-43)
        L_0x0057:
            if (r32 != 0) goto L_0x005c
            r12.append(r1)     // Catch:{ Exception -> 0x03e0, all -> 0x03dd }
        L_0x005c:
            int r1 = r13.length     // Catch:{ Exception -> 0x03e0, all -> 0x03dd }
            if (r1 <= 0) goto L_0x006d
            com.alibaba.fastjson.serializer.SerializerFeature r1 = com.alibaba.fastjson.serializer.SerializerFeature.PrettyFormat     // Catch:{ Exception -> 0x03e0, all -> 0x03dd }
            boolean r1 = r12.isEnabled(r1)     // Catch:{ Exception -> 0x03e0, all -> 0x03dd }
            if (r1 == 0) goto L_0x006d
            r27.incrementIndent()     // Catch:{ Exception -> 0x03e0, all -> 0x03dd }
            r27.println()     // Catch:{ Exception -> 0x03e0, all -> 0x03dd }
        L_0x006d:
            com.alibaba.fastjson.serializer.SerializeBeanInfo r1 = r7.beanInfo     // Catch:{ Exception -> 0x03e0, all -> 0x03dd }
            int r1 = r1.features     // Catch:{ Exception -> 0x03e0, all -> 0x03dd }
            com.alibaba.fastjson.serializer.SerializerFeature r2 = com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName     // Catch:{ Exception -> 0x03e0, all -> 0x03dd }
            int r2 = r2.mask     // Catch:{ Exception -> 0x03e0, all -> 0x03dd }
            r1 = r1 & r2
            r5 = 1
            if (r1 != 0) goto L_0x0086
            com.alibaba.fastjson.serializer.SerializerFeature r1 = com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName     // Catch:{ Exception -> 0x03e0, all -> 0x03dd }
            int r1 = r1.mask     // Catch:{ Exception -> 0x03e0, all -> 0x03dd }
            r0 = r0 & r1
            if (r0 != 0) goto L_0x0086
            boolean r0 = r8.isWriteClassName(r11, r9)     // Catch:{ Exception -> 0x03e0, all -> 0x03dd }
            if (r0 == 0) goto L_0x00a1
        L_0x0086:
            java.lang.Class r0 = r28.getClass()     // Catch:{ Exception -> 0x03e0, all -> 0x03dd }
            if (r0 == r11) goto L_0x0095
            boolean r1 = r11 instanceof java.lang.reflect.WildcardType     // Catch:{ Exception -> 0x03e0, all -> 0x03dd }
            if (r1 == 0) goto L_0x0095
            java.lang.Class r1 = com.alibaba.fastjson.util.TypeUtils.getClass(r30)     // Catch:{ Exception -> 0x03e0, all -> 0x03dd }
            goto L_0x0096
        L_0x0095:
            r1 = r11
        L_0x0096:
            if (r0 == r1) goto L_0x00a1
            com.alibaba.fastjson.serializer.SerializeBeanInfo r0 = r7.beanInfo     // Catch:{ Exception -> 0x03e0, all -> 0x03dd }
            java.lang.String r0 = r0.typeKey     // Catch:{ Exception -> 0x03e0, all -> 0x03dd }
            r7.writeClassName(r8, r0, r9)     // Catch:{ Exception -> 0x03e0, all -> 0x03dd }
            r0 = 1
            goto L_0x00a2
        L_0x00a1:
            r0 = 0
        L_0x00a2:
            r3 = 44
            if (r0 == 0) goto L_0x00a9
            r0 = 44
            goto L_0x00aa
        L_0x00a9:
            r0 = 0
        L_0x00aa:
            boolean r1 = r12.quoteFieldNames     // Catch:{ Exception -> 0x03e0, all -> 0x03dd }
            if (r1 == 0) goto L_0x00b5
            boolean r1 = r12.useSingleQuotes     // Catch:{ Exception -> 0x03e0, all -> 0x03dd }
            if (r1 != 0) goto L_0x00b5
            r16 = 1
            goto L_0x00b7
        L_0x00b5:
            r16 = 0
        L_0x00b7:
            char r0 = r7.writeBefore(r8, r9, r0)     // Catch:{ Exception -> 0x03e0, all -> 0x03dd }
            if (r0 != r3) goto L_0x00bf
            r0 = 1
            goto L_0x00c0
        L_0x00bf:
            r0 = 0
        L_0x00c0:
            com.alibaba.fastjson.serializer.SerializerFeature r1 = com.alibaba.fastjson.serializer.SerializerFeature.SkipTransientField     // Catch:{ Exception -> 0x03e0, all -> 0x03dd }
            boolean r17 = r12.isEnabled(r1)     // Catch:{ Exception -> 0x03e0, all -> 0x03dd }
            com.alibaba.fastjson.serializer.SerializerFeature r1 = com.alibaba.fastjson.serializer.SerializerFeature.IgnoreNonFieldGetter     // Catch:{ Exception -> 0x03e0, all -> 0x03dd }
            boolean r18 = r12.isEnabled(r1)     // Catch:{ Exception -> 0x03e0, all -> 0x03dd }
            r19 = r0
            r2 = 0
        L_0x00cf:
            int r0 = r13.length     // Catch:{ Exception -> 0x03e0, all -> 0x03dd }
            if (r2 >= r0) goto L_0x03a2
            r1 = r13[r2]     // Catch:{ Exception -> 0x039e, all -> 0x03dd }
            com.alibaba.fastjson.util.FieldInfo r0 = r1.fieldInfo     // Catch:{ Exception -> 0x039e, all -> 0x03dd }
            java.lang.reflect.Field r0 = r0.field     // Catch:{ Exception -> 0x039e, all -> 0x03dd }
            com.alibaba.fastjson.util.FieldInfo r10 = r1.fieldInfo     // Catch:{ Exception -> 0x039e, all -> 0x03dd }
            r20 = r14
            java.lang.String r14 = r10.name     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            r21 = r13
            java.lang.Class<?> r13 = r10.fieldClass     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r17 == 0) goto L_0x00f0
            if (r0 == 0) goto L_0x00f0
            boolean r3 = r10.fieldTransient     // Catch:{ Exception -> 0x00ec, all -> 0x03d5 }
            if (r3 == 0) goto L_0x00f0
            goto L_0x037f
        L_0x00ec:
            r0 = move-exception
            r1 = r9
            goto L_0x03da
        L_0x00f0:
            if (r18 == 0) goto L_0x00f6
            if (r0 != 0) goto L_0x00f6
            goto L_0x037f
        L_0x00f6:
            boolean r0 = r7.applyName(r8, r9, r14)     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r0 == 0) goto L_0x037f
            java.lang.String r0 = r10.label     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            boolean r0 = r7.applyLabel(r8, r0)     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r0 != 0) goto L_0x0106
            goto L_0x037f
        L_0x0106:
            com.alibaba.fastjson.serializer.SerializeBeanInfo r0 = r7.beanInfo     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            java.lang.String r0 = r0.typeKey     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r0 == 0) goto L_0x011e
            com.alibaba.fastjson.serializer.SerializeBeanInfo r0 = r7.beanInfo     // Catch:{ Exception -> 0x00ec, all -> 0x03d5 }
            java.lang.String r0 = r0.typeKey     // Catch:{ Exception -> 0x00ec, all -> 0x03d5 }
            boolean r0 = r14.equals(r0)     // Catch:{ Exception -> 0x00ec, all -> 0x03d5 }
            if (r0 == 0) goto L_0x011e
            boolean r0 = r8.isWriteClassName(r11, r9)     // Catch:{ Exception -> 0x00ec, all -> 0x03d5 }
            if (r0 == 0) goto L_0x011e
            goto L_0x037f
        L_0x011e:
            java.lang.Object r0 = r1.getPropertyValueDirect(r9)     // Catch:{ InvocationTargetException -> 0x0123 }
            goto L_0x012e
        L_0x0123:
            r0 = move-exception
            r3 = r0
            com.alibaba.fastjson.serializer.SerializerFeature r0 = com.alibaba.fastjson.serializer.SerializerFeature.IgnoreErrorGetter     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            boolean r0 = r12.isEnabled(r0)     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r0 == 0) goto L_0x037e
            r0 = 0
        L_0x012e:
            boolean r3 = r7.apply(r8, r9, r14, r0)     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r3 != 0) goto L_0x0136
            goto L_0x037f
        L_0x0136:
            java.lang.Class<java.lang.String> r3 = java.lang.String.class
            if (r13 != r3) goto L_0x014c
            java.lang.String r3 = "trim"
            java.lang.String r4 = r10.format     // Catch:{ Exception -> 0x00ec, all -> 0x03d5 }
            boolean r3 = r3.equals(r4)     // Catch:{ Exception -> 0x00ec, all -> 0x03d5 }
            if (r3 == 0) goto L_0x014c
            if (r0 == 0) goto L_0x014c
            java.lang.String r0 = (java.lang.String) r0     // Catch:{ Exception -> 0x00ec, all -> 0x03d5 }
            java.lang.String r0 = r0.trim()     // Catch:{ Exception -> 0x00ec, all -> 0x03d5 }
        L_0x014c:
            java.lang.String r4 = r7.processKey(r8, r9, r14, r0)     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            com.alibaba.fastjson.serializer.BeanContext r3 = r1.fieldContext     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            r11 = r1
            r1 = r26
            r23 = r2
            r2 = r27
            r9 = 44
            r24 = r4
            r4 = r28
            r5 = r14
            r25 = r6
            r6 = r0
            java.lang.Object r1 = r1.processValue(r2, r3, r4, r5, r6)     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r1 != 0) goto L_0x01e4
            if (r15 != 0) goto L_0x01e4
            java.lang.Class<java.lang.Boolean> r2 = java.lang.Boolean.class
            if (r13 != r2) goto L_0x0184
            com.alibaba.fastjson.serializer.SerializerFeature r2 = com.alibaba.fastjson.serializer.SerializerFeature.WriteNullBooleanAsFalse     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            int r2 = r2.mask     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            com.alibaba.fastjson.serializer.SerializerFeature r3 = com.alibaba.fastjson.serializer.SerializerFeature.WriteMapNullValue     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            int r3 = r3.mask     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            r2 = r2 | r3
            int r3 = r10.serialzeFeatures     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            r3 = r3 & r2
            if (r3 != 0) goto L_0x01e4
            int r3 = r12.features     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            r2 = r2 & r3
            if (r2 != 0) goto L_0x01e4
            goto L_0x0211
        L_0x0184:
            java.lang.Class<java.lang.String> r2 = java.lang.String.class
            if (r13 != r2) goto L_0x019d
            com.alibaba.fastjson.serializer.SerializerFeature r2 = com.alibaba.fastjson.serializer.SerializerFeature.WriteNullStringAsEmpty     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            int r2 = r2.mask     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            com.alibaba.fastjson.serializer.SerializerFeature r3 = com.alibaba.fastjson.serializer.SerializerFeature.WriteMapNullValue     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            int r3 = r3.mask     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            r2 = r2 | r3
            int r3 = r10.serialzeFeatures     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            r3 = r3 & r2
            if (r3 != 0) goto L_0x01e4
            int r3 = r12.features     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            r2 = r2 & r3
            if (r2 != 0) goto L_0x01e4
            goto L_0x0211
        L_0x019d:
            java.lang.Class<java.lang.Number> r2 = java.lang.Number.class
            boolean r2 = r2.isAssignableFrom(r13)     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r2 == 0) goto L_0x01b9
            com.alibaba.fastjson.serializer.SerializerFeature r2 = com.alibaba.fastjson.serializer.SerializerFeature.WriteNullNumberAsZero     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            int r2 = r2.mask     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            com.alibaba.fastjson.serializer.SerializerFeature r3 = com.alibaba.fastjson.serializer.SerializerFeature.WriteMapNullValue     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            int r3 = r3.mask     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            r2 = r2 | r3
            int r3 = r10.serialzeFeatures     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            r3 = r3 & r2
            if (r3 != 0) goto L_0x01e4
            int r3 = r12.features     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            r2 = r2 & r3
            if (r2 != 0) goto L_0x01e4
            goto L_0x0211
        L_0x01b9:
            java.lang.Class<java.util.Collection> r2 = java.util.Collection.class
            boolean r2 = r2.isAssignableFrom(r13)     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r2 == 0) goto L_0x01d5
            com.alibaba.fastjson.serializer.SerializerFeature r2 = com.alibaba.fastjson.serializer.SerializerFeature.WriteNullListAsEmpty     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            int r2 = r2.mask     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            com.alibaba.fastjson.serializer.SerializerFeature r3 = com.alibaba.fastjson.serializer.SerializerFeature.WriteMapNullValue     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            int r3 = r3.mask     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            r2 = r2 | r3
            int r3 = r10.serialzeFeatures     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            r3 = r3 & r2
            if (r3 != 0) goto L_0x01e4
            int r3 = r12.features     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            r2 = r2 & r3
            if (r2 != 0) goto L_0x01e4
            goto L_0x0211
        L_0x01d5:
            boolean r2 = r11.writeNull     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r2 != 0) goto L_0x01e4
            com.alibaba.fastjson.serializer.SerializerFeature r2 = com.alibaba.fastjson.serializer.SerializerFeature.WriteMapNullValue     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            int r2 = r2.mask     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            boolean r2 = r12.isEnabled(r2)     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r2 != 0) goto L_0x01e4
            goto L_0x0211
        L_0x01e4:
            if (r1 == 0) goto L_0x028c
            boolean r2 = r12.notWriteDefaultValue     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r2 != 0) goto L_0x01fe
            int r2 = r10.serialzeFeatures     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            com.alibaba.fastjson.serializer.SerializerFeature r3 = com.alibaba.fastjson.serializer.SerializerFeature.NotWriteDefaultValue     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            int r3 = r3.mask     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            r2 = r2 & r3
            if (r2 != 0) goto L_0x01fe
            com.alibaba.fastjson.serializer.SerializeBeanInfo r2 = r7.beanInfo     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            int r2 = r2.features     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            com.alibaba.fastjson.serializer.SerializerFeature r3 = com.alibaba.fastjson.serializer.SerializerFeature.NotWriteDefaultValue     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            int r3 = r3.mask     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            r2 = r2 & r3
            if (r2 == 0) goto L_0x028c
        L_0x01fe:
            java.lang.Class<?> r2 = r10.fieldClass     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            java.lang.Class r3 = java.lang.Byte.TYPE     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r2 != r3) goto L_0x0213
            boolean r3 = r1 instanceof java.lang.Byte     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r3 == 0) goto L_0x0213
            r3 = r1
            java.lang.Byte r3 = (java.lang.Byte) r3     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            byte r3 = r3.byteValue()     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r3 != 0) goto L_0x0213
        L_0x0211:
            goto L_0x029f
        L_0x0213:
            java.lang.Class r3 = java.lang.Short.TYPE     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r2 != r3) goto L_0x0226
            boolean r3 = r1 instanceof java.lang.Short     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r3 == 0) goto L_0x0226
            r3 = r1
            java.lang.Short r3 = (java.lang.Short) r3     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            short r3 = r3.shortValue()     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r3 != 0) goto L_0x0226
        L_0x0224:
            goto L_0x029f
        L_0x0226:
            java.lang.Class r3 = java.lang.Integer.TYPE     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r2 != r3) goto L_0x0239
            boolean r3 = r1 instanceof java.lang.Integer     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r3 == 0) goto L_0x0239
            r3 = r1
            java.lang.Integer r3 = (java.lang.Integer) r3     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            int r3 = r3.intValue()     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r3 != 0) goto L_0x0239
            goto L_0x029f
        L_0x0239:
            java.lang.Class r3 = java.lang.Long.TYPE     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r2 != r3) goto L_0x024f
            boolean r3 = r1 instanceof java.lang.Long     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r3 == 0) goto L_0x024f
            r3 = r1
            java.lang.Long r3 = (java.lang.Long) r3     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            long r3 = r3.longValue()     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            r5 = 0
            int r22 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r22 != 0) goto L_0x024f
            goto L_0x0224
        L_0x024f:
            java.lang.Class r3 = java.lang.Float.TYPE     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r2 != r3) goto L_0x0264
            boolean r3 = r1 instanceof java.lang.Float     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r3 == 0) goto L_0x0264
            r3 = r1
            java.lang.Float r3 = (java.lang.Float) r3     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            float r3 = r3.floatValue()     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            r4 = 0
            int r3 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
            if (r3 != 0) goto L_0x0264
            goto L_0x029f
        L_0x0264:
            java.lang.Class r3 = java.lang.Double.TYPE     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r2 != r3) goto L_0x027a
            boolean r3 = r1 instanceof java.lang.Double     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r3 == 0) goto L_0x027a
            r3 = r1
            java.lang.Double r3 = (java.lang.Double) r3     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            double r3 = r3.doubleValue()     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            r5 = 0
            int r22 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r22 != 0) goto L_0x027a
            goto L_0x029f
        L_0x027a:
            java.lang.Class r3 = java.lang.Boolean.TYPE     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r2 != r3) goto L_0x028c
            boolean r2 = r1 instanceof java.lang.Boolean     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r2 == 0) goto L_0x028c
            r2 = r1
            java.lang.Boolean r2 = (java.lang.Boolean) r2     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            boolean r2 = r2.booleanValue()     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r2 != 0) goto L_0x028c
            goto L_0x0211
        L_0x028c:
            if (r19 == 0) goto L_0x02b1
            boolean r2 = r10.unwrapped     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r2 == 0) goto L_0x02a3
            boolean r2 = r1 instanceof java.util.Map     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r2 == 0) goto L_0x02a3
            r2 = r1
            java.util.Map r2 = (java.util.Map) r2     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            int r2 = r2.size()     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r2 != 0) goto L_0x02a3
        L_0x029f:
            r3 = 1
            r4 = 0
            goto L_0x0387
        L_0x02a3:
            r12.write(r9)     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            com.alibaba.fastjson.serializer.SerializerFeature r2 = com.alibaba.fastjson.serializer.SerializerFeature.PrettyFormat     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            boolean r2 = r12.isEnabled(r2)     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r2 == 0) goto L_0x02b1
            r27.println()     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
        L_0x02b1:
            r2 = r24
            if (r2 == r14) goto L_0x02c3
            if (r15 != 0) goto L_0x02bc
            r3 = 1
            r12.writeFieldName(r2, r3)     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            goto L_0x02bd
        L_0x02bc:
            r3 = 1
        L_0x02bd:
            r8.write(r1)     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
        L_0x02c0:
            r4 = 0
            goto L_0x0344
        L_0x02c3:
            r3 = 1
            if (r0 == r1) goto L_0x02cf
            if (r15 != 0) goto L_0x02cb
            r11.writePrefix(r8)     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
        L_0x02cb:
            r8.write(r1)     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            goto L_0x02c0
        L_0x02cf:
            if (r15 != 0) goto L_0x02e6
            boolean r0 = r10.unwrapped     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r0 != 0) goto L_0x02e6
            if (r16 == 0) goto L_0x02e1
            char[] r0 = r10.name_chars     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            char[] r2 = r10.name_chars     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            int r2 = r2.length     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            r4 = 0
            r12.write(r0, r4, r2)     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            goto L_0x02e7
        L_0x02e1:
            r4 = 0
            r11.writePrefix(r8)     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            goto L_0x02e7
        L_0x02e6:
            r4 = 0
        L_0x02e7:
            if (r15 != 0) goto L_0x0341
            com.alibaba.fastjson.annotation.JSONField r0 = r10.getAnnotation()     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            java.lang.Class<java.lang.String> r2 = java.lang.String.class
            if (r13 != r2) goto L_0x0329
            if (r0 == 0) goto L_0x02fb
            java.lang.Class r0 = r0.serializeUsing()     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            java.lang.Class<java.lang.Void> r2 = java.lang.Void.class
            if (r0 != r2) goto L_0x0329
        L_0x02fb:
            if (r1 != 0) goto L_0x031a
            int r0 = r12.features     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            com.alibaba.fastjson.serializer.SerializerFeature r2 = com.alibaba.fastjson.serializer.SerializerFeature.WriteNullStringAsEmpty     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            int r2 = r2.mask     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            r0 = r0 & r2
            if (r0 != 0) goto L_0x0314
            int r0 = r11.features     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            com.alibaba.fastjson.serializer.SerializerFeature r2 = com.alibaba.fastjson.serializer.SerializerFeature.WriteNullStringAsEmpty     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            int r2 = r2.mask     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            r0 = r0 & r2
            if (r0 == 0) goto L_0x0310
            goto L_0x0314
        L_0x0310:
            r12.writeNull()     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            goto L_0x0344
        L_0x0314:
            java.lang.String r0 = ""
            r12.writeString(r0)     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            goto L_0x0344
        L_0x031a:
            r0 = r1
            java.lang.String r0 = (java.lang.String) r0     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            boolean r2 = r12.useSingleQuotes     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r2 == 0) goto L_0x0325
            r12.writeStringWithSingleQuote(r0)     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            goto L_0x0344
        L_0x0325:
            r12.writeStringWithDoubleQuote(r0, r4)     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            goto L_0x0344
        L_0x0329:
            boolean r0 = r10.unwrapped     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r0 == 0) goto L_0x033d
            boolean r0 = r1 instanceof java.util.Map     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r0 == 0) goto L_0x033d
            r0 = r1
            java.util.Map r0 = (java.util.Map) r0     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            int r0 = r0.size()     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r0 != 0) goto L_0x033d
            r19 = 0
            goto L_0x0387
        L_0x033d:
            r11.writeValue(r8, r1)     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            goto L_0x0344
        L_0x0341:
            r11.writeValue(r8, r1)     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
        L_0x0344:
            boolean r0 = r10.unwrapped     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r0 == 0) goto L_0x0378
            boolean r0 = r1 instanceof java.util.Map     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r0 == 0) goto L_0x0378
            java.util.Map r1 = (java.util.Map) r1     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            int r0 = r1.size()     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r0 != 0) goto L_0x0356
        L_0x0354:
            r0 = 1
            goto L_0x0379
        L_0x0356:
            com.alibaba.fastjson.serializer.SerializerFeature r0 = com.alibaba.fastjson.serializer.SerializerFeature.WriteMapNullValue     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            boolean r0 = r8.isEnabled(r0)     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r0 != 0) goto L_0x0378
            java.util.Collection r0 = r1.values()     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            java.util.Iterator r0 = r0.iterator()     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
        L_0x0366:
            boolean r1 = r0.hasNext()     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r1 == 0) goto L_0x0374
            java.lang.Object r1 = r0.next()     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
            if (r1 == 0) goto L_0x0366
            r0 = 1
            goto L_0x0375
        L_0x0374:
            r0 = 0
        L_0x0375:
            if (r0 != 0) goto L_0x0378
            goto L_0x0354
        L_0x0378:
            r0 = 0
        L_0x0379:
            if (r0 != 0) goto L_0x0387
            r19 = 1
            goto L_0x0387
        L_0x037e:
            throw r3     // Catch:{ Exception -> 0x039a, all -> 0x03d5 }
        L_0x037f:
            r23 = r2
            r25 = r6
            r3 = 1
            r4 = 0
            r9 = 44
        L_0x0387:
            int r2 = r23 + 1
            r9 = r28
            r10 = r29
            r11 = r30
            r14 = r20
            r13 = r21
            r6 = r25
            r3 = 44
            r5 = 1
            goto L_0x00cf
        L_0x039a:
            r0 = move-exception
            r1 = r28
            goto L_0x03da
        L_0x039e:
            r0 = move-exception
            r1 = r28
            goto L_0x03e2
        L_0x03a2:
            r25 = r6
            r21 = r13
            r20 = r14
            r4 = 0
            r9 = 44
            if (r19 == 0) goto L_0x03b0
            r1 = r28
            goto L_0x03b3
        L_0x03b0:
            r1 = r28
            r9 = 0
        L_0x03b3:
            r7.writeAfter(r8, r1, r9)     // Catch:{ Exception -> 0x03d9, all -> 0x03d5 }
            r2 = r21
            int r0 = r2.length     // Catch:{ Exception -> 0x03d9, all -> 0x03d5 }
            if (r0 <= 0) goto L_0x03c9
            com.alibaba.fastjson.serializer.SerializerFeature r0 = com.alibaba.fastjson.serializer.SerializerFeature.PrettyFormat     // Catch:{ Exception -> 0x03d9, all -> 0x03d5 }
            boolean r0 = r12.isEnabled(r0)     // Catch:{ Exception -> 0x03d9, all -> 0x03d5 }
            if (r0 == 0) goto L_0x03c9
            r27.decrementIdent()     // Catch:{ Exception -> 0x03d9, all -> 0x03d5 }
            r27.println()     // Catch:{ Exception -> 0x03d9, all -> 0x03d5 }
        L_0x03c9:
            if (r32 != 0) goto L_0x03d0
            r2 = r25
            r12.append(r2)     // Catch:{ Exception -> 0x03d9, all -> 0x03d5 }
        L_0x03d0:
            r2 = r20
            r8.context = r2
            return
        L_0x03d5:
            r0 = move-exception
            r2 = r20
            goto L_0x0440
        L_0x03d9:
            r0 = move-exception
        L_0x03da:
            r2 = r20
            goto L_0x03e3
        L_0x03dd:
            r0 = move-exception
            r2 = r14
            goto L_0x0440
        L_0x03e0:
            r0 = move-exception
            r1 = r9
        L_0x03e2:
            r2 = r14
        L_0x03e3:
            java.lang.String r3 = "write javaBean error, fastjson version 1.2.41"
            if (r1 == 0) goto L_0x0403
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ all -> 0x043f }
            r4.<init>()     // Catch:{ all -> 0x043f }
            r4.append(r3)     // Catch:{ all -> 0x043f }
            java.lang.String r3 = ", class "
            r4.append(r3)     // Catch:{ all -> 0x043f }
            java.lang.Class r1 = r28.getClass()     // Catch:{ all -> 0x043f }
            java.lang.String r1 = r1.getName()     // Catch:{ all -> 0x043f }
            r4.append(r1)     // Catch:{ all -> 0x043f }
            java.lang.String r3 = r4.toString()     // Catch:{ all -> 0x043f }
        L_0x0403:
            r1 = r29
            if (r1 == 0) goto L_0x041b
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ all -> 0x043f }
            r4.<init>()     // Catch:{ all -> 0x043f }
            r4.append(r3)     // Catch:{ all -> 0x043f }
            java.lang.String r3 = ", fieldName : "
            r4.append(r3)     // Catch:{ all -> 0x043f }
            r4.append(r1)     // Catch:{ all -> 0x043f }
            java.lang.String r3 = r4.toString()     // Catch:{ all -> 0x043f }
        L_0x041b:
            java.lang.String r1 = r0.getMessage()     // Catch:{ all -> 0x043f }
            if (r1 == 0) goto L_0x0439
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ all -> 0x043f }
            r1.<init>()     // Catch:{ all -> 0x043f }
            r1.append(r3)     // Catch:{ all -> 0x043f }
            java.lang.String r3 = ", "
            r1.append(r3)     // Catch:{ all -> 0x043f }
            java.lang.String r3 = r0.getMessage()     // Catch:{ all -> 0x043f }
            r1.append(r3)     // Catch:{ all -> 0x043f }
            java.lang.String r3 = r1.toString()     // Catch:{ all -> 0x043f }
        L_0x0439:
            com.alibaba.fastjson.JSONException r1 = new com.alibaba.fastjson.JSONException     // Catch:{ all -> 0x043f }
            r1.<init>(r3, r0)     // Catch:{ all -> 0x043f }
            throw r1     // Catch:{ all -> 0x043f }
        L_0x043f:
            r0 = move-exception
        L_0x0440:
            r8.context = r2
            goto L_0x0444
        L_0x0443:
            throw r0
        L_0x0444:
            goto L_0x0443
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.serializer.JavaBeanSerializer.write(com.alibaba.fastjson.serializer.JSONSerializer, java.lang.Object, java.lang.Object, java.lang.reflect.Type, int, boolean):void");
    }

    /* access modifiers changed from: protected */
    public void writeClassName(JSONSerializer jSONSerializer, String str, Object obj) {
        if (str == null) {
            str = jSONSerializer.config.typeKey;
        }
        jSONSerializer.out.writeFieldName(str, false);
        String str2 = this.beanInfo.typeName;
        if (str2 == null) {
            Class cls = obj.getClass();
            if (TypeUtils.isProxy(cls)) {
                cls = cls.getSuperclass();
            }
            str2 = cls.getName();
        }
        jSONSerializer.write(str2);
    }

    public boolean writeReference(JSONSerializer jSONSerializer, Object obj, int i) {
        SerialContext serialContext = jSONSerializer.context;
        int i2 = SerializerFeature.DisableCircularReferenceDetect.mask;
        if (serialContext == null || (serialContext.features & i2) != 0 || (i & i2) != 0 || jSONSerializer.references == null || !jSONSerializer.references.containsKey(obj)) {
            return false;
        }
        jSONSerializer.writeReference(obj);
        return true;
    }

    /* access modifiers changed from: protected */
    public boolean isWriteAsArray(JSONSerializer jSONSerializer) {
        return isWriteAsArray(jSONSerializer, 0);
    }

    /* access modifiers changed from: protected */
    public boolean isWriteAsArray(JSONSerializer jSONSerializer, int i) {
        int i2 = SerializerFeature.BeanToArray.mask;
        return ((this.beanInfo.features & i2) == 0 && !jSONSerializer.out.beanToArray && (i & i2) == 0) ? false : true;
    }

    public Object getFieldValue(Object obj, String str) {
        String str2 = "getFieldValue error.";
        FieldSerializer fieldSerializer = getFieldSerializer(str);
        if (fieldSerializer != null) {
            try {
                return fieldSerializer.getPropertyValue(obj);
            } catch (InvocationTargetException e) {
                StringBuilder sb = new StringBuilder();
                sb.append(str2);
                sb.append(str);
                throw new JSONException(sb.toString(), e);
            } catch (IllegalAccessException e2) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str2);
                sb2.append(str);
                throw new JSONException(sb2.toString(), e2);
            }
        } else {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("field not found. ");
            sb3.append(str);
            throw new JSONException(sb3.toString());
        }
    }

    public Object getFieldValue(Object obj, String str, long j, boolean z) {
        String str2 = "getFieldValue error.";
        FieldSerializer fieldSerializer = getFieldSerializer(j);
        if (fieldSerializer != null) {
            try {
                return fieldSerializer.getPropertyValue(obj);
            } catch (InvocationTargetException e) {
                StringBuilder sb = new StringBuilder();
                sb.append(str2);
                sb.append(str);
                throw new JSONException(sb.toString(), e);
            } catch (IllegalAccessException e2) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str2);
                sb2.append(str);
                throw new JSONException(sb2.toString(), e2);
            }
        } else if (!z) {
            return null;
        } else {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("field not found. ");
            sb3.append(str);
            throw new JSONException(sb3.toString());
        }
    }

    public FieldSerializer getFieldSerializer(String str) {
        if (str == null) {
            return null;
        }
        int i = 0;
        int length = this.sortedGetters.length - 1;
        while (i <= length) {
            int i2 = (i + length) >>> 1;
            int compareTo = this.sortedGetters[i2].fieldInfo.name.compareTo(str);
            if (compareTo < 0) {
                i = i2 + 1;
            } else if (compareTo <= 0) {
                return this.sortedGetters[i2];
            } else {
                length = i2 - 1;
            }
        }
        return null;
    }

    public FieldSerializer getFieldSerializer(long j) {
        PropertyNamingStrategy[] propertyNamingStrategyArr;
        if (this.hashArray == null) {
            propertyNamingStrategyArr = PropertyNamingStrategy.values();
            long[] jArr = new long[(this.sortedGetters.length * propertyNamingStrategyArr.length)];
            int i = 0;
            int i2 = 0;
            while (true) {
                FieldSerializer[] fieldSerializerArr = this.sortedGetters;
                if (i >= fieldSerializerArr.length) {
                    break;
                }
                String str = fieldSerializerArr[i].fieldInfo.name;
                int i3 = i2 + 1;
                jArr[i2] = TypeUtils.fnv1a_64(str);
                for (PropertyNamingStrategy translate : propertyNamingStrategyArr) {
                    String translate2 = translate.translate(str);
                    if (!str.equals(translate2)) {
                        int i4 = i3 + 1;
                        jArr[i3] = TypeUtils.fnv1a_64(translate2);
                        i3 = i4;
                    }
                }
                i++;
                i2 = i3;
            }
            Arrays.sort(jArr, 0, i2);
            this.hashArray = new long[i2];
            System.arraycopy(jArr, 0, this.hashArray, 0, i2);
        } else {
            propertyNamingStrategyArr = null;
        }
        int binarySearch = Arrays.binarySearch(this.hashArray, j);
        if (binarySearch < 0) {
            return null;
        }
        if (this.hashArrayMapping == null) {
            if (propertyNamingStrategyArr == null) {
                propertyNamingStrategyArr = PropertyNamingStrategy.values();
            }
            short[] sArr = new short[this.hashArray.length];
            Arrays.fill(sArr, -1);
            int i5 = 0;
            while (true) {
                FieldSerializer[] fieldSerializerArr2 = this.sortedGetters;
                if (i5 >= fieldSerializerArr2.length) {
                    break;
                }
                String str2 = fieldSerializerArr2[i5].fieldInfo.name;
                int binarySearch2 = Arrays.binarySearch(this.hashArray, TypeUtils.fnv1a_64(str2));
                if (binarySearch2 >= 0) {
                    sArr[binarySearch2] = (short) i5;
                }
                for (PropertyNamingStrategy translate3 : propertyNamingStrategyArr) {
                    String translate4 = translate3.translate(str2);
                    if (!str2.equals(translate4)) {
                        int binarySearch3 = Arrays.binarySearch(this.hashArray, TypeUtils.fnv1a_64(translate4));
                        if (binarySearch3 >= 0) {
                            sArr[binarySearch3] = (short) i5;
                        }
                    }
                }
                i5++;
            }
            this.hashArrayMapping = sArr;
        }
        short s = this.hashArrayMapping[binarySearch];
        if (s != -1) {
            return this.sortedGetters[s];
        }
        return null;
    }

    public List<Object> getFieldValues(Object obj) throws Exception {
        ArrayList arrayList = new ArrayList(this.sortedGetters.length);
        for (FieldSerializer propertyValue : this.sortedGetters) {
            arrayList.add(propertyValue.getPropertyValue(obj));
        }
        return arrayList;
    }

    public List<Object> getObjectFieldValues(Object obj) throws Exception {
        FieldSerializer[] fieldSerializerArr;
        ArrayList arrayList = new ArrayList(this.sortedGetters.length);
        for (FieldSerializer fieldSerializer : this.sortedGetters) {
            Class<?> cls = fieldSerializer.fieldInfo.fieldClass;
            if (!cls.isPrimitive() && !cls.getName().startsWith("java.lang.")) {
                arrayList.add(fieldSerializer.getPropertyValue(obj));
            }
        }
        return arrayList;
    }

    public int getSize(Object obj) throws Exception {
        int i = 0;
        for (FieldSerializer propertyValueDirect : this.sortedGetters) {
            if (propertyValueDirect.getPropertyValueDirect(obj) != null) {
                i++;
            }
        }
        return i;
    }

    public Map<String, Object> getFieldValuesMap(Object obj) throws Exception {
        FieldSerializer[] fieldSerializerArr;
        LinkedHashMap linkedHashMap = new LinkedHashMap(this.sortedGetters.length);
        for (FieldSerializer fieldSerializer : this.sortedGetters) {
            linkedHashMap.put(fieldSerializer.fieldInfo.name, fieldSerializer.getPropertyValue(obj));
        }
        return linkedHashMap;
    }

    /* access modifiers changed from: protected */
    public BeanContext getBeanContext(int i) {
        return this.sortedGetters[i].fieldContext;
    }

    /* access modifiers changed from: protected */
    public Type getFieldType(int i) {
        return this.sortedGetters[i].fieldInfo.fieldType;
    }

    /* access modifiers changed from: protected */
    public char writeBefore(JSONSerializer jSONSerializer, Object obj, char c) {
        if (jSONSerializer.beforeFilters != null) {
            for (BeforeFilter writeBefore : jSONSerializer.beforeFilters) {
                c = writeBefore.writeBefore(jSONSerializer, obj, c);
            }
        }
        if (this.beforeFilters != null) {
            for (BeforeFilter writeBefore2 : this.beforeFilters) {
                c = writeBefore2.writeBefore(jSONSerializer, obj, c);
            }
        }
        return c;
    }

    /* access modifiers changed from: protected */
    public char writeAfter(JSONSerializer jSONSerializer, Object obj, char c) {
        if (jSONSerializer.afterFilters != null) {
            for (AfterFilter writeAfter : jSONSerializer.afterFilters) {
                c = writeAfter.writeAfter(jSONSerializer, obj, c);
            }
        }
        if (this.afterFilters != null) {
            for (AfterFilter writeAfter2 : this.afterFilters) {
                c = writeAfter2.writeAfter(jSONSerializer, obj, c);
            }
        }
        return c;
    }

    /* access modifiers changed from: protected */
    public boolean applyLabel(JSONSerializer jSONSerializer, String str) {
        if (jSONSerializer.labelFilters != null) {
            for (LabelFilter apply : jSONSerializer.labelFilters) {
                if (!apply.apply(str)) {
                    return false;
                }
            }
        }
        if (this.labelFilters != null) {
            for (LabelFilter apply2 : this.labelFilters) {
                if (!apply2.apply(str)) {
                    return false;
                }
            }
        }
        return true;
    }
}
