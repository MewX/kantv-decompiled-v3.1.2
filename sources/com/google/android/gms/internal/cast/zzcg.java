package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.CastStatusCodes;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@VisibleForTesting
public class zzcg extends zzcm {
    private final List<zzdn> zzvn = Collections.synchronizedList(new ArrayList());

    public zzcg(String str, String str2, String str3) {
        super(str, str2, null);
    }

    public void zzdc() {
        synchronized (this.zzvn) {
            for (zzdn zzq : this.zzvn) {
                zzq.zzq(CastStatusCodes.CANCELED);
            }
        }
    }

    /* access modifiers changed from: protected */
    public final List<zzdn> zzdd() {
        return this.zzvn;
    }

    /* access modifiers changed from: protected */
    public final void zza(zzdn zzdn) {
        this.zzvn.add(zzdn);
    }
}
