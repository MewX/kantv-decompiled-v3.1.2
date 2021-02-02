package com.avos.avoscloud;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Looper;
import android.util.Base64;
import android.webkit.MimeTypeMap;
import androidx.core.internal.view.SupportMenu;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.avos.avoscloud.LogUtil.log;
import com.avos.avoscloud.utils.StringUtils;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.net.URI;
import java.net.URISyntaxException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Random;
import java.util.TimeZone;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Pattern;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONArray;
import org.json.JSONObject;

@SuppressLint({"NewApi"})
public class AVUtils {
    private static final ThreadLocal<SimpleDateFormat> THREAD_LOCAL_DATE_FORMAT = new ThreadLocal<>();
    public static final int TYPE_MOBILE = 2;
    public static final int TYPE_NOT_CONNECTED = 0;
    public static final int TYPE_WIFI = 1;
    static AtomicInteger acu = new AtomicInteger(SupportMenu.CATEGORY_MASK);
    public static final String classNameTag = "className";
    private static final String dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'";
    protected static final int defaultFileKeyLength = 40;
    static Pattern emailPattern = Pattern.compile("^\\w+?@\\w+?[.]\\w+");
    private static Map<Class<?>, Field[]> fieldsMap = Collections.synchronizedMap(new WeakHashMap());
    public static final String objectIdTag = "objectId";
    static Pattern pattern = Pattern.compile("^[a-zA-Z_][a-zA-Z_0-9]*$");
    static Pattern phoneNumPattern = Pattern.compile("1\\d{10}");
    static Random random = new Random(System.currentTimeMillis());
    public static final String typeTag = "__type";
    static Pattern verifyCodePattern = Pattern.compile("\\d{6}");

    public static Map<String, Object> createArrayOpMap(String str, String str2, Collection<?> collection) {
        HashMap hashMap = new HashMap();
        hashMap.put("__op", str2);
        ArrayList arrayList = new ArrayList();
        for (Object parsedObject : collection) {
            arrayList.add(getParsedObject(parsedObject));
        }
        hashMap.put("objects", arrayList);
        HashMap hashMap2 = new HashMap();
        hashMap2.put(str, hashMap);
        return hashMap2;
    }

    public static Field[] getAllFiels(Class<?> cls) {
        if (cls == null || cls == Object.class) {
            return new Field[0];
        }
        Field[] fieldArr = (Field[]) fieldsMap.get(cls);
        if (fieldArr != null) {
            return fieldArr;
        }
        ArrayList<Field[]> arrayList = new ArrayList<>();
        int i = 0;
        while (cls != null && cls != Object.class) {
            Field[] declaredFields = cls.getDeclaredFields();
            i += declaredFields != null ? declaredFields.length : 0;
            arrayList.add(declaredFields);
            cls = cls.getSuperclass();
        }
        Field[] fieldArr2 = new Field[i];
        int i2 = 0;
        for (Field[] fieldArr3 : arrayList) {
            if (fieldArr3 != null) {
                for (Field accessible : fieldArr3) {
                    accessible.setAccessible(true);
                }
                System.arraycopy(fieldArr3, 0, fieldArr2, i2, fieldArr3.length);
                i2 += fieldArr3.length;
            }
        }
        fieldsMap.put(cls, fieldArr2);
        return fieldArr2;
    }

    public static boolean checkEmailAddress(String str) {
        return emailPattern.matcher(str).find();
    }

    public static boolean checkMobilePhoneNumber(String str) {
        return phoneNumPattern.matcher(str).find();
    }

    public static boolean checkMobileVerifyCode(String str) {
        return verifyCodePattern.matcher(str).find();
    }

    public static void checkClassName(String str) {
        if (isBlankString(str)) {
            throw new IllegalArgumentException("Blank class name");
        } else if (!pattern.matcher(str).matches()) {
            throw new IllegalArgumentException("Invalid class name");
        }
    }

    public static boolean isBlankString(String str) {
        return StringUtils.isBlankString(str);
    }

    public static boolean isBlankContent(String str) {
        return StringUtils.isBlankJsonContent(str);
    }

    public static boolean contains(Map<String, Object> map, String str) {
        return map.containsKey(str);
    }

    public static Map<String, Object> createDeleteOpMap(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("__op", "Delete");
        HashMap hashMap2 = new HashMap();
        hashMap2.put(str, hashMap);
        return hashMap2;
    }

    public static Map<String, Object> createPointerArrayOpMap(String str, String str2, Collection<AVObject> collection) {
        HashMap hashMap = new HashMap();
        hashMap.put("__op", str2);
        ArrayList arrayList = new ArrayList();
        for (AVObject mapFromPointerObject : collection) {
            arrayList.add(mapFromPointerObject(mapFromPointerObject));
        }
        hashMap.put("objects", arrayList);
        HashMap hashMap2 = new HashMap();
        hashMap2.put(str, hashMap);
        return hashMap2;
    }

    public static Map<String, Object> createStringObjectMap(String str, Object obj) {
        HashMap hashMap = new HashMap();
        hashMap.put(str, obj);
        return hashMap;
    }

    public static Map<String, Object> mapFromPointerObject(AVObject aVObject) {
        return mapFromAVObject(aVObject, false);
    }

    public static Map<String, Object> mapFromUserObjectId(String str) {
        if (isBlankString(str)) {
            return null;
        }
        HashMap hashMap = new HashMap();
        hashMap.put(typeTag, "Pointer");
        hashMap.put(classNameTag, "_User");
        hashMap.put("objectId", str);
        return hashMap;
    }

    public static Map<String, String> mapFromChildObject(AVObject aVObject, String str) {
        String internalId = aVObject.internalId();
        HashMap hashMap = new HashMap(3);
        hashMap.put("cid", internalId);
        hashMap.put(classNameTag, aVObject.getClassName());
        hashMap.put("key", str);
        return hashMap;
    }

    public static boolean isDigitString(String str) {
        return StringUtils.isDigitString(str);
    }

    public static Date dateFromString(String str) {
        Date date = null;
        if (isBlankString(str)) {
            return null;
        }
        if (isDigitString(str)) {
            return new Date(Long.parseLong(str));
        }
        SimpleDateFormat simpleDateFormat = (SimpleDateFormat) THREAD_LOCAL_DATE_FORMAT.get();
        if (simpleDateFormat == null) {
            simpleDateFormat = new SimpleDateFormat(dateFormat);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            THREAD_LOCAL_DATE_FORMAT.set(simpleDateFormat);
        }
        try {
            date = simpleDateFormat.parse(str);
        } catch (Exception e) {
            log.e(e.toString());
        }
        return date;
    }

    public static String stringFromDate(Date date) {
        if (date == null) {
            return null;
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(dateFormat);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        return simpleDateFormat.format(date);
    }

    public static Map<String, Object> mapFromDate(Date date) {
        HashMap hashMap = new HashMap();
        hashMap.put(typeTag, "Date");
        hashMap.put("iso", stringFromDate(date));
        return hashMap;
    }

    public static Date dateFromMap(Map<String, Object> map) {
        return dateFromString((String) map.get("iso"));
    }

    public static Map<String, Object> mapFromGeoPoint(AVGeoPoint aVGeoPoint) {
        HashMap hashMap = new HashMap();
        hashMap.put(typeTag, "GeoPoint");
        hashMap.put("latitude", Double.valueOf(aVGeoPoint.getLatitude()));
        hashMap.put("longitude", Double.valueOf(aVGeoPoint.getLongitude()));
        return hashMap;
    }

    public static AVGeoPoint geoPointFromMap(Map<String, Object> map) {
        return new AVGeoPoint(((Number) map.get("latitude")).doubleValue(), ((Number) map.get("longitude")).doubleValue());
    }

    public static AVObject objectFromRelationMap(Map<String, Object> map) {
        return objectFromClassName((String) map.get(classNameTag));
    }

    public static Map<String, Object> mapFromByteArray(byte[] bArr) {
        HashMap hashMap = new HashMap();
        hashMap.put(typeTag, "Bytes");
        hashMap.put("base64", Base64.encodeToString(bArr, 2));
        return hashMap;
    }

    public static byte[] dataFromMap(Map<String, Object> map) {
        return Base64.decode((String) map.get("base64"), 2);
    }

    public static String jsonStringFromMapWithNull(Object obj) {
        if (AVOSCloud.showInternalDebugLog()) {
            return JSON.toJSONString(obj, SerializerFeature.WriteMapNullValue, SerializerFeature.WriteNullBooleanAsFalse, SerializerFeature.WriteNullNumberAsZero, SerializerFeature.PrettyFormat);
        }
        return JSON.toJSONString(obj, SerializerFeature.WriteMapNullValue, SerializerFeature.WriteNullBooleanAsFalse, SerializerFeature.WriteNullNumberAsZero);
    }

    public static String jsonStringFromObjectWithNull(Object obj) {
        if (AVOSCloud.showInternalDebugLog()) {
            return JSON.toJSONString(obj, SerializerFeature.WriteMapNullValue, SerializerFeature.WriteNullBooleanAsFalse, SerializerFeature.WriteNullNumberAsZero, SerializerFeature.PrettyFormat);
        }
        return JSON.toJSONString(obj, SerializerFeature.WriteMapNullValue, SerializerFeature.WriteNullBooleanAsFalse, SerializerFeature.WriteNullNumberAsZero);
    }

    public static Map<String, Object> mapFromFile(AVFile aVFile) {
        HashMap hashMap = new HashMap();
        hashMap.put(typeTag, AVFile.className());
        hashMap.put("metaData", aVFile.getMetaData());
        hashMap.put("id", aVFile.getName());
        return hashMap;
    }

    public static AVFile fileFromMap(Map<String, Object> map) {
        String str = "";
        AVFile aVFile = new AVFile(str, str);
        copyPropertiesFromMapToObject(map, aVFile);
        Object obj = map.get("metaData");
        if (obj != null && (obj instanceof Map)) {
            aVFile.getMetaData().putAll((Map) obj);
        }
        String str2 = "_name";
        if (isBlankString((String) aVFile.getMetaData(str2))) {
            aVFile.getMetaData().put(str2, aVFile.getName());
        }
        aVFile.setName((String) map.get("objectId"));
        return aVFile;
    }

    public static AVObject parseObjectFromMap(Map<String, Object> map) {
        AVObject newAVObjectByClassName = newAVObjectByClassName((String) map.get(classNameTag));
        newAVObjectByClassName.setObjectId((String) map.get("objectId"));
        copyPropertiesFromMapToAVObject(map, newAVObjectByClassName);
        return newAVObjectByClassName;
    }

    public static String restfulServerData(Map<String, ?> map) {
        if (map == null) {
            return "{}";
        }
        return jsonStringFromMapWithNull(getParsedMap(map));
    }

    public static String restfulCloudData(Object obj) {
        if (obj == null) {
            return "{}";
        }
        if (obj instanceof Map) {
            return jsonStringFromMapWithNull(getParsedMap((Map) obj, true));
        }
        if (obj instanceof Collection) {
            return jsonStringFromObjectWithNull(getParsedList((Collection) obj, true));
        }
        if (obj instanceof AVObject) {
            return jsonStringFromMapWithNull(mapFromAVObject((AVObject) obj, true));
        }
        if (obj instanceof AVGeoPoint) {
            return jsonStringFromMapWithNull(mapFromGeoPoint((AVGeoPoint) obj));
        }
        if (obj instanceof Date) {
            return jsonStringFromObjectWithNull(mapFromDate((Date) obj));
        }
        if (obj instanceof byte[]) {
            return jsonStringFromMapWithNull(mapFromByteArray((byte[]) obj));
        }
        if (obj instanceof AVFile) {
            return jsonStringFromMapWithNull(mapFromFile((AVFile) obj));
        }
        if (obj instanceof JSONObject) {
            return jsonStringFromObjectWithNull(JSON.parse(obj.toString()));
        }
        if (obj instanceof JSONArray) {
            return jsonStringFromObjectWithNull(JSON.parse(obj.toString()));
        }
        return jsonStringFromObjectWithNull(obj);
    }

    private static Map<String, Object> mapFromAVObject(AVObject aVObject, boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put(classNameTag, aVObject.internalClassName());
        if (!isBlankString(aVObject.getObjectId())) {
            hashMap.put("objectId", aVObject.getObjectId());
        }
        String str = typeTag;
        if (!z) {
            hashMap.put(str, "Pointer");
        } else {
            hashMap.put(str, "Object");
            Map parsedMap = getParsedMap(aVObject.serverData, false);
            if (parsedMap != null && !parsedMap.isEmpty()) {
                hashMap.putAll(parsedMap);
            }
        }
        return hashMap;
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.Collection, code=java.util.Collection<java.lang.Object>, for r2v0, types: [java.util.Collection<java.lang.Object>, java.util.Collection] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.util.List getParsedList(java.util.Collection<java.lang.Object> r2, boolean r3) {
        /*
            if (r3 != 0) goto L_0x0007
            java.util.List r2 = getParsedList(r2)
            return r2
        L_0x0007:
            java.util.ArrayList r3 = new java.util.ArrayList
            int r0 = r2.size()
            r3.<init>(r0)
            java.util.Iterator r2 = r2.iterator()
        L_0x0014:
            boolean r0 = r2.hasNext()
            if (r0 == 0) goto L_0x0027
            java.lang.Object r0 = r2.next()
            r1 = 1
            java.lang.Object r0 = getParsedObject(r0, r1)
            r3.add(r0)
            goto L_0x0014
        L_0x0027:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.avos.avoscloud.AVUtils.getParsedList(java.util.Collection, boolean):java.util.List");
    }

    private static Map<String, Object> getParsedMap(Map<String, Object> map, boolean z) {
        HashMap hashMap = new HashMap(map.size());
        for (Entry entry : map.entrySet()) {
            hashMap.put((String) entry.getKey(), getParsedObject(entry.getValue(), z));
        }
        return hashMap;
    }

    public static boolean hasProperty(Class<?> cls, String str) {
        for (Field name : getAllFiels(cls)) {
            if (name.getName().equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean checkAndSetValue(Class<?> cls, Object obj, String str, Object obj2) {
        if (cls == null) {
            return false;
        }
        try {
            Field[] allFiels = getAllFiels(cls);
            int length = allFiels.length;
            int i = 0;
            while (i < length) {
                Field field = allFiels[i];
                if (!field.getName().equals(str) || (!field.getType().isInstance(obj2) && obj2 != null)) {
                    i++;
                } else {
                    field.set(obj, obj2);
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static void updatePropertyFromMap(AVObject aVObject, String str, Map<String, Object> map) {
        if (isACL(str)) {
            aVObject.setACL(new AVACL(map));
            return;
        }
        String str2 = (String) map.get("objectId");
        String str3 = (String) map.get(typeTag);
        if (str3 == null && str2 == null) {
            aVObject.put(str, map, false);
            return;
        }
        if (isGeoPoint(str3)) {
            aVObject.put(str, geoPointFromMap(map), false);
        } else if (isDate(str3)) {
            aVObject.put(str, dateFromMap(map), false);
        } else if (isData(str3)) {
            aVObject.put(str, dataFromMap(map), false);
        } else if (isFile(str3)) {
            aVObject.put(str, fileFromMap(map), false);
        } else if (isFileFromUrulu(map)) {
            aVObject.put(str, fileFromMap(map), false);
        } else if (isRelation(str3)) {
            aVObject.addRelationFromServer(str, (String) map.get(classNameTag), false);
        } else if (isPointer(str3) || (!isBlankString(str2) && str3 != null)) {
            aVObject.put(str, parseObjectFromMap(map), false);
        } else {
            aVObject.put(str, map, false);
        }
    }

    public static void updatePropertyFromList(AVObject aVObject, String str, Collection<Object> collection) {
        aVObject.put(str, getObjectFrom((Collection) collection), false);
    }

    public static void copyPropertiesFromJsonStringToAVObject(String str, AVObject aVObject) {
        if (!isBlankString(str)) {
            try {
                copyPropertiesFromMapToAVObject(JSONHelper.mapFromString(str), aVObject);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static void copyPropertiesFromMapToAVObject(Map<String, Object> map, AVObject aVObject) {
        for (Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            String str2 = EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR;
            if (str == null || !str.startsWith(str2)) {
                Object value = entry.getValue();
                if (checkAndSetValue(aVObject.getClass(), aVObject, str, value)) {
                    if (!str.startsWith(str2) && !AVObject.INVALID_KEYS.contains(str)) {
                        aVObject.put(str, value, false);
                    }
                } else if (value instanceof Collection) {
                    updatePropertyFromList(aVObject, str, (Collection) value);
                } else if (value instanceof Map) {
                    updatePropertyFromMap(aVObject, str, (Map) value);
                } else if (!str.startsWith(str2)) {
                    aVObject.put(str, value, false);
                }
            }
        }
    }

    public static void copyPropertiesFromMapToObject(Map<String, Object> map, Object obj) {
        for (Entry entry : map.entrySet()) {
            boolean checkAndSetValue = checkAndSetValue(obj.getClass(), obj, (String) entry.getKey(), entry.getValue());
        }
    }

    public static Class getClass(Map<String, ?> map) {
        Object obj = map.get(typeTag);
        if (obj == null || !(obj instanceof String)) {
            return Map.class;
        }
        if (obj.equals("Pointer")) {
            return AVObject.class;
        }
        if (obj.equals("GeoPoint")) {
            return AVGeoPoint.class;
        }
        if (obj.equals("Bytes")) {
            return byte[].class;
        }
        if (obj.equals("Date")) {
            return Date.class;
        }
        return Map.class;
    }

    public static boolean isRelation(String str) {
        return str != null && str.equals("Relation");
    }

    public static boolean isPointer(String str) {
        return str != null && str.equals("Pointer");
    }

    public static boolean isGeoPoint(String str) {
        return str != null && str.equals("GeoPoint");
    }

    public static boolean isACL(String str) {
        return str != null && str.equals("ACL");
    }

    public static boolean isDate(String str) {
        return str != null && str.equals("Date");
    }

    public static boolean isData(String str) {
        return str != null && str.equals("Bytes");
    }

    public static boolean isFile(String str) {
        return str != null && str.equals("File");
    }

    public static boolean isFileFromUrulu(Map<String, Object> map) {
        return (map.get("mime_type") != null) & true;
    }

    public static AVObject objectFromClassName(String str) {
        if (str.equals(AVPowerfulUtils.getAVClassName(AVUser.class.getSimpleName()))) {
            return AVUser.newAVUser();
        }
        return newAVObjectByClassName(str);
    }

    public static AVObject newAVObjectByClassName(String str) {
        if (str.equals(AVRole.className)) {
            return new AVRole();
        }
        if (str.equals(AVUser.userClassName())) {
            return AVUser.newAVUser();
        }
        Class subClass = AVObject.getSubClass(str);
        if (subClass == null) {
            return new AVObject(str);
        }
        try {
            return (AVObject) subClass.newInstance();
        } catch (Exception e) {
            throw new AVRuntimeException("New subclass instance failed.", e);
        }
    }

    public static Class<? extends AVObject> getAVObjectClassByClassName(String str) {
        if (str.equals(AVRole.className)) {
            return AVRole.class;
        }
        if (str.equals(AVUser.userClassName())) {
            return AVUser.class;
        }
        return AVObject.getSubClass(str);
    }

    public static AVObject newAVObjectByClassName(String str, String str2) {
        if (isBlankString(str)) {
            str = str2;
        }
        return newAVObjectByClassName(str);
    }

    public static final <T> T getFromJSON(String str, Class<T> cls) {
        return JSON.parseObject(str, cls);
    }

    public static final <T> String toJSON(T t) {
        if (!AVOSCloud.showInternalDebugLog()) {
            return JSON.toJSONString(t);
        }
        return JSON.toJSONString((Object) t, SerializerFeature.PrettyFormat);
    }

    public static Map<String, Object> getParsedMap(Map<String, Object> map) {
        return getParsedMap(map, false);
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.Collection, code=java.util.Collection<java.lang.Object>, for r2v0, types: [java.util.Collection<java.lang.Object>, java.util.Collection] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static java.util.List getParsedList(java.util.Collection<java.lang.Object> r2) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            int r1 = r2.size()
            r0.<init>(r1)
            java.util.Iterator r2 = r2.iterator()
        L_0x000d:
            boolean r1 = r2.hasNext()
            if (r1 == 0) goto L_0x001f
            java.lang.Object r1 = r2.next()
            java.lang.Object r1 = getParsedObject(r1)
            r0.add(r1)
            goto L_0x000d
        L_0x001f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.avos.avoscloud.AVUtils.getParsedList(java.util.Collection):java.util.List");
    }

    public static Object getParsedObject(Object obj) {
        return getParsedObject(obj, false);
    }

    public static Object getParsedObject(Object obj, boolean z) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Map) {
            return getParsedMap((Map) obj, z);
        }
        if (obj instanceof Collection) {
            return getParsedList((Collection) obj, z);
        }
        if (obj instanceof AVObject) {
            if (!z) {
                return mapFromPointerObject((AVObject) obj);
            }
            return mapFromAVObject((AVObject) obj, true);
        } else if (obj instanceof AVGeoPoint) {
            return mapFromGeoPoint((AVGeoPoint) obj);
        } else {
            if (obj instanceof Date) {
                return mapFromDate((Date) obj);
            }
            if (obj instanceof byte[]) {
                return mapFromByteArray((byte[]) obj);
            }
            if (obj instanceof AVFile) {
                return mapFromFile((AVFile) obj);
            }
            if (obj instanceof JSONObject) {
                return JSON.parse(obj.toString());
            }
            if (obj instanceof JSONArray) {
                obj = JSON.parse(obj.toString());
            }
            return obj;
        }
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.Collection, code=java.util.Collection<java.lang.Object>, for r2v0, types: [java.util.Collection<java.lang.Object>, java.util.Collection] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static java.util.List getObjectFrom(java.util.Collection<java.lang.Object> r2) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.Iterator r2 = r2.iterator()
        L_0x0009:
            boolean r1 = r2.hasNext()
            if (r1 == 0) goto L_0x001b
            java.lang.Object r1 = r2.next()
            java.lang.Object r1 = getObjectFrom(r1)
            r0.add(r1)
            goto L_0x0009
        L_0x001b:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.avos.avoscloud.AVUtils.getObjectFrom(java.util.Collection):java.util.List");
    }

    /* JADX WARNING: type inference failed for: r3v4, types: [com.avos.avoscloud.AVFile] */
    /* JADX WARNING: type inference failed for: r3v9 */
    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.Map<java.lang.String, java.lang.Object>, code=java.lang.Object, for r3v0, types: [java.util.Map<java.lang.String, java.lang.Object>, java.util.Map] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static java.lang.Object getObjectFrom(java.lang.Object r3) {
        /*
            java.lang.String r0 = "__type"
            java.lang.Object r1 = r3.get(r0)
            if (r1 == 0) goto L_0x0072
            boolean r2 = r1 instanceof java.lang.String
            if (r2 != 0) goto L_0x000d
            goto L_0x0072
        L_0x000d:
            java.lang.String r2 = "Pointer"
            boolean r2 = r1.equals(r2)
            if (r2 != 0) goto L_0x005f
            java.lang.String r2 = "Object"
            boolean r2 = r1.equals(r2)
            if (r2 == 0) goto L_0x001e
            goto L_0x005f
        L_0x001e:
            java.lang.String r0 = "GeoPoint"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L_0x002b
            com.avos.avoscloud.AVGeoPoint r3 = geoPointFromMap(r3)
            return r3
        L_0x002b:
            java.lang.String r0 = "Bytes"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L_0x0038
            byte[] r3 = dataFromMap(r3)
            return r3
        L_0x0038:
            java.lang.String r0 = "Date"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L_0x0045
            java.util.Date r3 = dateFromMap(r3)
            return r3
        L_0x0045:
            java.lang.String r0 = "Relation"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L_0x0052
            com.avos.avoscloud.AVObject r3 = objectFromRelationMap(r3)
            return r3
        L_0x0052:
            java.lang.String r0 = "File"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L_0x005e
            com.avos.avoscloud.AVFile r3 = fileFromMap(r3)
        L_0x005e:
            return r3
        L_0x005f:
            java.lang.String r1 = "className"
            java.lang.Object r1 = r3.get(r1)
            java.lang.String r1 = (java.lang.String) r1
            com.avos.avoscloud.AVObject r1 = objectFromClassName(r1)
            r3.remove(r0)
            copyPropertiesFromMapToAVObject(r3, r1)
            return r1
        L_0x0072:
            java.util.HashMap r0 = new java.util.HashMap
            int r1 = r3.size()
            r0.<init>(r1)
            java.util.Set r3 = r3.entrySet()
            java.util.Iterator r3 = r3.iterator()
        L_0x0083:
            boolean r1 = r3.hasNext()
            if (r1 == 0) goto L_0x00a1
            java.lang.Object r1 = r3.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            java.lang.Object r2 = r1.getKey()
            java.lang.String r2 = (java.lang.String) r2
            java.lang.Object r1 = r1.getValue()
            java.lang.Object r1 = getObjectFrom(r1)
            r0.put(r2, r1)
            goto L_0x0083
        L_0x00a1:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.avos.avoscloud.AVUtils.getObjectFrom(java.util.Map):java.lang.Object");
    }

    static Object getObjectFrom(Object obj) {
        if (obj instanceof Collection) {
            return getObjectFrom((Collection) obj);
        }
        if (obj instanceof Map) {
            obj = getObjectFrom((Map) obj);
        }
        return obj;
    }

    public static String md5(String str) {
        return StringUtils.md5(str);
    }

    public static String getRandomString(int i) {
        return StringUtils.getRandomString(i);
    }

    public static int getNextIMRequestId() {
        int incrementAndGet = acu.incrementAndGet();
        if (incrementAndGet > 65535) {
            while (incrementAndGet > 65535 && !acu.compareAndSet(incrementAndGet, SupportMenu.CATEGORY_MASK)) {
                incrementAndGet = acu.get();
            }
        }
        return incrementAndGet;
    }

    public static boolean isWifi(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.getType() == 1;
    }

    public static boolean isConnected(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                return true;
            }
        } catch (SecurityException e) {
            log.e("Please add ACCESS_NETWORK_STATE permission in your manifest", (Exception) e);
            return true;
        } catch (Exception e2) {
            log.e("Exception: ", e2);
        }
        return false;
    }

    public static long getCurrentTimestamp() {
        return System.currentTimeMillis();
    }

    public static String joinCollection(Collection<String> collection, String str) {
        return StringUtils.join(str, collection);
    }

    public static String stringFromBytes(byte[] bArr) {
        return StringUtils.stringFromBytes(bArr);
    }

    public static boolean checkPermission(Context context, String str) {
        boolean z = false;
        if (context == null) {
            log.e("context is null");
            return false;
        }
        if (context.checkCallingOrSelfPermission(str) == 0) {
            z = true;
        }
        return z;
    }

    public static boolean isPushServiceAvailable(Context context, Class cls) {
        return context.getPackageManager().queryIntentServices(new Intent(context, cls), 65536).size() > 0;
    }

    public static boolean isMainThread() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static String fileMd5(String str) throws IOException {
        return computeMD5(readFile(str));
    }

    public static byte[] readFile(String str) throws IOException {
        return readFile(new File(str));
    }

    public static byte[] readFile(File file) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
        try {
            long length = randomAccessFile.length();
            int i = (int) length;
            if (((long) i) == length) {
                byte[] bArr = new byte[i];
                randomAccessFile.readFully(bArr);
                return bArr;
            }
            throw new IOException("File size >= 2 GB");
        } finally {
            AVPersistenceUtils.closeQuietly(randomAccessFile);
        }
    }

    public static String getMimeTypeFromUrl(String str) {
        if (!isBlankContent(str)) {
            String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(str);
            if (!isBlankContent(fileExtensionFromUrl)) {
                return MimeTypeMap.getSingleton().getMimeTypeFromExtension(fileExtensionFromUrl);
            }
        }
        return "";
    }

    public static String getMimeTypeFromLocalFile(String str) {
        if (!isBlankContent(str) && str.contains(".")) {
            String substring = str.substring(str.lastIndexOf(46) + 1);
            if (!isBlankContent(substring)) {
                return MimeTypeMap.getSingleton().getMimeTypeFromExtension(substring);
            }
        }
        return "";
    }

    public static String hexEncodeBytes(byte[] bArr) {
        return StringUtils.hexEncodeBytes(bArr);
    }

    public static String computeMD5(byte[] bArr) {
        return StringUtils.computeMD5(bArr);
    }

    static String getJSONString(com.alibaba.fastjson.JSONObject jSONObject, String str, String str2) {
        return jSONObject.containsKey(str) ? jSONObject.getString(str) : str2;
    }

    static long getJSONInteger(com.alibaba.fastjson.JSONObject jSONObject, String str, long j) {
        return jSONObject.containsKey(str) ? (long) jSONObject.getInteger(str).intValue() : j;
    }

    public static int getConnectivityStatus(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return 0;
        }
        if (activeNetworkInfo.getType() == 1) {
            return 1;
        }
        if (activeNetworkInfo.getType() == 0) {
            return 2;
        }
        return 0;
    }

    public static String getConnectivityStatusString(Context context) {
        int connectivityStatus = getConnectivityStatus(context);
        if (connectivityStatus == 1) {
            return "Wifi enabled";
        }
        if (connectivityStatus == 2) {
            return "Mobile data enabled";
        }
        if (connectivityStatus == 0) {
            return "Not connected to Internet";
        }
        return null;
    }

    public static String getArchiveRequestFileName(String str, String str2, String str3, String str4, String str5) {
        if (str3.equalsIgnoreCase("put")) {
            StringBuilder sb = new StringBuilder();
            sb.append(str4);
            sb.append(str5);
            return md5(sb.toString());
        } else if (str3.equalsIgnoreCase("post")) {
            return str2;
        } else {
            if (str3.equalsIgnoreCase("delete")) {
                if (!isBlankString(str)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str4);
                    sb2.append(str5);
                    str2 = md5(sb2.toString());
                }
                return str2;
            }
            StringBuilder sb3 = new StringBuilder();
            sb3.append(str4);
            sb3.append(str5);
            return md5(sb3.toString());
        }
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.Collection, code=java.util.Collection<java.lang.Object>, for r2v0, types: [java.util.Collection<java.lang.Object>, java.util.Collection] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static int collectionNonNullCount(java.util.Collection<java.lang.Object> r2) {
        /*
            java.util.Iterator r2 = r2.iterator()
            r0 = 0
        L_0x0005:
            boolean r1 = r2.hasNext()
            if (r1 == 0) goto L_0x0014
            java.lang.Object r1 = r2.next()
            if (r1 == 0) goto L_0x0005
            int r0 = r0 + 1
            goto L_0x0005
        L_0x0014:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.avos.avoscloud.AVUtils.collectionNonNullCount(java.util.Collection):int");
    }

    public static String urlCleanLastSlash(String str) {
        return (isBlankString(str) || !str.endsWith("/")) ? str : str.substring(0, str.length() - 1);
    }

    public static String getSessionKey(String str) {
        StringBuilder sb = new StringBuilder(AVOSCloud.applicationId);
        sb.append(str);
        return sb.toString();
    }

    public static boolean isEmptyList(List list) {
        return list == null || list.isEmpty();
    }

    public static void ensureElementsNotNull(List<String> list, String str) {
        for (String str2 : list) {
            if (str2 == null) {
                throw new NullPointerException(str);
            }
        }
    }

    public static boolean compareNumberString(String str, String str2) {
        return Double.compare(Double.parseDouble(str), Double.parseDouble(str2)) == 1;
    }

    public static String base64Encode(String str) {
        return str == null ? "" : base64Encode(str.getBytes(), 10);
    }

    private static String base64Encode(byte[] bArr, int i) {
        return bArr == null ? "" : Base64.encodeToString(bArr, i);
    }

    public static String base64Encode(byte[] bArr) {
        return base64Encode(bArr, 2);
    }

    public static byte[] base64Decode(String str) {
        if (str == null) {
            return null;
        }
        return Base64.decode(str.getBytes(), 2);
    }

    public static Handler getUIThreadHandler() {
        return AVOSCloud.handler;
    }

    public static Map<String, Object> createMap(String str, Object obj) {
        HashMap hashMap = new HashMap();
        hashMap.put(str, obj);
        return hashMap;
    }

    public static boolean checkResponseType(int i, String str, String str2, GenericObjectCallback genericObjectCallback) {
        if (i <= 0 || PaasClient.isJSONResponse(str2)) {
            return false;
        }
        if (genericObjectCallback != null) {
            StringBuilder sb = new StringBuilder();
            sb.append("Wrong response content type:");
            sb.append(str2);
            genericObjectCallback.onFailure(i, new AVException(107, sb.toString()), str);
        }
        return true;
    }

    public static boolean checkDNSException(int i, Throwable th) {
        return isConnected(AVOSCloud.applicationContext) && i == 0 && (th instanceof IOException) && th.getMessage() != null && th.getMessage().toLowerCase().contains("unknownhostexception");
    }

    public static String getHostName(String str) throws URISyntaxException {
        String host = new URI(str).getHost();
        return host.startsWith("www.") ? host.substring(4) : host;
    }

    public static String getPath(String str) throws URISyntaxException {
        return new URI(str).getPath();
    }

    public static String getAVObjectClassName(Class<? extends AVObject> cls) {
        return AVObject.getSubClassName(cls);
    }

    public static String getAVObjectCreatedAt(AVObject aVObject) {
        return aVObject.createdAt;
    }

    public static String getAVObjectUpdatedAt(AVObject aVObject) {
        return aVObject.updatedAt;
    }

    public static String getEncodeUrl(String str, Map<String, String> map) {
        return new AVRequestParams(map).getWholeUrl(str);
    }

    public static String getJSONValue(String str, String str2) {
        Map map = (Map) JSON.parseObject(str, HashMap.class);
        if (map == null || map.isEmpty()) {
            return null;
        }
        Object obj = map.get(str2);
        if (obj != null) {
            return obj.toString();
        }
        return null;
    }

    public static String addQueryParams(String str, Map<String, Object> map) {
        LinkedList linkedList = new LinkedList();
        for (Entry entry : map.entrySet()) {
            linkedList.add(new BasicNameValuePair((String) entry.getKey(), JSON.toJSONString(entry.getValue())));
        }
        return String.format("%s?%s", new Object[]{str, URLEncodedUtils.format(linkedList, "UTF-8")});
    }

    public static String parseFileKey(String str) {
        String randomString = getRandomString(40);
        int lastIndexOf = !isBlankString(str) ? str.lastIndexOf(".") : 0;
        if (lastIndexOf <= 0) {
            return randomString;
        }
        String substring = str.substring(lastIndexOf);
        StringBuilder sb = new StringBuilder();
        sb.append(randomString);
        sb.append(substring);
        return sb.toString();
    }

    private static String convertToHex(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            byte b2 = (b >>> 4) & 15;
            int i = 0;
            while (true) {
                sb.append((char) ((b2 < 0 || b2 > 9) ? (b2 - 10) + 97 : b2 + 48));
                b2 = b & 15;
                int i2 = i + 1;
                if (i >= 1) {
                    break;
                }
                i = i2;
            }
        }
        return sb.toString();
    }

    public static String SHA1(byte[] bArr) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        MessageDigest instance = MessageDigest.getInstance(CommonUtils.SHA1_INSTANCE);
        instance.update(bArr, 0, bArr.length);
        return convertToHex(instance.digest());
    }
}
