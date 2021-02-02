package com.google.android.gms.cast.framework.media;

import com.google.android.gms.common.api.GoogleApiClient;
import org.json.JSONObject;

final class zzaq extends zzc {
    private final /* synthetic */ long val$position;
    private final /* synthetic */ JSONObject zzfk;
    private final /* synthetic */ int zzfw;
    private final /* synthetic */ RemoteMediaClient zzoq;

    zzaq(RemoteMediaClient remoteMediaClient, GoogleApiClient googleApiClient, long j, int i, JSONObject jSONObject) {
        this.zzoq = remoteMediaClient;
        this.val$position = j;
        this.zzfw = i;
        this.zzfk = jSONObject;
        super(remoteMediaClient, googleApiClient);
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001b */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zzb(com.google.android.gms.internal.cast.zzcn r8) {
        /*
            r7 = this;
            com.google.android.gms.cast.framework.media.RemoteMediaClient r8 = r7.zzoq
            java.lang.Object r8 = r8.lock
            monitor-enter(r8)
            com.google.android.gms.cast.framework.media.RemoteMediaClient r0 = r7.zzoq     // Catch:{ zzdk | IllegalStateException -> 0x001b }
            com.google.android.gms.internal.cast.zzdh r1 = r0.zzex     // Catch:{ zzdk | IllegalStateException -> 0x001b }
            com.google.android.gms.internal.cast.zzdm r2 = r7.zzgd     // Catch:{ zzdk | IllegalStateException -> 0x001b }
            long r3 = r7.val$position     // Catch:{ zzdk | IllegalStateException -> 0x001b }
            int r5 = r7.zzfw     // Catch:{ zzdk | IllegalStateException -> 0x001b }
            org.json.JSONObject r6 = r7.zzfk     // Catch:{ zzdk | IllegalStateException -> 0x001b }
            r1.zza(r2, r3, r5, r6)     // Catch:{ zzdk | IllegalStateException -> 0x001b }
            goto L_0x002b
        L_0x0019:
            r0 = move-exception
            goto L_0x002d
        L_0x001b:
            com.google.android.gms.common.api.Status r0 = new com.google.android.gms.common.api.Status     // Catch:{ all -> 0x0019 }
            r1 = 2100(0x834, float:2.943E-42)
            r0.<init>(r1)     // Catch:{ all -> 0x0019 }
            com.google.android.gms.common.api.Result r0 = r7.createFailedResult(r0)     // Catch:{ all -> 0x0019 }
            com.google.android.gms.cast.framework.media.RemoteMediaClient$MediaChannelResult r0 = (com.google.android.gms.cast.framework.media.RemoteMediaClient.MediaChannelResult) r0     // Catch:{ all -> 0x0019 }
            r7.setResult(r0)     // Catch:{ all -> 0x0019 }
        L_0x002b:
            monitor-exit(r8)     // Catch:{ all -> 0x0019 }
            return
        L_0x002d:
            monitor-exit(r8)     // Catch:{ all -> 0x0019 }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.media.zzaq.zzb(com.google.android.gms.internal.cast.zzcn):void");
    }
}
