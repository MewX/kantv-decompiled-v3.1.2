package com.google.android.gms.tagmanager;

import android.os.Build;
import com.google.android.gms.internal.gtm.zza;
import com.google.android.gms.internal.gtm.zzl;
import java.util.Map;

final class zzbd extends zzbq {
    private static final String ID = zza.DEVICE_NAME.toString();

    public zzbd() {
        super(ID, new String[0]);
    }

    public final boolean zzgw() {
        return true;
    }

    public final zzl zzb(Map<String, zzl> map) {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        if (!str2.startsWith(str) && !str.equals("unknown")) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length());
            sb.append(str);
            sb.append(" ");
            sb.append(str2);
            str2 = sb.toString();
        }
        return zzgj.zzi(str2);
    }
}
