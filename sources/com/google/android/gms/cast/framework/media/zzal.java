package com.google.android.gms.cast.framework.media;

import com.google.android.gms.common.api.GoogleApiClient;

final class zzal extends zzc {
    private final /* synthetic */ int zzfu;
    private final /* synthetic */ RemoteMediaClient zzoq;
    private final /* synthetic */ int zzot;
    private final /* synthetic */ int zzou;

    zzal(RemoteMediaClient remoteMediaClient, GoogleApiClient googleApiClient, boolean z, int i, int i2, int i3) {
        this.zzoq = remoteMediaClient;
        this.zzfu = i;
        this.zzot = i2;
        this.zzou = i3;
        super(googleApiClient, true);
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001b */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zzb(com.google.android.gms.internal.cast.zzcn r6) {
        /*
            r5 = this;
            com.google.android.gms.cast.framework.media.RemoteMediaClient r6 = r5.zzoq
            java.lang.Object r6 = r6.lock
            monitor-enter(r6)
            com.google.android.gms.cast.framework.media.RemoteMediaClient r0 = r5.zzoq     // Catch:{ zzdk | IllegalArgumentException | IllegalStateException -> 0x001b }
            com.google.android.gms.internal.cast.zzdh r0 = r0.zzex     // Catch:{ zzdk | IllegalArgumentException | IllegalStateException -> 0x001b }
            com.google.android.gms.internal.cast.zzdm r1 = r5.zzgd     // Catch:{ zzdk | IllegalArgumentException | IllegalStateException -> 0x001b }
            int r2 = r5.zzfu     // Catch:{ zzdk | IllegalArgumentException | IllegalStateException -> 0x001b }
            int r3 = r5.zzot     // Catch:{ zzdk | IllegalArgumentException | IllegalStateException -> 0x001b }
            int r4 = r5.zzou     // Catch:{ zzdk | IllegalArgumentException | IllegalStateException -> 0x001b }
            r0.zza(r1, r2, r3, r4)     // Catch:{ zzdk | IllegalArgumentException | IllegalStateException -> 0x001b }
            goto L_0x002b
        L_0x0019:
            r0 = move-exception
            goto L_0x002d
        L_0x001b:
            com.google.android.gms.common.api.Status r0 = new com.google.android.gms.common.api.Status     // Catch:{ all -> 0x0019 }
            r1 = 2100(0x834, float:2.943E-42)
            r0.<init>(r1)     // Catch:{ all -> 0x0019 }
            com.google.android.gms.common.api.Result r0 = r5.createFailedResult(r0)     // Catch:{ all -> 0x0019 }
            com.google.android.gms.cast.framework.media.RemoteMediaClient$MediaChannelResult r0 = (com.google.android.gms.cast.framework.media.RemoteMediaClient.MediaChannelResult) r0     // Catch:{ all -> 0x0019 }
            r5.setResult(r0)     // Catch:{ all -> 0x0019 }
        L_0x002b:
            monitor-exit(r6)     // Catch:{ all -> 0x0019 }
            return
        L_0x002d:
            monitor-exit(r6)     // Catch:{ all -> 0x0019 }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.media.zzal.zzb(com.google.android.gms.internal.cast.zzcn):void");
    }
}
