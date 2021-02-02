package com.avos.avoscloud;

import java.util.HashMap;
import java.util.Map;

public class AVPowerfulUtils {
    private static final String AV_CLASSNAME = "dbClassName";
    private static final String ENDPOINT = "endpoint";
    private static Map<String, Map<String, String>> powerfulTable = new HashMap();

    static {
        createTable();
    }

    static void createSettings(String str, String str2, String str3) {
        HashMap hashMap = new HashMap();
        hashMap.put(ENDPOINT, str2);
        hashMap.put(AV_CLASSNAME, str3);
        powerfulTable.put(str, hashMap);
    }

    private static void createTable() {
        String simpleName = AVUser.class.getSimpleName();
        String str = AVUser.AVUSER_ENDPOINT;
        String str2 = "_User";
        createSettings(simpleName, str, str2);
        createSettings(str2, str, str2);
        String simpleName2 = AVRole.class.getSimpleName();
        String str3 = AVRole.AVROLE_ENDPOINT;
        String str4 = AVRole.className;
        createSettings(simpleName2, str3, str4);
        createSettings(str4, str3, str4);
        String simpleName3 = AVFile.class.getSimpleName();
        String str5 = AVFile.AVFILE_ENDPOINT;
        String str6 = "_File";
        createSettings(simpleName3, str5, str6);
        createSettings(str6, str5, str6);
    }

    private static String get(String str, String str2) {
        String str3 = "";
        if (!powerfulTable.containsKey(str)) {
            return str3;
        }
        String str4 = (String) ((Map) powerfulTable.get(str)).get(str2);
        return str4 == null ? str3 : str4;
    }

    private static String getAVClassEndpoint(String str, String str2, String str3) {
        String str4 = get(str, ENDPOINT);
        if (AVUtils.isBlankString(str4)) {
            if (AVUtils.isBlankString(str3)) {
                return String.format("classes/%s", new Object[]{str2});
            }
            return String.format("classes/%s/%s", new Object[]{str2, str3});
        } else if (AVUtils.isBlankString(str3)) {
            return str4;
        } else {
            return String.format("%s/%s", new Object[]{str4, str3});
        }
    }

    private static String getAVUserEndpoint(AVUser aVUser) {
        String str = get(AVUser.class.getSimpleName(), ENDPOINT);
        if (AVUtils.isBlankString(aVUser.getObjectId())) {
            return str;
        }
        return String.format("%s/%s", new Object[]{str, aVUser.getObjectId()});
    }

    private static String getAVRoleEndpoint(AVRole aVRole) {
        String str = get(AVRole.class.getSimpleName(), ENDPOINT);
        if (AVUtils.isBlankString(aVRole.getObjectId())) {
            return str;
        }
        return String.format("%s/%s", new Object[]{str, aVRole.getObjectId()});
    }

    public static String getEndpoint(String str) {
        String str2 = get(str, ENDPOINT);
        if (!AVUtils.isBlankString(str2)) {
            return str2;
        }
        if (!AVUtils.isBlankString(str)) {
            return String.format("classes/%s", new Object[]{str});
        }
        throw new AVRuntimeException("Blank class name");
    }

    public static String getEndpoint(Object obj) {
        return getEndpoint(obj, false);
    }

    public static String getEndpoint(Object obj, boolean z) {
        if (obj instanceof AVUser) {
            return getAVUserEndpoint((AVUser) obj);
        }
        if (obj instanceof AVRole) {
            return getAVRoleEndpoint((AVRole) obj);
        }
        if (!(obj instanceof AVObject)) {
            return getEndpoint(obj.getClass().getSimpleName());
        }
        AVObject aVObject = (AVObject) obj;
        Class cls = aVObject.getClass();
        String simpleName = cls.getSimpleName();
        String subClassName = AVObject.getSubClassName(cls);
        String str = "";
        if (subClassName != null) {
            if (!z) {
                str = aVObject.getObjectId();
            }
            return getAVClassEndpoint(simpleName, subClassName, str);
        }
        String className = aVObject.getClassName();
        if (!z) {
            str = aVObject.getObjectId();
        }
        return getAVClassEndpoint(simpleName, className, str);
    }

    public static String getBatchEndpoint(String str, AVObject aVObject, boolean z) {
        return String.format("/%s/%s", new Object[]{str, getEndpoint(aVObject, z)});
    }

    public static String getEndpointByAVClassName(String str, String str2) {
        String endpoint = getEndpoint(str);
        if (AVUtils.isBlankString(endpoint)) {
            return endpoint;
        }
        return String.format("%s/%s", new Object[]{endpoint, str2});
    }

    public static String getAVClassName(String str) {
        return get(str, AV_CLASSNAME);
    }

    public static String getFollowEndPoint(String str, String str2) {
        return String.format("users/%s/friendship/%s", new Object[]{str, str2});
    }

    public static String getFollowersEndPoint(String str) {
        return String.format("users/%s/followers", new Object[]{str});
    }

    public static String getFolloweesEndPoint(String str) {
        return String.format("users/%s/followees", new Object[]{str});
    }

    public static String getFollowersAndFollowees(String str) {
        return String.format("users/%s/followersAndFollowees", new Object[]{str});
    }

    public static String getInternalIdFromRequestBody(Map map) {
        String str = TtmlNode.TAG_BODY;
        if (map.get(str) != null) {
            return (String) ((Map) map.get(str)).get("__internalId");
        }
        return null;
    }
}
