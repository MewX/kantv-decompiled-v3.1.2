package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.games.GameManagerClient;
import com.google.android.gms.common.api.Status;
import java.util.Locale;

final class zzbv implements zzdm {
    private final /* synthetic */ zzbl zzui;
    private final /* synthetic */ zzbu zzum;

    zzbv(zzbu zzbu, zzbl zzbl) {
        this.zzum = zzbu;
        this.zzui = zzbl;
    }

    public final void zzb(long j) {
        this.zzum.setResult(zzbu.zzc(new Status(2103)));
    }

    public final void zza(long j, int i, Object obj) {
        String str = "1.0.0";
        if (obj == null) {
            try {
                this.zzum.setResult(new zzbw(new Status(i, null, null), this.zzum.zzul));
            } catch (ClassCastException unused) {
                this.zzum.setResult(zzbu.zzc(new Status(13)));
            }
        } else {
            zzbz zzbz = (zzbz) obj;
            zzby zzby = zzbz.zzve;
            if (zzby == null || zzcu.zza(str, zzby.getVersion())) {
                this.zzum.setResult(new zzbw(new Status(i, zzbz.zzuu, null), this.zzum.zzul));
                return;
            }
            this.zzum.zzud.zztt = null;
            this.zzum.setResult(zzbu.zzc(new Status(GameManagerClient.STATUS_INCORRECT_VERSION, String.format(Locale.ROOT, "Incorrect Game Manager SDK version. Receiver: %s Sender: %s", new Object[]{zzby.getVersion(), str}))));
        }
    }
}
