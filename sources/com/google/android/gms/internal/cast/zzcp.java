package com.google.android.gms.internal.cast;

import android.os.Handler;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.concurrent.atomic.AtomicReference;

@VisibleForTesting
final class zzcp extends zzdc {
    private final Handler handler;
    private final AtomicReference<zzcn> zzwq;

    public zzcp(zzcn zzcn) {
        this.zzwq = new AtomicReference<>(zzcn);
        this.handler = new Handler(zzcn.getLooper());
    }

    public final zzcn zzdj() {
        zzcn zzcn = (zzcn) this.zzwq.getAndSet(null);
        if (zzcn == null) {
            return null;
        }
        zzcn.zzdf();
        return zzcn;
    }

    public final boolean isDisposed() {
        return this.zzwq.get() == null;
    }

    public final void zzn(int i) {
        zzcn zzdj = zzdj();
        if (zzdj != null) {
            zzcn.zzbe.d("ICastDeviceControllerListener.onDisconnected: %d", Integer.valueOf(i));
            if (i != 0) {
                zzdj.triggerConnectionSuspended(2);
            }
        }
    }

    public final void zza(ApplicationMetadata applicationMetadata, String str, String str2, boolean z) {
        zzcn zzcn = (zzcn) this.zzwq.get();
        if (zzcn != null) {
            zzcn.zzvs = applicationMetadata;
            zzcn.zzwe = applicationMetadata.getApplicationId();
            zzcn.zzwf = str2;
            zzcn.zzvw = str;
            synchronized (zzcn.zzwk) {
                if (zzcn.zzwi != null) {
                    ResultHolder zzd = zzcn.zzwi;
                    zzco zzco = new zzco(new Status(0), applicationMetadata, str, str2, z);
                    zzd.setResult(zzco);
                    zzcn.zzwi = null;
                }
            }
        }
    }

    public final void zzf(int i) {
        zzcn zzcn = (zzcn) this.zzwq.get();
        if (zzcn != null) {
            zzcn.zzl(i);
        }
    }

    public final void zzo(int i) {
        zzcn zzcn = (zzcn) this.zzwq.get();
        if (zzcn != null) {
            zzcn.zzm(i);
        }
    }

    public final void zzp(int i) {
        zzcn zzcn = (zzcn) this.zzwq.get();
        if (zzcn != null) {
            zzcn.zzm(i);
        }
    }

    public final void onApplicationDisconnected(int i) {
        zzcn zzcn = (zzcn) this.zzwq.get();
        if (zzcn != null) {
            zzcn.zzwe = null;
            zzcn.zzwf = null;
            zzcn.zzm(i);
            if (zzcn.zzaj != null) {
                this.handler.post(new zzcq(this, zzcn, i));
            }
        }
    }

    public final void zza(String str, double d, boolean z) {
        zzcn.zzbe.d("Deprecated callback: \"onStatusreceived\"", new Object[0]);
    }

    public final void zzb(zzcv zzcv) {
        zzcn zzcn = (zzcn) this.zzwq.get();
        if (zzcn != null) {
            zzcn.zzbe.d("onDeviceStatusChanged", new Object[0]);
            this.handler.post(new zzcr(this, zzcn, zzcv));
        }
    }

    public final void zzb(zzcd zzcd) {
        zzcn zzcn = (zzcn) this.zzwq.get();
        if (zzcn != null) {
            zzcn.zzbe.d("onApplicationStatusChanged", new Object[0]);
            this.handler.post(new zzcs(this, zzcn, zzcd));
        }
    }

    public final void zzb(String str, String str2) {
        zzcn zzcn = (zzcn) this.zzwq.get();
        if (zzcn != null) {
            zzcn.zzbe.d("Receive (type=text, ns=%s) %s", str, str2);
            this.handler.post(new zzct(this, zzcn, str, str2));
        }
    }

    public final void zza(String str, byte[] bArr) {
        if (((zzcn) this.zzwq.get()) != null) {
            zzcn.zzbe.d("IGNORING: Receive (type=binary, ns=%s) <%d bytes>", str, Integer.valueOf(bArr.length));
        }
    }

    public final void zza(String str, long j, int i) {
        zzcn zzcn = (zzcn) this.zzwq.get();
        if (zzcn != null) {
            zzcn.zzb(j, i);
        }
    }

    public final void zza(String str, long j) {
        zzcn zzcn = (zzcn) this.zzwq.get();
        if (zzcn != null) {
            zzcn.zzb(j, 0);
        }
    }
}
