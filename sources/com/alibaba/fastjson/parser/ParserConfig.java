package com.alibaba.fastjson.parser;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.JSONPObject;
import com.alibaba.fastjson.JSONPath;
import com.alibaba.fastjson.PropertyNamingStrategy;
import com.alibaba.fastjson.annotation.JSONField;
import com.alibaba.fastjson.annotation.JSONType;
import com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory;
import com.alibaba.fastjson.parser.deserializer.ArrayListTypeFieldDeserializer;
import com.alibaba.fastjson.parser.deserializer.AutowiredObjectDeserializer;
import com.alibaba.fastjson.parser.deserializer.DefaultFieldDeserializer;
import com.alibaba.fastjson.parser.deserializer.EnumDeserializer;
import com.alibaba.fastjson.parser.deserializer.FieldDeserializer;
import com.alibaba.fastjson.parser.deserializer.JSONPDeserializer;
import com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer;
import com.alibaba.fastjson.parser.deserializer.JavaObjectDeserializer;
import com.alibaba.fastjson.parser.deserializer.Jdk8DateCodec;
import com.alibaba.fastjson.parser.deserializer.MapDeserializer;
import com.alibaba.fastjson.parser.deserializer.NumberDeserializer;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.alibaba.fastjson.parser.deserializer.OptionalCodec;
import com.alibaba.fastjson.parser.deserializer.PropertyProcessable;
import com.alibaba.fastjson.parser.deserializer.PropertyProcessableDeserializer;
import com.alibaba.fastjson.parser.deserializer.SqlDateDeserializer;
import com.alibaba.fastjson.parser.deserializer.StackTraceElementDeserializer;
import com.alibaba.fastjson.parser.deserializer.ThrowableDeserializer;
import com.alibaba.fastjson.parser.deserializer.TimeDeserializer;
import com.alibaba.fastjson.serializer.AtomicCodec;
import com.alibaba.fastjson.serializer.AwtCodec;
import com.alibaba.fastjson.serializer.BigDecimalCodec;
import com.alibaba.fastjson.serializer.BigIntegerCodec;
import com.alibaba.fastjson.serializer.BooleanCodec;
import com.alibaba.fastjson.serializer.CalendarCodec;
import com.alibaba.fastjson.serializer.CharArrayCodec;
import com.alibaba.fastjson.serializer.CharacterCodec;
import com.alibaba.fastjson.serializer.CollectionCodec;
import com.alibaba.fastjson.serializer.DateCodec;
import com.alibaba.fastjson.serializer.FloatCodec;
import com.alibaba.fastjson.serializer.IntegerCodec;
import com.alibaba.fastjson.serializer.LongCodec;
import com.alibaba.fastjson.serializer.MiscCodec;
import com.alibaba.fastjson.serializer.ObjectArrayCodec;
import com.alibaba.fastjson.serializer.ReferenceCodec;
import com.alibaba.fastjson.serializer.StringCodec;
import com.alibaba.fastjson.util.ASMClassLoader;
import com.alibaba.fastjson.util.ASMUtils;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.IOUtils;
import com.alibaba.fastjson.util.IdentityHashMap;
import com.alibaba.fastjson.util.JavaBeanInfo;
import com.alibaba.fastjson.util.ServiceLoader;
import com.alibaba.fastjson.util.TypeUtils;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.io.Closeable;
import java.io.File;
import java.io.Serializable;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.URI;
import java.net.URL;
import java.nio.charset.Charset;
import java.security.AccessControlException;
import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Currency;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Properties;
import java.util.Set;
import java.util.TimeZone;
import java.util.TreeMap;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import javax.sql.DataSource;
import javax.xml.datatype.XMLGregorianCalendar;

public class ParserConfig {
    public static final String AUTOTYPE_ACCEPT = "fastjson.parser.autoTypeAccept";
    public static final String AUTOTYPE_SUPPORT_PROPERTY = "fastjson.parser.autoTypeSupport";
    public static final boolean AUTO_SUPPORT = "true".equals(IOUtils.getStringProperty(AUTOTYPE_SUPPORT_PROPERTY));
    private static final String[] AUTO_TYPE_ACCEPT_LIST;
    public static final String[] DENYS = splitItemsFormProperty(IOUtils.getStringProperty(DENY_PROPERTY));
    public static final String DENY_PROPERTY = "fastjson.parser.deny";
    private static boolean awtError = false;
    public static ParserConfig global = new ParserConfig();
    private static boolean jdk8Error = false;
    private String[] acceptList;
    private boolean asmEnable;
    protected ASMDeserializerFactory asmFactory;
    private boolean autoTypeSupport;
    public boolean compatibleWithJavaBean;
    protected ClassLoader defaultClassLoader;
    private String[] denyList;
    private final IdentityHashMap<Type, ObjectDeserializer> deserializers;
    public final boolean fieldBased;
    public PropertyNamingStrategy propertyNamingStrategy;
    public final SymbolTable symbolTable;

    static {
        String[] splitItemsFormProperty = splitItemsFormProperty(IOUtils.getStringProperty(AUTOTYPE_ACCEPT));
        if (splitItemsFormProperty == null) {
            splitItemsFormProperty = new String[0];
        }
        AUTO_TYPE_ACCEPT_LIST = splitItemsFormProperty;
    }

    public static ParserConfig getGlobalInstance() {
        return global;
    }

    public ParserConfig() {
        this(false);
    }

    public ParserConfig(boolean z) {
        this(null, null, z);
    }

    public ParserConfig(ClassLoader classLoader) {
        this(null, classLoader, false);
    }

    public ParserConfig(ASMDeserializerFactory aSMDeserializerFactory) {
        this(aSMDeserializerFactory, null, false);
    }

    private ParserConfig(ASMDeserializerFactory aSMDeserializerFactory, ClassLoader classLoader, boolean z) {
        this.deserializers = new IdentityHashMap<>();
        this.asmEnable = !ASMUtils.IS_ANDROID;
        this.symbolTable = new SymbolTable(4096);
        this.autoTypeSupport = AUTO_SUPPORT;
        this.denyList = "bsh,com.mchange,com.sun.,java.lang.Thread,java.net.Socket,java.rmi,javax.xml,org.apache.bcel,org.apache.commons.beanutils,org.apache.commons.collections.Transformer,org.apache.commons.collections.functors,org.apache.commons.collections4.comparators,org.apache.commons.fileupload,org.apache.myfaces.context.servlet,org.apache.tomcat,org.apache.wicket.util,org.apache.xalan,org.codehaus.groovy.runtime,org.hibernate,org.jboss,org.mozilla.javascript,org.python.core,org.springframework".split(",");
        this.acceptList = AUTO_TYPE_ACCEPT_LIST;
        this.compatibleWithJavaBean = TypeUtils.compatibleWithJavaBean;
        this.fieldBased = z;
        if (aSMDeserializerFactory == null && !ASMUtils.IS_ANDROID) {
            if (classLoader == null) {
                try {
                    aSMDeserializerFactory = new ASMDeserializerFactory(new ASMClassLoader());
                } catch (ExceptionInInitializerError | NoClassDefFoundError | AccessControlException unused) {
                }
            } else {
                aSMDeserializerFactory = new ASMDeserializerFactory(classLoader);
            }
        }
        this.asmFactory = aSMDeserializerFactory;
        if (aSMDeserializerFactory == null) {
            this.asmEnable = false;
        }
        this.deserializers.put(SimpleDateFormat.class, MiscCodec.instance);
        this.deserializers.put(Timestamp.class, SqlDateDeserializer.instance_timestamp);
        this.deserializers.put(Date.class, SqlDateDeserializer.instance);
        this.deserializers.put(Time.class, TimeDeserializer.instance);
        this.deserializers.put(java.util.Date.class, DateCodec.instance);
        this.deserializers.put(Calendar.class, CalendarCodec.instance);
        this.deserializers.put(XMLGregorianCalendar.class, CalendarCodec.instance);
        this.deserializers.put(JSONObject.class, MapDeserializer.instance);
        this.deserializers.put(JSONArray.class, CollectionCodec.instance);
        this.deserializers.put(Map.class, MapDeserializer.instance);
        this.deserializers.put(HashMap.class, MapDeserializer.instance);
        this.deserializers.put(LinkedHashMap.class, MapDeserializer.instance);
        this.deserializers.put(TreeMap.class, MapDeserializer.instance);
        this.deserializers.put(ConcurrentMap.class, MapDeserializer.instance);
        this.deserializers.put(ConcurrentHashMap.class, MapDeserializer.instance);
        this.deserializers.put(Collection.class, CollectionCodec.instance);
        this.deserializers.put(List.class, CollectionCodec.instance);
        this.deserializers.put(ArrayList.class, CollectionCodec.instance);
        this.deserializers.put(Object.class, JavaObjectDeserializer.instance);
        this.deserializers.put(String.class, StringCodec.instance);
        this.deserializers.put(StringBuffer.class, StringCodec.instance);
        this.deserializers.put(StringBuilder.class, StringCodec.instance);
        this.deserializers.put(Character.TYPE, CharacterCodec.instance);
        this.deserializers.put(Character.class, CharacterCodec.instance);
        this.deserializers.put(Byte.TYPE, NumberDeserializer.instance);
        this.deserializers.put(Byte.class, NumberDeserializer.instance);
        this.deserializers.put(Short.TYPE, NumberDeserializer.instance);
        this.deserializers.put(Short.class, NumberDeserializer.instance);
        this.deserializers.put(Integer.TYPE, IntegerCodec.instance);
        this.deserializers.put(Integer.class, IntegerCodec.instance);
        this.deserializers.put(Long.TYPE, LongCodec.instance);
        this.deserializers.put(Long.class, LongCodec.instance);
        this.deserializers.put(BigInteger.class, BigIntegerCodec.instance);
        this.deserializers.put(BigDecimal.class, BigDecimalCodec.instance);
        this.deserializers.put(Float.TYPE, FloatCodec.instance);
        this.deserializers.put(Float.class, FloatCodec.instance);
        this.deserializers.put(Double.TYPE, NumberDeserializer.instance);
        this.deserializers.put(Double.class, NumberDeserializer.instance);
        this.deserializers.put(Boolean.TYPE, BooleanCodec.instance);
        this.deserializers.put(Boolean.class, BooleanCodec.instance);
        this.deserializers.put(Class.class, MiscCodec.instance);
        this.deserializers.put(char[].class, new CharArrayCodec());
        this.deserializers.put(AtomicBoolean.class, BooleanCodec.instance);
        this.deserializers.put(AtomicInteger.class, IntegerCodec.instance);
        this.deserializers.put(AtomicLong.class, LongCodec.instance);
        this.deserializers.put(AtomicReference.class, ReferenceCodec.instance);
        this.deserializers.put(WeakReference.class, ReferenceCodec.instance);
        this.deserializers.put(SoftReference.class, ReferenceCodec.instance);
        this.deserializers.put(UUID.class, MiscCodec.instance);
        this.deserializers.put(TimeZone.class, MiscCodec.instance);
        this.deserializers.put(Locale.class, MiscCodec.instance);
        this.deserializers.put(Currency.class, MiscCodec.instance);
        this.deserializers.put(InetAddress.class, MiscCodec.instance);
        this.deserializers.put(Inet4Address.class, MiscCodec.instance);
        this.deserializers.put(Inet6Address.class, MiscCodec.instance);
        this.deserializers.put(InetSocketAddress.class, MiscCodec.instance);
        this.deserializers.put(File.class, MiscCodec.instance);
        this.deserializers.put(URI.class, MiscCodec.instance);
        this.deserializers.put(URL.class, MiscCodec.instance);
        this.deserializers.put(Pattern.class, MiscCodec.instance);
        this.deserializers.put(Charset.class, MiscCodec.instance);
        this.deserializers.put(JSONPath.class, MiscCodec.instance);
        this.deserializers.put(Number.class, NumberDeserializer.instance);
        this.deserializers.put(AtomicIntegerArray.class, AtomicCodec.instance);
        this.deserializers.put(AtomicLongArray.class, AtomicCodec.instance);
        this.deserializers.put(StackTraceElement.class, StackTraceElementDeserializer.instance);
        this.deserializers.put(Serializable.class, JavaObjectDeserializer.instance);
        this.deserializers.put(Cloneable.class, JavaObjectDeserializer.instance);
        this.deserializers.put(Comparable.class, JavaObjectDeserializer.instance);
        this.deserializers.put(Closeable.class, JavaObjectDeserializer.instance);
        this.deserializers.put(JSONPObject.class, new JSONPDeserializer());
        addItemsToDeny(DENYS);
        addItemsToAccept(AUTO_TYPE_ACCEPT_LIST);
    }

    private static String[] splitItemsFormProperty(String str) {
        if (str == null || str.length() <= 0) {
            return null;
        }
        return str.split(",");
    }

    public void configFromPropety(Properties properties) {
        addItemsToDeny(splitItemsFormProperty(properties.getProperty(DENY_PROPERTY)));
        addItemsToAccept(splitItemsFormProperty(properties.getProperty(AUTOTYPE_ACCEPT)));
        String property = properties.getProperty(AUTOTYPE_SUPPORT_PROPERTY);
        if ("true".equals(property)) {
            this.autoTypeSupport = true;
        } else if ("false".equals(property)) {
            this.autoTypeSupport = false;
        }
    }

    private void addItemsToDeny(String[] strArr) {
        if (strArr != null) {
            for (String addDeny : strArr) {
                addDeny(addDeny);
            }
        }
    }

    private void addItemsToAccept(String[] strArr) {
        if (strArr != null) {
            for (String addAccept : strArr) {
                addAccept(addAccept);
            }
        }
    }

    public boolean isAutoTypeSupport() {
        return this.autoTypeSupport;
    }

    public void setAutoTypeSupport(boolean z) {
        this.autoTypeSupport = z;
    }

    public boolean isAsmEnable() {
        return this.asmEnable;
    }

    public void setAsmEnable(boolean z) {
        this.asmEnable = z;
    }

    public IdentityHashMap<Type, ObjectDeserializer> getDeserializers() {
        return this.deserializers;
    }

    public ObjectDeserializer getDeserializer(Type type) {
        ObjectDeserializer objectDeserializer = (ObjectDeserializer) this.deserializers.get(type);
        if (objectDeserializer != null) {
            return objectDeserializer;
        }
        if (type instanceof Class) {
            return getDeserializer((Class) type, type);
        }
        if (type instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) type).getRawType();
            if (rawType instanceof Class) {
                return getDeserializer((Class) rawType, type);
            }
            return getDeserializer(rawType);
        }
        if (type instanceof WildcardType) {
            Type[] upperBounds = ((WildcardType) type).getUpperBounds();
            if (upperBounds.length == 1) {
                return getDeserializer(upperBounds[0]);
            }
        }
        return JavaObjectDeserializer.instance;
    }

    public ObjectDeserializer getDeserializer(Class<?> cls, Type type) {
        ObjectDeserializer objectDeserializer;
        String[] strArr;
        Class cls2 = cls;
        Type type2 = type;
        String str = "java.util.Optional";
        ObjectDeserializer objectDeserializer2 = (ObjectDeserializer) this.deserializers.get(type2);
        if (objectDeserializer2 != null) {
            return objectDeserializer2;
        }
        if (type2 == 0) {
            type2 = cls2;
        }
        ObjectDeserializer objectDeserializer3 = (ObjectDeserializer) this.deserializers.get(type2);
        if (objectDeserializer3 != null) {
            return objectDeserializer3;
        }
        JSONType jSONType = (JSONType) TypeUtils.getAnnotation(cls2, JSONType.class);
        if (jSONType != null) {
            Class<Void> mappingTo = jSONType.mappingTo();
            if (mappingTo != Void.class) {
                return getDeserializer(mappingTo, mappingTo);
            }
        }
        if ((type2 instanceof WildcardType) || (type2 instanceof TypeVariable) || (type2 instanceof ParameterizedType)) {
            objectDeserializer3 = (ObjectDeserializer) this.deserializers.get(cls2);
        }
        if (objectDeserializer3 != null) {
            return objectDeserializer3;
        }
        String replace = cls.getName().replace('$', '.');
        int i = 0;
        if (replace.startsWith("java.awt.") && AwtCodec.support(cls) && !awtError) {
            try {
                for (String str2 : new String[]{"java.awt.Point", "java.awt.Font", "java.awt.Rectangle", "java.awt.Color"}) {
                    if (str2.equals(replace)) {
                        IdentityHashMap<Type, ObjectDeserializer> identityHashMap = this.deserializers;
                        Class cls3 = Class.forName(str2);
                        AwtCodec awtCodec = AwtCodec.instance;
                        identityHashMap.put(cls3, awtCodec);
                        return awtCodec;
                    }
                }
            } catch (Throwable unused) {
                awtError = true;
            }
            objectDeserializer3 = AwtCodec.instance;
        }
        if (!jdk8Error) {
            try {
                if (replace.startsWith("java.time.")) {
                    String[] strArr2 = {"java.time.LocalDateTime", "java.time.LocalDate", "java.time.LocalTime", "java.time.ZonedDateTime", "java.time.OffsetDateTime", "java.time.OffsetTime", "java.time.ZoneOffset", "java.time.ZoneRegion", "java.time.ZoneId", "java.time.Period", "java.time.Duration", "java.time.Instant"};
                    int length = strArr2.length;
                    while (i < length) {
                        String str3 = strArr2[i];
                        if (str3.equals(replace)) {
                            IdentityHashMap<Type, ObjectDeserializer> identityHashMap2 = this.deserializers;
                            Class cls4 = Class.forName(str3);
                            Jdk8DateCodec jdk8DateCodec = Jdk8DateCodec.instance;
                            identityHashMap2.put(cls4, jdk8DateCodec);
                            return jdk8DateCodec;
                        }
                        i++;
                    }
                } else if (replace.startsWith(str)) {
                    String[] strArr3 = {str, "java.util.OptionalDouble", "java.util.OptionalInt", "java.util.OptionalLong"};
                    int length2 = strArr3.length;
                    while (i < length2) {
                        String str4 = strArr3[i];
                        if (str4.equals(replace)) {
                            IdentityHashMap<Type, ObjectDeserializer> identityHashMap3 = this.deserializers;
                            Class cls5 = Class.forName(str4);
                            OptionalCodec optionalCodec = OptionalCodec.instance;
                            identityHashMap3.put(cls5, optionalCodec);
                            return optionalCodec;
                        }
                        i++;
                    }
                }
            } catch (Throwable unused2) {
                jdk8Error = true;
            }
        }
        if (replace.equals("java.nio.file.Path")) {
            IdentityHashMap<Type, ObjectDeserializer> identityHashMap4 = this.deserializers;
            objectDeserializer3 = MiscCodec.instance;
            identityHashMap4.put(cls2, objectDeserializer3);
        }
        if (cls2 == Entry.class) {
            IdentityHashMap<Type, ObjectDeserializer> identityHashMap5 = this.deserializers;
            objectDeserializer3 = MiscCodec.instance;
            identityHashMap5.put(cls2, objectDeserializer3);
        }
        try {
            for (AutowiredObjectDeserializer autowiredObjectDeserializer : ServiceLoader.load(AutowiredObjectDeserializer.class, Thread.currentThread().getContextClassLoader())) {
                for (Type put : autowiredObjectDeserializer.getAutowiredFor()) {
                    this.deserializers.put(put, autowiredObjectDeserializer);
                }
            }
        } catch (Exception unused3) {
        }
        if (objectDeserializer3 == null) {
            objectDeserializer3 = (ObjectDeserializer) this.deserializers.get(type2);
        }
        if (objectDeserializer3 != null) {
            return objectDeserializer3;
        }
        if (cls.isEnum()) {
            JSONType jSONType2 = (JSONType) cls2.getAnnotation(JSONType.class);
            if (jSONType2 != null) {
                try {
                    ObjectDeserializer objectDeserializer4 = (ObjectDeserializer) jSONType2.deserializer().newInstance();
                    this.deserializers.put(cls2, objectDeserializer4);
                    return objectDeserializer4;
                } catch (Throwable unused4) {
                }
            }
            objectDeserializer = new EnumDeserializer(cls2);
        } else if (cls.isArray()) {
            objectDeserializer = ObjectArrayCodec.instance;
        } else if (cls2 == Set.class || cls2 == HashSet.class || cls2 == Collection.class || cls2 == List.class || cls2 == ArrayList.class) {
            objectDeserializer = CollectionCodec.instance;
        } else if (Collection.class.isAssignableFrom(cls2)) {
            objectDeserializer = CollectionCodec.instance;
        } else if (Map.class.isAssignableFrom(cls2)) {
            objectDeserializer = MapDeserializer.instance;
        } else if (Throwable.class.isAssignableFrom(cls2)) {
            objectDeserializer = new ThrowableDeserializer(this, cls2);
        } else if (PropertyProcessable.class.isAssignableFrom(cls2)) {
            objectDeserializer = new PropertyProcessableDeserializer(cls2);
        } else {
            objectDeserializer = createJavaBeanDeserializer(cls2, type2);
        }
        putDeserializer(type2, objectDeserializer);
        return objectDeserializer;
    }

    public void initJavaBeanDeserializers(Class<?>... clsArr) {
        if (clsArr != null) {
            for (Class<?> cls : clsArr) {
                if (cls != null) {
                    putDeserializer(cls, createJavaBeanDeserializer(cls, cls));
                }
            }
        }
    }

    public ObjectDeserializer createJavaBeanDeserializer(Class<?> cls, Type type) {
        boolean z = this.asmEnable & (!this.fieldBased);
        if (z) {
            JSONType jSONType = (JSONType) TypeUtils.getAnnotation(cls, JSONType.class);
            if (jSONType != null) {
                Class<Void> deserializer = jSONType.deserializer();
                if (deserializer != Void.class) {
                    try {
                        Object newInstance = deserializer.newInstance();
                        if (newInstance instanceof ObjectDeserializer) {
                            return (ObjectDeserializer) newInstance;
                        }
                    } catch (Throwable unused) {
                    }
                }
                z = jSONType.asm();
            }
            if (z) {
                Class<Object> builderClass = JavaBeanInfo.getBuilderClass(cls, jSONType);
                if (builderClass == null) {
                    builderClass = cls;
                }
                while (true) {
                    if (Modifier.isPublic(builderClass.getModifiers())) {
                        builderClass = builderClass.getSuperclass();
                        if (builderClass != Object.class) {
                            if (builderClass == null) {
                                break;
                            }
                        } else {
                            break;
                        }
                    } else {
                        z = false;
                        break;
                    }
                }
            }
        }
        if (cls.getTypeParameters().length != 0) {
            z = false;
        }
        if (z) {
            ASMDeserializerFactory aSMDeserializerFactory = this.asmFactory;
            if (aSMDeserializerFactory != null && aSMDeserializerFactory.classLoader.isExternalClass(cls)) {
                z = false;
            }
        }
        if (z) {
            z = ASMUtils.checkName(cls.getSimpleName());
        }
        if (z) {
            if (cls.isInterface()) {
                z = false;
            }
            JavaBeanInfo build = JavaBeanInfo.build(cls, type, this.propertyNamingStrategy);
            if (z && build.fields.length > 200) {
                z = false;
            }
            Constructor<?> constructor = build.defaultConstructor;
            if (z && constructor == null && !cls.isInterface()) {
                z = false;
            }
            FieldInfo[] fieldInfoArr = build.fields;
            int length = fieldInfoArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                FieldInfo fieldInfo = fieldInfoArr[i];
                if (!fieldInfo.getOnly) {
                    Class<?> cls2 = fieldInfo.fieldClass;
                    if (!Modifier.isPublic(cls2.getModifiers()) || ((cls2.isMemberClass() && !Modifier.isStatic(cls2.getModifiers())) || (fieldInfo.getMember() != null && !ASMUtils.checkName(fieldInfo.getMember().getName())))) {
                        break;
                    }
                    JSONField annotation = fieldInfo.getAnnotation();
                    if ((annotation != null && (!ASMUtils.checkName(annotation.name()) || annotation.format().length() != 0 || annotation.deserializeUsing() != Void.class || annotation.unwrapped())) || ((fieldInfo.method != null && fieldInfo.method.getParameterTypes().length > 1) || (cls2.isEnum() && !(getDeserializer((Type) cls2) instanceof EnumDeserializer)))) {
                        break;
                    }
                    i++;
                } else {
                    break;
                }
            }
            z = false;
        }
        if (z && cls.isMemberClass() && !Modifier.isStatic(cls.getModifiers())) {
            z = false;
        }
        if (!z) {
            return new JavaBeanDeserializer(this, cls, type);
        }
        JavaBeanInfo build2 = JavaBeanInfo.build(cls, type, this.propertyNamingStrategy);
        try {
            return this.asmFactory.createJavaBeanDeserializer(this, build2);
        } catch (NoSuchMethodException unused2) {
            return new JavaBeanDeserializer(this, cls, type);
        } catch (JSONException unused3) {
            return new JavaBeanDeserializer(this, build2);
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append("create asm deserializer error, ");
            sb.append(cls.getName());
            throw new JSONException(sb.toString(), e);
        }
    }

    public FieldDeserializer createFieldDeserializer(ParserConfig parserConfig, JavaBeanInfo javaBeanInfo, FieldInfo fieldInfo) {
        Class<?> cls = javaBeanInfo.clazz;
        Class<?> cls2 = fieldInfo.fieldClass;
        JSONField annotation = fieldInfo.getAnnotation();
        Class cls3 = null;
        if (annotation != null) {
            Class<Void> deserializeUsing = annotation.deserializeUsing();
            if (deserializeUsing != Void.class) {
                cls3 = deserializeUsing;
            }
        }
        if (cls3 == null && (cls2 == List.class || cls2 == ArrayList.class)) {
            return new ArrayListTypeFieldDeserializer(parserConfig, cls, fieldInfo);
        }
        return new DefaultFieldDeserializer(parserConfig, cls, fieldInfo);
    }

    public void putDeserializer(Type type, ObjectDeserializer objectDeserializer) {
        this.deserializers.put(type, objectDeserializer);
    }

    public ObjectDeserializer getDeserializer(FieldInfo fieldInfo) {
        return getDeserializer(fieldInfo.fieldClass, fieldInfo.fieldType);
    }

    public boolean isPrimitive(Class<?> cls) {
        return isPrimitive2(cls);
    }

    public static boolean isPrimitive2(Class<?> cls) {
        return cls.isPrimitive() || cls == Boolean.class || cls == Character.class || cls == Byte.class || cls == Short.class || cls == Integer.class || cls == Long.class || cls == Float.class || cls == Double.class || cls == BigInteger.class || cls == BigDecimal.class || cls == String.class || cls == java.util.Date.class || cls == Date.class || cls == Time.class || cls == Timestamp.class || cls.isEnum();
    }

    public static void parserAllFieldToCache(Class<?> cls, Map<String, Field> map) {
        Field[] declaredFields;
        for (Field field : cls.getDeclaredFields()) {
            String name = field.getName();
            if (!map.containsKey(name)) {
                map.put(name, field);
            }
        }
        if (cls.getSuperclass() != null && cls.getSuperclass() != Object.class) {
            parserAllFieldToCache(cls.getSuperclass(), map);
        }
    }

    public static Field getFieldFromCache(String str, Map<String, Field> map) {
        Field field = (Field) map.get(str);
        if (field == null) {
            StringBuilder sb = new StringBuilder();
            sb.append(EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR);
            sb.append(str);
            field = (Field) map.get(sb.toString());
        }
        if (field == null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("m_");
            sb2.append(str);
            field = (Field) map.get(sb2.toString());
        }
        if (field != null) {
            return field;
        }
        char charAt = str.charAt(0);
        if (charAt >= 'a' && charAt <= 'z') {
            char[] charArray = str.toCharArray();
            charArray[0] = (char) (charArray[0] - ' ');
            field = (Field) map.get(new String(charArray));
        }
        if (str.length() <= 2) {
            return field;
        }
        char charAt2 = str.charAt(1);
        if (str.length() <= 2 || charAt < 'a' || charAt > 'z' || charAt2 < 'A' || charAt2 > 'Z') {
            return field;
        }
        for (Entry entry : map.entrySet()) {
            if (str.equalsIgnoreCase((String) entry.getKey())) {
                return (Field) entry.getValue();
            }
        }
        return field;
    }

    public ClassLoader getDefaultClassLoader() {
        return this.defaultClassLoader;
    }

    public void setDefaultClassLoader(ClassLoader classLoader) {
        this.defaultClassLoader = classLoader;
    }

    public void addDeny(String str) {
        if (!(str == null || str.length() == 0)) {
            String[] strArr = this.denyList;
            int length = strArr.length;
            int i = 0;
            while (i < length) {
                if (!str.equals(strArr[i])) {
                    i++;
                } else {
                    return;
                }
            }
            String[] strArr2 = this.denyList;
            String[] strArr3 = new String[(strArr2.length + 1)];
            System.arraycopy(strArr2, 0, strArr3, 0, strArr2.length);
            strArr3[strArr3.length - 1] = str;
            this.denyList = strArr3;
        }
    }

    public void addAccept(String str) {
        if (!(str == null || str.length() == 0)) {
            String[] strArr = this.acceptList;
            int length = strArr.length;
            int i = 0;
            while (i < length) {
                if (!str.equals(strArr[i])) {
                    i++;
                } else {
                    return;
                }
            }
            String[] strArr2 = this.acceptList;
            String[] strArr3 = new String[(strArr2.length + 1)];
            System.arraycopy(strArr2, 0, strArr3, 0, strArr2.length);
            strArr3[strArr3.length - 1] = str;
            this.acceptList = strArr3;
        }
    }

    public Class<?> checkAutoType(String str, Class<?> cls) {
        return checkAutoType(str, cls, JSON.DEFAULT_PARSER_FEATURE);
    }

    public Class<?> checkAutoType(String str, Class<?> cls, int i) {
        Class cls2 = null;
        if (str == null) {
            return null;
        }
        String str2 = "autoType is not support. ";
        if (str.length() < 128) {
            String replace = str.replace('$', '.');
            boolean z = false;
            if (this.autoTypeSupport || cls != null) {
                Class cls3 = null;
                int i2 = 0;
                while (true) {
                    String[] strArr = this.acceptList;
                    if (i2 >= strArr.length) {
                        int i3 = 0;
                        while (true) {
                            String[] strArr2 = this.denyList;
                            if (i3 >= strArr2.length) {
                                cls2 = cls3;
                                break;
                            } else if (!replace.startsWith(strArr2[i3]) || TypeUtils.getClassFromMapping(str) != null) {
                                i3++;
                            } else {
                                StringBuilder sb = new StringBuilder();
                                sb.append(str2);
                                sb.append(str);
                                throw new JSONException(sb.toString());
                            }
                        }
                    } else {
                        if (replace.startsWith(strArr[i2])) {
                            cls3 = TypeUtils.loadClass(str, this.defaultClassLoader, false);
                            if (cls3 != null) {
                                return cls3;
                            }
                        }
                        i2++;
                    }
                }
            }
            if (cls2 == null) {
                cls2 = TypeUtils.getClassFromMapping(str);
            }
            if (cls2 == null) {
                cls2 = this.deserializers.findClass(str);
            }
            String str3 = " -> ";
            String str4 = "type not match. ";
            if (cls2 == null) {
                if (!this.autoTypeSupport) {
                    int i4 = 0;
                    while (true) {
                        String[] strArr3 = this.denyList;
                        if (i4 >= strArr3.length) {
                            int i5 = 0;
                            while (true) {
                                String[] strArr4 = this.acceptList;
                                if (i5 >= strArr4.length) {
                                    break;
                                } else if (replace.startsWith(strArr4[i5])) {
                                    if (cls2 == null) {
                                        cls2 = TypeUtils.loadClass(str, this.defaultClassLoader, false);
                                    }
                                    if (cls == null || !cls.isAssignableFrom(cls2)) {
                                        return cls2;
                                    }
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append(str4);
                                    sb2.append(str);
                                    sb2.append(str3);
                                    sb2.append(cls.getName());
                                    throw new JSONException(sb2.toString());
                                } else {
                                    i5++;
                                }
                            }
                        } else if (!replace.startsWith(strArr3[i4])) {
                            i4++;
                        } else {
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append(str2);
                            sb3.append(str);
                            throw new JSONException(sb3.toString());
                        }
                    }
                }
                if (cls2 == null) {
                    cls2 = TypeUtils.loadClass(str, this.defaultClassLoader, false);
                }
                if (cls2 != null) {
                    if (TypeUtils.getAnnotation(cls2, JSONType.class) != null) {
                        return cls2;
                    }
                    if (ClassLoader.class.isAssignableFrom(cls2) || DataSource.class.isAssignableFrom(cls2)) {
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append(str2);
                        sb4.append(str);
                        throw new JSONException(sb4.toString());
                    } else if (cls != null) {
                        if (cls.isAssignableFrom(cls2)) {
                            return cls2;
                        }
                        StringBuilder sb5 = new StringBuilder();
                        sb5.append(str4);
                        sb5.append(str);
                        sb5.append(str3);
                        sb5.append(cls.getName());
                        throw new JSONException(sb5.toString());
                    } else if (JavaBeanInfo.build(cls2, cls2, this.propertyNamingStrategy).creatorConstructor != null && this.autoTypeSupport) {
                        StringBuilder sb6 = new StringBuilder();
                        sb6.append(str2);
                        sb6.append(str);
                        throw new JSONException(sb6.toString());
                    }
                }
                int i6 = Feature.SupportAutoType.mask;
                if (!(!this.autoTypeSupport && (i & i6) == 0 && (i6 & JSON.DEFAULT_PARSER_FEATURE) == 0)) {
                    z = true;
                }
                if (z) {
                    return cls2;
                }
                StringBuilder sb7 = new StringBuilder();
                sb7.append(str2);
                sb7.append(str);
                throw new JSONException(sb7.toString());
            } else if (cls == null || cls2 == HashMap.class || cls.isAssignableFrom(cls2)) {
                return cls2;
            } else {
                StringBuilder sb8 = new StringBuilder();
                sb8.append(str4);
                sb8.append(str);
                sb8.append(str3);
                sb8.append(cls.getName());
                throw new JSONException(sb8.toString());
            }
        } else {
            StringBuilder sb9 = new StringBuilder();
            sb9.append(str2);
            sb9.append(str);
            throw new JSONException(sb9.toString());
        }
    }
}
