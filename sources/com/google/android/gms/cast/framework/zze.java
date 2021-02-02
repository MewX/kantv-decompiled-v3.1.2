package com.google.android.gms.cast.framework;

import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.cast.zzdg;

public final class zze {
    private static final zzdg zzbe = new zzdg("DiscoveryManager");
    private final zzp zzhx;

    zze(zzp zzp) {
        this.zzhx = zzp;
    }

    public final IObjectWrapper zzu() {
        try {
            return this.zzhx.zzy();
        } catch (RemoteException e) {
            zzbe.zza(e, "Unable to call %s on %s.", "getWrappedThis", zzp.class.getSimpleName());
            return null;
        }
    }
}
