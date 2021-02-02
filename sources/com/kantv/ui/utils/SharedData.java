package com.kantv.ui.utils;

import android.content.Context;
import android.content.SharedPreferences;

public class SharedData {
    private SharedPreferences pref;

    public SharedData(Context context, String str) {
        this.pref = context.getSharedPreferences(str, 4);
    }

    public String get(String str) {
        return this.pref.getString(str, "");
    }

    public int getInt(String str) {
        return this.pref.getInt(str, 0);
    }

    public boolean getBoolean(String str) {
        return this.pref.getBoolean(str, false);
    }

    public void put(String str, String str2) {
        this.pref.edit().putString(str, str2).commit();
    }

    public void putInt(String str, int i) {
        this.pref.edit().putInt(str, i).commit();
    }

    public void clear() {
        this.pref.edit().clear().commit();
    }

    public void putBoolean(String str, boolean z) {
        this.pref.edit().putBoolean(str, z).commit();
    }
}
