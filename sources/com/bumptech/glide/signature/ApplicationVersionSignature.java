package com.bumptech.glide.signature;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import com.bumptech.glide.load.Key;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;

public final class ApplicationVersionSignature {
    private static final ConcurrentHashMap<String, Key> PACKAGE_NAME_TO_KEY = new ConcurrentHashMap<>();

    public static Key obtain(Context context) {
        String packageName = context.getPackageName();
        Key key = (Key) PACKAGE_NAME_TO_KEY.get(packageName);
        if (key != null) {
            return key;
        }
        Key obtainVersionSignature = obtainVersionSignature(context);
        Key key2 = (Key) PACKAGE_NAME_TO_KEY.putIfAbsent(packageName, obtainVersionSignature);
        return key2 == null ? obtainVersionSignature : key2;
    }

    static void reset() {
        PACKAGE_NAME_TO_KEY.clear();
    }

    private static Key obtainVersionSignature(Context context) {
        PackageInfo packageInfo;
        String str;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (NameNotFoundException e) {
            e.printStackTrace();
            packageInfo = null;
        }
        if (packageInfo != null) {
            str = String.valueOf(packageInfo.versionCode);
        } else {
            str = UUID.randomUUID().toString();
        }
        return new StringSignature(str);
    }

    private ApplicationVersionSignature() {
    }
}
