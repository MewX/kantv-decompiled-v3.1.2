package com.google.android.gms.cast.framework.media;

import com.google.android.gms.common.api.GoogleApiClient;
import org.json.JSONObject;

final class zzan extends zzc {
    private final /* synthetic */ JSONObject zzfk;
    private final /* synthetic */ RemoteMediaClient zzoq;

    zzan(RemoteMediaClient remoteMediaClient, GoogleApiClient googleApiClient, JSONObject jSONObject) {
        this.zzoq = remoteMediaClient;
        this.zzfk = jSONObject;
        super(remoteMediaClient, googleApiClient);
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x0017 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zzb(com.google.android.gms.internal.cast.zzcn r4) {
        /*
            r3 = this;
            com.google.android.gms.cast.framework.media.RemoteMediaClient r4 = r3.zzoq
            java.lang.Object r4 = r4.lock
            monitor-enter(r4)
            com.google.android.gms.cast.framework.media.RemoteMediaClient r0 = r3.zzoq     // Catch:{ zzdk -> 0x0017 }
            com.google.android.gms.internal.cast.zzdh r0 = r0.zzex     // Catch:{ zzdk -> 0x0017 }
            com.google.android.gms.internal.cast.zzdm r1 = r3.zzgd     // Catch:{ zzdk -> 0x0017 }
            org.json.JSONObject r2 = r3.zzfk     // Catch:{ zzdk -> 0x0017 }
            r0.zza(r1, r2)     // Catch:{ zzdk -> 0x0017 }
            goto L_0x0027
        L_0x0015:
            r0 = move-exception
            goto L_0x0029
        L_0x0017:
            com.google.android.gms.common.api.Status r0 = new com.google.android.gms.common.api.Status     // Catch:{ all -> 0x0015 }
            r1 = 2100(0x834, float:2.943E-42)
            r0.<init>(r1)     // Catch:{ all -> 0x0015 }
            com.google.android.gms.common.api.Result r0 = r3.createFailedResult(r0)     // Catch:{ all -> 0x0015 }
            com.google.android.gms.cast.framework.media.RemoteMediaClient$MediaChannelResult r0 = (com.google.android.gms.cast.framework.media.RemoteMediaClient.MediaChannelResult) r0     // Catch:{ all -> 0x0015 }
            r3.setResult(r0)     // Catch:{ all -> 0x0015 }
        L_0x0027:
            monitor-exit(r4)     // Catch:{ all -> 0x0015 }
            return
        L_0x0029:
            monitor-exit(r4)     // Catch:{ all -> 0x0015 }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.media.zzan.zzb(com.google.android.gms.internal.cast.zzcn):void");
    }
}
