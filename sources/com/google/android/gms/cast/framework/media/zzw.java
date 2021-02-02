package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.common.api.GoogleApiClient;
import org.json.JSONObject;

final class zzw extends zzc {
    private final /* synthetic */ int val$repeatMode;
    private final /* synthetic */ MediaQueueItem[] zzfh;
    private final /* synthetic */ int zzfi;
    private final /* synthetic */ long zzfj;
    private final /* synthetic */ JSONObject zzfk;
    private final /* synthetic */ RemoteMediaClient zzoq;

    zzw(RemoteMediaClient remoteMediaClient, GoogleApiClient googleApiClient, MediaQueueItem[] mediaQueueItemArr, int i, int i2, long j, JSONObject jSONObject) {
        this.zzoq = remoteMediaClient;
        this.zzfh = mediaQueueItemArr;
        this.zzfi = i;
        this.val$repeatMode = i2;
        this.zzfj = j;
        this.zzfk = jSONObject;
        super(remoteMediaClient, googleApiClient);
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001f */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zzb(com.google.android.gms.internal.cast.zzcn r10) {
        /*
            r9 = this;
            com.google.android.gms.cast.framework.media.RemoteMediaClient r10 = r9.zzoq
            java.lang.Object r10 = r10.lock
            monitor-enter(r10)
            com.google.android.gms.cast.framework.media.RemoteMediaClient r0 = r9.zzoq     // Catch:{ IllegalStateException -> 0x001f }
            com.google.android.gms.internal.cast.zzdh r1 = r0.zzex     // Catch:{ IllegalStateException -> 0x001f }
            com.google.android.gms.internal.cast.zzdm r2 = r9.zzgd     // Catch:{ IllegalStateException -> 0x001f }
            com.google.android.gms.cast.MediaQueueItem[] r3 = r9.zzfh     // Catch:{ IllegalStateException -> 0x001f }
            int r4 = r9.zzfi     // Catch:{ IllegalStateException -> 0x001f }
            int r5 = r9.val$repeatMode     // Catch:{ IllegalStateException -> 0x001f }
            long r6 = r9.zzfj     // Catch:{ IllegalStateException -> 0x001f }
            org.json.JSONObject r8 = r9.zzfk     // Catch:{ IllegalStateException -> 0x001f }
            r1.zza(r2, r3, r4, r5, r6, r8)     // Catch:{ IllegalStateException -> 0x001f }
            goto L_0x002f
        L_0x001d:
            r0 = move-exception
            goto L_0x0031
        L_0x001f:
            com.google.android.gms.common.api.Status r0 = new com.google.android.gms.common.api.Status     // Catch:{ all -> 0x001d }
            r1 = 2100(0x834, float:2.943E-42)
            r0.<init>(r1)     // Catch:{ all -> 0x001d }
            com.google.android.gms.common.api.Result r0 = r9.createFailedResult(r0)     // Catch:{ all -> 0x001d }
            com.google.android.gms.cast.framework.media.RemoteMediaClient$MediaChannelResult r0 = (com.google.android.gms.cast.framework.media.RemoteMediaClient.MediaChannelResult) r0     // Catch:{ all -> 0x001d }
            r9.setResult(r0)     // Catch:{ all -> 0x001d }
        L_0x002f:
            monitor-exit(r10)     // Catch:{ all -> 0x001d }
            return
        L_0x0031:
            monitor-exit(r10)     // Catch:{ all -> 0x001d }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.media.zzw.zzb(com.google.android.gms.internal.cast.zzcn):void");
    }
}
