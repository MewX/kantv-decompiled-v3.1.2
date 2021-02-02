package com.google.android.gms.cast;

import android.text.TextUtils;
import com.google.android.gms.internal.cast.zzcu;
import java.util.Collection;
import java.util.Locale;

public final class CastMediaControlIntent {
    public static final String ACTION_SYNC_STATUS = "com.google.android.gms.cast.ACTION_SYNC_STATUS";
    public static final String DEFAULT_MEDIA_RECEIVER_APPLICATION_ID = "CC1AD845";
    public static final int ERROR_CODE_REQUEST_FAILED = 1;
    public static final int ERROR_CODE_SESSION_START_FAILED = 2;
    public static final int ERROR_CODE_TEMPORARILY_DISCONNECTED = 3;
    public static final String EXTRA_CAST_APPLICATION_ID = "com.google.android.gms.cast.EXTRA_CAST_APPLICATION_ID";
    public static final String EXTRA_CAST_LANGUAGE_CODE = "com.google.android.gms.cast.EXTRA_CAST_LANGUAGE_CODE";
    public static final String EXTRA_CAST_RELAUNCH_APPLICATION = "com.google.android.gms.cast.EXTRA_CAST_RELAUNCH_APPLICATION";
    public static final String EXTRA_CAST_STOP_APPLICATION_WHEN_SESSION_ENDS = "com.google.android.gms.cast.EXTRA_CAST_STOP_APPLICATION_WHEN_SESSION_ENDS";
    public static final String EXTRA_CUSTOM_DATA = "com.google.android.gms.cast.EXTRA_CUSTOM_DATA";
    public static final String EXTRA_DEBUG_LOGGING_ENABLED = "com.google.android.gms.cast.EXTRA_DEBUG_LOGGING_ENABLED";
    public static final String EXTRA_ERROR_CODE = "com.google.android.gms.cast.EXTRA_ERROR_CODE";

    public static String categoryForRemotePlayback(String str) throws IllegalArgumentException {
        if (!TextUtils.isEmpty(str)) {
            return zza("com.google.android.gms.cast.CATEGORY_CAST_REMOTE_PLAYBACK", str, null, false, true);
        }
        throw new IllegalArgumentException("applicationId cannot be null or empty");
    }

    public static String categoryForRemotePlayback() {
        return zza("com.google.android.gms.cast.CATEGORY_CAST_REMOTE_PLAYBACK", null, null, false, true);
    }

    public static String categoryForCast(String str) throws IllegalArgumentException {
        if (str != null) {
            return zza("com.google.android.gms.cast.CATEGORY_CAST", str, null, false, true);
        }
        throw new IllegalArgumentException("applicationId cannot be null");
    }

    public static String categoryForCast(Collection<String> collection) throws IllegalArgumentException {
        if (collection != null) {
            return zza("com.google.android.gms.cast.CATEGORY_CAST", null, collection, false, true);
        }
        throw new IllegalArgumentException("namespaces cannot be null");
    }

    public static String categoryForCast(String str, Collection<String> collection) {
        if (str == null) {
            throw new IllegalArgumentException("applicationId cannot be null");
        } else if (collection != null) {
            return zza("com.google.android.gms.cast.CATEGORY_CAST", str, collection, false, true);
        } else {
            throw new IllegalArgumentException("namespaces cannot be null");
        }
    }

    private static String zza(String str, String str2, Collection<String> collection, boolean z, boolean z2) throws IllegalArgumentException {
        StringBuilder sb = new StringBuilder(str);
        String str3 = "/";
        if (str2 != null) {
            String upperCase = str2.toUpperCase();
            if (!upperCase.matches("[A-F0-9]+")) {
                String str4 = "Invalid application ID: ";
                String valueOf = String.valueOf(str2);
                throw new IllegalArgumentException(valueOf.length() != 0 ? str4.concat(valueOf) : new String(str4));
            }
            sb.append(str3);
            sb.append(upperCase);
        }
        if (collection != null) {
            if (!collection.isEmpty()) {
                if (str2 == null) {
                    sb.append(str3);
                }
                sb.append(str3);
                boolean z3 = true;
                for (String str5 : collection) {
                    zzcu.zzo(str5);
                    if (z3) {
                        z3 = false;
                    } else {
                        sb.append(",");
                    }
                    sb.append(zzcu.zzq(str5));
                }
            } else {
                throw new IllegalArgumentException("Must specify at least one namespace");
            }
        }
        if (str2 == null && collection == null) {
            sb.append(str3);
        }
        if (collection == null) {
            sb.append(str3);
        }
        sb.append(str3);
        sb.append(str3);
        sb.append("ALLOW_IPV6");
        return sb.toString();
    }

    public static String languageTagForLocale(Locale locale) {
        return zzcu.zza(locale);
    }

    private CastMediaControlIntent() {
    }
}
