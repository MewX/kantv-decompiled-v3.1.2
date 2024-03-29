package io.flutter.plugin.common;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import org.json.JSONArray;
import org.json.JSONObject;

public class JSONUtil {
    private JSONUtil() {
    }

    public static Object unwrap(Object obj) {
        if (JSONObject.NULL.equals(obj) || obj == null) {
            return null;
        }
        if ((obj instanceof Boolean) || (obj instanceof Byte) || (obj instanceof Character) || (obj instanceof Double) || (obj instanceof Float) || (obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Short) || (obj instanceof String)) {
            return obj;
        }
        try {
            if (obj instanceof JSONArray) {
                ArrayList arrayList = new ArrayList();
                JSONArray jSONArray = (JSONArray) obj;
                for (int i = 0; i < jSONArray.length(); i++) {
                    arrayList.add(unwrap(jSONArray.get(i)));
                }
                return arrayList;
            }
            if (obj instanceof JSONObject) {
                HashMap hashMap = new HashMap();
                JSONObject jSONObject = (JSONObject) obj;
                Iterator keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String str = (String) keys.next();
                    hashMap.put(str, unwrap(jSONObject.get(str)));
                }
                return hashMap;
            }
            return null;
        } catch (Exception unused) {
        }
    }

    public static Object wrap(Object obj) {
        if (obj == null) {
            return JSONObject.NULL;
        }
        if (!(obj instanceof JSONArray) && !(obj instanceof JSONObject)) {
            if (obj.equals(JSONObject.NULL)) {
                return obj;
            }
            try {
                if (obj instanceof Collection) {
                    JSONArray jSONArray = new JSONArray();
                    for (Object wrap : (Collection) obj) {
                        jSONArray.put(wrap(wrap));
                    }
                    return jSONArray;
                } else if (obj.getClass().isArray()) {
                    JSONArray jSONArray2 = new JSONArray();
                    int length = Array.getLength(obj);
                    for (int i = 0; i < length; i++) {
                        jSONArray2.put(wrap(Array.get(obj, i)));
                    }
                    return jSONArray2;
                } else if (obj instanceof Map) {
                    JSONObject jSONObject = new JSONObject();
                    for (Entry entry : ((Map) obj).entrySet()) {
                        jSONObject.put((String) entry.getKey(), wrap(entry.getValue()));
                    }
                    return jSONObject;
                } else {
                    if (!(obj instanceof Boolean) && !(obj instanceof Byte) && !(obj instanceof Character) && !(obj instanceof Double) && !(obj instanceof Float) && !(obj instanceof Integer) && !(obj instanceof Long) && !(obj instanceof Short)) {
                        if (!(obj instanceof String)) {
                            if (obj.getClass().getPackage().getName().startsWith("java.")) {
                                obj = obj.toString();
                            }
                            obj = null;
                        }
                    }
                    return obj;
                }
            } catch (Exception unused) {
            }
        }
        return obj;
    }
}
