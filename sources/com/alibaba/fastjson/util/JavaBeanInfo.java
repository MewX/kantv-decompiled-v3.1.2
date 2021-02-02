package com.alibaba.fastjson.util;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.PropertyNamingStrategy;
import com.alibaba.fastjson.annotation.JSONCreator;
import com.alibaba.fastjson.annotation.JSONField;
import com.alibaba.fastjson.annotation.JSONType;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;

public class JavaBeanInfo {
    public final Method buildMethod;
    public final Class<?> builderClass;
    public final Class<?> clazz;
    public final Constructor<?> creatorConstructor;
    public Type[] creatorConstructorParameterTypes;
    public String[] creatorConstructorParameters;
    public final Constructor<?> defaultConstructor;
    public final int defaultConstructorParameterSize;
    public final Method factoryMethod;
    public final FieldInfo[] fields;
    public final JSONType jsonType;
    public String[] orders;
    public final int parserFeatures;
    public final FieldInfo[] sortedFields;
    public final String typeKey;
    public final String typeName;

    public JavaBeanInfo(Class<?> cls, Class<?> cls2, Constructor<?> constructor, Constructor<?> constructor2, Method method, Method method2, JSONType jSONType, List<FieldInfo> list) {
        boolean z;
        JSONField jSONField;
        FieldInfo[] fieldInfoArr;
        String[] strArr;
        this.clazz = cls;
        this.builderClass = cls2;
        this.defaultConstructor = constructor;
        this.creatorConstructor = constructor2;
        this.factoryMethod = method;
        this.parserFeatures = TypeUtils.getParserFeatures(cls);
        this.buildMethod = method2;
        this.jsonType = jSONType;
        if (jSONType != null) {
            String typeName2 = jSONType.typeName();
            String typeKey2 = jSONType.typeKey();
            if (typeKey2.length() <= 0) {
                typeKey2 = null;
            }
            this.typeKey = typeKey2;
            if (typeName2.length() != 0) {
                this.typeName = typeName2;
            } else {
                this.typeName = cls.getName();
            }
            String[] orders2 = jSONType.orders();
            if (orders2.length == 0) {
                orders2 = null;
            }
            this.orders = orders2;
        } else {
            this.typeName = cls.getName();
            this.typeKey = null;
            this.orders = null;
        }
        this.fields = new FieldInfo[list.size()];
        list.toArray(this.fields);
        FieldInfo[] fieldInfoArr2 = this.fields;
        FieldInfo[] fieldInfoArr3 = new FieldInfo[fieldInfoArr2.length];
        if (this.orders != null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap(list.size());
            for (FieldInfo fieldInfo : this.fields) {
                linkedHashMap.put(fieldInfo.name, fieldInfo);
            }
            int i = 0;
            for (String str : this.orders) {
                FieldInfo fieldInfo2 = (FieldInfo) linkedHashMap.get(str);
                if (fieldInfo2 != null) {
                    int i2 = i + 1;
                    fieldInfoArr3[i] = fieldInfo2;
                    linkedHashMap.remove(str);
                    i = i2;
                }
            }
            for (FieldInfo fieldInfo3 : linkedHashMap.values()) {
                int i3 = i + 1;
                fieldInfoArr3[i] = fieldInfo3;
                i = i3;
            }
        } else {
            System.arraycopy(fieldInfoArr2, 0, fieldInfoArr3, 0, fieldInfoArr2.length);
            Arrays.sort(fieldInfoArr3);
        }
        if (Arrays.equals(this.fields, fieldInfoArr3)) {
            fieldInfoArr3 = this.fields;
        }
        this.sortedFields = fieldInfoArr3;
        if (constructor != null) {
            this.defaultConstructorParameterSize = constructor.getParameterTypes().length;
        } else if (method != null) {
            this.defaultConstructorParameterSize = method.getParameterTypes().length;
        } else {
            this.defaultConstructorParameterSize = 0;
        }
        if (constructor2 != null) {
            this.creatorConstructorParameterTypes = constructor2.getParameterTypes();
            if (this.creatorConstructorParameterTypes.length == this.fields.length) {
                int i4 = 0;
                while (true) {
                    Type[] typeArr = this.creatorConstructorParameterTypes;
                    if (i4 >= typeArr.length) {
                        z = true;
                        break;
                    } else if (typeArr[i4] != this.fields[i4].fieldClass) {
                        break;
                    } else {
                        i4++;
                    }
                }
            }
            z = false;
            if (z) {
                return;
            }
            if (TypeUtils.isKotlin(cls)) {
                this.creatorConstructorParameters = TypeUtils.getKoltinConstructorParameters(cls);
                Annotation[][] parameterAnnotations = constructor2.getParameterAnnotations();
                int i5 = 0;
                while (i5 < this.creatorConstructorParameters.length && i5 < parameterAnnotations.length) {
                    Annotation[] annotationArr = parameterAnnotations[i5];
                    int length = annotationArr.length;
                    int i6 = 0;
                    while (true) {
                        if (i6 >= length) {
                            jSONField = null;
                            break;
                        }
                        Annotation annotation = annotationArr[i6];
                        if (annotation instanceof JSONField) {
                            jSONField = (JSONField) annotation;
                            break;
                        }
                        i6++;
                    }
                    if (jSONField != null) {
                        String name = jSONField.name();
                        if (name.length() > 0) {
                            this.creatorConstructorParameters[i5] = name;
                        }
                    }
                    i5++;
                }
                return;
            }
            this.creatorConstructorParameters = ASMUtils.lookupParameterNames(constructor2);
        }
    }

    private static FieldInfo getField(List<FieldInfo> list, String str) {
        for (FieldInfo fieldInfo : list) {
            if (fieldInfo.name.equals(str)) {
                return fieldInfo;
            }
            Field field = fieldInfo.field;
            if (field != null && fieldInfo.getAnnotation() != null && field.getName().equals(str)) {
                return fieldInfo;
            }
        }
        return null;
    }

    static boolean add(List<FieldInfo> list, FieldInfo fieldInfo) {
        FieldInfo fieldInfo2;
        int size = list.size() - 1;
        while (true) {
            if (size < 0) {
                break;
            }
            fieldInfo2 = (FieldInfo) list.get(size);
            if (!fieldInfo2.name.equals(fieldInfo.name) || (fieldInfo2.getOnly && !fieldInfo.getOnly)) {
                size--;
            }
        }
        if (fieldInfo2.fieldClass.isAssignableFrom(fieldInfo.fieldClass)) {
            list.remove(size);
        } else if (fieldInfo2.compareTo(fieldInfo) >= 0) {
            return false;
        } else {
            list.remove(size);
        }
        list.add(fieldInfo);
        return true;
    }

    public static JavaBeanInfo build(Class<?> cls, Type type, PropertyNamingStrategy propertyNamingStrategy) {
        return build(cls, type, propertyNamingStrategy, false, TypeUtils.compatibleWithJavaBean);
    }

    /* JADX WARNING: type inference failed for: r8v35, types: [boolean] */
    /* JADX WARNING: type inference failed for: r8v36 */
    /* JADX WARNING: type inference failed for: r8v39 */
    /* JADX WARNING: type inference failed for: r8v53 */
    /* JADX WARNING: Code restructure failed: missing block: B:371:0x089e, code lost:
        if (r1.deserialize() == false) goto L_0x08a7;
     */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r8v35, types: [boolean]
      assigns: []
      uses: [?[int, boolean, short, byte, char], ?[int, boolean, OBJECT, ARRAY, byte, short, char], ?[int, short, byte, char], boolean]
      mth insns count: 842
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
    	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:49)
    	at java.util.ArrayList.forEach(ArrayList.java:1257)
    	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:49)
    	at jadx.core.ProcessClass.process(ProcessClass.java:35)
    	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
    	at jadx.api.JavaClass.decompile(JavaClass.java:62)
    	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
     */
    /* JADX WARNING: Removed duplicated region for block: B:130:0x028b  */
    /* JADX WARNING: Removed duplicated region for block: B:131:0x0291  */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x003f  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0044  */
    /* JADX WARNING: Removed duplicated region for block: B:173:0x038c  */
    /* JADX WARNING: Removed duplicated region for block: B:176:0x0393  */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x0059  */
    /* JADX WARNING: Removed duplicated region for block: B:243:0x0542  */
    /* JADX WARNING: Removed duplicated region for block: B:248:0x0551  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x007b  */
    /* JADX WARNING: Removed duplicated region for block: B:335:0x07d3  */
    /* JADX WARNING: Removed duplicated region for block: B:410:0x07bc A[EDGE_INSN: B:410:0x07bc->B:333:0x07bc ?: BREAK  
    EDGE_INSN: B:410:0x07bc->B:333:0x07bc ?: BREAK  
    EDGE_INSN: B:410:0x07bc->B:333:0x07bc ?: BREAK  
    EDGE_INSN: B:410:0x07bc->B:333:0x07bc ?: BREAK  , SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:410:0x07bc A[EDGE_INSN: B:410:0x07bc->B:333:0x07bc ?: BREAK  
    EDGE_INSN: B:410:0x07bc->B:333:0x07bc ?: BREAK  
    EDGE_INSN: B:410:0x07bc->B:333:0x07bc ?: BREAK  , SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:410:0x07bc A[EDGE_INSN: B:410:0x07bc->B:333:0x07bc ?: BREAK  
    EDGE_INSN: B:410:0x07bc->B:333:0x07bc ?: BREAK  , SYNTHETIC] */
    /* JADX WARNING: Unknown variable types count: 2 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.alibaba.fastjson.util.JavaBeanInfo build(java.lang.Class<?> r38, java.lang.reflect.Type r39, com.alibaba.fastjson.PropertyNamingStrategy r40, boolean r41, boolean r42) {
        /*
            r12 = r38
            r13 = r39
            java.lang.Class<com.alibaba.fastjson.annotation.JSONType> r0 = com.alibaba.fastjson.annotation.JSONType.class
            java.lang.annotation.Annotation r0 = com.alibaba.fastjson.util.TypeUtils.getAnnotation(r12, r0)
            r14 = r0
            com.alibaba.fastjson.annotation.JSONType r14 = (com.alibaba.fastjson.annotation.JSONType) r14
            if (r14 == 0) goto L_0x001b
            com.alibaba.fastjson.PropertyNamingStrategy r0 = r14.naming()
            if (r0 == 0) goto L_0x001b
            com.alibaba.fastjson.PropertyNamingStrategy r1 = com.alibaba.fastjson.PropertyNamingStrategy.CamelCase
            if (r0 == r1) goto L_0x001b
            r15 = r0
            goto L_0x001d
        L_0x001b:
            r15 = r40
        L_0x001d:
            java.lang.Class r11 = getBuilderClass(r12, r14)
            java.lang.reflect.Field[] r10 = r38.getDeclaredFields()
            java.lang.reflect.Method[] r9 = r38.getMethods()
            boolean r16 = com.alibaba.fastjson.util.TypeUtils.isKotlin(r38)
            java.lang.reflect.Constructor[] r0 = r38.getDeclaredConstructors()
            r17 = 0
            r8 = 1
            if (r16 == 0) goto L_0x003d
            int r1 = r0.length
            if (r1 != r8) goto L_0x003a
            goto L_0x003d
        L_0x003a:
            r18 = r17
            goto L_0x004e
        L_0x003d:
            if (r11 != 0) goto L_0x0044
            java.lang.reflect.Constructor r1 = getDefaultConstructor(r12, r0)
            goto L_0x004c
        L_0x0044:
            java.lang.reflect.Constructor[] r1 = r11.getDeclaredConstructors()
            java.lang.reflect.Constructor r1 = getDefaultConstructor(r11, r1)
        L_0x004c:
            r18 = r1
        L_0x004e:
            r19 = 0
            r20 = 0
            java.util.ArrayList r7 = new java.util.ArrayList
            r7.<init>()
            if (r41 == 0) goto L_0x007b
            r0 = r12
        L_0x005a:
            if (r0 == 0) goto L_0x0068
            java.lang.reflect.Field[] r1 = r0.getDeclaredFields()
            computeFields(r12, r13, r15, r7, r1)
            java.lang.Class r0 = r0.getSuperclass()
            goto L_0x005a
        L_0x0068:
            com.alibaba.fastjson.util.JavaBeanInfo r9 = new com.alibaba.fastjson.util.JavaBeanInfo
            r4 = 0
            r0 = r9
            r1 = r38
            r2 = r11
            r3 = r18
            r5 = r20
            r6 = r19
            r8 = r7
            r7 = r14
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            return r9
        L_0x007b:
            boolean r1 = r38.isInterface()
            if (r1 != 0) goto L_0x008e
            int r1 = r38.getModifiers()
            boolean r1 = java.lang.reflect.Modifier.isAbstract(r1)
            if (r1 == 0) goto L_0x008c
            goto L_0x008e
        L_0x008c:
            r1 = 0
            goto L_0x008f
        L_0x008e:
            r1 = 1
        L_0x008f:
            if (r18 != 0) goto L_0x0093
            if (r11 == 0) goto L_0x0095
        L_0x0093:
            if (r1 == 0) goto L_0x037f
        L_0x0095:
            java.lang.reflect.Constructor r21 = getCreatorConstructor(r0)
            java.lang.String r3 = "illegal json creator"
            if (r21 == 0) goto L_0x012f
            if (r1 != 0) goto L_0x012f
            com.alibaba.fastjson.util.TypeUtils.setAccessible(r21)
            java.lang.Class[] r2 = r21.getParameterTypes()
            int r0 = r2.length
            if (r0 <= 0) goto L_0x0126
            java.lang.annotation.Annotation[][] r16 = r21.getParameterAnnotations()
            r1 = 0
        L_0x00ae:
            int r0 = r2.length
            if (r1 >= r0) goto L_0x0126
            r0 = r16[r1]
            int r4 = r0.length
            r5 = 0
        L_0x00b5:
            if (r5 >= r4) goto L_0x00c5
            r6 = r0[r5]
            boolean r8 = r6 instanceof com.alibaba.fastjson.annotation.JSONField
            if (r8 == 0) goto L_0x00c1
            r0 = r6
            com.alibaba.fastjson.annotation.JSONField r0 = (com.alibaba.fastjson.annotation.JSONField) r0
            goto L_0x00c7
        L_0x00c1:
            int r5 = r5 + 1
            r8 = 1
            goto L_0x00b5
        L_0x00c5:
            r0 = r17
        L_0x00c7:
            if (r0 == 0) goto L_0x011f
            r4 = r2[r1]
            java.lang.reflect.Type[] r5 = r21.getGenericParameterTypes()
            r5 = r5[r1]
            java.lang.String r6 = r0.name()
            java.lang.reflect.Field r6 = com.alibaba.fastjson.util.TypeUtils.getField(r12, r6, r10)
            int r8 = r0.ordinal()
            com.alibaba.fastjson.serializer.SerializerFeature[] r23 = r0.serialzeFeatures()
            int r23 = com.alibaba.fastjson.serializer.SerializerFeature.of(r23)
            com.alibaba.fastjson.parser.Feature[] r24 = r0.parseFeatures()
            int r24 = com.alibaba.fastjson.parser.Feature.of(r24)
            com.alibaba.fastjson.util.FieldInfo r13 = new com.alibaba.fastjson.util.FieldInfo
            java.lang.String r25 = r0.name()
            r0 = r13
            r26 = r1
            r1 = r25
            r25 = r2
            r2 = r38
            r27 = r15
            r15 = r3
            r3 = r4
            r4 = r5
            r5 = r6
            r6 = r8
            r8 = r7
            r7 = r23
            r42 = r14
            r14 = r8
            r8 = r24
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            add(r14, r13)
            int r1 = r26 + 1
            r13 = r39
            r7 = r14
            r3 = r15
            r2 = r25
            r15 = r27
            r8 = 1
            r14 = r42
            goto L_0x00ae
        L_0x011f:
            r15 = r3
            com.alibaba.fastjson.JSONException r0 = new com.alibaba.fastjson.JSONException
            r0.<init>(r15)
            throw r0
        L_0x0126:
            r42 = r14
            r27 = r15
            r14 = r7
            r40 = r9
            goto L_0x0388
        L_0x012f:
            r42 = r14
            r27 = r15
            r15 = r3
            r14 = r7
            java.lang.reflect.Method r13 = getFactoryMethod(r12, r9)
            if (r13 == 0) goto L_0x01c0
            com.alibaba.fastjson.util.TypeUtils.setAccessible(r13)
            java.lang.Class[] r8 = r13.getParameterTypes()
            int r0 = r8.length
            if (r0 <= 0) goto L_0x037c
            java.lang.annotation.Annotation[][] r9 = r13.getParameterAnnotations()
            r7 = 0
        L_0x014a:
            int r0 = r8.length
            if (r7 >= r0) goto L_0x01af
            r0 = r9[r7]
            int r1 = r0.length
            r2 = 0
        L_0x0151:
            if (r2 >= r1) goto L_0x0160
            r3 = r0[r2]
            boolean r4 = r3 instanceof com.alibaba.fastjson.annotation.JSONField
            if (r4 == 0) goto L_0x015d
            r0 = r3
            com.alibaba.fastjson.annotation.JSONField r0 = (com.alibaba.fastjson.annotation.JSONField) r0
            goto L_0x0162
        L_0x015d:
            int r2 = r2 + 1
            goto L_0x0151
        L_0x0160:
            r0 = r17
        L_0x0162:
            if (r0 == 0) goto L_0x01a9
            r3 = r8[r7]
            java.lang.reflect.Type[] r1 = r13.getGenericParameterTypes()
            r4 = r1[r7]
            java.lang.String r1 = r0.name()
            java.lang.reflect.Field r5 = com.alibaba.fastjson.util.TypeUtils.getField(r12, r1, r10)
            int r6 = r0.ordinal()
            com.alibaba.fastjson.serializer.SerializerFeature[] r1 = r0.serialzeFeatures()
            int r16 = com.alibaba.fastjson.serializer.SerializerFeature.of(r1)
            com.alibaba.fastjson.parser.Feature[] r1 = r0.parseFeatures()
            int r18 = com.alibaba.fastjson.parser.Feature.of(r1)
            com.alibaba.fastjson.util.FieldInfo r2 = new com.alibaba.fastjson.util.FieldInfo
            java.lang.String r1 = r0.name()
            r0 = r2
            r39 = r9
            r9 = r2
            r2 = r38
            r19 = r7
            r7 = r16
            r16 = r8
            r8 = r18
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            add(r14, r9)
            int r7 = r19 + 1
            r9 = r39
            r8 = r16
            goto L_0x014a
        L_0x01a9:
            com.alibaba.fastjson.JSONException r0 = new com.alibaba.fastjson.JSONException
            r0.<init>(r15)
            throw r0
        L_0x01af:
            com.alibaba.fastjson.util.JavaBeanInfo r9 = new com.alibaba.fastjson.util.JavaBeanInfo
            r3 = 0
            r4 = 0
            r6 = 0
            r0 = r9
            r1 = r38
            r2 = r11
            r5 = r13
            r7 = r42
            r8 = r14
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            return r9
        L_0x01c0:
            if (r1 != 0) goto L_0x037c
            java.lang.String r15 = r38.getName()
            if (r16 == 0) goto L_0x01de
            int r1 = r0.length
            if (r1 <= 0) goto L_0x01de
            java.lang.String[] r1 = com.alibaba.fastjson.util.TypeUtils.getKoltinConstructorParameters(r38)
            java.lang.reflect.Constructor r0 = com.alibaba.fastjson.util.TypeUtils.getKoltinConstructor(r0)
            com.alibaba.fastjson.util.TypeUtils.setAccessible(r0)
            r21 = r0
            r7 = r1
            r8 = 1
        L_0x01da:
            r20 = 2
            goto L_0x0289
        L_0x01de:
            int r1 = r0.length
            r3 = r17
            r2 = 0
        L_0x01e2:
            if (r2 >= r1) goto L_0x0285
            r4 = r0[r2]
            java.lang.Class[] r5 = r4.getParameterTypes()
            java.lang.String r6 = "org.springframework.security.web.authentication.WebAuthenticationDetails"
            boolean r6 = r15.equals(r6)
            if (r6 == 0) goto L_0x020f
            int r6 = r5.length
            r8 = 2
            if (r6 != r8) goto L_0x020f
            r7 = 0
            r6 = r5[r7]
            java.lang.Class<java.lang.String> r8 = java.lang.String.class
            if (r6 != r8) goto L_0x020f
            r8 = 1
            r6 = r5[r8]
            java.lang.Class<java.lang.String> r7 = java.lang.String.class
            if (r6 != r7) goto L_0x0210
            r4.setAccessible(r8)
            java.lang.String[] r1 = com.alibaba.fastjson.util.ASMUtils.lookupParameterNames(r4)
            r7 = r1
            r21 = r4
            goto L_0x01da
        L_0x020f:
            r8 = 1
        L_0x0210:
            java.lang.String r6 = "org.springframework.security.web.authentication.preauth.PreAuthenticatedAuthenticationToken"
            boolean r6 = r15.equals(r6)
            if (r6 == 0) goto L_0x023f
            int r6 = r5.length
            r7 = 3
            if (r6 != r7) goto L_0x023f
            r6 = 0
            r7 = r5[r6]
            java.lang.Class<java.lang.Object> r6 = java.lang.Object.class
            if (r7 != r6) goto L_0x023f
            r6 = r5[r8]
            java.lang.Class<java.lang.Object> r7 = java.lang.Object.class
            if (r6 != r7) goto L_0x023f
            r20 = 2
            r6 = r5[r20]
            java.lang.Class<java.util.Collection> r7 = java.util.Collection.class
            if (r6 != r7) goto L_0x0241
            r4.setAccessible(r8)
            java.lang.String r0 = "principal"
            java.lang.String r1 = "credentials"
            java.lang.String r2 = "authorities"
            java.lang.String[] r1 = new java.lang.String[]{r0, r1, r2}
            goto L_0x0259
        L_0x023f:
            r20 = 2
        L_0x0241:
            java.lang.String r6 = "org.springframework.security.core.authority.SimpleGrantedAuthority"
            boolean r6 = r15.equals(r6)
            if (r6 == 0) goto L_0x025d
            int r6 = r5.length
            if (r6 != r8) goto L_0x025d
            r7 = 0
            r5 = r5[r7]
            java.lang.Class<java.lang.String> r6 = java.lang.String.class
            if (r5 != r6) goto L_0x025e
            java.lang.String r0 = "authority"
            java.lang.String[] r1 = new java.lang.String[]{r0}
        L_0x0259:
            r7 = r1
            r21 = r4
            goto L_0x0289
        L_0x025d:
            r7 = 0
        L_0x025e:
            int r5 = r4.getModifiers()
            r5 = r5 & r8
            if (r5 == 0) goto L_0x0267
            r5 = 1
            goto L_0x0268
        L_0x0267:
            r5 = 0
        L_0x0268:
            if (r5 != 0) goto L_0x026b
            goto L_0x0281
        L_0x026b:
            java.lang.String[] r5 = com.alibaba.fastjson.util.ASMUtils.lookupParameterNames(r4)
            if (r5 == 0) goto L_0x0281
            int r6 = r5.length
            if (r6 != 0) goto L_0x0275
            goto L_0x0281
        L_0x0275:
            if (r21 == 0) goto L_0x027e
            if (r3 == 0) goto L_0x027e
            int r6 = r5.length
            int r7 = r3.length
            if (r6 > r7) goto L_0x027e
            goto L_0x0281
        L_0x027e:
            r21 = r4
            r3 = r5
        L_0x0281:
            int r2 = r2 + 1
            goto L_0x01e2
        L_0x0285:
            r8 = 1
            r20 = 2
            r7 = r3
        L_0x0289:
            if (r7 == 0) goto L_0x0291
            java.lang.Class[] r0 = r21.getParameterTypes()
            r6 = r0
            goto L_0x0293
        L_0x0291:
            r6 = r17
        L_0x0293:
            if (r7 == 0) goto L_0x0365
            int r0 = r6.length
            int r1 = r7.length
            if (r0 != r1) goto L_0x0365
            java.lang.annotation.Annotation[][] r22 = r21.getParameterAnnotations()
            r5 = 0
        L_0x029e:
            int r0 = r6.length
            if (r5 >= r0) goto L_0x0343
            r0 = r22[r5]
            r1 = r7[r5]
            int r2 = r0.length
            r3 = 0
        L_0x02a7:
            if (r3 >= r2) goto L_0x02b7
            r4 = r0[r3]
            boolean r8 = r4 instanceof com.alibaba.fastjson.annotation.JSONField
            if (r8 == 0) goto L_0x02b3
            r0 = r4
            com.alibaba.fastjson.annotation.JSONField r0 = (com.alibaba.fastjson.annotation.JSONField) r0
            goto L_0x02b9
        L_0x02b3:
            int r3 = r3 + 1
            r8 = 1
            goto L_0x02a7
        L_0x02b7:
            r0 = r17
        L_0x02b9:
            r3 = r6[r5]
            java.lang.reflect.Type[] r2 = r21.getGenericParameterTypes()
            r4 = r2[r5]
            java.lang.reflect.Field r8 = com.alibaba.fastjson.util.TypeUtils.getField(r12, r1, r10)
            if (r8 == 0) goto L_0x02d1
            if (r0 != 0) goto L_0x02d1
            java.lang.Class<com.alibaba.fastjson.annotation.JSONField> r0 = com.alibaba.fastjson.annotation.JSONField.class
            java.lang.annotation.Annotation r0 = r8.getAnnotation(r0)
            com.alibaba.fastjson.annotation.JSONField r0 = (com.alibaba.fastjson.annotation.JSONField) r0
        L_0x02d1:
            if (r0 != 0) goto L_0x02f5
            java.lang.String r0 = "org.springframework.security.core.userdetails.User"
            boolean r0 = r0.equals(r15)
            if (r0 == 0) goto L_0x02ee
            java.lang.String r0 = "password"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x02ee
            com.alibaba.fastjson.parser.Feature r0 = com.alibaba.fastjson.parser.Feature.InitStringFieldAsEmpty
            int r0 = r0.mask
            r25 = r0
            r23 = 0
            r24 = 0
            goto L_0x031a
        L_0x02ee:
            r23 = 0
            r24 = 0
            r25 = 0
            goto L_0x031a
        L_0x02f5:
            java.lang.String r2 = r0.name()
            int r23 = r2.length()
            if (r23 == 0) goto L_0x0300
            r1 = r2
        L_0x0300:
            int r2 = r0.ordinal()
            com.alibaba.fastjson.serializer.SerializerFeature[] r23 = r0.serialzeFeatures()
            int r23 = com.alibaba.fastjson.serializer.SerializerFeature.of(r23)
            com.alibaba.fastjson.parser.Feature[] r0 = r0.parseFeatures()
            int r0 = com.alibaba.fastjson.parser.Feature.of(r0)
            r25 = r0
            r24 = r23
            r23 = r2
        L_0x031a:
            com.alibaba.fastjson.util.FieldInfo r2 = new com.alibaba.fastjson.util.FieldInfo
            r0 = r2
            r40 = r9
            r9 = r2
            r2 = r38
            r26 = r5
            r5 = r8
            r29 = r6
            r6 = r23
            r23 = r7
            r8 = 3
            r7 = r24
            r8 = r25
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            add(r14, r9)
            int r5 = r26 + 1
            r9 = r40
            r7 = r23
            r6 = r29
            r8 = 1
            r20 = 2
            goto L_0x029e
        L_0x0343:
            r40 = r9
            if (r16 != 0) goto L_0x038a
            java.lang.String r0 = r38.getName()
            java.lang.String r1 = "javax.servlet.http.Cookie"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x038a
            com.alibaba.fastjson.util.JavaBeanInfo r9 = new com.alibaba.fastjson.util.JavaBeanInfo
            r3 = 0
            r5 = 0
            r6 = 0
            r0 = r9
            r1 = r38
            r2 = r11
            r4 = r21
            r7 = r42
            r8 = r14
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            return r9
        L_0x0365:
            com.alibaba.fastjson.JSONException r0 = new com.alibaba.fastjson.JSONException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "default constructor not found. "
            r1.append(r2)
            r1.append(r12)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x037c:
            r40 = r9
            goto L_0x038a
        L_0x037f:
            r40 = r9
            r42 = r14
            r27 = r15
            r14 = r7
            r21 = r17
        L_0x0388:
            r13 = r20
        L_0x038a:
            if (r18 == 0) goto L_0x038f
            com.alibaba.fastjson.util.TypeUtils.setAccessible(r18)
        L_0x038f:
            java.lang.String r15 = "set"
            if (r11 == 0) goto L_0x0542
            java.lang.Class<com.alibaba.fastjson.annotation.JSONPOJOBuilder> r0 = com.alibaba.fastjson.annotation.JSONPOJOBuilder.class
            java.lang.annotation.Annotation r0 = r11.getAnnotation(r0)
            com.alibaba.fastjson.annotation.JSONPOJOBuilder r0 = (com.alibaba.fastjson.annotation.JSONPOJOBuilder) r0
            if (r0 == 0) goto L_0x03a2
            java.lang.String r0 = r0.withPrefix()
            goto L_0x03a4
        L_0x03a2:
            r0 = r17
        L_0x03a4:
            if (r0 == 0) goto L_0x03ac
            int r1 = r0.length()
            if (r1 != 0) goto L_0x03ae
        L_0x03ac:
            java.lang.String r0 = "with"
        L_0x03ae:
            r9 = r0
            java.lang.reflect.Method[] r8 = r11.getMethods()
            int r7 = r8.length
            r6 = 0
        L_0x03b5:
            if (r6 >= r7) goto L_0x04ff
            r2 = r8[r6]
            int r0 = r2.getModifiers()
            boolean r0 = java.lang.reflect.Modifier.isStatic(r0)
            if (r0 == 0) goto L_0x03d4
        L_0x03c3:
            r32 = r40
            r26 = r6
            r28 = r7
            r29 = r8
            r16 = r9
            r34 = r10
            r40 = r13
            r13 = r11
            goto L_0x04ee
        L_0x03d4:
            java.lang.Class r0 = r2.getReturnType()
            boolean r0 = r0.equals(r11)
            if (r0 != 0) goto L_0x03df
            goto L_0x03c3
        L_0x03df:
            java.lang.Class<com.alibaba.fastjson.annotation.JSONField> r0 = com.alibaba.fastjson.annotation.JSONField.class
            java.lang.annotation.Annotation r0 = r2.getAnnotation(r0)
            com.alibaba.fastjson.annotation.JSONField r0 = (com.alibaba.fastjson.annotation.JSONField) r0
            if (r0 != 0) goto L_0x03ed
            com.alibaba.fastjson.annotation.JSONField r0 = com.alibaba.fastjson.util.TypeUtils.getSuperMethodAnnotation(r12, r2)
        L_0x03ed:
            r16 = r0
            if (r16 == 0) goto L_0x0465
            boolean r0 = r16.deserialize()
            if (r0 != 0) goto L_0x03f8
            goto L_0x03c3
        L_0x03f8:
            int r20 = r16.ordinal()
            com.alibaba.fastjson.serializer.SerializerFeature[] r0 = r16.serialzeFeatures()
            int r22 = com.alibaba.fastjson.serializer.SerializerFeature.of(r0)
            com.alibaba.fastjson.parser.Feature[] r0 = r16.parseFeatures()
            int r23 = com.alibaba.fastjson.parser.Feature.of(r0)
            java.lang.String r0 = r16.name()
            int r0 = r0.length()
            if (r0 == 0) goto L_0x044f
            java.lang.String r1 = r16.name()
            com.alibaba.fastjson.util.FieldInfo r5 = new com.alibaba.fastjson.util.FieldInfo
            r3 = 0
            r24 = 0
            r25 = 0
            r0 = r5
            r4 = r38
            r31 = r5
            r5 = r39
            r26 = r6
            r6 = r20
            r28 = r7
            r7 = r22
            r29 = r8
            r8 = r23
            r32 = r40
            r33 = r9
            r9 = r16
            r34 = r10
            r10 = r24
            r40 = r13
            r13 = r11
            r11 = r25
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)
            r0 = r31
            add(r14, r0)
            r16 = r33
            goto L_0x04ee
        L_0x044f:
            r32 = r40
            r26 = r6
            r28 = r7
            r29 = r8
            r33 = r9
            r34 = r10
            r40 = r13
            r13 = r11
            r6 = r20
            r7 = r22
            r8 = r23
            goto L_0x0477
        L_0x0465:
            r32 = r40
            r26 = r6
            r28 = r7
            r29 = r8
            r33 = r9
            r34 = r10
            r40 = r13
            r13 = r11
            r6 = 0
            r7 = 0
            r8 = 0
        L_0x0477:
            java.lang.String r0 = r2.getName()
            boolean r1 = r0.startsWith(r15)
            if (r1 == 0) goto L_0x0495
            int r1 = r0.length()
            r11 = 3
            if (r1 <= r11) goto L_0x0496
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r0 = r0.substring(r11)
            r1.<init>(r0)
            r10 = r33
        L_0x0493:
            r9 = 0
            goto L_0x04ba
        L_0x0495:
            r11 = 3
        L_0x0496:
            r10 = r33
            boolean r1 = r0.startsWith(r10)
            if (r1 != 0) goto L_0x04a1
        L_0x049e:
            r16 = r10
            goto L_0x04ee
        L_0x04a1:
            int r1 = r0.length()
            int r3 = r10.length()
            if (r1 > r3) goto L_0x04ac
            goto L_0x049e
        L_0x04ac:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            int r3 = r10.length()
            java.lang.String r0 = r0.substring(r3)
            r1.<init>(r0)
            goto L_0x0493
        L_0x04ba:
            char r0 = r1.charAt(r9)
            boolean r3 = java.lang.Character.isUpperCase(r0)
            if (r3 != 0) goto L_0x04c5
            goto L_0x049e
        L_0x04c5:
            char r0 = java.lang.Character.toLowerCase(r0)
            r1.setCharAt(r9, r0)
            java.lang.String r1 = r1.toString()
            com.alibaba.fastjson.util.FieldInfo r5 = new com.alibaba.fastjson.util.FieldInfo
            r3 = 0
            r20 = 0
            r22 = 0
            r0 = r5
            r4 = r38
            r35 = r5
            r5 = r39
            r9 = r16
            r16 = r10
            r10 = r20
            r11 = r22
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)
            r0 = r35
            add(r14, r0)
        L_0x04ee:
            int r6 = r26 + 1
            r11 = r13
            r9 = r16
            r7 = r28
            r8 = r29
            r10 = r34
            r13 = r40
            r40 = r32
            goto L_0x03b5
        L_0x04ff:
            r32 = r40
            r34 = r10
            r40 = r13
            r13 = r11
            if (r13 == 0) goto L_0x0549
            java.lang.Class<com.alibaba.fastjson.annotation.JSONPOJOBuilder> r0 = com.alibaba.fastjson.annotation.JSONPOJOBuilder.class
            java.lang.annotation.Annotation r0 = r13.getAnnotation(r0)
            com.alibaba.fastjson.annotation.JSONPOJOBuilder r0 = (com.alibaba.fastjson.annotation.JSONPOJOBuilder) r0
            if (r0 == 0) goto L_0x0517
            java.lang.String r0 = r0.buildMethod()
            goto L_0x0519
        L_0x0517:
            r0 = r17
        L_0x0519:
            if (r0 == 0) goto L_0x0521
            int r1 = r0.length()
            if (r1 != 0) goto L_0x0523
        L_0x0521:
            java.lang.String r0 = "build"
        L_0x0523:
            r11 = 0
            java.lang.Class[] r1 = new java.lang.Class[r11]     // Catch:{ NoSuchMethodException | SecurityException -> 0x052a }
            java.lang.reflect.Method r19 = r13.getMethod(r0, r1)     // Catch:{ NoSuchMethodException | SecurityException -> 0x052a }
        L_0x052a:
            if (r19 != 0) goto L_0x0534
            java.lang.String r0 = "create"
            java.lang.Class[] r1 = new java.lang.Class[r11]     // Catch:{ NoSuchMethodException | SecurityException -> 0x0534 }
            java.lang.reflect.Method r19 = r13.getMethod(r0, r1)     // Catch:{ NoSuchMethodException | SecurityException -> 0x0534 }
        L_0x0534:
            if (r19 == 0) goto L_0x053a
            com.alibaba.fastjson.util.TypeUtils.setAccessible(r19)
            goto L_0x054a
        L_0x053a:
            com.alibaba.fastjson.JSONException r0 = new com.alibaba.fastjson.JSONException
            java.lang.String r1 = "buildMethod not found."
            r0.<init>(r1)
            throw r0
        L_0x0542:
            r32 = r40
            r34 = r10
            r40 = r13
            r13 = r11
        L_0x0549:
            r11 = 0
        L_0x054a:
            r10 = r32
            int r9 = r10.length
            r8 = 0
        L_0x054e:
            r7 = 4
            if (r8 >= r9) goto L_0x07bc
            r2 = r10[r8]
            r6 = 0
            r16 = 0
            r20 = 0
            java.lang.String r0 = r2.getName()
            int r1 = r2.getModifiers()
            boolean r1 = java.lang.reflect.Modifier.isStatic(r1)
            if (r1 == 0) goto L_0x057a
        L_0x0566:
            r26 = r8
            r28 = r9
            r29 = r10
            r41 = r13
            r30 = r15
            r13 = r27
            r23 = 1
            r24 = 0
            r25 = 2
            goto L_0x07ad
        L_0x057a:
            java.lang.Class r1 = r2.getReturnType()
            java.lang.Class r3 = java.lang.Void.TYPE
            boolean r3 = r1.equals(r3)
            if (r3 != 0) goto L_0x0591
            java.lang.Class r3 = r2.getDeclaringClass()
            boolean r1 = r1.equals(r3)
            if (r1 != 0) goto L_0x0591
            goto L_0x0566
        L_0x0591:
            java.lang.Class r1 = r2.getDeclaringClass()
            java.lang.Class<java.lang.Object> r3 = java.lang.Object.class
            if (r1 != r3) goto L_0x059a
            goto L_0x0566
        L_0x059a:
            java.lang.Class[] r1 = r2.getParameterTypes()
            int r3 = r1.length
            if (r3 == 0) goto L_0x0566
            int r3 = r1.length
            r5 = 2
            if (r3 <= r5) goto L_0x05a6
            goto L_0x0566
        L_0x05a6:
            java.lang.Class<com.alibaba.fastjson.annotation.JSONField> r3 = com.alibaba.fastjson.annotation.JSONField.class
            java.lang.annotation.Annotation r3 = r2.getAnnotation(r3)
            r22 = r3
            com.alibaba.fastjson.annotation.JSONField r22 = (com.alibaba.fastjson.annotation.JSONField) r22
            if (r22 == 0) goto L_0x05f0
            int r3 = r1.length
            if (r3 != r5) goto L_0x05f0
            r3 = r1[r11]
            java.lang.Class<java.lang.String> r4 = java.lang.String.class
            if (r3 != r4) goto L_0x05f0
            r4 = 1
            r3 = r1[r4]
            java.lang.Class<java.lang.Object> r4 = java.lang.Object.class
            if (r3 != r4) goto L_0x05f0
            com.alibaba.fastjson.util.FieldInfo r7 = new com.alibaba.fastjson.util.FieldInfo
            r3 = 0
            r23 = 0
            r24 = 0
            java.lang.String r1 = ""
            r0 = r7
            r4 = r38
            r25 = 2
            r5 = r39
            r36 = r7
            r7 = r16
            r26 = r8
            r8 = r20
            r28 = r9
            r9 = r22
            r29 = r10
            r10 = r23
            r41 = r13
            r13 = 0
            r11 = r24
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)
            r0 = r36
            add(r14, r0)
            goto L_0x05ff
        L_0x05f0:
            r26 = r8
            r28 = r9
            r29 = r10
            r41 = r13
            r13 = 0
            r25 = 2
            int r3 = r1.length
            r11 = 1
            if (r3 == r11) goto L_0x0609
        L_0x05ff:
            r30 = r15
            r13 = r27
            r23 = 1
            r24 = 0
            goto L_0x07ad
        L_0x0609:
            if (r22 != 0) goto L_0x0611
            com.alibaba.fastjson.annotation.JSONField r3 = com.alibaba.fastjson.util.TypeUtils.getSuperMethodAnnotation(r12, r2)
            r9 = r3
            goto L_0x0613
        L_0x0611:
            r9 = r22
        L_0x0613:
            if (r9 != 0) goto L_0x061c
            int r3 = r0.length()
            if (r3 >= r7) goto L_0x061c
            goto L_0x05ff
        L_0x061c:
            if (r9 == 0) goto L_0x0665
            boolean r3 = r9.deserialize()
            if (r3 != 0) goto L_0x0625
            goto L_0x05ff
        L_0x0625:
            int r6 = r9.ordinal()
            com.alibaba.fastjson.serializer.SerializerFeature[] r3 = r9.serialzeFeatures()
            int r8 = com.alibaba.fastjson.serializer.SerializerFeature.of(r3)
            com.alibaba.fastjson.parser.Feature[] r3 = r9.parseFeatures()
            int r10 = com.alibaba.fastjson.parser.Feature.of(r3)
            java.lang.String r3 = r9.name()
            int r3 = r3.length()
            if (r3 == 0) goto L_0x0661
            java.lang.String r1 = r9.name()
            com.alibaba.fastjson.util.FieldInfo r7 = new com.alibaba.fastjson.util.FieldInfo
            r3 = 0
            r16 = 0
            r20 = 0
            r0 = r7
            r4 = r38
            r5 = r39
            r13 = r7
            r7 = r8
            r8 = r10
            r10 = r16
            r11 = r20
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)
            add(r14, r13)
            goto L_0x05ff
        L_0x0661:
            r16 = r8
            r20 = r10
        L_0x0665:
            if (r9 != 0) goto L_0x066e
            boolean r3 = r0.startsWith(r15)
            if (r3 != 0) goto L_0x066e
            goto L_0x05ff
        L_0x066e:
            r13 = 3
            char r3 = r0.charAt(r13)
            boolean r4 = java.lang.Character.isUpperCase(r3)
            if (r4 != 0) goto L_0x06aa
            r4 = 512(0x200, float:7.175E-43)
            if (r3 <= r4) goto L_0x067e
            goto L_0x06aa
        L_0x067e:
            r4 = 95
            if (r3 != r4) goto L_0x0687
            java.lang.String r0 = r0.substring(r7)
            goto L_0x06d2
        L_0x0687:
            r4 = 102(0x66, float:1.43E-43)
            if (r3 != r4) goto L_0x0690
            java.lang.String r0 = r0.substring(r13)
            goto L_0x06d2
        L_0x0690:
            int r3 = r0.length()
            r4 = 5
            if (r3 < r4) goto L_0x05ff
            char r3 = r0.charAt(r7)
            boolean r3 = java.lang.Character.isUpperCase(r3)
            if (r3 == 0) goto L_0x05ff
            java.lang.String r0 = r0.substring(r13)
            java.lang.String r0 = com.alibaba.fastjson.util.TypeUtils.decapitalize(r0)
            goto L_0x06d2
        L_0x06aa:
            boolean r3 = com.alibaba.fastjson.util.TypeUtils.compatibleWithJavaBean
            if (r3 == 0) goto L_0x06b7
            java.lang.String r0 = r0.substring(r13)
            java.lang.String r0 = com.alibaba.fastjson.util.TypeUtils.decapitalize(r0)
            goto L_0x06d2
        L_0x06b7:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            char r4 = r0.charAt(r13)
            char r4 = java.lang.Character.toLowerCase(r4)
            r3.append(r4)
            java.lang.String r0 = r0.substring(r7)
            r3.append(r0)
            java.lang.String r0 = r3.toString()
        L_0x06d2:
            r11 = r34
            java.lang.reflect.Field r3 = com.alibaba.fastjson.util.TypeUtils.getField(r12, r0, r11)
            if (r3 != 0) goto L_0x070a
            r10 = 0
            r1 = r1[r10]
            java.lang.Class r4 = java.lang.Boolean.TYPE
            if (r1 != r4) goto L_0x0708
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r3 = "is"
            r1.append(r3)
            char r3 = r0.charAt(r10)
            char r3 = java.lang.Character.toUpperCase(r3)
            r1.append(r3)
            r8 = 1
            java.lang.String r3 = r0.substring(r8)
            r1.append(r3)
            java.lang.String r1 = r1.toString()
            java.lang.reflect.Field r1 = com.alibaba.fastjson.util.TypeUtils.getField(r12, r1, r11)
            r3 = r1
            goto L_0x070c
        L_0x0708:
            r8 = 1
            goto L_0x070c
        L_0x070a:
            r8 = 1
            r10 = 0
        L_0x070c:
            if (r3 == 0) goto L_0x0780
            java.lang.Class<com.alibaba.fastjson.annotation.JSONField> r1 = com.alibaba.fastjson.annotation.JSONField.class
            java.lang.annotation.Annotation r1 = r3.getAnnotation(r1)
            r22 = r1
            com.alibaba.fastjson.annotation.JSONField r22 = (com.alibaba.fastjson.annotation.JSONField) r22
            if (r22 == 0) goto L_0x0772
            boolean r1 = r22.deserialize()
            if (r1 != 0) goto L_0x0724
            r34 = r11
            goto L_0x05ff
        L_0x0724:
            int r6 = r22.ordinal()
            com.alibaba.fastjson.serializer.SerializerFeature[] r1 = r22.serialzeFeatures()
            int r7 = com.alibaba.fastjson.serializer.SerializerFeature.of(r1)
            com.alibaba.fastjson.parser.Feature[] r1 = r22.parseFeatures()
            int r16 = com.alibaba.fastjson.parser.Feature.of(r1)
            java.lang.String r1 = r22.name()
            int r1 = r1.length()
            if (r1 == 0) goto L_0x0768
            java.lang.String r1 = r22.name()
            com.alibaba.fastjson.util.FieldInfo r5 = new com.alibaba.fastjson.util.FieldInfo
            r20 = 0
            r0 = r5
            r4 = r38
            r13 = r5
            r5 = r39
            r23 = 1
            r8 = r16
            r24 = 0
            r10 = r22
            r30 = r15
            r15 = r11
            r11 = r20
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)
            add(r14, r13)
            r34 = r15
            r13 = r27
            goto L_0x07ad
        L_0x0768:
            r30 = r15
            r23 = 1
            r24 = 0
            r15 = r11
            r8 = r16
            goto L_0x077d
        L_0x0772:
            r30 = r15
            r23 = 1
            r24 = 0
            r15 = r11
            r7 = r16
            r8 = r20
        L_0x077d:
            r10 = r22
            goto L_0x078d
        L_0x0780:
            r30 = r15
            r23 = 1
            r24 = 0
            r15 = r11
            r7 = r16
            r10 = r17
            r8 = r20
        L_0x078d:
            if (r27 == 0) goto L_0x0796
            r13 = r27
            java.lang.String r0 = r13.translate(r0)
            goto L_0x0798
        L_0x0796:
            r13 = r27
        L_0x0798:
            r1 = r0
            com.alibaba.fastjson.util.FieldInfo r11 = new com.alibaba.fastjson.util.FieldInfo
            r16 = 0
            r0 = r11
            r4 = r38
            r5 = r39
            r34 = r15
            r15 = r11
            r11 = r16
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)
            add(r14, r15)
        L_0x07ad:
            int r8 = r26 + 1
            r27 = r13
            r9 = r28
            r10 = r29
            r15 = r30
            r11 = 0
            r13 = r41
            goto L_0x054e
        L_0x07bc:
            r41 = r13
            r13 = r27
            r24 = 0
            java.lang.reflect.Field[] r0 = r38.getFields()
            r15 = r39
            computeFields(r12, r15, r13, r14, r0)
            java.lang.reflect.Method[] r11 = r38.getMethods()
            int r10 = r11.length
            r9 = 0
        L_0x07d1:
            if (r9 >= r10) goto L_0x08f7
            r2 = r11[r9]
            java.lang.String r0 = r2.getName()
            int r1 = r0.length()
            if (r1 >= r7) goto L_0x07ed
        L_0x07df:
            r22 = r9
            r16 = r10
            r23 = r11
            r25 = r34
        L_0x07e7:
            r17 = 4
            r20 = 3
            goto L_0x08ec
        L_0x07ed:
            int r1 = r2.getModifiers()
            boolean r1 = java.lang.reflect.Modifier.isStatic(r1)
            if (r1 == 0) goto L_0x07f8
            goto L_0x07df
        L_0x07f8:
            if (r41 != 0) goto L_0x07df
            java.lang.String r1 = "get"
            boolean r1 = r0.startsWith(r1)
            if (r1 == 0) goto L_0x07df
            r1 = 3
            char r3 = r0.charAt(r1)
            boolean r1 = java.lang.Character.isUpperCase(r3)
            if (r1 == 0) goto L_0x07df
            java.lang.Class[] r1 = r2.getParameterTypes()
            int r1 = r1.length
            if (r1 == 0) goto L_0x0815
            goto L_0x07df
        L_0x0815:
            java.lang.Class<java.util.Collection> r1 = java.util.Collection.class
            java.lang.Class r3 = r2.getReturnType()
            boolean r1 = r1.isAssignableFrom(r3)
            if (r1 != 0) goto L_0x0845
            java.lang.Class<java.util.Map> r1 = java.util.Map.class
            java.lang.Class r3 = r2.getReturnType()
            boolean r1 = r1.isAssignableFrom(r3)
            if (r1 != 0) goto L_0x0845
            java.lang.Class<java.util.concurrent.atomic.AtomicBoolean> r1 = java.util.concurrent.atomic.AtomicBoolean.class
            java.lang.Class r3 = r2.getReturnType()
            if (r1 == r3) goto L_0x0845
            java.lang.Class<java.util.concurrent.atomic.AtomicInteger> r1 = java.util.concurrent.atomic.AtomicInteger.class
            java.lang.Class r3 = r2.getReturnType()
            if (r1 == r3) goto L_0x0845
            java.lang.Class<java.util.concurrent.atomic.AtomicLong> r1 = java.util.concurrent.atomic.AtomicLong.class
            java.lang.Class r3 = r2.getReturnType()
            if (r1 != r3) goto L_0x07df
        L_0x0845:
            java.lang.Class<com.alibaba.fastjson.annotation.JSONField> r1 = com.alibaba.fastjson.annotation.JSONField.class
            java.lang.annotation.Annotation r1 = r2.getAnnotation(r1)
            r16 = r1
            com.alibaba.fastjson.annotation.JSONField r16 = (com.alibaba.fastjson.annotation.JSONField) r16
            if (r16 == 0) goto L_0x0858
            boolean r1 = r16.deserialize()
            if (r1 == 0) goto L_0x0858
            goto L_0x07df
        L_0x0858:
            if (r16 == 0) goto L_0x086c
            java.lang.String r1 = r16.name()
            int r1 = r1.length()
            if (r1 <= 0) goto L_0x086c
            java.lang.String r0 = r16.name()
            r6 = r34
            r8 = 3
            goto L_0x08a1
        L_0x086c:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r8 = 3
            char r3 = r0.charAt(r8)
            char r3 = java.lang.Character.toLowerCase(r3)
            r1.append(r3)
            java.lang.String r0 = r0.substring(r7)
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            r6 = r34
            java.lang.reflect.Field r1 = com.alibaba.fastjson.util.TypeUtils.getField(r12, r0, r6)
            if (r1 == 0) goto L_0x08a1
            java.lang.Class<com.alibaba.fastjson.annotation.JSONField> r3 = com.alibaba.fastjson.annotation.JSONField.class
            java.lang.annotation.Annotation r1 = r1.getAnnotation(r3)
            com.alibaba.fastjson.annotation.JSONField r1 = (com.alibaba.fastjson.annotation.JSONField) r1
            if (r1 == 0) goto L_0x08a1
            boolean r1 = r1.deserialize()
            if (r1 != 0) goto L_0x08a1
            goto L_0x08a7
        L_0x08a1:
            com.alibaba.fastjson.util.FieldInfo r1 = getField(r14, r0)
            if (r1 == 0) goto L_0x08b1
        L_0x08a7:
            r25 = r6
            r22 = r9
            r16 = r10
            r23 = r11
            goto L_0x07e7
        L_0x08b1:
            if (r13 == 0) goto L_0x08b7
            java.lang.String r0 = r13.translate(r0)
        L_0x08b7:
            r1 = r0
            com.alibaba.fastjson.util.FieldInfo r5 = new com.alibaba.fastjson.util.FieldInfo
            r3 = 0
            r17 = 0
            r20 = 0
            r22 = 0
            r23 = 0
            r24 = 0
            r0 = r5
            r4 = r38
            r37 = r5
            r5 = r39
            r25 = r6
            r6 = r17
            r17 = 4
            r7 = r20
            r20 = 3
            r8 = r22
            r22 = r9
            r9 = r16
            r16 = r10
            r10 = r23
            r23 = r11
            r11 = r24
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)
            r0 = r37
            add(r14, r0)
        L_0x08ec:
            int r9 = r22 + 1
            r10 = r16
            r11 = r23
            r34 = r25
            r7 = 4
            goto L_0x07d1
        L_0x08f7:
            com.alibaba.fastjson.util.JavaBeanInfo r9 = new com.alibaba.fastjson.util.JavaBeanInfo
            r0 = r9
            r1 = r38
            r2 = r41
            r3 = r18
            r4 = r21
            r5 = r40
            r6 = r19
            r7 = r42
            r8 = r14
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.util.JavaBeanInfo.build(java.lang.Class, java.lang.reflect.Type, com.alibaba.fastjson.PropertyNamingStrategy, boolean, boolean):com.alibaba.fastjson.util.JavaBeanInfo");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:19:0x004b, code lost:
        if ((java.util.Map.class.isAssignableFrom(r5) || java.util.Collection.class.isAssignableFrom(r5) || java.util.concurrent.atomic.AtomicLong.class.equals(r5) || java.util.concurrent.atomic.AtomicInteger.class.equals(r5) || java.util.concurrent.atomic.AtomicBoolean.class.equals(r5)) == false) goto L_0x0012;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void computeFields(java.lang.Class<?> r18, java.lang.reflect.Type r19, com.alibaba.fastjson.PropertyNamingStrategy r20, java.util.List<com.alibaba.fastjson.util.FieldInfo> r21, java.lang.reflect.Field[] r22) {
        /*
            r0 = r20
            r1 = r22
            int r2 = r1.length
            r4 = 0
        L_0x0006:
            if (r4 >= r2) goto L_0x00d2
            r8 = r1[r4]
            int r5 = r8.getModifiers()
            r6 = r5 & 8
            if (r6 == 0) goto L_0x0016
        L_0x0012:
            r5 = r21
            goto L_0x00ce
        L_0x0016:
            r5 = r5 & 16
            r6 = 1
            if (r5 == 0) goto L_0x004e
            java.lang.Class r5 = r8.getType()
            java.lang.Class<java.util.Map> r7 = java.util.Map.class
            boolean r7 = r7.isAssignableFrom(r5)
            if (r7 != 0) goto L_0x004a
            java.lang.Class<java.util.Collection> r7 = java.util.Collection.class
            boolean r7 = r7.isAssignableFrom(r5)
            if (r7 != 0) goto L_0x004a
            java.lang.Class<java.util.concurrent.atomic.AtomicLong> r7 = java.util.concurrent.atomic.AtomicLong.class
            boolean r7 = r7.equals(r5)
            if (r7 != 0) goto L_0x004a
            java.lang.Class<java.util.concurrent.atomic.AtomicInteger> r7 = java.util.concurrent.atomic.AtomicInteger.class
            boolean r7 = r7.equals(r5)
            if (r7 != 0) goto L_0x004a
            java.lang.Class<java.util.concurrent.atomic.AtomicBoolean> r7 = java.util.concurrent.atomic.AtomicBoolean.class
            boolean r5 = r7.equals(r5)
            if (r5 == 0) goto L_0x0048
            goto L_0x004a
        L_0x0048:
            r5 = 0
            goto L_0x004b
        L_0x004a:
            r5 = 1
        L_0x004b:
            if (r5 != 0) goto L_0x004e
            goto L_0x0012
        L_0x004e:
            java.util.Iterator r5 = r21.iterator()
        L_0x0052:
            boolean r7 = r5.hasNext()
            if (r7 == 0) goto L_0x006b
            java.lang.Object r7 = r5.next()
            com.alibaba.fastjson.util.FieldInfo r7 = (com.alibaba.fastjson.util.FieldInfo) r7
            java.lang.String r7 = r7.name
            java.lang.String r9 = r8.getName()
            boolean r7 = r7.equals(r9)
            if (r7 == 0) goto L_0x0052
            goto L_0x006c
        L_0x006b:
            r6 = 0
        L_0x006c:
            if (r6 == 0) goto L_0x006f
            goto L_0x0012
        L_0x006f:
            java.lang.String r5 = r8.getName()
            java.lang.Class<com.alibaba.fastjson.annotation.JSONField> r6 = com.alibaba.fastjson.annotation.JSONField.class
            java.lang.annotation.Annotation r6 = r8.getAnnotation(r6)
            r15 = r6
            com.alibaba.fastjson.annotation.JSONField r15 = (com.alibaba.fastjson.annotation.JSONField) r15
            if (r15 == 0) goto L_0x00ab
            boolean r6 = r15.deserialize()
            if (r6 != 0) goto L_0x0085
            goto L_0x0012
        L_0x0085:
            int r6 = r15.ordinal()
            com.alibaba.fastjson.serializer.SerializerFeature[] r7 = r15.serialzeFeatures()
            int r7 = com.alibaba.fastjson.serializer.SerializerFeature.of(r7)
            com.alibaba.fastjson.parser.Feature[] r9 = r15.parseFeatures()
            int r9 = com.alibaba.fastjson.parser.Feature.of(r9)
            java.lang.String r10 = r15.name()
            int r10 = r10.length()
            if (r10 == 0) goto L_0x00a7
            java.lang.String r5 = r15.name()
        L_0x00a7:
            r11 = r6
            r12 = r7
            r13 = r9
            goto L_0x00ae
        L_0x00ab:
            r11 = 0
            r12 = 0
            r13 = 0
        L_0x00ae:
            if (r0 == 0) goto L_0x00b4
            java.lang.String r5 = r0.translate(r5)
        L_0x00b4:
            r6 = r5
            com.alibaba.fastjson.util.FieldInfo r14 = new com.alibaba.fastjson.util.FieldInfo
            r7 = 0
            r16 = 0
            r17 = 0
            r5 = r14
            r9 = r18
            r10 = r19
            r3 = r14
            r14 = r16
            r16 = r17
            r5.<init>(r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16)
            r5 = r21
            add(r5, r3)
        L_0x00ce:
            int r4 = r4 + 1
            goto L_0x0006
        L_0x00d2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.util.JavaBeanInfo.computeFields(java.lang.Class, java.lang.reflect.Type, com.alibaba.fastjson.PropertyNamingStrategy, java.util.List, java.lang.reflect.Field[]):void");
    }

    static Constructor<?> getDefaultConstructor(Class<?> cls, Constructor<?>[] constructorArr) {
        Constructor<?> constructor = null;
        if (Modifier.isAbstract(cls.getModifiers())) {
            return null;
        }
        int length = constructorArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            Constructor<?> constructor2 = constructorArr[i];
            if (constructor2.getParameterTypes().length == 0) {
                constructor = constructor2;
                break;
            }
            i++;
        }
        if (constructor == null && cls.isMemberClass() && !Modifier.isStatic(cls.getModifiers())) {
            int length2 = constructorArr.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length2) {
                    break;
                }
                Constructor<?> constructor3 = constructorArr[i2];
                Class[] parameterTypes = constructor3.getParameterTypes();
                if (parameterTypes.length == 1 && parameterTypes[0].equals(cls.getDeclaringClass())) {
                    constructor = constructor3;
                    break;
                }
                i2++;
            }
        }
        return constructor;
    }

    public static Constructor<?> getCreatorConstructor(Constructor[] constructorArr) {
        boolean z;
        int length = constructorArr.length;
        Constructor constructor = null;
        int i = 0;
        while (true) {
            String str = "multi-JSONCreator";
            if (i < length) {
                Constructor constructor2 = constructorArr[i];
                if (((JSONCreator) constructor2.getAnnotation(JSONCreator.class)) != null) {
                    if (constructor == null) {
                        constructor = constructor2;
                    } else {
                        throw new JSONException(str);
                    }
                }
                i++;
            } else if (constructor != null) {
                return constructor;
            } else {
                for (Constructor constructor3 : constructorArr) {
                    Annotation[][] parameterAnnotations = constructor3.getParameterAnnotations();
                    if (parameterAnnotations.length != 0) {
                        int length2 = parameterAnnotations.length;
                        int i2 = 0;
                        while (true) {
                            z = true;
                            if (i2 >= length2) {
                                break;
                            }
                            Annotation[] annotationArr = parameterAnnotations[i2];
                            int length3 = annotationArr.length;
                            int i3 = 0;
                            while (true) {
                                if (i3 >= length3) {
                                    z = false;
                                    break;
                                } else if (annotationArr[i3] instanceof JSONField) {
                                    break;
                                } else {
                                    i3++;
                                }
                            }
                            if (!z) {
                                z = false;
                                break;
                            }
                            i2++;
                        }
                        if (!z) {
                            continue;
                        } else if (constructor == null) {
                            constructor = constructor3;
                        } else {
                            throw new JSONException(str);
                        }
                    }
                }
                if (constructor != null) {
                }
                return constructor;
            }
        }
    }

    private static Method getFactoryMethod(Class<?> cls, Method[] methodArr) {
        Method method = null;
        for (Method method2 : methodArr) {
            if (Modifier.isStatic(method2.getModifiers()) && cls.isAssignableFrom(method2.getReturnType()) && ((JSONCreator) method2.getAnnotation(JSONCreator.class)) != null) {
                if (method == null) {
                    method = method2;
                } else {
                    throw new JSONException("multi-JSONCreator");
                }
            }
        }
        return method;
    }

    public static Class<?> getBuilderClass(JSONType jSONType) {
        return getBuilderClass(null, jSONType);
    }

    public static Class<?> getBuilderClass(Class<?> cls, JSONType jSONType) {
        if (cls != null && cls.getName().equals("org.springframework.security.web.savedrequest.DefaultSavedRequest")) {
            return TypeUtils.loadClass("org.springframework.security.web.savedrequest.DefaultSavedRequest$Builder");
        }
        if (jSONType == null) {
            return null;
        }
        Class<Void> builder = jSONType.builder();
        if (builder == Void.class) {
            return null;
        }
        return builder;
    }
}
