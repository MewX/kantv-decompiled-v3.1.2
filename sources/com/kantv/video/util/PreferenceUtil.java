package com.kantv.video.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.kantv.flt_tencent_im.utils.TUIKitConstants.Group;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;

public class PreferenceUtil {
    public static final String FILE_NAME = "KanTV_data";

    private static class SharedPreferencesCompat {
        private static final Method sApplyMethod = findApplyMethod();

        private SharedPreferencesCompat() {
        }

        private static Method findApplyMethod() {
            try {
                return Editor.class.getMethod(Group.MEMBER_APPLY, new Class[0]);
            } catch (NoSuchMethodException unused) {
                return null;
            }
        }

        public static void apply(Editor editor) {
            try {
                if (sApplyMethod != null) {
                    sApplyMethod.invoke(editor, new Object[0]);
                    return;
                }
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused) {
            }
            editor.commit();
        }
    }

    public static void put(Context context, String str, Object obj) {
        Editor edit = context.getSharedPreferences("KanTV_data", 0).edit();
        if (obj instanceof String) {
            edit.putString(str, (String) obj);
        } else if (obj instanceof Integer) {
            edit.putInt(str, ((Integer) obj).intValue());
        } else if (obj instanceof Boolean) {
            edit.putBoolean(str, ((Boolean) obj).booleanValue());
        } else if (obj instanceof Float) {
            edit.putFloat(str, ((Float) obj).floatValue());
        } else if (obj instanceof Long) {
            edit.putLong(str, ((Long) obj).longValue());
        } else {
            edit.putString(str, obj.toString());
        }
        SharedPreferencesCompat.apply(edit);
    }

    public static Object get(Context context, String str, Object obj) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("KanTV_data", 0);
        if (obj instanceof String) {
            return sharedPreferences.getString(str, (String) obj);
        }
        if (obj instanceof Integer) {
            return Integer.valueOf(sharedPreferences.getInt(str, ((Integer) obj).intValue()));
        }
        if (obj instanceof Boolean) {
            return Boolean.valueOf(sharedPreferences.getBoolean(str, ((Boolean) obj).booleanValue()));
        }
        if (obj instanceof Float) {
            return Float.valueOf(sharedPreferences.getFloat(str, ((Float) obj).floatValue()));
        }
        if (obj instanceof Long) {
            return Long.valueOf(sharedPreferences.getLong(str, ((Long) obj).longValue()));
        }
        return null;
    }

    public static void remove(Context context, String str) {
        Editor edit = context.getSharedPreferences("KanTV_data", 0).edit();
        edit.remove(str);
        SharedPreferencesCompat.apply(edit);
    }

    public static void clear(Context context) {
        Editor edit = context.getSharedPreferences("KanTV_data", 0).edit();
        edit.clear();
        SharedPreferencesCompat.apply(edit);
    }

    public static boolean contains(Context context, String str) {
        return context.getSharedPreferences("KanTV_data", 0).contains(str);
    }

    public static Map<String, ?> getAll(Context context) {
        return context.getSharedPreferences("KanTV_data", 0).getAll();
    }
}
