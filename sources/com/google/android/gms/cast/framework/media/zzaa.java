package com.google.android.gms.cast.framework.media;

import com.google.android.gms.common.api.GoogleApiClient;
import org.json.JSONObject;

final class zzaa extends zzc {
    private final /* synthetic */ JSONObject zzfk;
    private final /* synthetic */ int[] zzfp;
    private final /* synthetic */ RemoteMediaClient zzoq;

    zzaa(RemoteMediaClient remoteMediaClient, GoogleApiClient googleApiClient, int[] iArr, JSONObject jSONObject) {
        this.zzoq = remoteMediaClient;
        this.zzfp = iArr;
        this.zzfk = jSONObject;
        super(remoteMediaClient, googleApiClient);
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x0019 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zzb(com.google.android.gms.internal.cast.zzcn r5) {
        /*
            r4 = this;
            com.google.android.gms.cast.framework.media.RemoteMediaClient r5 = r4.zzoq
            java.lang.Object r5 = r5.lock
            monitor-enter(r5)
            com.google.android.gms.cast.framework.media.RemoteMediaClient r0 = r4.zzoq     // Catch:{ zzdk | IllegalStateException -> 0x0019 }
            com.google.android.gms.internal.cast.zzdh r0 = r0.zzex     // Catch:{ zzdk | IllegalStateException -> 0x0019 }
            com.google.android.gms.internal.cast.zzdm r1 = r4.zzgd     // Catch:{ zzdk | IllegalStateException -> 0x0019 }
            int[] r2 = r4.zzfp     // Catch:{ zzdk | IllegalStateException -> 0x0019 }
            org.json.JSONObject r3 = r4.zzfk     // Catch:{ zzdk | IllegalStateException -> 0x0019 }
            r0.zza(r1, r2, r3)     // Catch:{ zzdk | IllegalStateException -> 0x0019 }
            goto L_0x0029
        L_0x0017:
            r0 = move-exception
            goto L_0x002b
        L_0x0019:
            com.google.android.gms.common.api.Status r0 = new com.google.android.gms.common.api.Status     // Catch:{ all -> 0x0017 }
            r1 = 2100(0x834, float:2.943E-42)
            r0.<init>(r1)     // Catch:{ all -> 0x0017 }
            com.google.android.gms.common.api.Result r0 = r4.createFailedResult(r0)     // Catch:{ all -> 0x0017 }
            com.google.android.gms.cast.framework.media.RemoteMediaClient$MediaChannelResult r0 = (com.google.android.gms.cast.framework.media.RemoteMediaClient.MediaChannelResult) r0     // Catch:{ all -> 0x0017 }
            r4.setResult(r0)     // Catch:{ all -> 0x0017 }
        L_0x0029:
            monitor-exit(r5)     // Catch:{ all -> 0x0017 }
            return
        L_0x002b:
            monitor-exit(r5)     // Catch:{ all -> 0x0017 }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.media.zzaa.zzb(com.google.android.gms.internal.cast.zzcn):void");
    }
}
