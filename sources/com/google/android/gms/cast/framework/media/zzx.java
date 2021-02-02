package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.common.api.GoogleApiClient;
import org.json.JSONObject;

final class zzx extends zzc {
    private final /* synthetic */ JSONObject zzfk;
    private final /* synthetic */ MediaQueueItem[] zzfl;
    private final /* synthetic */ int zzfm;
    private final /* synthetic */ RemoteMediaClient zzoq;

    zzx(RemoteMediaClient remoteMediaClient, GoogleApiClient googleApiClient, MediaQueueItem[] mediaQueueItemArr, int i, JSONObject jSONObject) {
        this.zzoq = remoteMediaClient;
        this.zzfl = mediaQueueItemArr;
        this.zzfm = i;
        this.zzfk = jSONObject;
        super(remoteMediaClient, googleApiClient);
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001f */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zzb(com.google.android.gms.internal.cast.zzcn r11) {
        /*
            r10 = this;
            com.google.android.gms.cast.framework.media.RemoteMediaClient r11 = r10.zzoq
            java.lang.Object r11 = r11.lock
            monitor-enter(r11)
            com.google.android.gms.cast.framework.media.RemoteMediaClient r0 = r10.zzoq     // Catch:{ zzdk | IllegalStateException -> 0x001f }
            com.google.android.gms.internal.cast.zzdh r1 = r0.zzex     // Catch:{ zzdk | IllegalStateException -> 0x001f }
            com.google.android.gms.internal.cast.zzdm r2 = r10.zzgd     // Catch:{ zzdk | IllegalStateException -> 0x001f }
            com.google.android.gms.cast.MediaQueueItem[] r3 = r10.zzfl     // Catch:{ zzdk | IllegalStateException -> 0x001f }
            int r4 = r10.zzfm     // Catch:{ zzdk | IllegalStateException -> 0x001f }
            r5 = 0
            r6 = -1
            r7 = -1
            org.json.JSONObject r9 = r10.zzfk     // Catch:{ zzdk | IllegalStateException -> 0x001f }
            r1.zza(r2, r3, r4, r5, r6, r7, r9)     // Catch:{ zzdk | IllegalStateException -> 0x001f }
            goto L_0x002f
        L_0x001d:
            r0 = move-exception
            goto L_0x0031
        L_0x001f:
            com.google.android.gms.common.api.Status r0 = new com.google.android.gms.common.api.Status     // Catch:{ all -> 0x001d }
            r1 = 2100(0x834, float:2.943E-42)
            r0.<init>(r1)     // Catch:{ all -> 0x001d }
            com.google.android.gms.common.api.Result r0 = r10.createFailedResult(r0)     // Catch:{ all -> 0x001d }
            com.google.android.gms.cast.framework.media.RemoteMediaClient$MediaChannelResult r0 = (com.google.android.gms.cast.framework.media.RemoteMediaClient.MediaChannelResult) r0     // Catch:{ all -> 0x001d }
            r10.setResult(r0)     // Catch:{ all -> 0x001d }
        L_0x002f:
            monitor-exit(r11)     // Catch:{ all -> 0x001d }
            return
        L_0x0031:
            monitor-exit(r11)     // Catch:{ all -> 0x001d }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.media.zzx.zzb(com.google.android.gms.internal.cast.zzcn):void");
    }
}
