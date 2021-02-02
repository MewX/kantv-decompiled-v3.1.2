package com.google.android.gms.internal.cast;

import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Locale;

public final class zzdg {
    private static boolean zzxf = false;
    private final String mTag;
    private final boolean zzxg;
    private boolean zzxh;
    private boolean zzxi;
    private String zzxj;

    private zzdg(String str, boolean z) {
        Preconditions.checkNotEmpty(str, "The log tag cannot be null or empty.");
        this.mTag = str;
        this.zzxg = str.length() <= 23;
        this.zzxh = false;
        this.zzxi = false;
    }

    public zzdg(String str) {
        this(str, false);
    }

    public final void zzt(String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            str2 = null;
        } else {
            str2 = String.format("[%s] ", new Object[]{str});
        }
        this.zzxj = str2;
    }

    private final boolean zzdn() {
        return this.zzxh || (this.zzxg && Log.isLoggable(this.mTag, 3));
    }

    public final void zzk(boolean z) {
        this.zzxh = true;
    }

    public final void d(String str, Object... objArr) {
        if (zzdn()) {
            Log.d(this.mTag, zza(str, objArr));
        }
    }

    public final void zza(Throwable th, String str, Object... objArr) {
        if (zzdn()) {
            Log.d(this.mTag, zza(str, objArr), th);
        }
    }

    public final void i(String str, Object... objArr) {
        Log.i(this.mTag, zza(str, objArr));
    }

    public final void w(String str, Object... objArr) {
        Log.w(this.mTag, zza(str, objArr));
    }

    public final void zzb(Throwable th, String str, Object... objArr) {
        Log.w(this.mTag, zza(str, objArr), th);
    }

    public final void e(String str, Object... objArr) {
        Log.e(this.mTag, zza(str, objArr));
    }

    public final void zzc(Throwable th, String str, Object... objArr) {
        Log.e(this.mTag, zza(str, objArr), th);
    }

    private final String zza(String str, Object... objArr) {
        if (objArr.length != 0) {
            str = String.format(Locale.ROOT, str, objArr);
        }
        if (TextUtils.isEmpty(this.zzxj)) {
            return str;
        }
        String valueOf = String.valueOf(this.zzxj);
        String valueOf2 = String.valueOf(str);
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }
}
