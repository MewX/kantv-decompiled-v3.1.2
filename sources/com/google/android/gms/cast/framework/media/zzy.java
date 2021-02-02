package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.common.api.GoogleApiClient;
import org.json.JSONObject;

final class zzy extends zzc {
    private final /* synthetic */ long zzfj;
    private final /* synthetic */ JSONObject zzfk;
    private final /* synthetic */ int zzfm;
    private final /* synthetic */ MediaQueueItem zzfn;
    private final /* synthetic */ RemoteMediaClient zzoq;

    zzy(RemoteMediaClient remoteMediaClient, GoogleApiClient googleApiClient, MediaQueueItem mediaQueueItem, int i, long j, JSONObject jSONObject) {
        this.zzoq = remoteMediaClient;
        this.zzfn = mediaQueueItem;
        this.zzfm = i;
        this.zzfj = j;
        this.zzfk = jSONObject;
        super(remoteMediaClient, googleApiClient);
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x0025 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zzb(com.google.android.gms.internal.cast.zzcn r11) {
        /*
            r10 = this;
            com.google.android.gms.cast.framework.media.RemoteMediaClient r11 = r10.zzoq
            java.lang.Object r11 = r11.lock
            monitor-enter(r11)
            com.google.android.gms.cast.framework.media.RemoteMediaClient r0 = r10.zzoq     // Catch:{ zzdk | IllegalStateException -> 0x0025 }
            com.google.android.gms.internal.cast.zzdh r1 = r0.zzex     // Catch:{ zzdk | IllegalStateException -> 0x0025 }
            com.google.android.gms.internal.cast.zzdm r2 = r10.zzgd     // Catch:{ zzdk | IllegalStateException -> 0x0025 }
            r0 = 1
            com.google.android.gms.cast.MediaQueueItem[] r3 = new com.google.android.gms.cast.MediaQueueItem[r0]     // Catch:{ zzdk | IllegalStateException -> 0x0025 }
            r0 = 0
            com.google.android.gms.cast.MediaQueueItem r4 = r10.zzfn     // Catch:{ zzdk | IllegalStateException -> 0x0025 }
            r3[r0] = r4     // Catch:{ zzdk | IllegalStateException -> 0x0025 }
            int r4 = r10.zzfm     // Catch:{ zzdk | IllegalStateException -> 0x0025 }
            r5 = 0
            r6 = 0
            long r7 = r10.zzfj     // Catch:{ zzdk | IllegalStateException -> 0x0025 }
            org.json.JSONObject r9 = r10.zzfk     // Catch:{ zzdk | IllegalStateException -> 0x0025 }
            r1.zza(r2, r3, r4, r5, r6, r7, r9)     // Catch:{ zzdk | IllegalStateException -> 0x0025 }
            goto L_0x0035
        L_0x0023:
            r0 = move-exception
            goto L_0x0037
        L_0x0025:
            com.google.android.gms.common.api.Status r0 = new com.google.android.gms.common.api.Status     // Catch:{ all -> 0x0023 }
            r1 = 2100(0x834, float:2.943E-42)
            r0.<init>(r1)     // Catch:{ all -> 0x0023 }
            com.google.android.gms.common.api.Result r0 = r10.createFailedResult(r0)     // Catch:{ all -> 0x0023 }
            com.google.android.gms.cast.framework.media.RemoteMediaClient$MediaChannelResult r0 = (com.google.android.gms.cast.framework.media.RemoteMediaClient.MediaChannelResult) r0     // Catch:{ all -> 0x0023 }
            r10.setResult(r0)     // Catch:{ all -> 0x0023 }
        L_0x0035:
            monitor-exit(r11)     // Catch:{ all -> 0x0023 }
            return
        L_0x0037:
            monitor-exit(r11)     // Catch:{ all -> 0x0023 }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.media.zzy.zzb(com.google.android.gms.internal.cast.zzcn):void");
    }
}
