package com.kantv.flt_tencent_im.utils;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import java.util.Iterator;
import java.util.LinkedList;

public class SharedPreferenceUtils {
    public static boolean putData(SharedPreferences sharedPreferences, String str, Object obj) {
        Editor edit = sharedPreferences.edit();
        String simpleName = obj.getClass().getSimpleName();
        char c = 65535;
        boolean z = false;
        try {
            switch (simpleName.hashCode()) {
                case -1808118735:
                    if (simpleName.equals("String")) {
                        c = 3;
                        break;
                    }
                    break;
                case -672261858:
                    if (simpleName.equals("Integer")) {
                        c = 4;
                        break;
                    }
                    break;
                case 2374300:
                    if (simpleName.equals("Long")) {
                        c = 1;
                        break;
                    }
                    break;
                case 67973692:
                    if (simpleName.equals("Float")) {
                        c = 2;
                        break;
                    }
                    break;
                case 1729365000:
                    if (simpleName.equals("Boolean")) {
                        c = 0;
                        break;
                    }
                    break;
            }
            if (c == 0) {
                edit.putBoolean(str, ((Boolean) obj).booleanValue());
            } else if (c == 1) {
                edit.putLong(str, ((Long) obj).longValue());
            } else if (c == 2) {
                edit.putFloat(str, ((Float) obj).floatValue());
            } else if (c == 3) {
                edit.putString(str, (String) obj);
            } else if (c != 4) {
                edit.putString(str, new Gson().toJson(obj));
            } else {
                edit.putInt(str, ((Integer) obj).intValue());
            }
            z = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        edit.apply();
        return z;
    }

    public static Object getData(SharedPreferences sharedPreferences, String str, Object obj) {
        String str2 = "";
        String simpleName = obj.getClass().getSimpleName();
        char c = 65535;
        try {
            switch (simpleName.hashCode()) {
                case -1808118735:
                    if (simpleName.equals("String")) {
                        c = 3;
                        break;
                    }
                    break;
                case -672261858:
                    if (simpleName.equals("Integer")) {
                        c = 4;
                        break;
                    }
                    break;
                case 2374300:
                    if (simpleName.equals("Long")) {
                        c = 1;
                        break;
                    }
                    break;
                case 67973692:
                    if (simpleName.equals("Float")) {
                        c = 2;
                        break;
                    }
                    break;
                case 1729365000:
                    if (simpleName.equals("Boolean")) {
                        c = 0;
                        break;
                    }
                    break;
            }
            if (c == 0) {
                return Boolean.valueOf(sharedPreferences.getBoolean(str, ((Boolean) obj).booleanValue()));
            }
            if (c == 1) {
                return Long.valueOf(sharedPreferences.getLong(str, ((Long) obj).longValue()));
            }
            if (c == 2) {
                return Float.valueOf(sharedPreferences.getFloat(str, ((Float) obj).floatValue()));
            }
            if (c == 3) {
                return sharedPreferences.getString(str, (String) obj);
            }
            if (c == 4) {
                return Integer.valueOf(sharedPreferences.getInt(str, ((Integer) obj).intValue()));
            }
            Gson gson = new Gson();
            String string = sharedPreferences.getString(str, str2);
            if (string.equals(str2) || string.length() <= 0) {
                return obj;
            }
            return gson.fromJson(string, obj.getClass());
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static <T> boolean putListData(SharedPreferences sharedPreferences, String str, LinkedList<T> linkedList) {
        Editor edit = sharedPreferences.edit();
        JsonArray jsonArray = new JsonArray();
        boolean z = false;
        if (linkedList.size() <= 0) {
            edit.putString(str, jsonArray.toString());
            edit.apply();
            return false;
        }
        String simpleName = linkedList.get(0).getClass().getSimpleName();
        char c = 65535;
        try {
            switch (simpleName.hashCode()) {
                case -1808118735:
                    if (simpleName.equals("String")) {
                        c = 3;
                        break;
                    }
                    break;
                case -672261858:
                    if (simpleName.equals("Integer")) {
                        c = 4;
                        break;
                    }
                    break;
                case 2374300:
                    if (simpleName.equals("Long")) {
                        c = 1;
                        break;
                    }
                    break;
                case 67973692:
                    if (simpleName.equals("Float")) {
                        c = 2;
                        break;
                    }
                    break;
                case 1729365000:
                    if (simpleName.equals("Boolean")) {
                        c = 0;
                        break;
                    }
                    break;
            }
            if (c == 0) {
                for (int i = 0; i < linkedList.size(); i++) {
                    jsonArray.add((Boolean) linkedList.get(i));
                }
            } else if (c == 1) {
                for (int i2 = 0; i2 < linkedList.size(); i2++) {
                    jsonArray.add((Number) (Long) linkedList.get(i2));
                }
            } else if (c == 2) {
                for (int i3 = 0; i3 < linkedList.size(); i3++) {
                    jsonArray.add((Number) (Float) linkedList.get(i3));
                }
            } else if (c == 3) {
                for (int i4 = 0; i4 < linkedList.size(); i4++) {
                    jsonArray.add((String) linkedList.get(i4));
                }
            } else if (c != 4) {
                Gson gson = new Gson();
                for (int i5 = 0; i5 < linkedList.size(); i5++) {
                    jsonArray.add(gson.toJsonTree(linkedList.get(i5)));
                }
            } else {
                for (int i6 = 0; i6 < linkedList.size(); i6++) {
                    jsonArray.add((Number) (Integer) linkedList.get(i6));
                }
            }
            edit.putString(str, jsonArray.toString());
            z = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        edit.apply();
        return z;
    }

    public static <T> LinkedList<T> getListData(SharedPreferences sharedPreferences, String str, Class<T> cls) {
        LinkedList<T> linkedList = new LinkedList<>();
        String str2 = "";
        String string = sharedPreferences.getString(str, str2);
        if (!string.equals(str2) && string.length() > 0) {
            Gson gson = new Gson();
            Iterator it = new JsonParser().parse(string).getAsJsonArray().iterator();
            while (it.hasNext()) {
                linkedList.add(gson.fromJson((JsonElement) it.next(), cls));
            }
        }
        return linkedList;
    }
}
