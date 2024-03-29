package com.google.android.gms.tagmanager;

import android.os.Build.VERSION;
import com.google.android.gms.internal.gtm.zza;
import com.google.android.gms.internal.gtm.zzl;
import java.util.Map;

final class zzfk extends zzbq {
    private static final String ID = zza.SDK_VERSION.toString();

    public zzfk() {
        super(ID, new String[0]);
    }

    public final boolean zzgw() {
        return true;
    }

    public final zzl zzb(Map<String, zzl> map) {
        return zzgj.zzi(Integer.valueOf(VERSION.SDK_INT));
    }
}
