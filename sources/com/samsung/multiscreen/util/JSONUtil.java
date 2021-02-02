package com.samsung.multiscreen.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;
import org.json.simple.parser.ContainerFactory;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class JSONUtil {
    private static ContainerFactory containerFactory = new ContainerFactory() {
        public List creatArrayContainer() {
            return new ArrayList();
        }

        public Map createObjectContainer() {
            return new HashMap();
        }
    };

    private JSONUtil() {
    }

    public static Map<String, Object> parse(String str) {
        Map<String, Object> map;
        if (str == null) {
            return containerFactory.createObjectContainer();
        }
        try {
            map = (Map) new JSONParser().parse(str, containerFactory);
        } catch (ClassCastException unused) {
            map = containerFactory.createObjectContainer();
        } catch (ParseException unused2) {
            map = containerFactory.createObjectContainer();
        }
        return map;
    }

    public static JSONObject parseObject(String str) {
        try {
            return (JSONObject) new JSONParser().parse(str);
        } catch (Exception unused) {
            return new JSONObject();
        }
    }

    public static JSONArray parseArray(String str) {
        try {
            return (JSONArray) new JSONParser().parse(str);
        } catch (Exception unused) {
            return new JSONArray();
        }
    }

    public static List<Map<String, Object>> parseList(String str) {
        List<Map<String, Object>> list;
        if (str == null) {
            return containerFactory.creatArrayContainer();
        }
        try {
            list = (List) new JSONParser().parse(str, containerFactory);
        } catch (ClassCastException unused) {
            list = containerFactory.creatArrayContainer();
        } catch (ParseException unused2) {
            list = containerFactory.creatArrayContainer();
        }
        return list;
    }

    public static Map<String, Object> toJSONObjectMap(Object obj) {
        return (Map) obj;
    }

    public static Map<String, String> toPropertyMap(Object obj) {
        return (Map) obj;
    }

    public static List<Map<String, Object>> toJSONObjectMapList(Object obj) {
        return (List) obj;
    }

    public static JSONObject toObject(Map<String, Object> map) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.putAll(map);
        return jSONObject;
    }

    public static String toJSONString(Map<String, Object> map) {
        return JSONValue.toJSONString(map);
    }
}
