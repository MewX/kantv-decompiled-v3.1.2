package com.alibaba.fastjson.util;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.PropertyNamingStrategy;
import com.alibaba.fastjson.annotation.JSONField;
import com.alibaba.fastjson.annotation.JSONType;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.parser.JSONScanner;
import com.alibaba.fastjson.parser.ParserConfig;
import com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.alibaba.fastjson.serializer.CalendarCodec;
import com.alibaba.fastjson.serializer.SerializeBeanInfo;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.avos.avoscloud.AVUtils;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.lang.annotation.Annotation;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.security.AccessControlException;
import java.sql.Time;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Currency;
import java.util.Date;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.UUID;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

public class TypeUtils {
    private static Class<? extends Annotation> class_ManyToMany = null;
    private static boolean class_ManyToMany_error = false;
    private static Class<? extends Annotation> class_OneToMany = null;
    private static boolean class_OneToMany_error = false;
    public static boolean compatibleWithFieldName = false;
    public static boolean compatibleWithJavaBean = false;
    private static volatile Map<Class, String[]> kotlinIgnores = null;
    private static volatile boolean kotlinIgnores_error = false;
    private static volatile boolean kotlin_class_klass_error = false;
    private static volatile boolean kotlin_error = false;
    private static volatile Constructor kotlin_kclass_constructor = null;
    private static volatile Method kotlin_kclass_getConstructors = null;
    private static volatile Method kotlin_kfunction_getParameters = null;
    private static volatile Method kotlin_kparameter_getName = null;
    private static volatile Class kotlin_metadata = null;
    private static volatile boolean kotlin_metadata_error = false;
    private static ConcurrentMap<String, Class<?>> mappings = new ConcurrentHashMap(16, 0.75f, 1);
    private static Method method_HibernateIsInitialized = null;
    private static boolean method_HibernateIsInitialized_error = false;
    private static Class<?> optionalClass = null;
    private static boolean optionalClassInited = false;
    private static Method oracleDateMethod = null;
    private static boolean oracleDateMethodInited = false;
    private static Method oracleTimestampMethod = null;
    private static boolean oracleTimestampMethodInited = false;
    private static Class<?> pathClass = null;
    private static boolean pathClass_error = false;
    private static boolean setAccessibleEnable = true;
    private static Class<? extends Annotation> transientClass = null;
    private static boolean transientClassInited = false;

    static {
        String str = "true";
        try {
            compatibleWithJavaBean = str.equals(IOUtils.getStringProperty(IOUtils.FASTJSON_COMPATIBLEWITHJAVABEAN));
            compatibleWithFieldName = str.equals(IOUtils.getStringProperty(IOUtils.FASTJSON_COMPATIBLEWITHFIELDNAME));
        } catch (Throwable unused) {
        }
        addBaseClassMappings();
    }

    public static String castToString(Object obj) {
        if (obj == null) {
            return null;
        }
        return obj.toString();
    }

    public static Byte castToByte(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Number) {
            return Byte.valueOf(((Number) obj).byteValue());
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.length() == 0 || "null".equals(str) || "NULL".equals(str)) {
                return null;
            }
            return Byte.valueOf(Byte.parseByte(str));
        }
        StringBuilder sb = new StringBuilder();
        sb.append("can not cast to byte, value : ");
        sb.append(obj);
        throw new JSONException(sb.toString());
    }

    public static Character castToChar(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Character) {
            return (Character) obj;
        }
        String str = "can not cast to char, value : ";
        if (obj instanceof String) {
            String str2 = (String) obj;
            if (str2.length() == 0) {
                return null;
            }
            if (str2.length() == 1) {
                return Character.valueOf(str2.charAt(0));
            }
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(obj);
            throw new JSONException(sb.toString());
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(obj);
        throw new JSONException(sb2.toString());
    }

    public static Short castToShort(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Number) {
            return Short.valueOf(((Number) obj).shortValue());
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.length() == 0 || "null".equals(str) || "NULL".equals(str)) {
                return null;
            }
            return Short.valueOf(Short.parseShort(str));
        }
        StringBuilder sb = new StringBuilder();
        sb.append("can not cast to short, value : ");
        sb.append(obj);
        throw new JSONException(sb.toString());
    }

    public static BigDecimal castToBigDecimal(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof BigDecimal) {
            return (BigDecimal) obj;
        }
        if (obj instanceof BigInteger) {
            return new BigDecimal((BigInteger) obj);
        }
        String obj2 = obj.toString();
        if (obj2.length() == 0) {
            return null;
        }
        if (!(obj instanceof Map) || ((Map) obj).size() != 0) {
            return new BigDecimal(obj2);
        }
        return null;
    }

    public static BigInteger castToBigInteger(Object obj) {
        BigInteger bigInteger = null;
        if (obj == null) {
            return null;
        }
        if (obj instanceof BigInteger) {
            return (BigInteger) obj;
        }
        if ((obj instanceof Float) || (obj instanceof Double)) {
            return BigInteger.valueOf(((Number) obj).longValue());
        }
        String obj2 = obj.toString();
        if (obj2.length() != 0 && !"null".equals(obj2) && !"NULL".equals(obj2)) {
            bigInteger = new BigInteger(obj2);
        }
        return bigInteger;
    }

    public static Float castToFloat(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Number) {
            return Float.valueOf(((Number) obj).floatValue());
        }
        if (obj instanceof String) {
            String obj2 = obj.toString();
            if (obj2.length() == 0 || "null".equals(obj2) || "NULL".equals(obj2)) {
                return null;
            }
            if (obj2.indexOf(44) != 0) {
                obj2 = obj2.replaceAll(",", "");
            }
            return Float.valueOf(Float.parseFloat(obj2));
        }
        StringBuilder sb = new StringBuilder();
        sb.append("can not cast to float, value : ");
        sb.append(obj);
        throw new JSONException(sb.toString());
    }

    public static Double castToDouble(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Number) {
            return Double.valueOf(((Number) obj).doubleValue());
        }
        if (obj instanceof String) {
            String obj2 = obj.toString();
            if (obj2.length() == 0 || "null".equals(obj2) || "NULL".equals(obj2)) {
                return null;
            }
            if (obj2.indexOf(44) != 0) {
                obj2 = obj2.replaceAll(",", "");
            }
            return Double.valueOf(Double.parseDouble(obj2));
        }
        StringBuilder sb = new StringBuilder();
        sb.append("can not cast to double, value : ");
        sb.append(obj);
        throw new JSONException(sb.toString());
    }

    public static Date castToDate(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Date) {
            return (Date) obj;
        }
        if (obj instanceof Calendar) {
            return ((Calendar) obj).getTime();
        }
        long j = -1;
        if (obj instanceof Number) {
            return new Date(((Number) obj).longValue());
        }
        String str = "can not cast to Date, value : ";
        if (obj instanceof String) {
            String str2 = (String) obj;
            JSONScanner jSONScanner = new JSONScanner(str2);
            try {
                if (jSONScanner.scanISO8601DateIfMatch(false)) {
                    return jSONScanner.getCalendar().getTime();
                }
                jSONScanner.close();
                if (str2.startsWith("/Date(") && str2.endsWith(")/")) {
                    str2 = str2.substring(6, str2.length() - 2);
                }
                if (str2.indexOf(45) != -1) {
                    String str3 = (str2.length() == JSON.DEFFAULT_DATE_FORMAT.length() || (str2.length() == 22 && JSON.DEFFAULT_DATE_FORMAT.equals("yyyyMMddHHmmssSSSZ"))) ? JSON.DEFFAULT_DATE_FORMAT : str2.length() == 10 ? "yyyy-MM-dd" : str2.length() == 19 ? "yyyy-MM-dd HH:mm:ss" : (str2.length() == 29 && str2.charAt(26) == ':' && str2.charAt(28) == '0') ? "yyyy-MM-dd'T'HH:mm:ss.SSSXXX" : "yyyy-MM-dd HH:mm:ss.SSS";
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str3, JSON.defaultLocale);
                    simpleDateFormat.setTimeZone(JSON.defaultTimeZone);
                    try {
                        return simpleDateFormat.parse(str2);
                    } catch (ParseException unused) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(str);
                        sb.append(str2);
                        throw new JSONException(sb.toString());
                    }
                } else if (str2.length() == 0) {
                    return null;
                } else {
                    j = Long.parseLong(str2);
                }
            } finally {
                jSONScanner.close();
            }
        }
        if (j >= 0) {
            return new Date(j);
        }
        Class cls = obj.getClass();
        String str4 = "toJdbc";
        if ("oracle.sql.TIMESTAMP".equals(cls.getName())) {
            if (oracleTimestampMethod == null && !oracleTimestampMethodInited) {
                try {
                    oracleTimestampMethod = cls.getMethod(str4, new Class[0]);
                } catch (NoSuchMethodException unused2) {
                } catch (Throwable th) {
                    oracleTimestampMethodInited = true;
                    throw th;
                }
                oracleTimestampMethodInited = true;
            }
            try {
                return (Date) oracleTimestampMethod.invoke(obj, new Object[0]);
            } catch (Exception e) {
                throw new JSONException("can not cast oracle.sql.TIMESTAMP to Date", e);
            }
        } else {
            if ("oracle.sql.DATE".equals(cls.getName())) {
                if (oracleDateMethod == null && !oracleDateMethodInited) {
                    try {
                        oracleDateMethod = cls.getMethod(str4, new Class[0]);
                    } catch (NoSuchMethodException unused3) {
                    } catch (Throwable th2) {
                        oracleDateMethodInited = true;
                        throw th2;
                    }
                    oracleDateMethodInited = true;
                }
                try {
                    return (Date) oracleDateMethod.invoke(obj, new Object[0]);
                } catch (Exception e2) {
                    throw new JSONException("can not cast oracle.sql.DATE to Date", e2);
                }
            } else {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append(obj);
                throw new JSONException(sb2.toString());
            }
        }
    }

    public static java.sql.Date castToSqlDate(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof java.sql.Date) {
            return (java.sql.Date) obj;
        }
        if (obj instanceof Date) {
            return new java.sql.Date(((Date) obj).getTime());
        }
        if (obj instanceof Calendar) {
            return new java.sql.Date(((Calendar) obj).getTimeInMillis());
        }
        long longValue = obj instanceof Number ? ((Number) obj).longValue() : 0;
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.length() == 0 || "null".equals(str) || "NULL".equals(str)) {
                return null;
            }
            if (isNumber(str)) {
                longValue = Long.parseLong(str);
            } else {
                JSONScanner jSONScanner = new JSONScanner(str);
                if (jSONScanner.scanISO8601DateIfMatch(false)) {
                    longValue = jSONScanner.getCalendar().getTime().getTime();
                } else {
                    StringBuilder sb = new StringBuilder();
                    sb.append("can not cast to Timestamp, value : ");
                    sb.append(str);
                    throw new JSONException(sb.toString());
                }
            }
        }
        if (longValue > 0) {
            return new java.sql.Date(longValue);
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("can not cast to Date, value : ");
        sb2.append(obj);
        throw new JSONException(sb2.toString());
    }

    public static Timestamp castToTimestamp(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Calendar) {
            return new Timestamp(((Calendar) obj).getTimeInMillis());
        }
        if (obj instanceof Timestamp) {
            return (Timestamp) obj;
        }
        if (obj instanceof Date) {
            return new Timestamp(((Date) obj).getTime());
        }
        long longValue = obj instanceof Number ? ((Number) obj).longValue() : 0;
        String str = "can not cast to Timestamp, value : ";
        if (obj instanceof String) {
            String str2 = (String) obj;
            if (str2.length() == 0 || "null".equals(str2) || "NULL".equals(str2)) {
                return null;
            }
            if (str2.endsWith(".000000000")) {
                str2 = str2.substring(0, str2.length() - 10);
            } else if (str2.endsWith(".000000")) {
                str2 = str2.substring(0, str2.length() - 7);
            }
            if (isNumber(str2)) {
                longValue = Long.parseLong(str2);
            } else {
                JSONScanner jSONScanner = new JSONScanner(str2);
                if (jSONScanner.scanISO8601DateIfMatch(false)) {
                    longValue = jSONScanner.getCalendar().getTime().getTime();
                } else {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str);
                    sb.append(str2);
                    throw new JSONException(sb.toString());
                }
            }
        }
        if (longValue > 0) {
            return new Timestamp(longValue);
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(obj);
        throw new JSONException(sb2.toString());
    }

    public static boolean isNumber(String str) {
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt == '+' || charAt == '-') {
                if (i != 0) {
                    return false;
                }
            } else if (charAt < '0' || charAt > '9') {
                return false;
            }
        }
        return true;
    }

    public static Long castToLong(Object obj) {
        Calendar calendar = null;
        if (obj == null) {
            return null;
        }
        if (obj instanceof Number) {
            return Long.valueOf(((Number) obj).longValue());
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.length() == 0 || "null".equals(str) || "NULL".equals(str)) {
                return null;
            }
            if (str.indexOf(44) != 0) {
                str = str.replaceAll(",", "");
            }
            try {
                return Long.valueOf(Long.parseLong(str));
            } catch (NumberFormatException unused) {
                JSONScanner jSONScanner = new JSONScanner(str);
                if (jSONScanner.scanISO8601DateIfMatch(false)) {
                    calendar = jSONScanner.getCalendar();
                }
                jSONScanner.close();
                if (calendar != null) {
                    return Long.valueOf(calendar.getTimeInMillis());
                }
            }
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (map.size() == 2 && map.containsKey("andIncrement") && map.containsKey("andDecrement")) {
                Iterator it = map.values().iterator();
                it.next();
                return castToLong(it.next());
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("can not cast to long, value : ");
        sb.append(obj);
        throw new JSONException(sb.toString());
    }

    public static Integer castToInt(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Integer) {
            return (Integer) obj;
        }
        if (obj instanceof Number) {
            return Integer.valueOf(((Number) obj).intValue());
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.length() == 0 || "null".equals(str) || "NULL".equals(str)) {
                return null;
            }
            if (str.indexOf(44) != 0) {
                str = str.replaceAll(",", "");
            }
            return Integer.valueOf(Integer.parseInt(str));
        } else if (obj instanceof Boolean) {
            return Integer.valueOf(((Boolean) obj).booleanValue() ? 1 : 0);
        } else {
            if (obj instanceof Map) {
                Map map = (Map) obj;
                if (map.size() == 2 && map.containsKey("andIncrement") && map.containsKey("andDecrement")) {
                    Iterator it = map.values().iterator();
                    it.next();
                    return castToInt(it.next());
                }
            }
            StringBuilder sb = new StringBuilder();
            sb.append("can not cast to int, value : ");
            sb.append(obj);
            throw new JSONException(sb.toString());
        }
    }

    public static byte[] castToBytes(Object obj) {
        if (obj instanceof byte[]) {
            return (byte[]) obj;
        }
        if (obj instanceof String) {
            return IOUtils.decodeBase64((String) obj);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("can not cast to int, value : ");
        sb.append(obj);
        throw new JSONException(sb.toString());
    }

    public static Boolean castToBoolean(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Boolean) {
            return (Boolean) obj;
        }
        if (obj instanceof Number) {
            boolean z = true;
            if (((Number) obj).intValue() != 1) {
                z = false;
            }
            return Boolean.valueOf(z);
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.length() == 0 || "null".equals(str) || "NULL".equals(str)) {
                return null;
            }
            if ("true".equalsIgnoreCase(str) || "1".equals(str)) {
                return Boolean.TRUE;
            }
            if ("false".equalsIgnoreCase(str) || "0".equals(str)) {
                return Boolean.FALSE;
            }
            if ("Y".equalsIgnoreCase(str) || "T".equals(str)) {
                return Boolean.TRUE;
            }
            if ("F".equalsIgnoreCase(str) || "N".equals(str)) {
                return Boolean.FALSE;
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("can not cast to boolean, value : ");
        sb.append(obj);
        throw new JSONException(sb.toString());
    }

    public static <T> T castToJavaBean(Object obj, Class<T> cls) {
        return cast(obj, cls, ParserConfig.getGlobalInstance());
    }

    public static <T> T cast(Object obj, Class<T> cls, ParserConfig parserConfig) {
        T t;
        int i = 0;
        if (obj == null) {
            if (cls == Integer.TYPE) {
                return Integer.valueOf(0);
            }
            if (cls == Long.TYPE) {
                return Long.valueOf(0);
            }
            if (cls == Short.TYPE) {
                return Short.valueOf(0);
            }
            if (cls == Byte.TYPE) {
                return Byte.valueOf(0);
            }
            if (cls == Float.TYPE) {
                return Float.valueOf(0.0f);
            }
            if (cls == Double.TYPE) {
                return Double.valueOf(0.0d);
            }
            if (cls == Boolean.TYPE) {
                return Boolean.FALSE;
            }
            return null;
        } else if (cls == null) {
            throw new IllegalArgumentException("clazz is null");
        } else if (cls == obj.getClass()) {
            return obj;
        } else {
            if (!(obj instanceof Map)) {
                if (cls.isArray()) {
                    if (obj instanceof Collection) {
                        Collection<Object> collection = (Collection) obj;
                        T newInstance = Array.newInstance(cls.getComponentType(), collection.size());
                        for (Object cast : collection) {
                            Array.set(newInstance, i, cast(cast, cls.getComponentType(), parserConfig));
                            i++;
                        }
                        return newInstance;
                    } else if (cls == byte[].class) {
                        return castToBytes(obj);
                    }
                }
                if (cls.isAssignableFrom(obj.getClass())) {
                    return obj;
                }
                if (cls == Boolean.TYPE || cls == Boolean.class) {
                    return castToBoolean(obj);
                }
                if (cls == Byte.TYPE || cls == Byte.class) {
                    return castToByte(obj);
                }
                if (cls == Character.TYPE || cls == Character.class) {
                    return castToChar(obj);
                }
                if (cls == Short.TYPE || cls == Short.class) {
                    return castToShort(obj);
                }
                if (cls == Integer.TYPE || cls == Integer.class) {
                    return castToInt(obj);
                }
                if (cls == Long.TYPE || cls == Long.class) {
                    return castToLong(obj);
                }
                if (cls == Float.TYPE || cls == Float.class) {
                    return castToFloat(obj);
                }
                if (cls == Double.TYPE || cls == Double.class) {
                    return castToDouble(obj);
                }
                if (cls == String.class) {
                    return castToString(obj);
                }
                if (cls == BigDecimal.class) {
                    return castToBigDecimal(obj);
                }
                if (cls == BigInteger.class) {
                    return castToBigInteger(obj);
                }
                if (cls == Date.class) {
                    return castToDate(obj);
                }
                if (cls == java.sql.Date.class) {
                    return castToSqlDate(obj);
                }
                if (cls == Timestamp.class) {
                    return castToTimestamp(obj);
                }
                if (cls.isEnum()) {
                    return castToEnum(obj, cls, parserConfig);
                }
                String str = "can not cast to : ";
                if (Calendar.class.isAssignableFrom(cls)) {
                    Date castToDate = castToDate(obj);
                    if (cls == Calendar.class) {
                        t = Calendar.getInstance(JSON.defaultTimeZone, JSON.defaultLocale);
                    } else {
                        try {
                            t = (Calendar) cls.newInstance();
                        } catch (Exception e) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(str);
                            sb.append(cls.getName());
                            throw new JSONException(sb.toString(), e);
                        }
                    }
                    t.setTime(castToDate);
                    return t;
                } else if (cls.getName().equals("javax.xml.datatype.XMLGregorianCalendar")) {
                    Date castToDate2 = castToDate(obj);
                    Calendar instance = Calendar.getInstance(JSON.defaultTimeZone, JSON.defaultLocale);
                    instance.setTime(castToDate2);
                    return CalendarCodec.instance.createXMLGregorianCalendar(instance);
                } else {
                    if (obj instanceof String) {
                        String str2 = (String) obj;
                        if (str2.length() == 0 || "null".equals(str2) || "NULL".equals(str2)) {
                            return null;
                        }
                        if (cls == Currency.class) {
                            return Currency.getInstance(str2);
                        }
                        if (cls == Locale.class) {
                            return toLocale(str2);
                        }
                    }
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str);
                    sb2.append(cls.getName());
                    throw new JSONException(sb2.toString());
                }
            } else if (cls == Map.class) {
                return obj;
            } else {
                Map map = (Map) obj;
                if (cls != Object.class || map.containsKey(JSON.DEFAULT_TYPE_KEY)) {
                    return castToJavaBean(map, cls, parserConfig);
                }
                return obj;
            }
        }
    }

    public static Locale toLocale(String str) {
        String[] split = str.split(EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR);
        if (split.length == 1) {
            return new Locale(split[0]);
        }
        if (split.length == 2) {
            return new Locale(split[0], split[1]);
        }
        return new Locale(split[0], split[1], split[2]);
    }

    public static <T> T castToEnum(Object obj, Class<T> cls, ParserConfig parserConfig) {
        String str = "can not cast to : ";
        try {
            if (obj instanceof String) {
                String str2 = (String) obj;
                if (str2.length() == 0) {
                    return null;
                }
                return Enum.valueOf(cls, str2);
            }
            if (obj instanceof Number) {
                int intValue = ((Number) obj).intValue();
                T[] enumConstants = cls.getEnumConstants();
                if (intValue < enumConstants.length) {
                    return enumConstants[intValue];
                }
            }
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(cls.getName());
            throw new JSONException(sb.toString());
        } catch (Exception e) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            sb2.append(cls.getName());
            throw new JSONException(sb2.toString(), e);
        }
    }

    public static <T> T cast(Object obj, Type type, ParserConfig parserConfig) {
        if (obj == null) {
            return null;
        }
        if (type instanceof Class) {
            return cast(obj, (Class) type, parserConfig);
        }
        if (type instanceof ParameterizedType) {
            return cast(obj, (ParameterizedType) type, parserConfig);
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.length() == 0 || "null".equals(str) || "NULL".equals(str)) {
                return null;
            }
        }
        if (type instanceof TypeVariable) {
            return obj;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("can not cast to : ");
        sb.append(type);
        throw new JSONException(sb.toString());
    }

    public static <T> T cast(Object obj, ParameterizedType parameterizedType, ParserConfig parserConfig) {
        T t;
        Type rawType = parameterizedType.getRawType();
        if (rawType == Set.class || rawType == HashSet.class || rawType == TreeSet.class || rawType == List.class || rawType == ArrayList.class) {
            Type type = parameterizedType.getActualTypeArguments()[0];
            if (obj instanceof Iterable) {
                if (rawType == Set.class || rawType == HashSet.class) {
                    t = new HashSet();
                } else if (rawType == TreeSet.class) {
                    t = new TreeSet();
                } else {
                    t = new ArrayList();
                }
                for (Object cast : (Iterable) obj) {
                    t.add(cast(cast, type, parserConfig));
                }
                return t;
            }
        }
        if (rawType == Map.class || rawType == HashMap.class) {
            Type type2 = parameterizedType.getActualTypeArguments()[0];
            Type type3 = parameterizedType.getActualTypeArguments()[1];
            if (obj instanceof Map) {
                T hashMap = new HashMap();
                for (Entry entry : ((Map) obj).entrySet()) {
                    hashMap.put(cast(entry.getKey(), type2, parserConfig), cast(entry.getValue(), type3, parserConfig));
                }
                return hashMap;
            }
        }
        if ((obj instanceof String) && ((String) obj).length() == 0) {
            return null;
        }
        if (parameterizedType.getActualTypeArguments().length == 1 && (parameterizedType.getActualTypeArguments()[0] instanceof WildcardType)) {
            return cast(obj, rawType, parserConfig);
        }
        if (rawType == Entry.class && (obj instanceof Map)) {
            Map map = (Map) obj;
            if (map.size() == 1) {
                return (Entry) map.entrySet().iterator().next();
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("can not cast to : ");
        sb.append(parameterizedType);
        throw new JSONException(sb.toString());
    }

    public static <T> T castToJavaBean(Map<String, Object> map, Class<T> cls, ParserConfig parserConfig) {
        JSONObject jSONObject;
        int i = 0;
        if (cls == StackTraceElement.class) {
            try {
                String str = (String) map.get(AVUtils.classNameTag);
                String str2 = (String) map.get("methodName");
                String str3 = (String) map.get("fileName");
                Number number = (Number) map.get("lineNumber");
                if (number != null) {
                    i = number.intValue();
                }
                return new StackTraceElement(str, str2, str3, i);
            } catch (Exception e) {
                throw new JSONException(e.getMessage(), e);
            }
        } else {
            Object obj = map.get(JSON.DEFAULT_TYPE_KEY);
            JavaBeanDeserializer javaBeanDeserializer = null;
            if (obj instanceof String) {
                String str4 = (String) obj;
                if (parserConfig == null) {
                    parserConfig = ParserConfig.global;
                }
                Class checkAutoType = parserConfig.checkAutoType(str4, null);
                if (checkAutoType == null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str4);
                    sb.append(" not found");
                    throw new ClassNotFoundException(sb.toString());
                } else if (!checkAutoType.equals(cls)) {
                    return castToJavaBean(map, checkAutoType, parserConfig);
                }
            }
            if (cls.isInterface()) {
                if (map instanceof JSONObject) {
                    jSONObject = (JSONObject) map;
                } else {
                    jSONObject = new JSONObject(map);
                }
                if (parserConfig == null) {
                    parserConfig = ParserConfig.getGlobalInstance();
                }
                if (((ObjectDeserializer) parserConfig.getDeserializers().get(cls)) != null) {
                    return JSON.parseObject(JSON.toJSONString(jSONObject), cls);
                }
                return Proxy.newProxyInstance(Thread.currentThread().getContextClassLoader(), new Class[]{cls}, jSONObject);
            }
            if (cls == Locale.class) {
                Object obj2 = map.get(IjkMediaMeta.IJKM_KEY_LANGUAGE);
                Object obj3 = map.get("country");
                if (obj2 instanceof String) {
                    String str5 = (String) obj2;
                    if (obj3 instanceof String) {
                        return new Locale(str5, (String) obj3);
                    }
                    if (obj3 == null) {
                        return new Locale(str5);
                    }
                }
            }
            if (cls == String.class && (map instanceof JSONObject)) {
                return map.toString();
            }
            if (cls == LinkedHashMap.class && (map instanceof JSONObject)) {
                T innerMap = ((JSONObject) map).getInnerMap();
                if (innerMap instanceof LinkedHashMap) {
                    return innerMap;
                }
                new LinkedHashMap().putAll(innerMap);
            }
            if (parserConfig == null) {
                parserConfig = ParserConfig.getGlobalInstance();
            }
            ObjectDeserializer deserializer = parserConfig.getDeserializer((Type) cls);
            if (deserializer instanceof JavaBeanDeserializer) {
                javaBeanDeserializer = (JavaBeanDeserializer) deserializer;
            }
            if (javaBeanDeserializer != null) {
                return javaBeanDeserializer.createInstance(map, parserConfig);
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("can not get javaBeanDeserializer. ");
            sb2.append(cls.getName());
            throw new JSONException(sb2.toString());
        }
    }

    private static void addBaseClassMappings() {
        Class[] clsArr;
        mappings.put("byte", Byte.TYPE);
        mappings.put("short", Short.TYPE);
        mappings.put("int", Integer.TYPE);
        mappings.put("long", Long.TYPE);
        mappings.put("float", Float.TYPE);
        mappings.put("double", Double.TYPE);
        mappings.put("boolean", Boolean.TYPE);
        mappings.put("char", Character.TYPE);
        mappings.put("[byte", byte[].class);
        mappings.put("[short", short[].class);
        mappings.put("[int", int[].class);
        mappings.put("[long", long[].class);
        mappings.put("[float", float[].class);
        mappings.put("[double", double[].class);
        mappings.put("[boolean", boolean[].class);
        mappings.put("[char", char[].class);
        mappings.put("[B", byte[].class);
        mappings.put("[S", short[].class);
        mappings.put("[I", int[].class);
        mappings.put("[J", long[].class);
        mappings.put("[F", float[].class);
        mappings.put("[D", double[].class);
        mappings.put("[C", char[].class);
        mappings.put("[Z", boolean[].class);
        int i = 0;
        for (Class cls : new Class[]{Object.class, Cloneable.class, loadClass("java.lang.AutoCloseable"), Exception.class, RuntimeException.class, IllegalAccessError.class, IllegalAccessException.class, IllegalArgumentException.class, IllegalMonitorStateException.class, IllegalStateException.class, IllegalThreadStateException.class, IndexOutOfBoundsException.class, InstantiationError.class, InstantiationException.class, InternalError.class, InterruptedException.class, LinkageError.class, NegativeArraySizeException.class, NoClassDefFoundError.class, NoSuchFieldError.class, NoSuchFieldException.class, NoSuchMethodError.class, NoSuchMethodException.class, NullPointerException.class, NumberFormatException.class, OutOfMemoryError.class, SecurityException.class, StackOverflowError.class, StringIndexOutOfBoundsException.class, TypeNotPresentException.class, VerifyError.class, StackTraceElement.class, HashMap.class, Hashtable.class, TreeMap.class, IdentityHashMap.class, WeakHashMap.class, LinkedHashMap.class, HashSet.class, LinkedHashSet.class, TreeSet.class, TimeUnit.class, ConcurrentHashMap.class, loadClass("java.util.concurrent.ConcurrentSkipListMap"), loadClass("java.util.concurrent.ConcurrentSkipListSet"), AtomicInteger.class, AtomicLong.class, Collections.EMPTY_MAP.getClass(), BitSet.class, Calendar.class, Date.class, Locale.class, UUID.class, Time.class, java.sql.Date.class, Timestamp.class, SimpleDateFormat.class, JSONObject.class}) {
            if (cls != null) {
                mappings.put(cls.getName(), cls);
            }
        }
        for (String loadClass : new String[]{"java.awt.Rectangle", "java.awt.Point", "java.awt.Font", "java.awt.Color"}) {
            Class loadClass2 = loadClass(loadClass);
            if (loadClass2 == null) {
                break;
            }
            mappings.put(loadClass2.getName(), loadClass2);
        }
        String[] strArr = {"org.springframework.util.LinkedMultiValueMap", "org.springframework.util.LinkedCaseInsensitiveMap", "org.springframework.remoting.support.RemoteInvocation", "org.springframework.remoting.support.RemoteInvocationResult", "org.springframework.security.web.savedrequest.DefaultSavedRequest", "org.springframework.security.web.savedrequest.SavedCookie", "org.springframework.security.web.csrf.DefaultCsrfToken", "org.springframework.security.web.authentication.WebAuthenticationDetails", "org.springframework.security.core.context.SecurityContextImpl", "org.springframework.security.authentication.UsernamePasswordAuthenticationToken", "org.springframework.security.core.authority.SimpleGrantedAuthority", "org.springframework.security.core.userdetails.User"};
        int length = strArr.length;
        while (i < length) {
            Class loadClass3 = loadClass(strArr[i]);
            if (loadClass3 != null) {
                mappings.put(loadClass3.getName(), loadClass3);
                i++;
            } else {
                return;
            }
        }
    }

    public static void clearClassMapping() {
        mappings.clear();
        addBaseClassMappings();
    }

    public static Class<?> loadClass(String str) {
        return loadClass(str, null);
    }

    public static boolean isPath(Class<?> cls) {
        if (pathClass == null && !pathClass_error) {
            try {
                pathClass = Class.forName("java.nio.file.Path");
            } catch (Throwable unused) {
                pathClass_error = true;
            }
        }
        Class<?> cls2 = pathClass;
        if (cls2 != null) {
            return cls2.isAssignableFrom(cls);
        }
        return false;
    }

    public static Class<?> getClassFromMapping(String str) {
        return (Class) mappings.get(str);
    }

    public static Class<?> loadClass(String str, ClassLoader classLoader) {
        return loadClass(str, classLoader, true);
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(7:(4:17|18|(1:20)|21)|24|25|(3:28|(2:30|31)|34)|35|36|37) */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:35:0x007b */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.Class<?> loadClass(java.lang.String r5, java.lang.ClassLoader r6, boolean r7) {
        /*
            if (r5 == 0) goto L_0x0085
            int r0 = r5.length()
            if (r0 != 0) goto L_0x000a
            goto L_0x0085
        L_0x000a:
            java.util.concurrent.ConcurrentMap<java.lang.String, java.lang.Class<?>> r0 = mappings
            java.lang.Object r0 = r0.get(r5)
            java.lang.Class r0 = (java.lang.Class) r0
            if (r0 == 0) goto L_0x0015
            return r0
        L_0x0015:
            r1 = 0
            char r2 = r5.charAt(r1)
            r3 = 91
            r4 = 1
            if (r2 != r3) goto L_0x0030
            java.lang.String r5 = r5.substring(r4)
            java.lang.Class r5 = loadClass(r5, r6)
            java.lang.Object r5 = java.lang.reflect.Array.newInstance(r5, r1)
            java.lang.Class r5 = r5.getClass()
            return r5
        L_0x0030:
            java.lang.String r1 = "L"
            boolean r1 = r5.startsWith(r1)
            if (r1 == 0) goto L_0x004e
            java.lang.String r1 = ";"
            boolean r1 = r5.endsWith(r1)
            if (r1 == 0) goto L_0x004e
            int r7 = r5.length()
            int r7 = r7 - r4
            java.lang.String r5 = r5.substring(r4, r7)
            java.lang.Class r5 = loadClass(r5, r6)
            return r5
        L_0x004e:
            if (r6 == 0) goto L_0x0060
            java.lang.Class r0 = r6.loadClass(r5)     // Catch:{ Throwable -> 0x005c }
            if (r7 == 0) goto L_0x005b
            java.util.concurrent.ConcurrentMap<java.lang.String, java.lang.Class<?>> r1 = mappings     // Catch:{ Throwable -> 0x005c }
            r1.put(r5, r0)     // Catch:{ Throwable -> 0x005c }
        L_0x005b:
            return r0
        L_0x005c:
            r1 = move-exception
            r1.printStackTrace()
        L_0x0060:
            java.lang.Thread r1 = java.lang.Thread.currentThread()     // Catch:{ Throwable -> 0x007b }
            java.lang.ClassLoader r1 = r1.getContextClassLoader()     // Catch:{ Throwable -> 0x007b }
            if (r1 == 0) goto L_0x007b
            if (r1 == r6) goto L_0x007b
            java.lang.Class r6 = r1.loadClass(r5)     // Catch:{ Throwable -> 0x007b }
            if (r7 == 0) goto L_0x007a
            java.util.concurrent.ConcurrentMap<java.lang.String, java.lang.Class<?>> r7 = mappings     // Catch:{ Throwable -> 0x0078 }
            r7.put(r5, r6)     // Catch:{ Throwable -> 0x0078 }
            goto L_0x007a
        L_0x0078:
            r0 = r6
            goto L_0x007b
        L_0x007a:
            return r6
        L_0x007b:
            java.lang.Class r0 = java.lang.Class.forName(r5)     // Catch:{ Throwable -> 0x0084 }
            java.util.concurrent.ConcurrentMap<java.lang.String, java.lang.Class<?>> r6 = mappings     // Catch:{ Throwable -> 0x0084 }
            r6.put(r5, r0)     // Catch:{ Throwable -> 0x0084 }
        L_0x0084:
            return r0
        L_0x0085:
            r5 = 0
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.util.TypeUtils.loadClass(java.lang.String, java.lang.ClassLoader, boolean):java.lang.Class");
    }

    public static SerializeBeanInfo buildBeanInfo(Class<?> cls, Map<String, String> map, PropertyNamingStrategy propertyNamingStrategy) {
        return buildBeanInfo(cls, map, propertyNamingStrategy, false);
    }

    public static SerializeBeanInfo buildBeanInfo(Class<?> cls, Map<String, String> map, PropertyNamingStrategy propertyNamingStrategy, boolean z) {
        String str;
        String str2;
        int i;
        String[] strArr;
        PropertyNamingStrategy propertyNamingStrategy2;
        List list;
        List list2;
        Class<?> cls2 = cls;
        Map<String, String> map2 = map;
        JSONType jSONType = (JSONType) getAnnotation(cls2, JSONType.class);
        if (jSONType != null) {
            String[] orders = jSONType.orders();
            String typeName = jSONType.typeName();
            if (typeName.length() == 0) {
                typeName = null;
            }
            PropertyNamingStrategy naming = jSONType.naming();
            if (naming == null || naming == PropertyNamingStrategy.CamelCase) {
                naming = propertyNamingStrategy;
            }
            int of = SerializerFeature.of(jSONType.serialzeFeatures());
            Class<Object> superclass = cls.getSuperclass();
            String str3 = null;
            while (superclass != null && superclass != Object.class) {
                JSONType jSONType2 = (JSONType) getAnnotation(superclass, JSONType.class);
                if (jSONType2 == null) {
                    break;
                }
                str3 = jSONType2.typeKey();
                if (str3.length() != 0) {
                    break;
                }
                superclass = superclass.getSuperclass();
            }
            String str4 = str3;
            for (Class annotation : cls.getInterfaces()) {
                JSONType jSONType3 = (JSONType) getAnnotation(annotation, JSONType.class);
                if (jSONType3 != null) {
                    str4 = jSONType3.typeKey();
                    if (str4.length() != 0) {
                        break;
                    }
                }
            }
            if (str4 != null && str4.length() == 0) {
                str4 = null;
            }
            strArr = orders;
            propertyNamingStrategy2 = naming;
            i = of;
            str = str4;
            str2 = typeName;
        } else {
            propertyNamingStrategy2 = propertyNamingStrategy;
            strArr = null;
            str2 = null;
            str = null;
            i = 0;
        }
        HashMap hashMap = new HashMap();
        ParserConfig.parserAllFieldToCache(cls2, hashMap);
        if (z) {
            list = computeGettersWithFieldBase(cls2, map2, false, propertyNamingStrategy2);
        } else {
            list = computeGetters(cls, jSONType, map, hashMap, false, propertyNamingStrategy2);
        }
        FieldInfo[] fieldInfoArr = new FieldInfo[list.size()];
        list.toArray(fieldInfoArr);
        if (strArr == null || strArr.length == 0) {
            List arrayList = new ArrayList(list);
            Collections.sort(arrayList);
            list2 = arrayList;
        } else if (z) {
            list2 = computeGettersWithFieldBase(cls2, map2, true, propertyNamingStrategy2);
        } else {
            list2 = computeGetters(cls, jSONType, map, hashMap, true, propertyNamingStrategy2);
        }
        FieldInfo[] fieldInfoArr2 = new FieldInfo[list2.size()];
        list2.toArray(fieldInfoArr2);
        SerializeBeanInfo serializeBeanInfo = new SerializeBeanInfo(cls, jSONType, str2, str, i, fieldInfoArr, Arrays.equals(fieldInfoArr2, fieldInfoArr) ? fieldInfoArr : fieldInfoArr2);
        return serializeBeanInfo;
    }

    public static List<FieldInfo> computeGettersWithFieldBase(Class<?> cls, Map<String, String> map, boolean z, PropertyNamingStrategy propertyNamingStrategy) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Class<?> cls2 = cls; cls2 != null; cls2 = cls2.getSuperclass()) {
            computeFields(cls2, map, propertyNamingStrategy, linkedHashMap, cls2.getDeclaredFields());
        }
        return getFieldInfos(cls, z, linkedHashMap);
    }

    public static List<FieldInfo> computeGetters(Class<?> cls, Map<String, String> map) {
        return computeGetters(cls, map, true);
    }

    public static List<FieldInfo> computeGetters(Class<?> cls, Map<String, String> map, boolean z) {
        JSONType jSONType = (JSONType) getAnnotation(cls, JSONType.class);
        HashMap hashMap = new HashMap();
        ParserConfig.parserAllFieldToCache(cls, hashMap);
        return computeGetters(cls, jSONType, map, hashMap, z, PropertyNamingStrategy.CamelCase);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:204:0x0471, code lost:
        if (r0 == null) goto L_0x04aa;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:214:0x04a8, code lost:
        if (r0 == null) goto L_0x04aa;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:215:0x04aa, code lost:
        r15 = r43;
        r13 = r6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:85:0x01ca, code lost:
        if (r0 == null) goto L_0x0196;
     */
    /* JADX WARNING: Removed duplicated region for block: B:135:0x02e5  */
    /* JADX WARNING: Removed duplicated region for block: B:152:0x034f  */
    /* JADX WARNING: Removed duplicated region for block: B:155:0x035b  */
    /* JADX WARNING: Removed duplicated region for block: B:160:0x036c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.util.List<com.alibaba.fastjson.util.FieldInfo> computeGetters(java.lang.Class<?> r38, com.alibaba.fastjson.annotation.JSONType r39, java.util.Map<java.lang.String, java.lang.String> r40, java.util.Map<java.lang.String, java.lang.reflect.Field> r41, boolean r42, com.alibaba.fastjson.PropertyNamingStrategy r43) {
        /*
            r12 = r38
            r13 = r40
            r14 = r41
            r15 = r43
            java.util.LinkedHashMap r11 = new java.util.LinkedHashMap
            r11.<init>()
            boolean r16 = isKotlin(r38)
            r17 = 0
            r0 = r17
            java.lang.annotation.Annotation[][] r0 = (java.lang.annotation.Annotation[][]) r0
            java.lang.reflect.Method[] r10 = r38.getMethods()
            int r9 = r10.length
            r3 = r0
            r0 = r17
            r1 = r0
            r2 = r1
            r7 = 0
        L_0x0022:
            if (r7 >= r9) goto L_0x04fa
            r6 = r10[r7]
            java.lang.String r5 = r6.getName()
            r18 = 0
            int r4 = r6.getModifiers()
            boolean r4 = java.lang.reflect.Modifier.isStatic(r4)
            if (r4 == 0) goto L_0x0037
            goto L_0x0087
        L_0x0037:
            java.lang.Class r4 = r6.getReturnType()
            java.lang.Class r8 = java.lang.Void.TYPE
            boolean r4 = r4.equals(r8)
            if (r4 == 0) goto L_0x0044
            goto L_0x0087
        L_0x0044:
            java.lang.Class[] r4 = r6.getParameterTypes()
            int r4 = r4.length
            if (r4 == 0) goto L_0x004c
            goto L_0x0087
        L_0x004c:
            java.lang.Class r4 = r6.getReturnType()
            java.lang.Class<java.lang.ClassLoader> r8 = java.lang.ClassLoader.class
            if (r4 != r8) goto L_0x0055
            goto L_0x0087
        L_0x0055:
            java.lang.String r4 = "getMetaClass"
            boolean r4 = r5.equals(r4)
            if (r4 == 0) goto L_0x006e
            java.lang.Class r4 = r6.getReturnType()
            java.lang.String r4 = r4.getName()
            java.lang.String r8 = "groovy.lang.MetaClass"
            boolean r4 = r4.equals(r8)
            if (r4 == 0) goto L_0x006e
            goto L_0x0087
        L_0x006e:
            java.lang.String r4 = "getSuppressed"
            boolean r4 = r5.equals(r4)
            if (r4 == 0) goto L_0x007f
            java.lang.Class r4 = r6.getDeclaringClass()
            java.lang.Class<java.lang.Throwable> r8 = java.lang.Throwable.class
            if (r4 != r8) goto L_0x007f
            goto L_0x0087
        L_0x007f:
            if (r16 == 0) goto L_0x0094
            boolean r4 = isKotlinIgnore(r12, r5)
            if (r4 == 0) goto L_0x0094
        L_0x0087:
            r22 = r0
            r24 = r7
            r31 = r9
            r32 = r10
            r0 = r11
            r29 = 0
            goto L_0x04ef
        L_0x0094:
            r4 = 0
            java.lang.Boolean r8 = java.lang.Boolean.valueOf(r4)
            java.lang.Class<com.alibaba.fastjson.annotation.JSONField> r4 = com.alibaba.fastjson.annotation.JSONField.class
            java.lang.annotation.Annotation r4 = r6.getAnnotation(r4)
            com.alibaba.fastjson.annotation.JSONField r4 = (com.alibaba.fastjson.annotation.JSONField) r4
            if (r4 != 0) goto L_0x00a7
            com.alibaba.fastjson.annotation.JSONField r4 = getSuperMethodAnnotation(r12, r6)
        L_0x00a7:
            r19 = r1
            java.lang.String r1 = "get"
            r20 = r11
            if (r4 != 0) goto L_0x017f
            if (r16 == 0) goto L_0x017f
            if (r0 != 0) goto L_0x00fa
            java.lang.reflect.Constructor[] r0 = r38.getDeclaredConstructors()
            java.lang.reflect.Constructor r21 = getKoltinConstructor(r0)
            if (r21 == 0) goto L_0x00f8
            java.lang.annotation.Annotation[][] r3 = r21.getParameterAnnotations()
            java.lang.String[] r11 = getKoltinConstructorParameters(r38)
            if (r11 == 0) goto L_0x00f1
            int r2 = r11.length
            java.lang.String[] r2 = new java.lang.String[r2]
            r22 = r0
            int r0 = r11.length
            r19 = r3
            r3 = 0
            java.lang.System.arraycopy(r11, r3, r2, r3, r0)
            java.util.Arrays.sort(r2)
            int r0 = r11.length
            short[] r0 = new short[r0]
            r23 = r4
        L_0x00db:
            int r4 = r11.length
            if (r3 >= r4) goto L_0x00ea
            r4 = r11[r3]
            int r4 = java.util.Arrays.binarySearch(r2, r4)
            r0[r4] = r3
            int r3 = r3 + 1
            short r3 = (short) r3
            goto L_0x00db
        L_0x00ea:
            r11 = r2
            r3 = r19
            r2 = r0
            r0 = r22
            goto L_0x00fe
        L_0x00f1:
            r22 = r0
            r19 = r3
            r23 = r4
            goto L_0x00fe
        L_0x00f8:
            r22 = r0
        L_0x00fa:
            r23 = r4
            r11 = r19
        L_0x00fe:
            if (r11 == 0) goto L_0x0172
            if (r2 == 0) goto L_0x0172
            boolean r4 = r5.startsWith(r1)
            if (r4 == 0) goto L_0x0172
            r4 = 3
            java.lang.String r19 = r5.substring(r4)
            java.lang.String r4 = decapitalize(r19)
            int r19 = java.util.Arrays.binarySearch(r11, r4)
            if (r19 >= 0) goto L_0x012b
            r22 = r0
            r24 = r7
            r0 = 0
        L_0x011c:
            int r7 = r11.length
            if (r0 >= r7) goto L_0x012f
            r7 = r11[r0]
            boolean r7 = r4.equalsIgnoreCase(r7)
            if (r7 == 0) goto L_0x0128
            goto L_0x0131
        L_0x0128:
            int r0 = r0 + 1
            goto L_0x011c
        L_0x012b:
            r22 = r0
            r24 = r7
        L_0x012f:
            r0 = r19
        L_0x0131:
            if (r0 < 0) goto L_0x016d
            short r0 = r2[r0]
            r0 = r3[r0]
            if (r0 == 0) goto L_0x0154
            int r7 = r0.length
            r19 = r2
            r2 = 0
        L_0x013d:
            if (r2 >= r7) goto L_0x0156
            r25 = r3
            r3 = r0[r2]
            r26 = r0
            boolean r0 = r3 instanceof com.alibaba.fastjson.annotation.JSONField
            if (r0 == 0) goto L_0x014d
            r0 = r3
            com.alibaba.fastjson.annotation.JSONField r0 = (com.alibaba.fastjson.annotation.JSONField) r0
            goto L_0x015a
        L_0x014d:
            int r2 = r2 + 1
            r3 = r25
            r0 = r26
            goto L_0x013d
        L_0x0154:
            r19 = r2
        L_0x0156:
            r25 = r3
            r0 = r23
        L_0x015a:
            if (r0 != 0) goto L_0x016a
            java.lang.reflect.Field r2 = com.alibaba.fastjson.parser.ParserConfig.getFieldFromCache(r4, r14)
            if (r2 == 0) goto L_0x016a
            java.lang.Class<com.alibaba.fastjson.annotation.JSONField> r0 = com.alibaba.fastjson.annotation.JSONField.class
            java.lang.annotation.Annotation r0 = r2.getAnnotation(r0)
            com.alibaba.fastjson.annotation.JSONField r0 = (com.alibaba.fastjson.annotation.JSONField) r0
        L_0x016a:
            r23 = r0
            goto L_0x017a
        L_0x016d:
            r19 = r2
            r25 = r3
            goto L_0x017a
        L_0x0172:
            r22 = r0
            r19 = r2
            r25 = r3
            r24 = r7
        L_0x017a:
            r26 = r19
            r19 = r11
            goto L_0x0189
        L_0x017f:
            r23 = r4
            r24 = r7
            r22 = r0
            r26 = r2
            r25 = r3
        L_0x0189:
            r0 = 1
            if (r23 == 0) goto L_0x0213
            java.lang.Boolean r8 = java.lang.Boolean.valueOf(r0)
            boolean r2 = r23.serialize()
            if (r2 != 0) goto L_0x01a0
        L_0x0196:
            r31 = r9
            r32 = r10
            r0 = r20
            r29 = 0
            goto L_0x04e9
        L_0x01a0:
            int r7 = r23.ordinal()
            com.alibaba.fastjson.serializer.SerializerFeature[] r2 = r23.serialzeFeatures()
            int r11 = com.alibaba.fastjson.serializer.SerializerFeature.of(r2)
            com.alibaba.fastjson.parser.Feature[] r2 = r23.parseFeatures()
            int r27 = com.alibaba.fastjson.parser.Feature.of(r2)
            java.lang.String r2 = r23.name()
            int r2 = r2.length()
            if (r2 == 0) goto L_0x01fc
            java.lang.String r0 = r23.name()
            if (r13 == 0) goto L_0x01cd
            java.lang.Object r0 = r13.get(r0)
            java.lang.String r0 = (java.lang.String) r0
            if (r0 != 0) goto L_0x01cd
            goto L_0x0196
        L_0x01cd:
            r8 = r0
            com.alibaba.fastjson.util.FieldInfo r5 = new com.alibaba.fastjson.util.FieldInfo
            r3 = 0
            r21 = 0
            r28 = 0
            r0 = r5
            r1 = r8
            r2 = r6
            r29 = 0
            r4 = r38
            r6 = r5
            r5 = r21
            r30 = r6
            r6 = r7
            r7 = r11
            r11 = r8
            r8 = r27
            r31 = r9
            r9 = r23
            r32 = r10
            r10 = r28
            r13 = r11
            r15 = r20
            r11 = r18
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)
            r0 = r30
            r15.put(r13, r0)
            goto L_0x0230
        L_0x01fc:
            r31 = r9
            r32 = r10
            r15 = r20
            r29 = 0
            java.lang.String r2 = r23.label()
            int r2 = r2.length()
            if (r2 == 0) goto L_0x021f
            java.lang.String r18 = r23.label()
            goto L_0x021f
        L_0x0213:
            r31 = r9
            r32 = r10
            r15 = r20
            r29 = 0
            r7 = 0
            r11 = 0
            r27 = 0
        L_0x021f:
            boolean r1 = r5.startsWith(r1)
            r13 = 102(0x66, float:1.43E-43)
            r10 = 95
            if (r1 == 0) goto L_0x03a8
            int r1 = r5.length()
            r2 = 4
            if (r1 >= r2) goto L_0x0237
        L_0x0230:
            r13 = r40
        L_0x0232:
            r0 = r15
            r15 = r43
            goto L_0x04e9
        L_0x0237:
            java.lang.String r1 = "getClass"
            boolean r1 = r5.equals(r1)
            if (r1 == 0) goto L_0x0240
            goto L_0x0230
        L_0x0240:
            java.lang.String r1 = "getDeclaringClass"
            boolean r1 = r5.equals(r1)
            if (r1 == 0) goto L_0x024f
            boolean r1 = r38.isEnum()
            if (r1 == 0) goto L_0x024f
            goto L_0x0230
        L_0x024f:
            r1 = 3
            char r3 = r5.charAt(r1)
            boolean r4 = java.lang.Character.isUpperCase(r3)
            if (r4 != 0) goto L_0x0287
            r4 = 512(0x200, float:7.175E-43)
            if (r3 <= r4) goto L_0x025f
            goto L_0x0287
        L_0x025f:
            if (r3 != r10) goto L_0x0266
            java.lang.String r2 = r5.substring(r2)
            goto L_0x02b3
        L_0x0266:
            if (r3 != r13) goto L_0x026d
            java.lang.String r2 = r5.substring(r1)
            goto L_0x02b3
        L_0x026d:
            int r3 = r5.length()
            r4 = 5
            if (r3 < r4) goto L_0x0230
            char r2 = r5.charAt(r2)
            boolean r2 = java.lang.Character.isUpperCase(r2)
            if (r2 == 0) goto L_0x0230
            java.lang.String r2 = r5.substring(r1)
            java.lang.String r2 = decapitalize(r2)
            goto L_0x02b3
        L_0x0287:
            boolean r3 = compatibleWithJavaBean
            if (r3 == 0) goto L_0x0294
            java.lang.String r2 = r5.substring(r1)
            java.lang.String r2 = decapitalize(r2)
            goto L_0x02af
        L_0x0294:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            char r4 = r5.charAt(r1)
            char r4 = java.lang.Character.toLowerCase(r4)
            r3.append(r4)
            java.lang.String r2 = r5.substring(r2)
            r3.append(r2)
            java.lang.String r2 = r3.toString()
        L_0x02af:
            java.lang.String r2 = getPropertyNameByCompatibleFieldName(r14, r5, r2, r1)
        L_0x02b3:
            boolean r1 = isJSONTypeIgnore(r12, r2)
            if (r1 == 0) goto L_0x02bb
            goto L_0x0230
        L_0x02bb:
            java.lang.reflect.Field r1 = com.alibaba.fastjson.parser.ParserConfig.getFieldFromCache(r2, r14)
            if (r1 != 0) goto L_0x02e1
            int r3 = r2.length()
            if (r3 <= r0) goto L_0x02e1
            char r3 = r2.charAt(r0)
            r4 = 65
            if (r3 < r4) goto L_0x02e1
            r4 = 90
            if (r3 > r4) goto L_0x02e1
            r9 = 3
            java.lang.String r1 = r5.substring(r9)
            java.lang.String r1 = decapitalize(r1)
            java.lang.reflect.Field r1 = com.alibaba.fastjson.parser.ParserConfig.getFieldFromCache(r1, r14)
            goto L_0x02e2
        L_0x02e1:
            r9 = 3
        L_0x02e2:
            r3 = r1
            if (r3 == 0) goto L_0x034f
            java.lang.Class<com.alibaba.fastjson.annotation.JSONField> r1 = com.alibaba.fastjson.annotation.JSONField.class
            java.lang.annotation.Annotation r1 = r3.getAnnotation(r1)
            com.alibaba.fastjson.annotation.JSONField r1 = (com.alibaba.fastjson.annotation.JSONField) r1
            if (r1 == 0) goto L_0x0347
            java.lang.Boolean r8 = java.lang.Boolean.valueOf(r0)
            boolean r0 = r1.serialize()
            if (r0 != 0) goto L_0x02fb
            goto L_0x0230
        L_0x02fb:
            int r0 = r1.ordinal()
            com.alibaba.fastjson.serializer.SerializerFeature[] r4 = r1.serialzeFeatures()
            int r4 = com.alibaba.fastjson.serializer.SerializerFeature.of(r4)
            com.alibaba.fastjson.parser.Feature[] r7 = r1.parseFeatures()
            int r7 = com.alibaba.fastjson.parser.Feature.of(r7)
            java.lang.String r11 = r1.name()
            int r11 = r11.length()
            if (r11 == 0) goto L_0x032c
            java.lang.String r2 = r1.name()
            r11 = r40
            if (r11 == 0) goto L_0x032e
            java.lang.Object r2 = r11.get(r2)
            java.lang.String r2 = (java.lang.String) r2
            if (r2 != 0) goto L_0x032e
            r13 = r11
            goto L_0x0232
        L_0x032c:
            r11 = r40
        L_0x032e:
            java.lang.String r20 = r1.label()
            int r20 = r20.length()
            if (r20 == 0) goto L_0x033c
            java.lang.String r18 = r1.label()
        L_0x033c:
            r20 = r4
            r27 = r7
            r4 = r11
            r21 = r18
            r18 = r0
            r11 = r1
            goto L_0x0359
        L_0x0347:
            r4 = r40
            r20 = r11
            r21 = r18
            r11 = r1
            goto L_0x0357
        L_0x034f:
            r4 = r40
            r20 = r11
            r11 = r17
            r21 = r18
        L_0x0357:
            r18 = r7
        L_0x0359:
            if (r4 == 0) goto L_0x0367
            java.lang.Object r0 = r4.get(r2)
            r2 = r0
            java.lang.String r2 = (java.lang.String) r2
            if (r2 != 0) goto L_0x0367
            r13 = r4
            goto L_0x0232
        L_0x0367:
            r7 = r15
            r15 = r43
            if (r15 == 0) goto L_0x0378
            boolean r0 = r8.booleanValue()
            if (r0 != 0) goto L_0x0378
            java.lang.String r0 = r15.translate(r2)
            r8 = r0
            goto L_0x0379
        L_0x0378:
            r8 = r2
        L_0x0379:
            com.alibaba.fastjson.util.FieldInfo r2 = new com.alibaba.fastjson.util.FieldInfo
            r28 = 0
            r0 = r2
            r1 = r8
            r13 = r2
            r2 = r6
            r15 = r4
            r4 = r38
            r15 = r5
            r5 = r28
            r28 = r6
            r6 = r18
            r33 = r7
            r7 = r20
            r34 = r8
            r8 = r27
            r30 = 3
            r9 = r23
            r10 = r11
            r12 = 3
            r11 = r21
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)
            r10 = r33
            r0 = r34
            r10.put(r0, r13)
            r11 = r20
            goto L_0x03b1
        L_0x03a8:
            r28 = r6
            r10 = r15
            r12 = 3
            r15 = r5
            r21 = r18
            r18 = r7
        L_0x03b1:
            java.lang.String r0 = "is"
            boolean r0 = r15.startsWith(r0)
            if (r0 == 0) goto L_0x04e2
            int r0 = r15.length()
            if (r0 >= r12) goto L_0x03c1
            goto L_0x04e2
        L_0x03c1:
            java.lang.Class r0 = r28.getReturnType()
            java.lang.Class r1 = java.lang.Boolean.TYPE
            if (r0 == r1) goto L_0x03d3
            java.lang.Class r0 = r28.getReturnType()
            java.lang.Class<java.lang.Boolean> r1 = java.lang.Boolean.class
            if (r0 == r1) goto L_0x03d3
            goto L_0x04e2
        L_0x03d3:
            r0 = 2
            char r1 = r15.charAt(r0)
            boolean r2 = java.lang.Character.isUpperCase(r1)
            if (r2 == 0) goto L_0x040b
            boolean r1 = compatibleWithJavaBean
            if (r1 == 0) goto L_0x03eb
            java.lang.String r1 = r15.substring(r0)
            java.lang.String r1 = decapitalize(r1)
            goto L_0x0406
        L_0x03eb:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            char r2 = r15.charAt(r0)
            char r2 = java.lang.Character.toLowerCase(r2)
            r1.append(r2)
            java.lang.String r2 = r15.substring(r12)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
        L_0x0406:
            java.lang.String r0 = getPropertyNameByCompatibleFieldName(r14, r15, r1, r0)
            goto L_0x0413
        L_0x040b:
            r2 = 95
            if (r1 != r2) goto L_0x0416
            java.lang.String r0 = r15.substring(r12)
        L_0x0413:
            r12 = r38
            goto L_0x041f
        L_0x0416:
            r2 = 102(0x66, float:1.43E-43)
            if (r1 != r2) goto L_0x04e2
            java.lang.String r0 = r15.substring(r0)
            goto L_0x0413
        L_0x041f:
            boolean r1 = isJSONTypeIgnore(r12, r0)
            if (r1 == 0) goto L_0x0427
        L_0x0425:
            goto L_0x04e4
        L_0x0427:
            java.lang.reflect.Field r1 = com.alibaba.fastjson.parser.ParserConfig.getFieldFromCache(r0, r14)
            if (r1 != 0) goto L_0x0431
            java.lang.reflect.Field r1 = com.alibaba.fastjson.parser.ParserConfig.getFieldFromCache(r15, r14)
        L_0x0431:
            r3 = r1
            if (r3 == 0) goto L_0x0499
            java.lang.Class<com.alibaba.fastjson.annotation.JSONField> r1 = com.alibaba.fastjson.annotation.JSONField.class
            java.lang.annotation.Annotation r1 = r3.getAnnotation(r1)
            com.alibaba.fastjson.annotation.JSONField r1 = (com.alibaba.fastjson.annotation.JSONField) r1
            if (r1 == 0) goto L_0x0492
            boolean r2 = r1.serialize()
            if (r2 != 0) goto L_0x0445
            goto L_0x0425
        L_0x0445:
            int r2 = r1.ordinal()
            com.alibaba.fastjson.serializer.SerializerFeature[] r4 = r1.serialzeFeatures()
            int r4 = com.alibaba.fastjson.serializer.SerializerFeature.of(r4)
            com.alibaba.fastjson.parser.Feature[] r5 = r1.parseFeatures()
            int r5 = com.alibaba.fastjson.parser.Feature.of(r5)
            java.lang.String r6 = r1.name()
            int r6 = r6.length()
            if (r6 == 0) goto L_0x0474
            java.lang.String r0 = r1.name()
            r6 = r40
            if (r6 == 0) goto L_0x0476
            java.lang.Object r0 = r6.get(r0)
            java.lang.String r0 = (java.lang.String) r0
            if (r0 != 0) goto L_0x0476
            goto L_0x04aa
        L_0x0474:
            r6 = r40
        L_0x0476:
            java.lang.String r7 = r1.label()
            int r7 = r7.length()
            if (r7 == 0) goto L_0x048c
            java.lang.String r7 = r1.label()
            r11 = r1
            r18 = r2
            r8 = r5
            r21 = r7
            r7 = r4
            goto L_0x04a0
        L_0x048c:
            r11 = r1
            r18 = r2
            r7 = r4
            r8 = r5
            goto L_0x04a0
        L_0x0492:
            r6 = r40
            r7 = r11
            r8 = r27
            r11 = r1
            goto L_0x04a0
        L_0x0499:
            r6 = r40
            r7 = r11
            r11 = r17
            r8 = r27
        L_0x04a0:
            if (r6 == 0) goto L_0x04ae
            java.lang.Object r0 = r6.get(r0)
            java.lang.String r0 = (java.lang.String) r0
            if (r0 != 0) goto L_0x04ae
        L_0x04aa:
            r15 = r43
            r13 = r6
            goto L_0x04e8
        L_0x04ae:
            r15 = r43
            r13 = r6
            if (r15 == 0) goto L_0x04b7
            java.lang.String r0 = r15.translate(r0)
        L_0x04b7:
            r9 = r0
            boolean r0 = r10.containsKey(r9)
            if (r0 == 0) goto L_0x04bf
            goto L_0x04e8
        L_0x04bf:
            com.alibaba.fastjson.util.FieldInfo r6 = new com.alibaba.fastjson.util.FieldInfo
            r5 = 0
            r0 = r6
            r1 = r9
            r2 = r28
            r4 = r38
            r35 = r6
            r6 = r18
            r36 = r9
            r9 = r23
            r37 = r10
            r10 = r11
            r11 = r21
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)
            r2 = r35
            r1 = r36
            r0 = r37
            r0.put(r1, r2)
            goto L_0x04e9
        L_0x04e2:
            r12 = r38
        L_0x04e4:
            r13 = r40
            r15 = r43
        L_0x04e8:
            r0 = r10
        L_0x04e9:
            r1 = r19
            r3 = r25
            r2 = r26
        L_0x04ef:
            int r7 = r24 + 1
            r11 = r0
            r0 = r22
            r9 = r31
            r10 = r32
            goto L_0x0022
        L_0x04fa:
            r0 = r11
            java.lang.reflect.Field[] r1 = r38.getFields()
            computeFields(r12, r13, r15, r0, r1)
            r1 = r42
            java.util.List r0 = getFieldInfos(r12, r1, r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.util.TypeUtils.computeGetters(java.lang.Class, com.alibaba.fastjson.annotation.JSONType, java.util.Map, java.util.Map, boolean, com.alibaba.fastjson.PropertyNamingStrategy):java.util.List");
    }

    private static List<FieldInfo> getFieldInfos(Class<?> cls, boolean z, Map<String, FieldInfo> map) {
        ArrayList arrayList = new ArrayList();
        JSONType jSONType = (JSONType) getAnnotation(cls, JSONType.class);
        String[] orders = jSONType != null ? jSONType.orders() : null;
        if (orders == null || orders.length <= 0) {
            for (FieldInfo add : map.values()) {
                arrayList.add(add);
            }
            if (z) {
                Collections.sort(arrayList);
            }
        } else {
            LinkedHashMap linkedHashMap = new LinkedHashMap(arrayList.size());
            for (FieldInfo fieldInfo : map.values()) {
                linkedHashMap.put(fieldInfo.name, fieldInfo);
            }
            for (String str : orders) {
                FieldInfo fieldInfo2 = (FieldInfo) linkedHashMap.get(str);
                if (fieldInfo2 != null) {
                    arrayList.add(fieldInfo2);
                    linkedHashMap.remove(str);
                }
            }
            for (FieldInfo add2 : linkedHashMap.values()) {
                arrayList.add(add2);
            }
        }
        return arrayList;
    }

    private static void computeFields(Class<?> cls, Map<String, String> map, PropertyNamingStrategy propertyNamingStrategy, Map<String, FieldInfo> map2, Field[] fieldArr) {
        Field[] fieldArr2;
        String str;
        int i;
        int i2;
        int i3;
        Map<String, String> map3 = map;
        PropertyNamingStrategy propertyNamingStrategy2 = propertyNamingStrategy;
        Map<String, FieldInfo> map4 = map2;
        for (Field field : fieldArr) {
            if (!Modifier.isStatic(field.getModifiers())) {
                JSONField jSONField = (JSONField) field.getAnnotation(JSONField.class);
                String name = field.getName();
                String str2 = null;
                if (jSONField == null) {
                    str = null;
                    i3 = 0;
                    i2 = 0;
                    i = 0;
                } else if (jSONField.serialize()) {
                    int ordinal = jSONField.ordinal();
                    int of = SerializerFeature.of(jSONField.serialzeFeatures());
                    int of2 = Feature.of(jSONField.parseFeatures());
                    if (jSONField.name().length() != 0) {
                        name = jSONField.name();
                    }
                    if (jSONField.label().length() != 0) {
                        str2 = jSONField.label();
                    }
                    str = str2;
                    i3 = ordinal;
                    i2 = of;
                    i = of2;
                }
                if (map3 != null) {
                    name = (String) map3.get(name);
                    if (name == null) {
                    }
                }
                if (propertyNamingStrategy2 != null) {
                    name = propertyNamingStrategy2.translate(name);
                }
                String str3 = name;
                if (!map4.containsKey(str3)) {
                    FieldInfo fieldInfo = r7;
                    String str4 = str3;
                    FieldInfo fieldInfo2 = new FieldInfo(str3, null, field, cls, null, i3, i2, i, null, jSONField, str);
                    map4.put(str4, fieldInfo);
                }
            }
        }
    }

    private static String getPropertyNameByCompatibleFieldName(Map<String, Field> map, String str, String str2, int i) {
        if (!compatibleWithFieldName || map.containsKey(str2)) {
            return str2;
        }
        String substring = str.substring(i);
        if (!map.containsKey(substring)) {
            substring = str2;
        }
        return substring;
    }

    public static JSONField getSuperMethodAnnotation(Class<?> cls, Method method) {
        Method[] methods;
        boolean z;
        Method[] methods2;
        boolean z2;
        Class[] interfaces = cls.getInterfaces();
        if (interfaces.length > 0) {
            Class[] parameterTypes = method.getParameterTypes();
            for (Class methods3 : interfaces) {
                for (Method method2 : methods3.getMethods()) {
                    Class[] parameterTypes2 = method2.getParameterTypes();
                    if (parameterTypes2.length == parameterTypes.length && method2.getName().equals(method.getName())) {
                        int i = 0;
                        while (true) {
                            if (i >= parameterTypes.length) {
                                z2 = true;
                                break;
                            } else if (!parameterTypes2[i].equals(parameterTypes[i])) {
                                z2 = false;
                                break;
                            } else {
                                i++;
                            }
                        }
                        if (!z2) {
                            continue;
                        } else {
                            JSONField jSONField = (JSONField) method2.getAnnotation(JSONField.class);
                            if (jSONField != null) {
                                return jSONField;
                            }
                        }
                    }
                }
            }
        }
        Class superclass = cls.getSuperclass();
        if (superclass != null && Modifier.isAbstract(superclass.getModifiers())) {
            Class[] parameterTypes3 = method.getParameterTypes();
            for (Method method3 : superclass.getMethods()) {
                Class[] parameterTypes4 = method3.getParameterTypes();
                if (parameterTypes4.length == parameterTypes3.length && method3.getName().equals(method.getName())) {
                    int i2 = 0;
                    while (true) {
                        if (i2 >= parameterTypes3.length) {
                            z = true;
                            break;
                        } else if (!parameterTypes4[i2].equals(parameterTypes3[i2])) {
                            z = false;
                            break;
                        } else {
                            i2++;
                        }
                    }
                    if (!z) {
                        continue;
                    } else {
                        JSONField jSONField2 = (JSONField) method3.getAnnotation(JSONField.class);
                        if (jSONField2 != null) {
                            return jSONField2;
                        }
                    }
                }
            }
        }
        return null;
    }

    private static boolean isJSONTypeIgnore(Class<?> cls, String str) {
        JSONType jSONType = (JSONType) getAnnotation(cls, JSONType.class);
        if (jSONType != null) {
            String[] includes = jSONType.includes();
            if (includes.length > 0) {
                for (String equals : includes) {
                    if (str.equals(equals)) {
                        return false;
                    }
                }
                return true;
            }
            String[] ignores = jSONType.ignores();
            for (String equals2 : ignores) {
                if (str.equals(equals2)) {
                    return true;
                }
            }
        }
        return (cls.getSuperclass() == Object.class || cls.getSuperclass() == null || !isJSONTypeIgnore(cls.getSuperclass(), str)) ? false : true;
    }

    public static boolean isGenericParamType(Type type) {
        if (type instanceof ParameterizedType) {
            return true;
        }
        if (!(type instanceof Class)) {
            return false;
        }
        Type genericSuperclass = ((Class) type).getGenericSuperclass();
        if (genericSuperclass == Object.class) {
            return false;
        }
        return isGenericParamType(genericSuperclass);
    }

    public static Type getGenericParamType(Type type) {
        if (type instanceof ParameterizedType) {
            return type;
        }
        if (type instanceof Class) {
            type = getGenericParamType(((Class) type).getGenericSuperclass());
        }
        return type;
    }

    public static Type unwrapOptional(Type type) {
        if (!optionalClassInited) {
            try {
                optionalClass = Class.forName("java.util.Optional");
            } catch (Exception unused) {
            } catch (Throwable th) {
                optionalClassInited = true;
                throw th;
            }
            optionalClassInited = true;
        }
        if (!(type instanceof ParameterizedType)) {
            return type;
        }
        ParameterizedType parameterizedType = (ParameterizedType) type;
        return parameterizedType.getRawType() == optionalClass ? parameterizedType.getActualTypeArguments()[0] : type;
    }

    public static Class<?> getClass(Type type) {
        if (type.getClass() == Class.class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            return getClass(((ParameterizedType) type).getRawType());
        }
        if (type instanceof TypeVariable) {
            return (Class) ((TypeVariable) type).getBounds()[0];
        }
        if (type instanceof WildcardType) {
            Type[] upperBounds = ((WildcardType) type).getUpperBounds();
            if (upperBounds.length == 1) {
                return getClass(upperBounds[0]);
            }
        }
        return Object.class;
    }

    public static Field getField(Class<?> cls, String str, Field[] fieldArr) {
        for (Field field : fieldArr) {
            String name = field.getName();
            if (str.equals(name)) {
                return field;
            }
            if (str.length() > 2) {
                char charAt = str.charAt(0);
                if (charAt >= 'a' && charAt <= 'z') {
                    char charAt2 = str.charAt(1);
                    if (charAt2 >= 'A' && charAt2 <= 'Z' && str.equalsIgnoreCase(name)) {
                        return field;
                    }
                }
            }
        }
        Class<Object> superclass = cls.getSuperclass();
        if (superclass == null || superclass == Object.class) {
            return null;
        }
        return getField(superclass, str, superclass.getDeclaredFields());
    }

    public static int getSerializeFeatures(Class<?> cls) {
        JSONType jSONType = (JSONType) getAnnotation(cls, JSONType.class);
        if (jSONType == null) {
            return 0;
        }
        return SerializerFeature.of(jSONType.serialzeFeatures());
    }

    public static int getParserFeatures(Class<?> cls) {
        JSONType jSONType = (JSONType) getAnnotation(cls, JSONType.class);
        if (jSONType == null) {
            return 0;
        }
        return Feature.of(jSONType.parseFeatures());
    }

    public static String decapitalize(String str) {
        if (str == null || str.length() == 0) {
            return str;
        }
        if (str.length() > 1 && Character.isUpperCase(str.charAt(1)) && Character.isUpperCase(str.charAt(0))) {
            return str;
        }
        char[] charArray = str.toCharArray();
        charArray[0] = Character.toLowerCase(charArray[0]);
        return new String(charArray);
    }

    static void setAccessible(AccessibleObject accessibleObject) {
        if (setAccessibleEnable && !accessibleObject.isAccessible()) {
            try {
                accessibleObject.setAccessible(true);
            } catch (AccessControlException unused) {
                setAccessibleEnable = false;
            }
        }
    }

    public static Type getCollectionItemType(Type type) {
        Type type2;
        if (type instanceof ParameterizedType) {
            type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
            if (type2 instanceof WildcardType) {
                Type[] upperBounds = ((WildcardType) type2).getUpperBounds();
                if (upperBounds.length == 1) {
                    type2 = upperBounds[0];
                }
            }
        } else {
            if (type instanceof Class) {
                Class cls = (Class) type;
                if (!cls.getName().startsWith("java.")) {
                    type2 = getCollectionItemType(cls.getGenericSuperclass());
                }
            }
            type2 = null;
        }
        return type2 == null ? Object.class : type2;
    }

    public static Class<?> getCollectionItemClass(Type type) {
        if (!(type instanceof ParameterizedType)) {
            return Object.class;
        }
        Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
        if (type2 instanceof WildcardType) {
            Type[] upperBounds = ((WildcardType) type2).getUpperBounds();
            if (upperBounds.length == 1) {
                type2 = upperBounds[0];
            }
        }
        String str = "can not create ASMParser";
        if (type2 instanceof Class) {
            Class<?> cls = (Class) type2;
            if (Modifier.isPublic(cls.getModifiers())) {
                return cls;
            }
            throw new JSONException(str);
        }
        throw new JSONException(str);
    }

    public static Type checkPrimitiveArray(GenericArrayType genericArrayType) {
        Type genericComponentType = genericArrayType.getGenericComponentType();
        String str = "[";
        while (genericComponentType instanceof GenericArrayType) {
            genericComponentType = ((GenericArrayType) genericComponentType).getGenericComponentType();
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(str);
            str = sb.toString();
        }
        if (!(genericComponentType instanceof Class)) {
            return genericArrayType;
        }
        Class cls = (Class) genericComponentType;
        if (!cls.isPrimitive()) {
            return genericArrayType;
        }
        try {
            if (cls == Boolean.TYPE) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append("Z");
                return Class.forName(sb2.toString());
            } else if (cls == Character.TYPE) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(str);
                sb3.append("C");
                return Class.forName(sb3.toString());
            } else if (cls == Byte.TYPE) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append(str);
                sb4.append("B");
                return Class.forName(sb4.toString());
            } else if (cls == Short.TYPE) {
                StringBuilder sb5 = new StringBuilder();
                sb5.append(str);
                sb5.append("S");
                return Class.forName(sb5.toString());
            } else if (cls == Integer.TYPE) {
                StringBuilder sb6 = new StringBuilder();
                sb6.append(str);
                sb6.append("I");
                return Class.forName(sb6.toString());
            } else if (cls == Long.TYPE) {
                StringBuilder sb7 = new StringBuilder();
                sb7.append(str);
                sb7.append("J");
                return Class.forName(sb7.toString());
            } else if (cls == Float.TYPE) {
                StringBuilder sb8 = new StringBuilder();
                sb8.append(str);
                sb8.append("F");
                return Class.forName(sb8.toString());
            } else if (cls != Double.TYPE) {
                return genericArrayType;
            } else {
                StringBuilder sb9 = new StringBuilder();
                sb9.append(str);
                sb9.append("D");
                return Class.forName(sb9.toString());
            }
        } catch (ClassNotFoundException unused) {
            return genericArrayType;
        }
    }

    public static Collection createCollection(Type type) {
        Type type2;
        Class<Collection> rawClass = getRawClass(type);
        if (rawClass == AbstractCollection.class || rawClass == Collection.class) {
            return new ArrayList();
        }
        if (rawClass.isAssignableFrom(HashSet.class)) {
            return new HashSet();
        }
        if (rawClass.isAssignableFrom(LinkedHashSet.class)) {
            return new LinkedHashSet();
        }
        if (rawClass.isAssignableFrom(TreeSet.class)) {
            return new TreeSet();
        }
        if (rawClass.isAssignableFrom(ArrayList.class)) {
            return new ArrayList();
        }
        if (rawClass.isAssignableFrom(EnumSet.class)) {
            if (type instanceof ParameterizedType) {
                type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
            } else {
                type2 = Object.class;
            }
            return EnumSet.noneOf((Class) type2);
        }
        try {
            return (Collection) rawClass.newInstance();
        } catch (Exception unused) {
            StringBuilder sb = new StringBuilder();
            sb.append("create instance error, class ");
            sb.append(rawClass.getName());
            throw new JSONException(sb.toString());
        }
    }

    public static Class<?> getRawClass(Type type) {
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            return getRawClass(((ParameterizedType) type).getRawType());
        }
        throw new JSONException("TODO");
    }

    public static boolean isProxy(Class<?> cls) {
        for (Class name : cls.getInterfaces()) {
            String name2 = name.getName();
            if (name2.equals("net.sf.cglib.proxy.Factory") || name2.equals("org.springframework.cglib.proxy.Factory") || name2.equals("javassist.util.proxy.ProxyObject") || name2.equals("org.apache.ibatis.javassist.util.proxy.ProxyObject")) {
                return true;
            }
        }
        return false;
    }

    public static boolean isTransient(Method method) {
        boolean z = false;
        if (method == null) {
            return false;
        }
        if (!transientClassInited) {
            try {
                transientClass = Class.forName("java.beans.Transient");
            } catch (Exception unused) {
            } catch (Throwable th) {
                transientClassInited = true;
                throw th;
            }
            transientClassInited = true;
        }
        Class<? extends Annotation> cls = transientClass;
        if (!(cls == null || method.getAnnotation(cls) == null)) {
            z = true;
        }
        return z;
    }

    public static boolean isAnnotationPresentOneToMany(Method method) {
        if (method == null) {
            return false;
        }
        if (class_OneToMany == null && !class_OneToMany_error) {
            try {
                class_OneToMany = Class.forName("javax.persistence.OneToMany");
            } catch (Throwable unused) {
                class_OneToMany_error = true;
            }
        }
        Class<? extends Annotation> cls = class_OneToMany;
        if (cls == null) {
            return false;
        }
        return method.isAnnotationPresent(cls);
    }

    public static boolean isAnnotationPresentManyToMany(Method method) {
        boolean z = false;
        if (method == null) {
            return false;
        }
        if (class_ManyToMany == null && !class_ManyToMany_error) {
            try {
                class_ManyToMany = Class.forName("javax.persistence.ManyToMany");
            } catch (Throwable unused) {
                class_ManyToMany_error = true;
            }
        }
        if (class_ManyToMany == null) {
            return false;
        }
        if (method.isAnnotationPresent(class_OneToMany) || method.isAnnotationPresent(class_ManyToMany)) {
            z = true;
        }
        return z;
    }

    public static boolean isHibernateInitialized(Object obj) {
        if (obj == null) {
            return false;
        }
        if (method_HibernateIsInitialized == null && !method_HibernateIsInitialized_error) {
            try {
                method_HibernateIsInitialized = Class.forName("org.hibernate.Hibernate").getMethod("isInitialized", new Class[]{Object.class});
            } catch (Throwable unused) {
                method_HibernateIsInitialized_error = true;
            }
        }
        Method method = method_HibernateIsInitialized;
        if (method != null) {
            try {
                return ((Boolean) method.invoke(null, new Object[]{obj})).booleanValue();
            } catch (Throwable unused2) {
            }
        }
        return true;
    }

    public static long fnv1a_64_lower(String str) {
        long j = -3750763034362895579L;
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (!(charAt == '_' || charAt == '-')) {
                if (charAt >= 'A' && charAt <= 'Z') {
                    charAt = (char) (charAt + ' ');
                }
                j = (j ^ ((long) charAt)) * 1099511628211L;
            }
        }
        return j;
    }

    public static long fnv1a_64(String str) {
        long j = -3750763034362895579L;
        for (int i = 0; i < str.length(); i++) {
            j = (j ^ ((long) str.charAt(i))) * 1099511628211L;
        }
        return j;
    }

    public static boolean isKotlin(Class cls) {
        if (kotlin_metadata == null && !kotlin_metadata_error) {
            try {
                kotlin_metadata = Class.forName("kotlin.Metadata");
            } catch (Throwable unused) {
                kotlin_metadata_error = true;
            }
        }
        if (kotlin_metadata == null) {
            return false;
        }
        return cls.isAnnotationPresent(kotlin_metadata);
    }

    public static Constructor getKoltinConstructor(Constructor[] constructorArr) {
        Constructor constructor = null;
        for (Constructor constructor2 : constructorArr) {
            Class[] parameterTypes = constructor2.getParameterTypes();
            if ((parameterTypes.length <= 0 || !parameterTypes[parameterTypes.length - 1].getName().equals("kotlin.jvm.internal.DefaultConstructorMarker")) && (constructor == null || constructor.getParameterTypes().length < parameterTypes.length)) {
                constructor = constructor2;
            }
        }
        return constructor;
    }

    public static String[] getKoltinConstructorParameters(Class cls) {
        String str = "kotlin.reflect.jvm.internal.KClassImpl";
        if (kotlin_kclass_constructor == null && !kotlin_class_klass_error) {
            try {
                kotlin_kclass_constructor = Class.forName(str).getConstructor(new Class[]{Class.class});
            } catch (Throwable unused) {
                kotlin_class_klass_error = true;
            }
        }
        if (kotlin_kclass_constructor == null) {
            return null;
        }
        if (kotlin_kclass_getConstructors == null && !kotlin_class_klass_error) {
            try {
                kotlin_kclass_getConstructors = Class.forName(str).getMethod("getConstructors", new Class[0]);
            } catch (Throwable unused2) {
                kotlin_class_klass_error = true;
            }
        }
        if (kotlin_kfunction_getParameters == null && !kotlin_class_klass_error) {
            try {
                kotlin_kfunction_getParameters = Class.forName("kotlin.reflect.KFunction").getMethod("getParameters", new Class[0]);
            } catch (Throwable unused3) {
                kotlin_class_klass_error = true;
            }
        }
        if (kotlin_kparameter_getName == null && !kotlin_class_klass_error) {
            try {
                kotlin_kparameter_getName = Class.forName("kotlin.reflect.KParameter").getMethod("getName", new Class[0]);
            } catch (Throwable unused4) {
                kotlin_class_klass_error = true;
            }
        }
        if (kotlin_error) {
            return null;
        }
        try {
            Iterator it = ((Iterable) kotlin_kclass_getConstructors.invoke(kotlin_kclass_constructor.newInstance(new Object[]{cls}), new Object[0])).iterator();
            Object obj = null;
            while (it.hasNext()) {
                Object next = it.next();
                List list = (List) kotlin_kfunction_getParameters.invoke(next, new Object[0]);
                if (obj == null || list.size() != 0) {
                    obj = next;
                }
                it.hasNext();
            }
            List list2 = (List) kotlin_kfunction_getParameters.invoke(obj, new Object[0]);
            String[] strArr = new String[list2.size()];
            for (int i = 0; i < list2.size(); i++) {
                strArr[i] = (String) kotlin_kparameter_getName.invoke(list2.get(i), new Object[0]);
            }
            return strArr;
        } catch (Throwable th) {
            th.printStackTrace();
            kotlin_error = true;
            return null;
        }
    }

    private static boolean isKotlinIgnore(Class cls, String str) {
        String str2 = "isEmpty";
        String str3 = "getEndInclusive";
        if (kotlinIgnores == null && !kotlinIgnores_error) {
            try {
                HashMap hashMap = new HashMap();
                hashMap.put(Class.forName("kotlin.ranges.CharRange"), new String[]{str3, str2});
                hashMap.put(Class.forName("kotlin.ranges.IntRange"), new String[]{str3, str2});
                hashMap.put(Class.forName("kotlin.ranges.LongRange"), new String[]{str3, str2});
                hashMap.put(Class.forName("kotlin.ranges.ClosedFloatRange"), new String[]{str3, str2});
                hashMap.put(Class.forName("kotlin.ranges.ClosedDoubleRange"), new String[]{str3, str2});
                kotlinIgnores = hashMap;
            } catch (Throwable unused) {
                kotlinIgnores_error = true;
            }
        }
        boolean z = false;
        if (kotlinIgnores == null) {
            return false;
        }
        String[] strArr = (String[]) kotlinIgnores.get(cls);
        if (strArr == null) {
            return false;
        }
        if (Arrays.binarySearch(strArr, str) >= 0) {
            z = true;
        }
        return z;
    }

    public static <A extends Annotation> A getAnnotation(Class<?> cls, Class<A> cls2) {
        A annotation = cls.getAnnotation(cls2);
        if (annotation != null) {
            return annotation;
        }
        if (cls.getAnnotations().length > 0) {
            for (Annotation annotationType : cls.getAnnotations()) {
                A annotation2 = annotationType.annotationType().getAnnotation(cls2);
                if (annotation2 != null) {
                    return annotation2;
                }
            }
        }
        return null;
    }
}
