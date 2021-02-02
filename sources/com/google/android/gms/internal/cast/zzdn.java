package com.google.android.gms.internal.cast;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.cast.CastStatusCodes;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Locale;

public final class zzdn {
    private static final zzdg zzbe = new zzdg("RequestTracker");
    private static final Object zzyk = new Object();
    private final Handler handler = new Handler(Looper.getMainLooper());
    @VisibleForTesting
    private Runnable zzpf;
    @VisibleForTesting
    private long zzuo = -1;
    private long zzyi;
    @VisibleForTesting
    private zzdm zzyj;

    public zzdn(long j) {
        this.zzyi = j;
    }

    public final void zza(long j, zzdm zzdm) {
        zzdm zzdm2;
        long j2;
        synchronized (zzyk) {
            zzdm2 = this.zzyj;
            j2 = this.zzuo;
            this.zzuo = j;
            this.zzyj = zzdm;
        }
        if (zzdm2 != null) {
            zzdm2.zzb(j2);
        }
        synchronized (zzyk) {
            if (this.zzpf != null) {
                this.handler.removeCallbacks(this.zzpf);
            }
            this.zzpf = new zzdo(this);
            this.handler.postDelayed(this.zzpf, this.zzyi);
        }
    }

    public final boolean zzdp() {
        boolean z;
        synchronized (zzyk) {
            z = this.zzuo != -1;
        }
        return z;
    }

    public final boolean test(long j) {
        boolean z;
        synchronized (zzyk) {
            z = this.zzuo != -1 && this.zzuo == j;
        }
        return z;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0029, code lost:
        return false;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean zzc(long r8, int r10, java.lang.Object r11) {
        /*
            r7 = this;
            java.lang.Object r0 = zzyk
            monitor-enter(r0)
            long r1 = r7.zzuo     // Catch:{ all -> 0x002a }
            r3 = -1
            r5 = 0
            int r6 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r6 == 0) goto L_0x0028
            long r1 = r7.zzuo     // Catch:{ all -> 0x002a }
            int r3 = (r1 > r8 ? 1 : (r1 == r8 ? 0 : -1))
            if (r3 != 0) goto L_0x0028
            java.util.Locale r1 = java.util.Locale.ROOT     // Catch:{ all -> 0x002a }
            java.lang.String r2 = "request %d completed"
            r3 = 1
            java.lang.Object[] r4 = new java.lang.Object[r3]     // Catch:{ all -> 0x002a }
            java.lang.Long r8 = java.lang.Long.valueOf(r8)     // Catch:{ all -> 0x002a }
            r4[r5] = r8     // Catch:{ all -> 0x002a }
            java.lang.String r8 = java.lang.String.format(r1, r2, r4)     // Catch:{ all -> 0x002a }
            r7.zza(r10, r11, r8)     // Catch:{ all -> 0x002a }
            monitor-exit(r0)     // Catch:{ all -> 0x002a }
            return r3
        L_0x0028:
            monitor-exit(r0)     // Catch:{ all -> 0x002a }
            return r5
        L_0x002a:
            r8 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x002a }
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.cast.zzdn.zzc(long, int, java.lang.Object):boolean");
    }

    public final boolean zzq(int i) {
        return zza((int) CastStatusCodes.CANCELED, (Object) null);
    }

    private final boolean zza(int i, Object obj) {
        synchronized (zzyk) {
            if (this.zzuo == -1) {
                return false;
            }
            zza(i, null, String.format(Locale.ROOT, "clearing request %d", new Object[]{Long.valueOf(this.zzuo)}));
            return true;
        }
    }

    private final void zza(int i, Object obj, String str) {
        zzbe.d(str, new Object[0]);
        synchronized (zzyk) {
            if (this.zzyj != null) {
                this.zzyj.zza(this.zzuo, i, obj);
            }
            this.zzuo = -1;
            this.zzyj = null;
            synchronized (zzyk) {
                if (this.zzpf != null) {
                    this.handler.removeCallbacks(this.zzpf);
                    this.zzpf = null;
                }
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public final /* synthetic */ void zzdq() {
        synchronized (zzyk) {
            if (this.zzuo != -1) {
                zza(15, (Object) null);
            }
        }
    }
}
