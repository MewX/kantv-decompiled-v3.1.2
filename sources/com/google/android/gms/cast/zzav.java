package com.google.android.gms.cast;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.cast.zzcn;
import org.json.JSONObject;

final class zzav extends zzb {
    private final /* synthetic */ RemoteMediaPlayer zzfd;
    private final /* synthetic */ GoogleApiClient zzfe;
    private final /* synthetic */ long zzfj;
    private final /* synthetic */ JSONObject zzfk;
    private final /* synthetic */ int zzfm;
    private final /* synthetic */ MediaQueueItem zzfn;

    zzav(RemoteMediaPlayer remoteMediaPlayer, GoogleApiClient googleApiClient, GoogleApiClient googleApiClient2, MediaQueueItem mediaQueueItem, int i, long j, JSONObject jSONObject) {
        this.zzfd = remoteMediaPlayer;
        this.zzfe = googleApiClient2;
        this.zzfn = mediaQueueItem;
        this.zzfm = i;
        this.zzfj = j;
        this.zzfk = jSONObject;
        super(googleApiClient);
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Can't wrap try/catch for region: R(4:10|11|12|13) */
    /* JADX WARNING: Code restructure failed: missing block: B:11:?, code lost:
        setResult((com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) createFailedResult(new com.google.android.gms.common.api.Status(2100)));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0055, code lost:
        r11.zzfd.zzey.zza(null);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x005e, code lost:
        throw r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0038, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:10:0x003a */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zza(com.google.android.gms.internal.cast.zzcn r12) {
        /*
            r11 = this;
            com.google.android.gms.cast.RemoteMediaPlayer r12 = r11.zzfd
            java.lang.Object r12 = r12.lock
            monitor-enter(r12)
            com.google.android.gms.cast.RemoteMediaPlayer r0 = r11.zzfd     // Catch:{ all -> 0x005f }
            com.google.android.gms.cast.RemoteMediaPlayer$zza r0 = r0.zzey     // Catch:{ all -> 0x005f }
            com.google.android.gms.common.api.GoogleApiClient r1 = r11.zzfe     // Catch:{ all -> 0x005f }
            r0.zza(r1)     // Catch:{ all -> 0x005f }
            r0 = 0
            com.google.android.gms.cast.RemoteMediaPlayer r1 = r11.zzfd     // Catch:{ zzdk | IllegalStateException -> 0x003a }
            com.google.android.gms.internal.cast.zzdh r2 = r1.zzex     // Catch:{ zzdk | IllegalStateException -> 0x003a }
            com.google.android.gms.internal.cast.zzdm r3 = r11.zzgd     // Catch:{ zzdk | IllegalStateException -> 0x003a }
            r1 = 1
            com.google.android.gms.cast.MediaQueueItem[] r4 = new com.google.android.gms.cast.MediaQueueItem[r1]     // Catch:{ zzdk | IllegalStateException -> 0x003a }
            r1 = 0
            com.google.android.gms.cast.MediaQueueItem r5 = r11.zzfn     // Catch:{ zzdk | IllegalStateException -> 0x003a }
            r4[r1] = r5     // Catch:{ zzdk | IllegalStateException -> 0x003a }
            int r5 = r11.zzfm     // Catch:{ zzdk | IllegalStateException -> 0x003a }
            r6 = 0
            r7 = 0
            long r8 = r11.zzfj     // Catch:{ zzdk | IllegalStateException -> 0x003a }
            org.json.JSONObject r10 = r11.zzfk     // Catch:{ zzdk | IllegalStateException -> 0x003a }
            r2.zza(r3, r4, r5, r6, r7, r8, r10)     // Catch:{ zzdk | IllegalStateException -> 0x003a }
            com.google.android.gms.cast.RemoteMediaPlayer r1 = r11.zzfd     // Catch:{ all -> 0x005f }
            com.google.android.gms.cast.RemoteMediaPlayer$zza r1 = r1.zzey     // Catch:{ all -> 0x005f }
            r1.zza(r0)     // Catch:{ all -> 0x005f }
            goto L_0x0053
        L_0x0038:
            r1 = move-exception
            goto L_0x0055
        L_0x003a:
            com.google.android.gms.common.api.Status r1 = new com.google.android.gms.common.api.Status     // Catch:{ all -> 0x0038 }
            r2 = 2100(0x834, float:2.943E-42)
            r1.<init>(r2)     // Catch:{ all -> 0x0038 }
            com.google.android.gms.common.api.Result r1 = r11.createFailedResult(r1)     // Catch:{ all -> 0x0038 }
            com.google.android.gms.cast.RemoteMediaPlayer$MediaChannelResult r1 = (com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) r1     // Catch:{ all -> 0x0038 }
            r11.setResult(r1)     // Catch:{ all -> 0x0038 }
            com.google.android.gms.cast.RemoteMediaPlayer r1 = r11.zzfd     // Catch:{ all -> 0x005f }
            com.google.android.gms.cast.RemoteMediaPlayer$zza r1 = r1.zzey     // Catch:{ all -> 0x005f }
            r1.zza(r0)     // Catch:{ all -> 0x005f }
        L_0x0053:
            monitor-exit(r12)     // Catch:{ all -> 0x005f }
            return
        L_0x0055:
            com.google.android.gms.cast.RemoteMediaPlayer r2 = r11.zzfd     // Catch:{ all -> 0x005f }
            com.google.android.gms.cast.RemoteMediaPlayer$zza r2 = r2.zzey     // Catch:{ all -> 0x005f }
            r2.zza(r0)     // Catch:{ all -> 0x005f }
            throw r1     // Catch:{ all -> 0x005f }
        L_0x005f:
            r0 = move-exception
            monitor-exit(r12)     // Catch:{ all -> 0x005f }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.zzav.zza(com.google.android.gms.internal.cast.zzcn):void");
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ void doExecute(AnyClient anyClient) throws RemoteException {
        doExecute((zzcn) anyClient);
    }
}
