package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.JSONLexerBase;
import com.alibaba.fastjson.parser.ParseContext;
import com.alibaba.fastjson.parser.ParserConfig;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.JavaBeanInfo;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.ConcurrentMap;

public class JavaBeanDeserializer implements ObjectDeserializer {
    private final Map<String, FieldDeserializer> alterNameFieldDeserializers;
    public final JavaBeanInfo beanInfo;
    protected final Class<?> clazz;
    private ConcurrentMap<String, Object> extraFieldDeserializers;
    private final FieldDeserializer[] fieldDeserializers;
    private transient long[] hashArray;
    private transient short[] hashArrayMapping;
    private transient long[] smartMatchHashArray;
    private transient short[] smartMatchHashArrayMapping;
    protected final FieldDeserializer[] sortedFieldDeserializers;

    public int getFastMatchToken() {
        return 12;
    }

    public JavaBeanDeserializer(ParserConfig parserConfig, Class<?> cls) {
        this(parserConfig, cls, cls);
    }

    public JavaBeanDeserializer(ParserConfig parserConfig, Class<?> cls, Type type) {
        this(parserConfig, JavaBeanInfo.build(cls, type, parserConfig.propertyNamingStrategy, parserConfig.fieldBased, parserConfig.compatibleWithJavaBean));
    }

    public JavaBeanDeserializer(ParserConfig parserConfig, JavaBeanInfo javaBeanInfo) {
        String[] strArr;
        this.clazz = javaBeanInfo.clazz;
        this.beanInfo = javaBeanInfo;
        this.sortedFieldDeserializers = new FieldDeserializer[javaBeanInfo.sortedFields.length];
        int length = javaBeanInfo.sortedFields.length;
        Map<String, FieldDeserializer> map = null;
        int i = 0;
        while (i < length) {
            FieldInfo fieldInfo = javaBeanInfo.sortedFields[i];
            FieldDeserializer createFieldDeserializer = parserConfig.createFieldDeserializer(parserConfig, javaBeanInfo, fieldInfo);
            this.sortedFieldDeserializers[i] = createFieldDeserializer;
            Map<String, FieldDeserializer> map2 = map;
            for (String str : fieldInfo.alternateNames) {
                if (map2 == null) {
                    map2 = new HashMap<>();
                }
                map2.put(str, createFieldDeserializer);
            }
            i++;
            map = map2;
        }
        this.alterNameFieldDeserializers = map;
        this.fieldDeserializers = new FieldDeserializer[javaBeanInfo.fields.length];
        int length2 = javaBeanInfo.fields.length;
        for (int i2 = 0; i2 < length2; i2++) {
            this.fieldDeserializers[i2] = getFieldDeserializer(javaBeanInfo.fields[i2].name);
        }
    }

    public FieldDeserializer getFieldDeserializer(String str) {
        return getFieldDeserializer(str, null);
    }

    public FieldDeserializer getFieldDeserializer(String str, int[] iArr) {
        if (str == null) {
            return null;
        }
        int i = 0;
        int length = this.sortedFieldDeserializers.length - 1;
        while (i <= length) {
            int i2 = (i + length) >>> 1;
            int compareTo = this.sortedFieldDeserializers[i2].fieldInfo.name.compareTo(str);
            if (compareTo < 0) {
                i = i2 + 1;
            } else if (compareTo > 0) {
                length = i2 - 1;
            } else if (isSetFlag(i2, iArr)) {
                return null;
            } else {
                return this.sortedFieldDeserializers[i2];
            }
        }
        Map<String, FieldDeserializer> map = this.alterNameFieldDeserializers;
        if (map != null) {
            return (FieldDeserializer) map.get(str);
        }
        return null;
    }

    public FieldDeserializer getFieldDeserializer(long j) {
        int i = 0;
        if (this.hashArray == null) {
            long[] jArr = new long[this.sortedFieldDeserializers.length];
            int i2 = 0;
            while (true) {
                FieldDeserializer[] fieldDeserializerArr = this.sortedFieldDeserializers;
                if (i2 >= fieldDeserializerArr.length) {
                    break;
                }
                jArr[i2] = TypeUtils.fnv1a_64(fieldDeserializerArr[i2].fieldInfo.name);
                i2++;
            }
            Arrays.sort(jArr);
            this.hashArray = jArr;
        }
        int binarySearch = Arrays.binarySearch(this.hashArray, j);
        if (binarySearch < 0) {
            return null;
        }
        if (this.hashArrayMapping == null) {
            short[] sArr = new short[this.hashArray.length];
            Arrays.fill(sArr, -1);
            while (true) {
                FieldDeserializer[] fieldDeserializerArr2 = this.sortedFieldDeserializers;
                if (i >= fieldDeserializerArr2.length) {
                    break;
                }
                int binarySearch2 = Arrays.binarySearch(this.hashArray, TypeUtils.fnv1a_64(fieldDeserializerArr2[i].fieldInfo.name));
                if (binarySearch2 >= 0) {
                    sArr[binarySearch2] = (short) i;
                }
                i++;
            }
            this.hashArrayMapping = sArr;
        }
        short s = this.hashArrayMapping[binarySearch];
        if (s != -1) {
            return this.sortedFieldDeserializers[s];
        }
        return null;
    }

    static boolean isSetFlag(int i, int[] iArr) {
        if (iArr == null) {
            return false;
        }
        int i2 = i / 32;
        int i3 = i % 32;
        if (i2 < iArr.length) {
            if (((1 << i3) & iArr[i2]) != 0) {
                return true;
            }
        }
        return false;
    }

    public Object createInstance(DefaultJSONParser defaultJSONParser, Type type) {
        Object obj;
        FieldInfo[] fieldInfoArr;
        String str = "create instance error, class ";
        if (!(type instanceof Class) || !this.clazz.isInterface()) {
            Object obj2 = null;
            if (this.beanInfo.defaultConstructor == null && this.beanInfo.factoryMethod == null) {
                return null;
            }
            if (this.beanInfo.factoryMethod != null && this.beanInfo.defaultConstructorParameterSize > 0) {
                return null;
            }
            try {
                Constructor<?> constructor = this.beanInfo.defaultConstructor;
                if (this.beanInfo.defaultConstructorParameterSize != 0) {
                    ParseContext context = defaultJSONParser.getContext();
                    String str2 = "can't create non-static inner class instance.";
                    if (context != null) {
                        if (context.object != null) {
                            if (type instanceof Class) {
                                String name = ((Class) type).getName();
                                String substring = name.substring(0, name.lastIndexOf(36));
                                Object obj3 = context.object;
                                String name2 = obj3.getClass().getName();
                                if (!name2.equals(substring)) {
                                    ParseContext parseContext = context.parent;
                                    if (!(parseContext == null || parseContext.object == null || ((!"java.util.ArrayList".equals(name2) && !"java.util.List".equals(name2) && !"java.util.Collection".equals(name2) && !"java.util.Map".equals(name2) && !"java.util.HashMap".equals(name2)) || !parseContext.object.getClass().getName().equals(substring)))) {
                                        obj2 = parseContext.object;
                                    }
                                    obj3 = obj2;
                                }
                                if (obj3 != null) {
                                    obj = constructor.newInstance(new Object[]{obj3});
                                } else {
                                    throw new JSONException(str2);
                                }
                            } else {
                                throw new JSONException(str2);
                            }
                        }
                    }
                    throw new JSONException(str2);
                } else if (constructor != null) {
                    obj = constructor.newInstance(new Object[0]);
                } else {
                    obj = this.beanInfo.factoryMethod.invoke(null, new Object[0]);
                }
                if (defaultJSONParser != null && defaultJSONParser.lexer.isEnabled(Feature.InitStringFieldAsEmpty)) {
                    for (FieldInfo fieldInfo : this.beanInfo.fields) {
                        if (fieldInfo.fieldClass == String.class) {
                            try {
                                fieldInfo.set(obj, "");
                            } catch (Exception e) {
                                StringBuilder sb = new StringBuilder();
                                sb.append(str);
                                sb.append(this.clazz.getName());
                                throw new JSONException(sb.toString(), e);
                            }
                        }
                    }
                }
                return obj;
            } catch (JSONException e2) {
                throw e2;
            } catch (Exception e3) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append(this.clazz.getName());
                throw new JSONException(sb2.toString(), e3);
            }
        } else {
            return Proxy.newProxyInstance(Thread.currentThread().getContextClassLoader(), new Class[]{(Class) type}, new JSONObject());
        }
    }

    public <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj) {
        return deserialze(defaultJSONParser, type, obj, 0);
    }

    public <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj, int i) {
        return deserialze(defaultJSONParser, type, obj, null, i, null);
    }

    public <T> T deserialzeArrayMapping(DefaultJSONParser defaultJSONParser, Type type, Object obj, Object obj2) {
        Enum enumR;
        JSONLexer jSONLexer = defaultJSONParser.lexer;
        if (jSONLexer.token() == 14) {
            T createInstance = createInstance(defaultJSONParser, type);
            int i = 0;
            int length = this.sortedFieldDeserializers.length;
            while (true) {
                int i2 = 16;
                if (i >= length) {
                    break;
                }
                char c = i == length + -1 ? ']' : ',';
                FieldDeserializer fieldDeserializer = this.sortedFieldDeserializers[i];
                Class<?> cls = fieldDeserializer.fieldInfo.fieldClass;
                if (cls == Integer.TYPE) {
                    fieldDeserializer.setValue((Object) createInstance, jSONLexer.scanInt(c));
                } else if (cls == String.class) {
                    fieldDeserializer.setValue((Object) createInstance, jSONLexer.scanString(c));
                } else if (cls == Long.TYPE) {
                    fieldDeserializer.setValue((Object) createInstance, jSONLexer.scanLong(c));
                } else if (cls.isEnum()) {
                    char current = jSONLexer.getCurrent();
                    if (current == '\"' || current == 'n') {
                        enumR = jSONLexer.scanEnum(cls, defaultJSONParser.getSymbolTable(), c);
                    } else if (current < '0' || current > '9') {
                        enumR = scanEnum(jSONLexer, c);
                    } else {
                        enumR = ((EnumDeserializer) ((DefaultFieldDeserializer) fieldDeserializer).getFieldValueDeserilizer(defaultJSONParser.getConfig())).valueOf(jSONLexer.scanInt(c));
                    }
                    fieldDeserializer.setValue((Object) createInstance, (Object) enumR);
                } else if (cls == Boolean.TYPE) {
                    fieldDeserializer.setValue((Object) createInstance, jSONLexer.scanBoolean(c));
                } else if (cls == Float.TYPE) {
                    fieldDeserializer.setValue((Object) createInstance, (Object) Float.valueOf(jSONLexer.scanFloat(c)));
                } else if (cls == Double.TYPE) {
                    fieldDeserializer.setValue((Object) createInstance, (Object) Double.valueOf(jSONLexer.scanDouble(c)));
                } else if (cls == Date.class && jSONLexer.getCurrent() == '1') {
                    fieldDeserializer.setValue((Object) createInstance, (Object) new Date(jSONLexer.scanLong(c)));
                } else if (cls == BigDecimal.class) {
                    fieldDeserializer.setValue((Object) createInstance, (Object) jSONLexer.scanDecimal(c));
                } else {
                    jSONLexer.nextToken(14);
                    fieldDeserializer.setValue((Object) createInstance, defaultJSONParser.parseObject(fieldDeserializer.fieldInfo.fieldType, (Object) fieldDeserializer.fieldInfo.name));
                    if (jSONLexer.token() == 15) {
                        break;
                    }
                    if (c == ']') {
                        i2 = 15;
                    }
                    check(jSONLexer, i2);
                }
                i++;
            }
            jSONLexer.nextToken(16);
            return createInstance;
        }
        throw new JSONException("error");
    }

    /* access modifiers changed from: protected */
    public void check(JSONLexer jSONLexer, int i) {
        if (jSONLexer.token() != i) {
            throw new JSONException("syntax error");
        }
    }

    /* access modifiers changed from: protected */
    public Enum<?> scanEnum(JSONLexer jSONLexer, char c) {
        StringBuilder sb = new StringBuilder();
        sb.append("illegal enum. ");
        sb.append(jSONLexer.info());
        throw new JSONException(sb.toString());
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:229:0x02af, code lost:
        if (r11.matchStat == -2) goto L_0x02b1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:250:0x02f0, code lost:
        r11.nextTokenWithColon(4);
        r0 = r11.token();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:251:0x02f8, code lost:
        if (r0 != 4) goto L_0x0380;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:252:0x02fa, code lost:
        r0 = r11.stringVal();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:253:0x0304, code lost:
        if ("@".equals(r0) == false) goto L_0x030a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:254:0x0306, code lost:
        r1 = r15.object;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:256:0x0310, code lost:
        if ("..".equals(r0) == false) goto L_0x0327;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:257:0x0312, code lost:
        r2 = r15.parent;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:258:0x0316, code lost:
        if (r2.object == null) goto L_0x031b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:259:0x0318, code lost:
        r1 = r2.object;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:260:0x031b, code lost:
        r9.addResolveTask(new com.alibaba.fastjson.parser.DefaultJSONParser.ResolveTask(r2, r0));
        r9.resolveStatus = 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:262:0x032d, code lost:
        if ("$".equals(r0) == false) goto L_0x034a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:263:0x032f, code lost:
        r2 = r15;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:265:0x0332, code lost:
        if (r2.parent == null) goto L_0x0337;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:266:0x0334, code lost:
        r2 = r2.parent;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:268:0x0339, code lost:
        if (r2.object == null) goto L_0x033e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:269:0x033b, code lost:
        r1 = r2.object;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:270:0x033e, code lost:
        r9.addResolveTask(new com.alibaba.fastjson.parser.DefaultJSONParser.ResolveTask(r2, r0));
        r9.resolveStatus = 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:271:0x034a, code lost:
        r2 = r9.resolveReference(r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:272:0x034e, code lost:
        if (r2 == null) goto L_0x0352;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:273:0x0350, code lost:
        r1 = r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:274:0x0352, code lost:
        r9.addResolveTask(new com.alibaba.fastjson.parser.DefaultJSONParser.ResolveTask(r15, r0));
        r9.resolveStatus = 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:275:0x035d, code lost:
        r11.nextToken(13);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:276:0x0366, code lost:
        if (r11.token() != 13) goto L_0x0378;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:277:0x0368, code lost:
        r11.nextToken(16);
        r9.setContext(r15, r1, r10);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:278:0x0370, code lost:
        if (r6 == null) goto L_0x0374;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:279:0x0372, code lost:
        r6.object = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:280:0x0374, code lost:
        r9.setContext(r15);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:281:0x0377, code lost:
        return r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:284:0x037f, code lost:
        throw new com.alibaba.fastjson.JSONException("illegal ref");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:285:0x0380, code lost:
        r3 = new java.lang.StringBuilder();
        r3.append("illegal ref, ");
        r3.append(com.alibaba.fastjson.parser.JSONToken.name(r0));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:286:0x039a, code lost:
        throw new com.alibaba.fastjson.JSONException(r3.toString());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:316:0x0411, code lost:
        r14 = r6;
        r2 = r18;
        r27 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:480:0x0668, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:481:0x0669, code lost:
        r4 = new java.lang.StringBuilder();
        r4.append("create instance error, ");
        r4.append(r3);
        r4.append(", ");
        r4.append(r8.beanInfo.creatorConstructor.toGenericString());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:482:0x068f, code lost:
        throw new com.alibaba.fastjson.JSONException(r4.toString(), r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:488:0x06a1, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:490:?, code lost:
        r3 = new java.lang.StringBuilder();
        r3.append("create factory method error, ");
        r3.append(r8.beanInfo.factoryMethod.toString());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:491:0x06c0, code lost:
        throw new com.alibaba.fastjson.JSONException(r3.toString(), r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:506:0x06e0, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:509:0x06e8, code lost:
        throw new com.alibaba.fastjson.JSONException("build object error", r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:510:0x06e9, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:520:0x072d, code lost:
        throw new com.alibaba.fastjson.JSONException(r1.toString());
     */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [B:387:0x0529, B:470:0x0636, B:485:0x0696, B:500:0x06d2] */
    /* JADX WARNING: Removed duplicated region for block: B:236:0x02bc A[Catch:{ all -> 0x073c }] */
    /* JADX WARNING: Removed duplicated region for block: B:321:0x0430 A[Catch:{ all -> 0x073c }] */
    /* JADX WARNING: Removed duplicated region for block: B:323:0x043b A[ADDED_TO_REGION, Catch:{ all -> 0x073c }] */
    /* JADX WARNING: Removed duplicated region for block: B:338:0x0471  */
    /* JADX WARNING: Removed duplicated region for block: B:367:0x04d1  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0071 A[Catch:{ all -> 0x0049 }] */
    /* JADX WARNING: Removed duplicated region for block: B:380:0x0515 A[Catch:{ all -> 0x0736 }] */
    /* JADX WARNING: Removed duplicated region for block: B:381:0x0516 A[Catch:{ all -> 0x0736 }] */
    /* JADX WARNING: Removed duplicated region for block: B:530:0x0745  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser r24, java.lang.reflect.Type r25, java.lang.Object r26, java.lang.Object r27, int r28, int[] r29) {
        /*
            r23 = this;
            r8 = r23
            r9 = r24
            r0 = r25
            r10 = r26
            java.lang.Class<com.alibaba.fastjson.JSON> r1 = com.alibaba.fastjson.JSON.class
            if (r0 == r1) goto L_0x074b
            java.lang.Class<com.alibaba.fastjson.JSONObject> r1 = com.alibaba.fastjson.JSONObject.class
            if (r0 != r1) goto L_0x0012
            goto L_0x074b
        L_0x0012:
            com.alibaba.fastjson.parser.JSONLexer r1 = r9.lexer
            r11 = r1
            com.alibaba.fastjson.parser.JSONLexerBase r11 = (com.alibaba.fastjson.parser.JSONLexerBase) r11
            com.alibaba.fastjson.parser.ParserConfig r12 = r24.getConfig()
            int r1 = r11.token()
            r2 = 8
            r13 = 16
            r14 = 0
            if (r1 != r2) goto L_0x002a
            r11.nextToken(r13)
            return r14
        L_0x002a:
            com.alibaba.fastjson.parser.ParseContext r2 = r24.getContext()
            if (r27 == 0) goto L_0x0034
            if (r2 == 0) goto L_0x0034
            com.alibaba.fastjson.parser.ParseContext r2 = r2.parent
        L_0x0034:
            r15 = r2
            r7 = 13
            if (r1 != r7) goto L_0x004f
            r11.nextToken(r13)     // Catch:{ all -> 0x0049 }
            if (r27 != 0) goto L_0x0043
            java.lang.Object r0 = r23.createInstance(r24, r25)     // Catch:{ all -> 0x0049 }
            goto L_0x0045
        L_0x0043:
            r0 = r27
        L_0x0045:
            r9.setContext(r15)
            return r0
        L_0x0049:
            r0 = move-exception
            r1 = r27
        L_0x004c:
            r6 = r14
            goto L_0x0743
        L_0x004f:
            r2 = 14
            r6 = 0
            if (r1 != r2) goto L_0x0079
            com.alibaba.fastjson.parser.Feature r3 = com.alibaba.fastjson.parser.Feature.SupportArrayToBean     // Catch:{ all -> 0x0049 }
            int r3 = r3.mask     // Catch:{ all -> 0x0049 }
            com.alibaba.fastjson.util.JavaBeanInfo r4 = r8.beanInfo     // Catch:{ all -> 0x0049 }
            int r4 = r4.parserFeatures     // Catch:{ all -> 0x0049 }
            r4 = r4 & r3
            if (r4 != 0) goto L_0x006e
            com.alibaba.fastjson.parser.Feature r4 = com.alibaba.fastjson.parser.Feature.SupportArrayToBean     // Catch:{ all -> 0x0049 }
            boolean r4 = r11.isEnabled(r4)     // Catch:{ all -> 0x0049 }
            if (r4 != 0) goto L_0x006e
            r3 = r28 & r3
            if (r3 == 0) goto L_0x006c
            goto L_0x006e
        L_0x006c:
            r3 = 0
            goto L_0x006f
        L_0x006e:
            r3 = 1
        L_0x006f:
            if (r3 == 0) goto L_0x0079
            java.lang.Object r0 = r23.deserialzeArrayMapping(r24, r25, r26, r27)     // Catch:{ all -> 0x0049 }
            r9.setContext(r15)
            return r0
        L_0x0079:
            r3 = 12
            r4 = 4
            if (r1 == r3) goto L_0x011a
            if (r1 == r13) goto L_0x011a
            boolean r0 = r11.isBlankInput()     // Catch:{ all -> 0x0049 }
            if (r0 == 0) goto L_0x008a
            r9.setContext(r15)
            return r14
        L_0x008a:
            if (r1 != r4) goto L_0x00c3
            java.lang.String r0 = r11.stringVal()     // Catch:{ all -> 0x0049 }
            int r3 = r0.length()     // Catch:{ all -> 0x0049 }
            if (r3 != 0) goto L_0x009d
            r11.nextToken()     // Catch:{ all -> 0x0049 }
            r9.setContext(r15)
            return r14
        L_0x009d:
            com.alibaba.fastjson.util.JavaBeanInfo r3 = r8.beanInfo     // Catch:{ all -> 0x0049 }
            com.alibaba.fastjson.annotation.JSONType r3 = r3.jsonType     // Catch:{ all -> 0x0049 }
            if (r3 == 0) goto L_0x00c9
            com.alibaba.fastjson.util.JavaBeanInfo r3 = r8.beanInfo     // Catch:{ all -> 0x0049 }
            com.alibaba.fastjson.annotation.JSONType r3 = r3.jsonType     // Catch:{ all -> 0x0049 }
            java.lang.Class[] r3 = r3.seeAlso()     // Catch:{ all -> 0x0049 }
            int r4 = r3.length     // Catch:{ all -> 0x0049 }
        L_0x00ac:
            if (r6 >= r4) goto L_0x00c9
            r5 = r3[r6]     // Catch:{ all -> 0x0049 }
            java.lang.Class<java.lang.Enum> r7 = java.lang.Enum.class
            boolean r7 = r7.isAssignableFrom(r5)     // Catch:{ all -> 0x0049 }
            if (r7 == 0) goto L_0x00c0
            java.lang.Enum r0 = java.lang.Enum.valueOf(r5, r0)     // Catch:{ IllegalArgumentException -> 0x00c0 }
            r9.setContext(r15)
            return r0
        L_0x00c0:
            int r6 = r6 + 1
            goto L_0x00ac
        L_0x00c3:
            r0 = 5
            if (r1 != r0) goto L_0x00c9
            r11.getCalendar()     // Catch:{ all -> 0x0049 }
        L_0x00c9:
            if (r1 != r2) goto L_0x00dd
            char r0 = r11.getCurrent()     // Catch:{ all -> 0x0049 }
            r1 = 93
            if (r0 != r1) goto L_0x00dd
            r11.next()     // Catch:{ all -> 0x0049 }
            r11.nextToken()     // Catch:{ all -> 0x0049 }
            r9.setContext(r15)
            return r14
        L_0x00dd:
            java.lang.StringBuffer r0 = new java.lang.StringBuffer     // Catch:{ all -> 0x0049 }
            r0.<init>()     // Catch:{ all -> 0x0049 }
            java.lang.String r1 = "syntax error, expect {, actual "
            r0.append(r1)     // Catch:{ all -> 0x0049 }
            java.lang.String r1 = r11.tokenName()     // Catch:{ all -> 0x0049 }
            r0.append(r1)     // Catch:{ all -> 0x0049 }
            java.lang.String r1 = ", pos "
            r0.append(r1)     // Catch:{ all -> 0x0049 }
            int r1 = r11.pos()     // Catch:{ all -> 0x0049 }
            r0.append(r1)     // Catch:{ all -> 0x0049 }
            boolean r1 = r10 instanceof java.lang.String     // Catch:{ all -> 0x0049 }
            if (r1 == 0) goto L_0x0106
            java.lang.String r1 = ", fieldName "
            r0.append(r1)     // Catch:{ all -> 0x0049 }
            r0.append(r10)     // Catch:{ all -> 0x0049 }
        L_0x0106:
            java.lang.String r1 = ", fastjson-version "
            r0.append(r1)     // Catch:{ all -> 0x0049 }
            java.lang.String r1 = "1.2.41"
            r0.append(r1)     // Catch:{ all -> 0x0049 }
            com.alibaba.fastjson.JSONException r1 = new com.alibaba.fastjson.JSONException     // Catch:{ all -> 0x0049 }
            java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x0049 }
            r1.<init>(r0)     // Catch:{ all -> 0x0049 }
            throw r1     // Catch:{ all -> 0x0049 }
        L_0x011a:
            int r1 = r9.resolveStatus     // Catch:{ all -> 0x073e }
            r2 = 2
            if (r1 != r2) goto L_0x0121
            r9.resolveStatus = r6     // Catch:{ all -> 0x0049 }
        L_0x0121:
            com.alibaba.fastjson.util.JavaBeanInfo r1 = r8.beanInfo     // Catch:{ all -> 0x073e }
            java.lang.String r3 = r1.typeKey     // Catch:{ all -> 0x073e }
            r1 = r27
            r16 = r29
            r6 = r14
            r18 = r6
            r2 = 0
        L_0x012d:
            com.alibaba.fastjson.parser.deserializer.FieldDeserializer[] r14 = r8.sortedFieldDeserializers     // Catch:{ all -> 0x073c }
            int r14 = r14.length     // Catch:{ all -> 0x073c }
            if (r2 >= r14) goto L_0x013f
            com.alibaba.fastjson.parser.deserializer.FieldDeserializer[] r14 = r8.sortedFieldDeserializers     // Catch:{ all -> 0x073c }
            r14 = r14[r2]     // Catch:{ all -> 0x073c }
            com.alibaba.fastjson.util.FieldInfo r5 = r14.fieldInfo     // Catch:{ all -> 0x073c }
            java.lang.Class<?> r4 = r5.fieldClass     // Catch:{ all -> 0x073c }
            com.alibaba.fastjson.annotation.JSONField r20 = r5.getAnnotation()     // Catch:{ all -> 0x073c }
            goto L_0x0144
        L_0x013f:
            r4 = 0
            r5 = 0
            r14 = 0
            r20 = 0
        L_0x0144:
            if (r14 == 0) goto L_0x02b5
            char[] r13 = r5.name_chars     // Catch:{ all -> 0x073c }
            java.lang.Class r7 = java.lang.Integer.TYPE     // Catch:{ all -> 0x073c }
            r27 = r2
            r2 = -2
            if (r4 == r7) goto L_0x029d
            java.lang.Class<java.lang.Integer> r7 = java.lang.Integer.class
            if (r4 != r7) goto L_0x0155
            goto L_0x029d
        L_0x0155:
            java.lang.Class r7 = java.lang.Long.TYPE     // Catch:{ all -> 0x073c }
            if (r4 == r7) goto L_0x028a
            java.lang.Class<java.lang.Long> r7 = java.lang.Long.class
            if (r4 != r7) goto L_0x015f
            goto L_0x028a
        L_0x015f:
            java.lang.Class<java.lang.String> r7 = java.lang.String.class
            if (r4 != r7) goto L_0x0177
            java.lang.String r7 = r11.scanFieldString(r13)     // Catch:{ all -> 0x073c }
            int r13 = r11.matchStat     // Catch:{ all -> 0x073c }
            if (r13 <= 0) goto L_0x016e
        L_0x016b:
            r2 = r7
            goto L_0x02a9
        L_0x016e:
            int r13 = r11.matchStat     // Catch:{ all -> 0x073c }
            if (r13 != r2) goto L_0x0174
            goto L_0x02b1
        L_0x0174:
            r2 = r7
            goto L_0x02b8
        L_0x0177:
            java.lang.Class<java.util.Date> r7 = java.util.Date.class
            if (r4 != r7) goto L_0x018e
            java.lang.String r7 = r5.format     // Catch:{ all -> 0x073c }
            if (r7 != 0) goto L_0x018e
            java.util.Date r7 = r11.scanFieldDate(r13)     // Catch:{ all -> 0x073c }
            int r13 = r11.matchStat     // Catch:{ all -> 0x073c }
            if (r13 <= 0) goto L_0x0188
            goto L_0x016b
        L_0x0188:
            int r13 = r11.matchStat     // Catch:{ all -> 0x073c }
            if (r13 != r2) goto L_0x0174
            goto L_0x02b1
        L_0x018e:
            java.lang.Class<java.math.BigDecimal> r7 = java.math.BigDecimal.class
            if (r4 != r7) goto L_0x01a1
            java.math.BigDecimal r7 = r11.scanFieldDecimal(r13)     // Catch:{ all -> 0x073c }
            int r13 = r11.matchStat     // Catch:{ all -> 0x073c }
            if (r13 <= 0) goto L_0x019b
            goto L_0x016b
        L_0x019b:
            int r13 = r11.matchStat     // Catch:{ all -> 0x073c }
            if (r13 != r2) goto L_0x0174
            goto L_0x02b1
        L_0x01a1:
            java.lang.Class<java.math.BigInteger> r7 = java.math.BigInteger.class
            if (r4 != r7) goto L_0x01b4
            java.math.BigInteger r7 = r11.scanFieldBigInteger(r13)     // Catch:{ all -> 0x073c }
            int r13 = r11.matchStat     // Catch:{ all -> 0x073c }
            if (r13 <= 0) goto L_0x01ae
            goto L_0x016b
        L_0x01ae:
            int r13 = r11.matchStat     // Catch:{ all -> 0x073c }
            if (r13 != r2) goto L_0x0174
            goto L_0x02b1
        L_0x01b4:
            java.lang.Class r7 = java.lang.Boolean.TYPE     // Catch:{ all -> 0x073c }
            if (r4 == r7) goto L_0x0277
            java.lang.Class<java.lang.Boolean> r7 = java.lang.Boolean.class
            if (r4 != r7) goto L_0x01be
            goto L_0x0277
        L_0x01be:
            java.lang.Class r7 = java.lang.Float.TYPE     // Catch:{ all -> 0x073c }
            if (r4 == r7) goto L_0x0264
            java.lang.Class<java.lang.Float> r7 = java.lang.Float.class
            if (r4 != r7) goto L_0x01c8
            goto L_0x0264
        L_0x01c8:
            java.lang.Class r7 = java.lang.Double.TYPE     // Catch:{ all -> 0x073c }
            if (r4 == r7) goto L_0x0251
            java.lang.Class<java.lang.Double> r7 = java.lang.Double.class
            if (r4 != r7) goto L_0x01d2
            goto L_0x0251
        L_0x01d2:
            boolean r7 = r4.isEnum()     // Catch:{ all -> 0x073c }
            if (r7 == 0) goto L_0x0208
            com.alibaba.fastjson.parser.ParserConfig r7 = r24.getConfig()     // Catch:{ all -> 0x073c }
            com.alibaba.fastjson.parser.deserializer.ObjectDeserializer r7 = r7.getDeserializer(r4)     // Catch:{ all -> 0x073c }
            boolean r7 = r7 instanceof com.alibaba.fastjson.parser.deserializer.EnumDeserializer     // Catch:{ all -> 0x073c }
            if (r7 == 0) goto L_0x0208
            if (r20 == 0) goto L_0x01ee
            java.lang.Class r7 = r20.deserializeUsing()     // Catch:{ all -> 0x073c }
            java.lang.Class<java.lang.Void> r2 = java.lang.Void.class
            if (r7 != r2) goto L_0x0208
        L_0x01ee:
            boolean r2 = r14 instanceof com.alibaba.fastjson.parser.deserializer.DefaultFieldDeserializer     // Catch:{ all -> 0x073c }
            if (r2 == 0) goto L_0x02b7
            r2 = r14
            com.alibaba.fastjson.parser.deserializer.DefaultFieldDeserializer r2 = (com.alibaba.fastjson.parser.deserializer.DefaultFieldDeserializer) r2     // Catch:{ all -> 0x073c }
            com.alibaba.fastjson.parser.deserializer.ObjectDeserializer r2 = r2.fieldValueDeserilizer     // Catch:{ all -> 0x073c }
            java.lang.Enum r2 = r8.scanEnum(r11, r13, r2)     // Catch:{ all -> 0x073c }
            int r7 = r11.matchStat     // Catch:{ all -> 0x073c }
            if (r7 <= 0) goto L_0x0201
            goto L_0x02a9
        L_0x0201:
            int r7 = r11.matchStat     // Catch:{ all -> 0x073c }
            r13 = -2
            if (r7 != r13) goto L_0x02b8
            goto L_0x02b1
        L_0x0208:
            java.lang.Class<int[]> r2 = int[].class
            if (r4 != r2) goto L_0x021d
            int[] r2 = r11.scanFieldIntArray(r13)     // Catch:{ all -> 0x073c }
            int r7 = r11.matchStat     // Catch:{ all -> 0x073c }
            if (r7 <= 0) goto L_0x0216
            goto L_0x02a9
        L_0x0216:
            int r7 = r11.matchStat     // Catch:{ all -> 0x073c }
            r13 = -2
            if (r7 != r13) goto L_0x02b8
            goto L_0x02b1
        L_0x021d:
            java.lang.Class<float[]> r2 = float[].class
            if (r4 != r2) goto L_0x0232
            float[] r2 = r11.scanFieldFloatArray(r13)     // Catch:{ all -> 0x073c }
            int r7 = r11.matchStat     // Catch:{ all -> 0x073c }
            if (r7 <= 0) goto L_0x022b
            goto L_0x02a9
        L_0x022b:
            int r7 = r11.matchStat     // Catch:{ all -> 0x073c }
            r13 = -2
            if (r7 != r13) goto L_0x02b8
            goto L_0x02b1
        L_0x0232:
            java.lang.Class<float[][]> r2 = float[][].class
            if (r4 != r2) goto L_0x0247
            float[][] r2 = r11.scanFieldFloatArray2(r13)     // Catch:{ all -> 0x073c }
            int r7 = r11.matchStat     // Catch:{ all -> 0x073c }
            if (r7 <= 0) goto L_0x0240
            goto L_0x02a9
        L_0x0240:
            int r7 = r11.matchStat     // Catch:{ all -> 0x073c }
            r13 = -2
            if (r7 != r13) goto L_0x02b8
            goto L_0x02b1
        L_0x0247:
            boolean r2 = r11.matchField(r13)     // Catch:{ all -> 0x073c }
            if (r2 == 0) goto L_0x02b1
            r2 = 0
            r7 = 1
            goto L_0x02b9
        L_0x0251:
            double r21 = r11.scanFieldDouble(r13)     // Catch:{ all -> 0x073c }
            java.lang.Double r2 = java.lang.Double.valueOf(r21)     // Catch:{ all -> 0x073c }
            int r7 = r11.matchStat     // Catch:{ all -> 0x073c }
            if (r7 <= 0) goto L_0x025e
            goto L_0x02a9
        L_0x025e:
            int r7 = r11.matchStat     // Catch:{ all -> 0x073c }
            r13 = -2
            if (r7 != r13) goto L_0x02b8
            goto L_0x02b1
        L_0x0264:
            float r2 = r11.scanFieldFloat(r13)     // Catch:{ all -> 0x073c }
            java.lang.Float r2 = java.lang.Float.valueOf(r2)     // Catch:{ all -> 0x073c }
            int r7 = r11.matchStat     // Catch:{ all -> 0x073c }
            if (r7 <= 0) goto L_0x0271
            goto L_0x02a9
        L_0x0271:
            int r7 = r11.matchStat     // Catch:{ all -> 0x073c }
            r13 = -2
            if (r7 != r13) goto L_0x02b8
            goto L_0x02b1
        L_0x0277:
            boolean r2 = r11.scanFieldBoolean(r13)     // Catch:{ all -> 0x073c }
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r2)     // Catch:{ all -> 0x073c }
            int r7 = r11.matchStat     // Catch:{ all -> 0x073c }
            if (r7 <= 0) goto L_0x0284
            goto L_0x02a9
        L_0x0284:
            int r7 = r11.matchStat     // Catch:{ all -> 0x073c }
            r13 = -2
            if (r7 != r13) goto L_0x02b8
            goto L_0x02b1
        L_0x028a:
            long r21 = r11.scanFieldLong(r13)     // Catch:{ all -> 0x073c }
            java.lang.Long r2 = java.lang.Long.valueOf(r21)     // Catch:{ all -> 0x073c }
            int r7 = r11.matchStat     // Catch:{ all -> 0x073c }
            if (r7 <= 0) goto L_0x0297
            goto L_0x02a9
        L_0x0297:
            int r7 = r11.matchStat     // Catch:{ all -> 0x073c }
            r13 = -2
            if (r7 != r13) goto L_0x02b8
            goto L_0x02b1
        L_0x029d:
            int r2 = r11.scanFieldInt(r13)     // Catch:{ all -> 0x073c }
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch:{ all -> 0x073c }
            int r7 = r11.matchStat     // Catch:{ all -> 0x073c }
            if (r7 <= 0) goto L_0x02ac
        L_0x02a9:
            r7 = 1
            r13 = 1
            goto L_0x02ba
        L_0x02ac:
            int r7 = r11.matchStat     // Catch:{ all -> 0x073c }
            r13 = -2
            if (r7 != r13) goto L_0x02b8
        L_0x02b1:
            r5 = 13
            goto L_0x0418
        L_0x02b5:
            r27 = r2
        L_0x02b7:
            r2 = 0
        L_0x02b8:
            r7 = 0
        L_0x02b9:
            r13 = 0
        L_0x02ba:
            if (r7 != 0) goto L_0x0430
            r20 = r4
            com.alibaba.fastjson.parser.SymbolTable r4 = r9.symbolTable     // Catch:{ all -> 0x073c }
            java.lang.String r4 = r11.scanSymbol(r4)     // Catch:{ all -> 0x073c }
            if (r4 != 0) goto L_0x02e6
            r21 = r2
            int r2 = r11.token()     // Catch:{ all -> 0x073c }
            r22 = r5
            r5 = 13
            if (r2 != r5) goto L_0x02d9
            r5 = 16
            r11.nextToken(r5)     // Catch:{ all -> 0x073c }
            goto L_0x0411
        L_0x02d9:
            r5 = 16
            if (r2 != r5) goto L_0x02ea
            com.alibaba.fastjson.parser.Feature r2 = com.alibaba.fastjson.parser.Feature.AllowArbitraryCommas     // Catch:{ all -> 0x073c }
            boolean r2 = r11.isEnabled(r2)     // Catch:{ all -> 0x073c }
            if (r2 == 0) goto L_0x02ea
            goto L_0x02b1
        L_0x02e6:
            r21 = r2
            r22 = r5
        L_0x02ea:
            java.lang.String r2 = "$ref"
            if (r2 != r4) goto L_0x039b
            if (r15 == 0) goto L_0x039b
            r2 = 4
            r11.nextTokenWithColon(r2)     // Catch:{ all -> 0x073c }
            int r0 = r11.token()     // Catch:{ all -> 0x073c }
            if (r0 != r2) goto L_0x0380
            java.lang.String r0 = r11.stringVal()     // Catch:{ all -> 0x073c }
            java.lang.String r2 = "@"
            boolean r2 = r2.equals(r0)     // Catch:{ all -> 0x073c }
            if (r2 == 0) goto L_0x030a
            java.lang.Object r0 = r15.object     // Catch:{ all -> 0x073c }
            r1 = r0
            goto L_0x035d
        L_0x030a:
            java.lang.String r2 = ".."
            boolean r2 = r2.equals(r0)     // Catch:{ all -> 0x073c }
            if (r2 == 0) goto L_0x0327
            com.alibaba.fastjson.parser.ParseContext r2 = r15.parent     // Catch:{ all -> 0x073c }
            java.lang.Object r3 = r2.object     // Catch:{ all -> 0x073c }
            if (r3 == 0) goto L_0x031b
            java.lang.Object r1 = r2.object     // Catch:{ all -> 0x073c }
            goto L_0x035d
        L_0x031b:
            com.alibaba.fastjson.parser.DefaultJSONParser$ResolveTask r3 = new com.alibaba.fastjson.parser.DefaultJSONParser$ResolveTask     // Catch:{ all -> 0x073c }
            r3.<init>(r2, r0)     // Catch:{ all -> 0x073c }
            r9.addResolveTask(r3)     // Catch:{ all -> 0x073c }
            r0 = 1
            r9.resolveStatus = r0     // Catch:{ all -> 0x073c }
            goto L_0x035d
        L_0x0327:
            java.lang.String r2 = "$"
            boolean r2 = r2.equals(r0)     // Catch:{ all -> 0x073c }
            if (r2 == 0) goto L_0x034a
            r2 = r15
        L_0x0330:
            com.alibaba.fastjson.parser.ParseContext r3 = r2.parent     // Catch:{ all -> 0x073c }
            if (r3 == 0) goto L_0x0337
            com.alibaba.fastjson.parser.ParseContext r2 = r2.parent     // Catch:{ all -> 0x073c }
            goto L_0x0330
        L_0x0337:
            java.lang.Object r3 = r2.object     // Catch:{ all -> 0x073c }
            if (r3 == 0) goto L_0x033e
            java.lang.Object r1 = r2.object     // Catch:{ all -> 0x073c }
            goto L_0x035d
        L_0x033e:
            com.alibaba.fastjson.parser.DefaultJSONParser$ResolveTask r3 = new com.alibaba.fastjson.parser.DefaultJSONParser$ResolveTask     // Catch:{ all -> 0x073c }
            r3.<init>(r2, r0)     // Catch:{ all -> 0x073c }
            r9.addResolveTask(r3)     // Catch:{ all -> 0x073c }
            r0 = 1
            r9.resolveStatus = r0     // Catch:{ all -> 0x073c }
            goto L_0x035d
        L_0x034a:
            java.lang.Object r2 = r9.resolveReference(r0)     // Catch:{ all -> 0x073c }
            if (r2 == 0) goto L_0x0352
            r1 = r2
            goto L_0x035d
        L_0x0352:
            com.alibaba.fastjson.parser.DefaultJSONParser$ResolveTask r2 = new com.alibaba.fastjson.parser.DefaultJSONParser$ResolveTask     // Catch:{ all -> 0x073c }
            r2.<init>(r15, r0)     // Catch:{ all -> 0x073c }
            r9.addResolveTask(r2)     // Catch:{ all -> 0x073c }
            r0 = 1
            r9.resolveStatus = r0     // Catch:{ all -> 0x073c }
        L_0x035d:
            r0 = 13
            r11.nextToken(r0)     // Catch:{ all -> 0x073c }
            int r2 = r11.token()     // Catch:{ all -> 0x073c }
            if (r2 != r0) goto L_0x0378
            r0 = 16
            r11.nextToken(r0)     // Catch:{ all -> 0x073c }
            r9.setContext(r15, r1, r10)     // Catch:{ all -> 0x073c }
            if (r6 == 0) goto L_0x0374
            r6.object = r1
        L_0x0374:
            r9.setContext(r15)
            return r1
        L_0x0378:
            com.alibaba.fastjson.JSONException r0 = new com.alibaba.fastjson.JSONException     // Catch:{ all -> 0x073c }
            java.lang.String r2 = "illegal ref"
            r0.<init>(r2)     // Catch:{ all -> 0x073c }
            throw r0     // Catch:{ all -> 0x073c }
        L_0x0380:
            com.alibaba.fastjson.JSONException r2 = new com.alibaba.fastjson.JSONException     // Catch:{ all -> 0x073c }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x073c }
            r3.<init>()     // Catch:{ all -> 0x073c }
            java.lang.String r4 = "illegal ref, "
            r3.append(r4)     // Catch:{ all -> 0x073c }
            java.lang.String r0 = com.alibaba.fastjson.parser.JSONToken.name(r0)     // Catch:{ all -> 0x073c }
            r3.append(r0)     // Catch:{ all -> 0x073c }
            java.lang.String r0 = r3.toString()     // Catch:{ all -> 0x073c }
            r2.<init>(r0)     // Catch:{ all -> 0x073c }
            throw r2     // Catch:{ all -> 0x073c }
        L_0x039b:
            if (r3 == 0) goto L_0x03a3
            boolean r2 = r3.equals(r4)     // Catch:{ all -> 0x073c }
            if (r2 != 0) goto L_0x03a7
        L_0x03a3:
            java.lang.String r2 = com.alibaba.fastjson.JSON.DEFAULT_TYPE_KEY     // Catch:{ all -> 0x073c }
            if (r2 != r4) goto L_0x042d
        L_0x03a7:
            r2 = 4
            r11.nextTokenWithColon(r2)     // Catch:{ all -> 0x073c }
            int r4 = r11.token()     // Catch:{ all -> 0x073c }
            if (r4 != r2) goto L_0x0425
            java.lang.String r2 = r11.stringVal()     // Catch:{ all -> 0x073c }
            r4 = 16
            r11.nextToken(r4)     // Catch:{ all -> 0x073c }
            com.alibaba.fastjson.util.JavaBeanInfo r4 = r8.beanInfo     // Catch:{ all -> 0x073c }
            java.lang.String r4 = r4.typeName     // Catch:{ all -> 0x073c }
            boolean r4 = r2.equals(r4)     // Catch:{ all -> 0x073c }
            if (r4 != 0) goto L_0x0406
            com.alibaba.fastjson.parser.Feature r4 = com.alibaba.fastjson.parser.Feature.IgnoreAutoType     // Catch:{ all -> 0x073c }
            boolean r4 = r9.isEnabled(r4)     // Catch:{ all -> 0x073c }
            if (r4 == 0) goto L_0x03cd
            goto L_0x0406
        L_0x03cd:
            com.alibaba.fastjson.util.JavaBeanInfo r4 = r8.beanInfo     // Catch:{ all -> 0x073c }
            com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer r4 = r8.getSeeAlso(r12, r4, r2)     // Catch:{ all -> 0x073c }
            if (r4 != 0) goto L_0x03ea
            java.lang.Class r0 = com.alibaba.fastjson.util.TypeUtils.getClass(r25)     // Catch:{ all -> 0x073c }
            int r4 = r11.getFeatures()     // Catch:{ all -> 0x073c }
            java.lang.Class r14 = r12.checkAutoType(r2, r0, r4)     // Catch:{ all -> 0x073c }
            com.alibaba.fastjson.parser.ParserConfig r0 = r24.getConfig()     // Catch:{ all -> 0x073c }
            com.alibaba.fastjson.parser.deserializer.ObjectDeserializer r4 = r0.getDeserializer(r14)     // Catch:{ all -> 0x073c }
            goto L_0x03eb
        L_0x03ea:
            r14 = 0
        L_0x03eb:
            java.lang.Object r0 = r4.deserialze(r9, r14, r10)     // Catch:{ all -> 0x073c }
            boolean r5 = r4 instanceof com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer     // Catch:{ all -> 0x073c }
            if (r5 == 0) goto L_0x03fe
            com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer r4 = (com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) r4     // Catch:{ all -> 0x073c }
            if (r3 == 0) goto L_0x03fe
            com.alibaba.fastjson.parser.deserializer.FieldDeserializer r3 = r4.getFieldDeserializer(r3)     // Catch:{ all -> 0x073c }
            r3.setValue(r0, r2)     // Catch:{ all -> 0x073c }
        L_0x03fe:
            if (r6 == 0) goto L_0x0402
            r6.object = r1
        L_0x0402:
            r9.setContext(r15)
            return r0
        L_0x0406:
            int r2 = r11.token()     // Catch:{ all -> 0x073c }
            r5 = 13
            if (r2 != r5) goto L_0x0418
            r11.nextToken()     // Catch:{ all -> 0x073c }
        L_0x0411:
            r14 = r6
            r2 = r18
            r27 = 0
            goto L_0x0525
        L_0x0418:
            r14 = r27
            r19 = r3
            r2 = 16
            r3 = 0
            r4 = 0
            r5 = 1
            r13 = 13
            goto L_0x0703
        L_0x0425:
            com.alibaba.fastjson.JSONException r0 = new com.alibaba.fastjson.JSONException     // Catch:{ all -> 0x073c }
            java.lang.String r2 = "syntax error"
            r0.<init>(r2)     // Catch:{ all -> 0x073c }
            throw r0     // Catch:{ all -> 0x073c }
        L_0x042d:
            r5 = 13
            goto L_0x0439
        L_0x0430:
            r21 = r2
            r20 = r4
            r22 = r5
            r5 = 13
            r4 = 0
        L_0x0439:
            if (r1 != 0) goto L_0x046a
            if (r18 != 0) goto L_0x046a
            java.lang.Object r1 = r23.createInstance(r24, r25)     // Catch:{ all -> 0x073c }
            if (r1 != 0) goto L_0x044d
            java.util.HashMap r2 = new java.util.HashMap     // Catch:{ all -> 0x073c }
            com.alibaba.fastjson.parser.deserializer.FieldDeserializer[] r5 = r8.fieldDeserializers     // Catch:{ all -> 0x073c }
            int r5 = r5.length     // Catch:{ all -> 0x073c }
            r2.<init>(r5)     // Catch:{ all -> 0x073c }
            r18 = r2
        L_0x044d:
            com.alibaba.fastjson.parser.ParseContext r2 = r9.setContext(r15, r1, r10)     // Catch:{ all -> 0x073c }
            if (r16 != 0) goto L_0x0464
            com.alibaba.fastjson.parser.deserializer.FieldDeserializer[] r5 = r8.fieldDeserializers     // Catch:{ all -> 0x0460 }
            int r5 = r5.length     // Catch:{ all -> 0x0460 }
            int r5 = r5 / 32
            r6 = 1
            int r5 = r5 + r6
            int[] r5 = new int[r5]     // Catch:{ all -> 0x0460 }
            r6 = r1
            r16 = r5
            goto L_0x0465
        L_0x0460:
            r0 = move-exception
            r6 = r2
            goto L_0x0743
        L_0x0464:
            r6 = r1
        L_0x0465:
            r5 = r18
            r18 = r2
            goto L_0x046f
        L_0x046a:
            r5 = r18
            r18 = r6
            r6 = r1
        L_0x046f:
            if (r7 == 0) goto L_0x04d1
            if (r13 != 0) goto L_0x0488
            r14.parseField(r9, r6, r0, r5)     // Catch:{ all -> 0x0484 }
        L_0x0476:
            r14 = r27
            r19 = r3
            r20 = r5
            r17 = r6
            r27 = 0
            r13 = 13
            goto L_0x050d
        L_0x0484:
            r0 = move-exception
            r1 = r6
            goto L_0x0739
        L_0x0488:
            if (r6 != 0) goto L_0x0494
            r1 = r22
            java.lang.String r1 = r1.name     // Catch:{ all -> 0x0484 }
            r2 = r21
            r5.put(r1, r2)     // Catch:{ all -> 0x0484 }
            goto L_0x04b5
        L_0x0494:
            r2 = r21
            if (r2 != 0) goto L_0x04b2
            java.lang.Class r1 = java.lang.Integer.TYPE     // Catch:{ all -> 0x0484 }
            r4 = r20
            if (r4 == r1) goto L_0x04b5
            java.lang.Class r1 = java.lang.Long.TYPE     // Catch:{ all -> 0x0484 }
            if (r4 == r1) goto L_0x04b5
            java.lang.Class r1 = java.lang.Float.TYPE     // Catch:{ all -> 0x0484 }
            if (r4 == r1) goto L_0x04b5
            java.lang.Class r1 = java.lang.Double.TYPE     // Catch:{ all -> 0x0484 }
            if (r4 == r1) goto L_0x04b5
            java.lang.Class r1 = java.lang.Boolean.TYPE     // Catch:{ all -> 0x0484 }
            if (r4 == r1) goto L_0x04b5
            r14.setValue(r6, r2)     // Catch:{ all -> 0x0484 }
            goto L_0x04b5
        L_0x04b2:
            r14.setValue(r6, r2)     // Catch:{ all -> 0x0484 }
        L_0x04b5:
            if (r16 == 0) goto L_0x04c4
            int r2 = r27 / 32
            int r1 = r27 % 32
            r4 = r16[r2]     // Catch:{ all -> 0x0484 }
            r7 = 1
            int r1 = r7 >> r1
            r1 = r1 | r4
            r16[r2] = r1     // Catch:{ all -> 0x0484 }
            goto L_0x04c5
        L_0x04c4:
            r7 = 1
        L_0x04c5:
            int r1 = r11.matchStat     // Catch:{ all -> 0x0484 }
            r13 = 4
            if (r1 != r13) goto L_0x0476
            r20 = r5
            r17 = r6
            r27 = 0
            goto L_0x051f
        L_0x04d1:
            r7 = 1
            r13 = 4
            r1 = r23
            r14 = r27
            r2 = r24
            r19 = r3
            r3 = r4
            r4 = r6
            r20 = r5
            r7 = 13
            r13 = 1
            r5 = r25
            r17 = r6
            r27 = 0
            r6 = r20
            r13 = 13
            r7 = r16
            boolean r1 = r1.parseField(r2, r3, r4, r5, r6, r7)     // Catch:{ all -> 0x0736 }
            if (r1 != 0) goto L_0x0505
            int r1 = r11.token()     // Catch:{ all -> 0x0736 }
            if (r1 != r13) goto L_0x04fe
            r11.nextToken()     // Catch:{ all -> 0x0736 }
            goto L_0x051f
        L_0x04fe:
            r2 = 16
        L_0x0500:
            r3 = 0
            r4 = 0
            r5 = 1
            goto L_0x06fd
        L_0x0505:
            int r1 = r11.token()     // Catch:{ all -> 0x0736 }
            r2 = 17
            if (r1 == r2) goto L_0x072e
        L_0x050d:
            int r1 = r11.token()     // Catch:{ all -> 0x0736 }
            r2 = 16
            if (r1 != r2) goto L_0x0516
            goto L_0x0500
        L_0x0516:
            int r1 = r11.token()     // Catch:{ all -> 0x0736 }
            if (r1 != r13) goto L_0x06ec
            r11.nextToken(r2)     // Catch:{ all -> 0x0736 }
        L_0x051f:
            r1 = r17
            r14 = r18
            r2 = r20
        L_0x0525:
            if (r1 != 0) goto L_0x06c3
            if (r2 != 0) goto L_0x053b
            java.lang.Object r1 = r23.createInstance(r24, r25)     // Catch:{ all -> 0x06e9 }
            if (r14 != 0) goto L_0x0533
            com.alibaba.fastjson.parser.ParseContext r14 = r9.setContext(r15, r1, r10)     // Catch:{ all -> 0x06e9 }
        L_0x0533:
            if (r14 == 0) goto L_0x0537
            r14.object = r1
        L_0x0537:
            r9.setContext(r15)
            return r1
        L_0x053b:
            com.alibaba.fastjson.util.JavaBeanInfo r0 = r8.beanInfo     // Catch:{ all -> 0x06e9 }
            java.lang.String[] r3 = r0.creatorConstructorParameters     // Catch:{ all -> 0x06e9 }
            java.lang.String r0 = ""
            r10 = 0
            if (r3 == 0) goto L_0x05b5
            int r7 = r3.length     // Catch:{ all -> 0x06e9 }
            java.lang.Object[] r7 = new java.lang.Object[r7]     // Catch:{ all -> 0x06e9 }
            r12 = 0
        L_0x0549:
            int r13 = r3.length     // Catch:{ all -> 0x06e9 }
            if (r12 >= r13) goto L_0x0630
            r13 = r3[r12]     // Catch:{ all -> 0x06e9 }
            java.lang.Object r13 = r2.remove(r13)     // Catch:{ all -> 0x06e9 }
            if (r13 != 0) goto L_0x05af
            com.alibaba.fastjson.util.JavaBeanInfo r4 = r8.beanInfo     // Catch:{ all -> 0x06e9 }
            java.lang.reflect.Type[] r4 = r4.creatorConstructorParameterTypes     // Catch:{ all -> 0x06e9 }
            r4 = r4[r12]     // Catch:{ all -> 0x06e9 }
            com.alibaba.fastjson.util.JavaBeanInfo r5 = r8.beanInfo     // Catch:{ all -> 0x06e9 }
            com.alibaba.fastjson.util.FieldInfo[] r5 = r5.fields     // Catch:{ all -> 0x06e9 }
            r5 = r5[r12]     // Catch:{ all -> 0x06e9 }
            java.lang.Class r6 = java.lang.Byte.TYPE     // Catch:{ all -> 0x06e9 }
            if (r4 != r6) goto L_0x0569
            java.lang.Byte r4 = java.lang.Byte.valueOf(r27)     // Catch:{ all -> 0x06e9 }
            goto L_0x05b0
        L_0x0569:
            java.lang.Class r6 = java.lang.Short.TYPE     // Catch:{ all -> 0x06e9 }
            if (r4 != r6) goto L_0x0572
            java.lang.Short r4 = java.lang.Short.valueOf(r27)     // Catch:{ all -> 0x06e9 }
            goto L_0x05b0
        L_0x0572:
            java.lang.Class r6 = java.lang.Integer.TYPE     // Catch:{ all -> 0x06e9 }
            if (r4 != r6) goto L_0x057b
            java.lang.Integer r4 = java.lang.Integer.valueOf(r27)     // Catch:{ all -> 0x06e9 }
            goto L_0x05b0
        L_0x057b:
            java.lang.Class r6 = java.lang.Long.TYPE     // Catch:{ all -> 0x06e9 }
            if (r4 != r6) goto L_0x0584
            java.lang.Long r4 = java.lang.Long.valueOf(r10)     // Catch:{ all -> 0x06e9 }
            goto L_0x05b0
        L_0x0584:
            java.lang.Class r6 = java.lang.Float.TYPE     // Catch:{ all -> 0x06e9 }
            if (r4 != r6) goto L_0x058e
            r6 = 0
            java.lang.Float r4 = java.lang.Float.valueOf(r6)     // Catch:{ all -> 0x06e9 }
            goto L_0x05b0
        L_0x058e:
            java.lang.Class r6 = java.lang.Double.TYPE     // Catch:{ all -> 0x06e9 }
            if (r4 != r6) goto L_0x0599
            r16 = 0
            java.lang.Double r4 = java.lang.Double.valueOf(r16)     // Catch:{ all -> 0x06e9 }
            goto L_0x05b0
        L_0x0599:
            java.lang.Class r6 = java.lang.Boolean.TYPE     // Catch:{ all -> 0x06e9 }
            if (r4 != r6) goto L_0x05a0
            java.lang.Boolean r4 = java.lang.Boolean.FALSE     // Catch:{ all -> 0x06e9 }
            goto L_0x05b0
        L_0x05a0:
            java.lang.Class<java.lang.String> r6 = java.lang.String.class
            if (r4 != r6) goto L_0x05af
            int r4 = r5.parserFeatures     // Catch:{ all -> 0x06e9 }
            com.alibaba.fastjson.parser.Feature r5 = com.alibaba.fastjson.parser.Feature.InitStringFieldAsEmpty     // Catch:{ all -> 0x06e9 }
            int r5 = r5.mask     // Catch:{ all -> 0x06e9 }
            r4 = r4 & r5
            if (r4 == 0) goto L_0x05af
            r4 = r0
            goto L_0x05b0
        L_0x05af:
            r4 = r13
        L_0x05b0:
            r7[r12] = r4     // Catch:{ all -> 0x06e9 }
            int r12 = r12 + 1
            goto L_0x0549
        L_0x05b5:
            com.alibaba.fastjson.util.JavaBeanInfo r4 = r8.beanInfo     // Catch:{ all -> 0x06e9 }
            com.alibaba.fastjson.util.FieldInfo[] r4 = r4.fields     // Catch:{ all -> 0x06e9 }
            int r5 = r4.length     // Catch:{ all -> 0x06e9 }
            java.lang.Object[] r7 = new java.lang.Object[r5]     // Catch:{ all -> 0x06e9 }
            r6 = 0
        L_0x05bd:
            if (r6 >= r5) goto L_0x0630
            r12 = r4[r6]     // Catch:{ all -> 0x06e9 }
            java.lang.String r13 = r12.name     // Catch:{ all -> 0x06e9 }
            java.lang.Object r13 = r2.get(r13)     // Catch:{ all -> 0x06e9 }
            if (r13 != 0) goto L_0x0624
            java.lang.reflect.Type r10 = r12.fieldType     // Catch:{ all -> 0x06e9 }
            java.lang.Class r11 = java.lang.Byte.TYPE     // Catch:{ all -> 0x06e9 }
            if (r10 != r11) goto L_0x05d8
            java.lang.Byte r10 = java.lang.Byte.valueOf(r27)     // Catch:{ all -> 0x06e9 }
        L_0x05d3:
            r16 = 0
        L_0x05d5:
            r19 = 0
            goto L_0x0629
        L_0x05d8:
            java.lang.Class r11 = java.lang.Short.TYPE     // Catch:{ all -> 0x06e9 }
            if (r10 != r11) goto L_0x05e1
            java.lang.Short r10 = java.lang.Short.valueOf(r27)     // Catch:{ all -> 0x06e9 }
            goto L_0x05d3
        L_0x05e1:
            java.lang.Class r11 = java.lang.Integer.TYPE     // Catch:{ all -> 0x06e9 }
            if (r10 != r11) goto L_0x05ea
            java.lang.Integer r10 = java.lang.Integer.valueOf(r27)     // Catch:{ all -> 0x06e9 }
            goto L_0x05d3
        L_0x05ea:
            java.lang.Class r11 = java.lang.Long.TYPE     // Catch:{ all -> 0x06e9 }
            if (r10 != r11) goto L_0x05f5
            r16 = 0
            java.lang.Long r10 = java.lang.Long.valueOf(r16)     // Catch:{ all -> 0x06e9 }
            goto L_0x05d5
        L_0x05f5:
            r16 = 0
            java.lang.Class r11 = java.lang.Float.TYPE     // Catch:{ all -> 0x06e9 }
            if (r10 != r11) goto L_0x0601
            r11 = 0
            java.lang.Float r10 = java.lang.Float.valueOf(r11)     // Catch:{ all -> 0x06e9 }
            goto L_0x05d5
        L_0x0601:
            java.lang.Class r11 = java.lang.Double.TYPE     // Catch:{ all -> 0x06e9 }
            if (r10 != r11) goto L_0x060c
            r19 = 0
            java.lang.Double r10 = java.lang.Double.valueOf(r19)     // Catch:{ all -> 0x06e9 }
            goto L_0x0629
        L_0x060c:
            r19 = 0
            java.lang.Class r11 = java.lang.Boolean.TYPE     // Catch:{ all -> 0x06e9 }
            if (r10 != r11) goto L_0x0615
            java.lang.Boolean r10 = java.lang.Boolean.FALSE     // Catch:{ all -> 0x06e9 }
            goto L_0x0629
        L_0x0615:
            java.lang.Class<java.lang.String> r11 = java.lang.String.class
            if (r10 != r11) goto L_0x0628
            int r10 = r12.parserFeatures     // Catch:{ all -> 0x06e9 }
            com.alibaba.fastjson.parser.Feature r11 = com.alibaba.fastjson.parser.Feature.InitStringFieldAsEmpty     // Catch:{ all -> 0x06e9 }
            int r11 = r11.mask     // Catch:{ all -> 0x06e9 }
            r10 = r10 & r11
            if (r10 == 0) goto L_0x0628
            r10 = r0
            goto L_0x0629
        L_0x0624:
            r16 = r10
            r19 = 0
        L_0x0628:
            r10 = r13
        L_0x0629:
            r7[r6] = r10     // Catch:{ all -> 0x06e9 }
            int r6 = r6 + 1
            r10 = r16
            goto L_0x05bd
        L_0x0630:
            com.alibaba.fastjson.util.JavaBeanInfo r0 = r8.beanInfo     // Catch:{ all -> 0x06e9 }
            java.lang.reflect.Constructor<?> r0 = r0.creatorConstructor     // Catch:{ all -> 0x06e9 }
            if (r0 == 0) goto L_0x0690
            com.alibaba.fastjson.util.JavaBeanInfo r0 = r8.beanInfo     // Catch:{ Exception -> 0x0668 }
            java.lang.reflect.Constructor<?> r0 = r0.creatorConstructor     // Catch:{ Exception -> 0x0668 }
            java.lang.Object r1 = r0.newInstance(r7)     // Catch:{ Exception -> 0x0668 }
            if (r3 == 0) goto L_0x06c1
            java.util.Set r0 = r2.entrySet()     // Catch:{ all -> 0x06e9 }
            java.util.Iterator r0 = r0.iterator()     // Catch:{ all -> 0x06e9 }
        L_0x0648:
            boolean r2 = r0.hasNext()     // Catch:{ all -> 0x06e9 }
            if (r2 == 0) goto L_0x06c1
            java.lang.Object r2 = r0.next()     // Catch:{ all -> 0x06e9 }
            java.util.Map$Entry r2 = (java.util.Map.Entry) r2     // Catch:{ all -> 0x06e9 }
            java.lang.Object r3 = r2.getKey()     // Catch:{ all -> 0x06e9 }
            java.lang.String r3 = (java.lang.String) r3     // Catch:{ all -> 0x06e9 }
            com.alibaba.fastjson.parser.deserializer.FieldDeserializer r3 = r8.getFieldDeserializer(r3)     // Catch:{ all -> 0x06e9 }
            if (r3 == 0) goto L_0x0648
            java.lang.Object r2 = r2.getValue()     // Catch:{ all -> 0x06e9 }
            r3.setValue(r1, r2)     // Catch:{ all -> 0x06e9 }
            goto L_0x0648
        L_0x0668:
            r0 = move-exception
            com.alibaba.fastjson.JSONException r2 = new com.alibaba.fastjson.JSONException     // Catch:{ all -> 0x06e9 }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ all -> 0x06e9 }
            r4.<init>()     // Catch:{ all -> 0x06e9 }
            java.lang.String r5 = "create instance error, "
            r4.append(r5)     // Catch:{ all -> 0x06e9 }
            r4.append(r3)     // Catch:{ all -> 0x06e9 }
            java.lang.String r3 = ", "
            r4.append(r3)     // Catch:{ all -> 0x06e9 }
            com.alibaba.fastjson.util.JavaBeanInfo r3 = r8.beanInfo     // Catch:{ all -> 0x06e9 }
            java.lang.reflect.Constructor<?> r3 = r3.creatorConstructor     // Catch:{ all -> 0x06e9 }
            java.lang.String r3 = r3.toGenericString()     // Catch:{ all -> 0x06e9 }
            r4.append(r3)     // Catch:{ all -> 0x06e9 }
            java.lang.String r3 = r4.toString()     // Catch:{ all -> 0x06e9 }
            r2.<init>(r3, r0)     // Catch:{ all -> 0x06e9 }
            throw r2     // Catch:{ all -> 0x06e9 }
        L_0x0690:
            com.alibaba.fastjson.util.JavaBeanInfo r0 = r8.beanInfo     // Catch:{ all -> 0x06e9 }
            java.lang.reflect.Method r0 = r0.factoryMethod     // Catch:{ all -> 0x06e9 }
            if (r0 == 0) goto L_0x06c1
            com.alibaba.fastjson.util.JavaBeanInfo r0 = r8.beanInfo     // Catch:{ Exception -> 0x06a1 }
            java.lang.reflect.Method r0 = r0.factoryMethod     // Catch:{ Exception -> 0x06a1 }
            r3 = 0
            java.lang.Object r0 = r0.invoke(r3, r7)     // Catch:{ Exception -> 0x06a1 }
            r1 = r0
            goto L_0x06c1
        L_0x06a1:
            r0 = move-exception
            com.alibaba.fastjson.JSONException r2 = new com.alibaba.fastjson.JSONException     // Catch:{ all -> 0x06e9 }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x06e9 }
            r3.<init>()     // Catch:{ all -> 0x06e9 }
            java.lang.String r4 = "create factory method error, "
            r3.append(r4)     // Catch:{ all -> 0x06e9 }
            com.alibaba.fastjson.util.JavaBeanInfo r4 = r8.beanInfo     // Catch:{ all -> 0x06e9 }
            java.lang.reflect.Method r4 = r4.factoryMethod     // Catch:{ all -> 0x06e9 }
            java.lang.String r4 = r4.toString()     // Catch:{ all -> 0x06e9 }
            r3.append(r4)     // Catch:{ all -> 0x06e9 }
            java.lang.String r3 = r3.toString()     // Catch:{ all -> 0x06e9 }
            r2.<init>(r3, r0)     // Catch:{ all -> 0x06e9 }
            throw r2     // Catch:{ all -> 0x06e9 }
        L_0x06c1:
            r14.object = r1     // Catch:{ all -> 0x06e9 }
        L_0x06c3:
            com.alibaba.fastjson.util.JavaBeanInfo r0 = r8.beanInfo     // Catch:{ all -> 0x06e9 }
            java.lang.reflect.Method r0 = r0.buildMethod     // Catch:{ all -> 0x06e9 }
            if (r0 != 0) goto L_0x06d1
            if (r14 == 0) goto L_0x06cd
            r14.object = r1
        L_0x06cd:
            r9.setContext(r15)
            return r1
        L_0x06d1:
            r4 = 0
            java.lang.Object[] r2 = new java.lang.Object[r4]     // Catch:{ Exception -> 0x06e0 }
            java.lang.Object r0 = r0.invoke(r1, r2)     // Catch:{ Exception -> 0x06e0 }
            if (r14 == 0) goto L_0x06dc
            r14.object = r1
        L_0x06dc:
            r9.setContext(r15)
            return r0
        L_0x06e0:
            r0 = move-exception
            com.alibaba.fastjson.JSONException r2 = new com.alibaba.fastjson.JSONException     // Catch:{ all -> 0x06e9 }
            java.lang.String r3 = "build object error"
            r2.<init>(r3, r0)     // Catch:{ all -> 0x06e9 }
            throw r2     // Catch:{ all -> 0x06e9 }
        L_0x06e9:
            r0 = move-exception
            goto L_0x004c
        L_0x06ec:
            r3 = 0
            r4 = 0
            int r1 = r11.token()     // Catch:{ all -> 0x0736 }
            r5 = 18
            if (r1 == r5) goto L_0x070f
            int r1 = r11.token()     // Catch:{ all -> 0x0736 }
            r5 = 1
            if (r1 == r5) goto L_0x070f
        L_0x06fd:
            r1 = r17
            r6 = r18
            r18 = r20
        L_0x0703:
            int r7 = r14 + 1
            r2 = r7
            r3 = r19
            r4 = 4
            r7 = 13
            r13 = 16
            goto L_0x012d
        L_0x070f:
            com.alibaba.fastjson.JSONException r0 = new com.alibaba.fastjson.JSONException     // Catch:{ all -> 0x0736 }
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ all -> 0x0736 }
            r1.<init>()     // Catch:{ all -> 0x0736 }
            java.lang.String r2 = "syntax error, unexpect token "
            r1.append(r2)     // Catch:{ all -> 0x0736 }
            int r2 = r11.token()     // Catch:{ all -> 0x0736 }
            java.lang.String r2 = com.alibaba.fastjson.parser.JSONToken.name(r2)     // Catch:{ all -> 0x0736 }
            r1.append(r2)     // Catch:{ all -> 0x0736 }
            java.lang.String r1 = r1.toString()     // Catch:{ all -> 0x0736 }
            r0.<init>(r1)     // Catch:{ all -> 0x0736 }
            throw r0     // Catch:{ all -> 0x0736 }
        L_0x072e:
            com.alibaba.fastjson.JSONException r0 = new com.alibaba.fastjson.JSONException     // Catch:{ all -> 0x0736 }
            java.lang.String r1 = "syntax error, unexpect token ':'"
            r0.<init>(r1)     // Catch:{ all -> 0x0736 }
            throw r0     // Catch:{ all -> 0x0736 }
        L_0x0736:
            r0 = move-exception
            r1 = r17
        L_0x0739:
            r6 = r18
            goto L_0x0743
        L_0x073c:
            r0 = move-exception
            goto L_0x0743
        L_0x073e:
            r0 = move-exception
            r3 = r14
            r1 = r27
            r6 = r3
        L_0x0743:
            if (r6 == 0) goto L_0x0747
            r6.object = r1
        L_0x0747:
            r9.setContext(r15)
            throw r0
        L_0x074b:
            java.lang.Object r0 = r24.parse()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.deserialze(com.alibaba.fastjson.parser.DefaultJSONParser, java.lang.reflect.Type, java.lang.Object, java.lang.Object, int, int[]):java.lang.Object");
    }

    /* access modifiers changed from: protected */
    public Enum scanEnum(JSONLexerBase jSONLexerBase, char[] cArr, ObjectDeserializer objectDeserializer) {
        EnumDeserializer enumDeserializer = objectDeserializer instanceof EnumDeserializer ? (EnumDeserializer) objectDeserializer : null;
        if (enumDeserializer == null) {
            jSONLexerBase.matchStat = -1;
            return null;
        }
        long scanFieldSymbol = jSONLexerBase.scanFieldSymbol(cArr);
        if (jSONLexerBase.matchStat > 0) {
            return enumDeserializer.getEnumByHashCode(scanFieldSymbol);
        }
        return null;
    }

    public boolean parseField(DefaultJSONParser defaultJSONParser, String str, Object obj, Type type, Map<String, Object> map) {
        return parseField(defaultJSONParser, str, obj, type, map, null);
    }

    /* JADX WARNING: type inference failed for: r17v0, types: [boolean] */
    /* JADX WARNING: type inference failed for: r17v1 */
    /* JADX WARNING: type inference failed for: r17v3 */
    /* JADX WARNING: type inference failed for: r17v4 */
    /* JADX WARNING: type inference failed for: r17v5 */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r17v0, types: [boolean]
      assigns: []
      uses: [boolean, ?[int, short, byte, char]]
      mth insns count: 191
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
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00d8  */
    /* JADX WARNING: Removed duplicated region for block: B:87:0x01b1  */
    /* JADX WARNING: Unknown variable types count: 3 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean parseField(com.alibaba.fastjson.parser.DefaultJSONParser r22, java.lang.String r23, java.lang.Object r24, java.lang.reflect.Type r25, java.util.Map<java.lang.String, java.lang.Object> r26, int[] r27) {
        /*
            r21 = this;
            r1 = r21
            r0 = r22
            r11 = r23
            r12 = r24
            r13 = r25
            r14 = r26
            r15 = r27
            com.alibaba.fastjson.parser.JSONLexer r10 = r0.lexer
            com.alibaba.fastjson.parser.Feature r2 = com.alibaba.fastjson.parser.Feature.DisableFieldSmartMatch
            int r2 = r2.mask
            boolean r3 = r10.isEnabled(r2)
            if (r3 != 0) goto L_0x0027
            com.alibaba.fastjson.util.JavaBeanInfo r3 = r1.beanInfo
            int r3 = r3.parserFeatures
            r2 = r2 & r3
            if (r2 == 0) goto L_0x0022
            goto L_0x0027
        L_0x0022:
            com.alibaba.fastjson.parser.deserializer.FieldDeserializer r2 = r1.smartMatch(r11, r15)
            goto L_0x002b
        L_0x0027:
            com.alibaba.fastjson.parser.deserializer.FieldDeserializer r2 = r1.getFieldDeserializer(r11)
        L_0x002b:
            com.alibaba.fastjson.parser.Feature r3 = com.alibaba.fastjson.parser.Feature.SupportNonPublicField
            int r3 = r3.mask
            r16 = 0
            r9 = 1
            if (r2 != 0) goto L_0x0094
            boolean r4 = r10.isEnabled(r3)
            if (r4 != 0) goto L_0x0041
            com.alibaba.fastjson.util.JavaBeanInfo r4 = r1.beanInfo
            int r4 = r4.parserFeatures
            r3 = r3 & r4
            if (r3 == 0) goto L_0x0094
        L_0x0041:
            java.util.concurrent.ConcurrentMap<java.lang.String, java.lang.Object> r3 = r1.extraFieldDeserializers
            if (r3 != 0) goto L_0x0085
            java.util.concurrent.ConcurrentHashMap r3 = new java.util.concurrent.ConcurrentHashMap
            r4 = 1061158912(0x3f400000, float:0.75)
            r3.<init>(r9, r4, r9)
            java.lang.Class<?> r4 = r1.clazz
        L_0x004e:
            if (r4 == 0) goto L_0x0083
            java.lang.Class<java.lang.Object> r5 = java.lang.Object.class
            if (r4 == r5) goto L_0x0083
            java.lang.reflect.Field[] r5 = r4.getDeclaredFields()
            int r6 = r5.length
            r7 = 0
        L_0x005a:
            if (r7 >= r6) goto L_0x007d
            r8 = r5[r7]
            java.lang.String r9 = r8.getName()
            com.alibaba.fastjson.parser.deserializer.FieldDeserializer r18 = r1.getFieldDeserializer(r9)
            if (r18 == 0) goto L_0x0069
            goto L_0x0079
        L_0x0069:
            int r18 = r8.getModifiers()
            r19 = r18 & 16
            if (r19 != 0) goto L_0x0079
            r18 = r18 & 8
            if (r18 == 0) goto L_0x0076
            goto L_0x0079
        L_0x0076:
            r3.put(r9, r8)
        L_0x0079:
            int r7 = r7 + 1
            r9 = 1
            goto L_0x005a
        L_0x007d:
            java.lang.Class r4 = r4.getSuperclass()
            r9 = 1
            goto L_0x004e
        L_0x0083:
            r1.extraFieldDeserializers = r3
        L_0x0085:
            java.util.concurrent.ConcurrentMap<java.lang.String, java.lang.Object> r3 = r1.extraFieldDeserializers
            java.lang.Object r3 = r3.get(r11)
            if (r3 == 0) goto L_0x0094
            boolean r2 = r3 instanceof com.alibaba.fastjson.parser.deserializer.FieldDeserializer
            if (r2 == 0) goto L_0x0098
            r2 = r3
            com.alibaba.fastjson.parser.deserializer.FieldDeserializer r2 = (com.alibaba.fastjson.parser.deserializer.FieldDeserializer) r2
        L_0x0094:
            r15 = r10
            r17 = 1
            goto L_0x00d6
        L_0x0098:
            r7 = r3
            java.lang.reflect.Field r7 = (java.lang.reflect.Field) r7
            r9 = 1
            r7.setAccessible(r9)
            com.alibaba.fastjson.util.FieldInfo r8 = new com.alibaba.fastjson.util.FieldInfo
            java.lang.Class r4 = r7.getDeclaringClass()
            java.lang.Class r5 = r7.getType()
            java.lang.reflect.Type r6 = r7.getGenericType()
            r17 = 0
            r18 = 0
            r19 = 0
            r2 = r8
            r3 = r23
            r20 = r8
            r8 = r17
            r17 = 1
            r9 = r18
            r15 = r10
            r10 = r19
            r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10)
            com.alibaba.fastjson.parser.deserializer.DefaultFieldDeserializer r2 = new com.alibaba.fastjson.parser.deserializer.DefaultFieldDeserializer
            com.alibaba.fastjson.parser.ParserConfig r3 = r22.getConfig()
            java.lang.Class<?> r4 = r1.clazz
            r5 = r20
            r2.<init>(r3, r4, r5)
            java.util.concurrent.ConcurrentMap<java.lang.String, java.lang.Object> r3 = r1.extraFieldDeserializers
            r3.put(r11, r2)
        L_0x00d6:
            if (r2 != 0) goto L_0x01b1
            com.alibaba.fastjson.parser.Feature r2 = com.alibaba.fastjson.parser.Feature.IgnoreNotMatch
            boolean r2 = r15.isEnabled(r2)
            if (r2 == 0) goto L_0x018c
            com.alibaba.fastjson.parser.deserializer.FieldDeserializer[] r2 = r1.sortedFieldDeserializers
            int r3 = r2.length
            r4 = 0
        L_0x00e4:
            if (r4 >= r3) goto L_0x0188
            r5 = r2[r4]
            com.alibaba.fastjson.util.FieldInfo r6 = r5.fieldInfo
            boolean r7 = r6.unwrapped
            if (r7 == 0) goto L_0x0184
            boolean r7 = r5 instanceof com.alibaba.fastjson.parser.deserializer.DefaultFieldDeserializer
            if (r7 == 0) goto L_0x0184
            java.lang.reflect.Field r7 = r6.field
            java.lang.String r8 = "parse unwrapped field error."
            if (r7 == 0) goto L_0x0160
            r7 = r5
            com.alibaba.fastjson.parser.deserializer.DefaultFieldDeserializer r7 = (com.alibaba.fastjson.parser.deserializer.DefaultFieldDeserializer) r7
            com.alibaba.fastjson.parser.ParserConfig r9 = r22.getConfig()
            com.alibaba.fastjson.parser.deserializer.ObjectDeserializer r9 = r7.getFieldValueDeserilizer(r9)
            boolean r10 = r9 instanceof com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer
            if (r10 == 0) goto L_0x0135
            r10 = r9
            com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer r10 = (com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) r10
            com.alibaba.fastjson.parser.deserializer.FieldDeserializer r10 = r10.getFieldDeserializer(r11)
            if (r10 == 0) goto L_0x0184
            java.lang.reflect.Field r2 = r6.field     // Catch:{ Exception -> 0x012e }
            java.lang.Object r2 = r2.get(r12)     // Catch:{ Exception -> 0x012e }
            if (r2 != 0) goto L_0x0123
            com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer r9 = (com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) r9     // Catch:{ Exception -> 0x012e }
            java.lang.reflect.Type r2 = r6.fieldType     // Catch:{ Exception -> 0x012e }
            java.lang.Object r2 = r9.createInstance(r0, r2)     // Catch:{ Exception -> 0x012e }
            r5.setValue(r12, r2)     // Catch:{ Exception -> 0x012e }
        L_0x0123:
            int r3 = r7.getFastMatchToken()     // Catch:{ Exception -> 0x012e }
            r15.nextTokenWithColon(r3)     // Catch:{ Exception -> 0x012e }
            r10.parseField(r0, r2, r13, r14)     // Catch:{ Exception -> 0x012e }
            return r17
        L_0x012e:
            r0 = move-exception
            com.alibaba.fastjson.JSONException r2 = new com.alibaba.fastjson.JSONException
            r2.<init>(r8, r0)
            throw r2
        L_0x0135:
            boolean r7 = r9 instanceof com.alibaba.fastjson.parser.deserializer.MapDeserializer
            if (r7 == 0) goto L_0x0184
            com.alibaba.fastjson.parser.deserializer.MapDeserializer r9 = (com.alibaba.fastjson.parser.deserializer.MapDeserializer) r9
            java.lang.reflect.Field r2 = r6.field     // Catch:{ Exception -> 0x0159 }
            java.lang.Object r2 = r2.get(r12)     // Catch:{ Exception -> 0x0159 }
            java.util.Map r2 = (java.util.Map) r2     // Catch:{ Exception -> 0x0159 }
            if (r2 != 0) goto L_0x014e
            java.lang.reflect.Type r2 = r6.fieldType     // Catch:{ Exception -> 0x0159 }
            java.util.Map r2 = r9.createMap(r2)     // Catch:{ Exception -> 0x0159 }
            r5.setValue(r12, r2)     // Catch:{ Exception -> 0x0159 }
        L_0x014e:
            r15.nextTokenWithColon()     // Catch:{ Exception -> 0x0159 }
            java.lang.Object r0 = r22.parse(r23)     // Catch:{ Exception -> 0x0159 }
            r2.put(r11, r0)     // Catch:{ Exception -> 0x0159 }
            return r17
        L_0x0159:
            r0 = move-exception
            com.alibaba.fastjson.JSONException r2 = new com.alibaba.fastjson.JSONException
            r2.<init>(r8, r0)
            throw r2
        L_0x0160:
            java.lang.reflect.Method r5 = r6.method
            java.lang.Class[] r5 = r5.getParameterTypes()
            int r5 = r5.length
            r7 = 2
            if (r5 != r7) goto L_0x0184
            r15.nextTokenWithColon()
            java.lang.Object r0 = r22.parse(r23)
            java.lang.reflect.Method r2 = r6.method     // Catch:{ Exception -> 0x017d }
            java.lang.Object[] r3 = new java.lang.Object[r7]     // Catch:{ Exception -> 0x017d }
            r3[r16] = r11     // Catch:{ Exception -> 0x017d }
            r3[r17] = r0     // Catch:{ Exception -> 0x017d }
            r2.invoke(r12, r3)     // Catch:{ Exception -> 0x017d }
            return r17
        L_0x017d:
            r0 = move-exception
            com.alibaba.fastjson.JSONException r2 = new com.alibaba.fastjson.JSONException
            r2.<init>(r8, r0)
            throw r2
        L_0x0184:
            int r4 = r4 + 1
            goto L_0x00e4
        L_0x0188:
            r0.parseExtra(r12, r11)
            return r16
        L_0x018c:
            com.alibaba.fastjson.JSONException r0 = new com.alibaba.fastjson.JSONException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "setter not found, class "
            r2.append(r3)
            java.lang.Class<?> r3 = r1.clazz
            java.lang.String r3 = r3.getName()
            r2.append(r3)
            java.lang.String r3 = ", property "
            r2.append(r3)
            r2.append(r11)
            java.lang.String r2 = r2.toString()
            r0.<init>(r2)
            throw r0
        L_0x01b1:
            r3 = 0
        L_0x01b2:
            com.alibaba.fastjson.parser.deserializer.FieldDeserializer[] r4 = r1.sortedFieldDeserializers
            int r5 = r4.length
            r6 = -1
            if (r3 >= r5) goto L_0x01c0
            r4 = r4[r3]
            if (r4 != r2) goto L_0x01bd
            goto L_0x01c1
        L_0x01bd:
            int r3 = r3 + 1
            goto L_0x01b2
        L_0x01c0:
            r3 = -1
        L_0x01c1:
            if (r3 == r6) goto L_0x01da
            r4 = r27
            r5 = r15
            if (r4 == 0) goto L_0x01db
            java.lang.String r6 = "_"
            boolean r6 = r11.startsWith(r6)
            if (r6 == 0) goto L_0x01db
            boolean r3 = isSetFlag(r3, r4)
            if (r3 == 0) goto L_0x01db
            r0.parseExtra(r12, r11)
            return r16
        L_0x01da:
            r5 = r15
        L_0x01db:
            int r3 = r2.getFastMatchToken()
            r5.nextTokenWithColon(r3)
            r2.parseField(r0, r12, r13, r14)
            return r17
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.parseField(com.alibaba.fastjson.parser.DefaultJSONParser, java.lang.String, java.lang.Object, java.lang.reflect.Type, java.util.Map, int[]):boolean");
    }

    public FieldDeserializer smartMatch(String str) {
        return smartMatch(str, null);
    }

    /* JADX WARNING: Removed duplicated region for block: B:36:0x0095  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.alibaba.fastjson.parser.deserializer.FieldDeserializer smartMatch(java.lang.String r11, int[] r12) {
        /*
            r10 = this;
            r0 = 0
            if (r11 != 0) goto L_0x0004
            return r0
        L_0x0004:
            com.alibaba.fastjson.parser.deserializer.FieldDeserializer r1 = r10.getFieldDeserializer(r11, r12)
            if (r1 != 0) goto L_0x00af
            long r2 = com.alibaba.fastjson.util.TypeUtils.fnv1a_64_lower(r11)
            long[] r4 = r10.smartMatchHashArray
            r5 = 0
            if (r4 != 0) goto L_0x0032
            com.alibaba.fastjson.parser.deserializer.FieldDeserializer[] r4 = r10.sortedFieldDeserializers
            int r4 = r4.length
            long[] r4 = new long[r4]
            r6 = 0
        L_0x0019:
            com.alibaba.fastjson.parser.deserializer.FieldDeserializer[] r7 = r10.sortedFieldDeserializers
            int r8 = r7.length
            if (r6 >= r8) goto L_0x002d
            r7 = r7[r6]
            com.alibaba.fastjson.util.FieldInfo r7 = r7.fieldInfo
            java.lang.String r7 = r7.name
            long r7 = com.alibaba.fastjson.util.TypeUtils.fnv1a_64_lower(r7)
            r4[r6] = r7
            int r6 = r6 + 1
            goto L_0x0019
        L_0x002d:
            java.util.Arrays.sort(r4)
            r10.smartMatchHashArray = r4
        L_0x0032:
            long[] r4 = r10.smartMatchHashArray
            int r2 = java.util.Arrays.binarySearch(r4, r2)
            if (r2 >= 0) goto L_0x0052
            java.lang.String r3 = "is"
            boolean r3 = r11.startsWith(r3)
            if (r3 == 0) goto L_0x0053
            r2 = 2
            java.lang.String r11 = r11.substring(r2)
            long r6 = com.alibaba.fastjson.util.TypeUtils.fnv1a_64_lower(r11)
            long[] r11 = r10.smartMatchHashArray
            int r2 = java.util.Arrays.binarySearch(r11, r6)
            goto L_0x0053
        L_0x0052:
            r3 = 0
        L_0x0053:
            if (r2 < 0) goto L_0x0092
            short[] r11 = r10.smartMatchHashArrayMapping
            r4 = -1
            if (r11 != 0) goto L_0x0081
            long[] r11 = r10.smartMatchHashArray
            int r11 = r11.length
            short[] r11 = new short[r11]
            java.util.Arrays.fill(r11, r4)
        L_0x0062:
            com.alibaba.fastjson.parser.deserializer.FieldDeserializer[] r6 = r10.sortedFieldDeserializers
            int r7 = r6.length
            if (r5 >= r7) goto L_0x007f
            long[] r7 = r10.smartMatchHashArray
            r6 = r6[r5]
            com.alibaba.fastjson.util.FieldInfo r6 = r6.fieldInfo
            java.lang.String r6 = r6.name
            long r8 = com.alibaba.fastjson.util.TypeUtils.fnv1a_64_lower(r6)
            int r6 = java.util.Arrays.binarySearch(r7, r8)
            if (r6 < 0) goto L_0x007c
            short r7 = (short) r5
            r11[r6] = r7
        L_0x007c:
            int r5 = r5 + 1
            goto L_0x0062
        L_0x007f:
            r10.smartMatchHashArrayMapping = r11
        L_0x0081:
            short[] r11 = r10.smartMatchHashArrayMapping
            short r11 = r11[r2]
            if (r11 == r4) goto L_0x0092
            boolean r12 = isSetFlag(r11, r12)
            if (r12 != 0) goto L_0x0092
            com.alibaba.fastjson.parser.deserializer.FieldDeserializer[] r12 = r10.sortedFieldDeserializers
            r11 = r12[r11]
            goto L_0x0093
        L_0x0092:
            r11 = r1
        L_0x0093:
            if (r11 == 0) goto L_0x00b0
            com.alibaba.fastjson.util.FieldInfo r12 = r11.fieldInfo
            int r1 = r12.parserFeatures
            com.alibaba.fastjson.parser.Feature r2 = com.alibaba.fastjson.parser.Feature.DisableFieldSmartMatch
            int r2 = r2.mask
            r1 = r1 & r2
            if (r1 == 0) goto L_0x00a1
            return r0
        L_0x00a1:
            java.lang.Class<?> r12 = r12.fieldClass
            if (r3 == 0) goto L_0x00b0
            java.lang.Class r1 = java.lang.Boolean.TYPE
            if (r12 == r1) goto L_0x00b0
            java.lang.Class<java.lang.Boolean> r1 = java.lang.Boolean.class
            if (r12 == r1) goto L_0x00b0
            r11 = r0
            goto L_0x00b0
        L_0x00af:
            r11 = r1
        L_0x00b0:
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.smartMatch(java.lang.String, int[]):com.alibaba.fastjson.parser.deserializer.FieldDeserializer");
    }

    public Object createInstance(Map<String, Object> map, ParserConfig parserConfig) throws IllegalArgumentException, IllegalAccessException, InvocationTargetException {
        Object obj = null;
        if (this.beanInfo.creatorConstructor == null && this.beanInfo.factoryMethod == null) {
            Object createInstance = createInstance((DefaultJSONParser) null, (Type) this.clazz);
            for (Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                Object value = entry.getValue();
                FieldDeserializer smartMatch = smartMatch(str);
                if (smartMatch != null) {
                    smartMatch.setValue(createInstance, TypeUtils.cast(value, smartMatch.fieldInfo.fieldType, parserConfig));
                }
            }
            if (this.beanInfo.buildMethod == null) {
                return createInstance;
            }
            try {
                return this.beanInfo.buildMethod.invoke(createInstance, new Object[0]);
            } catch (Exception e) {
                throw new JSONException("build object error", e);
            }
        } else {
            FieldInfo[] fieldInfoArr = this.beanInfo.fields;
            int length = fieldInfoArr.length;
            Object[] objArr = new Object[length];
            for (int i = 0; i < length; i++) {
                FieldInfo fieldInfo = fieldInfoArr[i];
                Object obj2 = map.get(fieldInfo.name);
                if (obj2 == null) {
                    Class<?> cls = fieldInfo.fieldClass;
                    if (cls == Integer.TYPE) {
                        obj2 = Integer.valueOf(0);
                    } else if (cls == Long.TYPE) {
                        obj2 = Long.valueOf(0);
                    } else if (cls == Short.TYPE) {
                        obj2 = Short.valueOf(0);
                    } else if (cls == Byte.TYPE) {
                        obj2 = Byte.valueOf(0);
                    } else if (cls == Float.TYPE) {
                        obj2 = Float.valueOf(0.0f);
                    } else if (cls == Double.TYPE) {
                        obj2 = Double.valueOf(0.0d);
                    } else if (cls == Character.TYPE) {
                        obj2 = Character.valueOf('0');
                    } else if (cls == Boolean.TYPE) {
                        obj2 = Boolean.valueOf(false);
                    }
                }
                objArr[i] = obj2;
            }
            if (this.beanInfo.creatorConstructor != null) {
                try {
                    obj = this.beanInfo.creatorConstructor.newInstance(objArr);
                } catch (Exception e2) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("create instance error, ");
                    sb.append(this.beanInfo.creatorConstructor.toGenericString());
                    throw new JSONException(sb.toString(), e2);
                }
            } else if (this.beanInfo.factoryMethod != null) {
                try {
                    obj = this.beanInfo.factoryMethod.invoke(null, objArr);
                } catch (Exception e3) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("create factory method error, ");
                    sb2.append(this.beanInfo.factoryMethod.toString());
                    throw new JSONException(sb2.toString(), e3);
                }
            }
            return obj;
        }
    }

    public Type getFieldType(int i) {
        return this.sortedFieldDeserializers[i].fieldInfo.fieldType;
    }

    /* access modifiers changed from: protected */
    public Object parseRest(DefaultJSONParser defaultJSONParser, Type type, Object obj, Object obj2, int i) {
        return parseRest(defaultJSONParser, type, obj, obj2, i, new int[0]);
    }

    /* access modifiers changed from: protected */
    public Object parseRest(DefaultJSONParser defaultJSONParser, Type type, Object obj, Object obj2, int i, int[] iArr) {
        return deserialze(defaultJSONParser, type, obj, obj2, i, iArr);
    }

    /* access modifiers changed from: protected */
    public JavaBeanDeserializer getSeeAlso(ParserConfig parserConfig, JavaBeanInfo javaBeanInfo, String str) {
        if (javaBeanInfo.jsonType == null) {
            return null;
        }
        for (Class deserializer : javaBeanInfo.jsonType.seeAlso()) {
            ObjectDeserializer deserializer2 = parserConfig.getDeserializer((Type) deserializer);
            if (deserializer2 instanceof JavaBeanDeserializer) {
                JavaBeanDeserializer javaBeanDeserializer = (JavaBeanDeserializer) deserializer2;
                JavaBeanInfo javaBeanInfo2 = javaBeanDeserializer.beanInfo;
                if (javaBeanInfo2.typeName.equals(str)) {
                    return javaBeanDeserializer;
                }
                JavaBeanDeserializer seeAlso = getSeeAlso(parserConfig, javaBeanInfo2, str);
                if (seeAlso != null) {
                    return seeAlso;
                }
            }
        }
        return null;
    }

    protected static void parseArray(Collection collection, ObjectDeserializer objectDeserializer, DefaultJSONParser defaultJSONParser, Type type, Object obj) {
        JSONLexerBase jSONLexerBase = (JSONLexerBase) defaultJSONParser.lexer;
        int i = jSONLexerBase.token();
        if (i == 8) {
            jSONLexerBase.nextToken(16);
            jSONLexerBase.token();
            return;
        }
        if (i != 14) {
            defaultJSONParser.throwException(i);
        }
        if (jSONLexerBase.getCurrent() == '[') {
            jSONLexerBase.next();
            jSONLexerBase.setToken(14);
        } else {
            jSONLexerBase.nextToken(14);
        }
        if (jSONLexerBase.token() == 15) {
            jSONLexerBase.nextToken();
            return;
        }
        int i2 = 0;
        while (true) {
            collection.add(objectDeserializer.deserialze(defaultJSONParser, type, Integer.valueOf(i2)));
            i2++;
            if (jSONLexerBase.token() != 16) {
                break;
            } else if (jSONLexerBase.getCurrent() == '[') {
                jSONLexerBase.next();
                jSONLexerBase.setToken(14);
            } else {
                jSONLexerBase.nextToken(14);
            }
        }
        int i3 = jSONLexerBase.token();
        if (i3 != 15) {
            defaultJSONParser.throwException(i3);
        }
        if (jSONLexerBase.getCurrent() == ',') {
            jSONLexerBase.next();
            jSONLexerBase.setToken(16);
        } else {
            jSONLexerBase.nextToken(16);
        }
    }
}
