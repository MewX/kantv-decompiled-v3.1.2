package com.google.android.gms.cast;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.cast.zzcn;
import org.json.JSONObject;

final class zzbg extends zzb {
    private final /* synthetic */ RemoteMediaPlayer zzfd;
    private final /* synthetic */ GoogleApiClient zzfe;
    private final /* synthetic */ JSONObject zzfk;

    zzbg(RemoteMediaPlayer remoteMediaPlayer, GoogleApiClient googleApiClient, GoogleApiClient googleApiClient2, JSONObject jSONObject) {
        this.zzfd = remoteMediaPlayer;
        this.zzfe = googleApiClient2;
        this.zzfk = jSONObject;
        super(googleApiClient);
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:11:?, code lost:
        setResult((com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) createFailedResult(new com.google.android.gms.common.api.Status(2100)));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0047, code lost:
        r4.zzfd.zzey.zza(null);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0050, code lost:
        throw r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x002a, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:10:0x002c */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zza(com.google.android.gms.internal.cast.zzcn r5) {
        /*
            r4 = this;
            com.google.android.gms.cast.RemoteMediaPlayer r5 = r4.zzfd
            java.lang.Object r5 = r5.lock
            monitor-enter(r5)
            com.google.android.gms.cast.RemoteMediaPlayer r0 = r4.zzfd     // Catch:{ all -> 0x0051 }
            com.google.android.gms.cast.RemoteMediaPlayer$zza r0 = r0.zzey     // Catch:{ all -> 0x0051 }
            com.google.android.gms.common.api.GoogleApiClient r1 = r4.zzfe     // Catch:{ all -> 0x0051 }
            r0.zza(r1)     // Catch:{ all -> 0x0051 }
            r0 = 0
            com.google.android.gms.cast.RemoteMediaPlayer r1 = r4.zzfd     // Catch:{ zzdk | IllegalStateException -> 0x002c }
            com.google.android.gms.internal.cast.zzdh r1 = r1.zzex     // Catch:{ zzdk | IllegalStateException -> 0x002c }
            com.google.android.gms.internal.cast.zzdm r2 = r4.zzgd     // Catch:{ zzdk | IllegalStateException -> 0x002c }
            org.json.JSONObject r3 = r4.zzfk     // Catch:{ zzdk | IllegalStateException -> 0x002c }
            r1.zza(r2, r3)     // Catch:{ zzdk | IllegalStateException -> 0x002c }
            com.google.android.gms.cast.RemoteMediaPlayer r1 = r4.zzfd     // Catch:{ all -> 0x0051 }
            com.google.android.gms.cast.RemoteMediaPlayer$zza r1 = r1.zzey     // Catch:{ all -> 0x0051 }
            r1.zza(r0)     // Catch:{ all -> 0x0051 }
            goto L_0x0045
        L_0x002a:
            r1 = move-exception
            goto L_0x0047
        L_0x002c:
            com.google.android.gms.common.api.Status r1 = new com.google.android.gms.common.api.Status     // Catch:{ all -> 0x002a }
            r2 = 2100(0x834, float:2.943E-42)
            r1.<init>(r2)     // Catch:{ all -> 0x002a }
            com.google.android.gms.common.api.Result r1 = r4.createFailedResult(r1)     // Catch:{ all -> 0x002a }
            com.google.android.gms.cast.RemoteMediaPlayer$MediaChannelResult r1 = (com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) r1     // Catch:{ all -> 0x002a }
            r4.setResult(r1)     // Catch:{ all -> 0x002a }
            com.google.android.gms.cast.RemoteMediaPlayer r1 = r4.zzfd     // Catch:{ all -> 0x0051 }
            com.google.android.gms.cast.RemoteMediaPlayer$zza r1 = r1.zzey     // Catch:{ all -> 0x0051 }
            r1.zza(r0)     // Catch:{ all -> 0x0051 }
        L_0x0045:
            monitor-exit(r5)     // Catch:{ all -> 0x0051 }
            return
        L_0x0047:
            com.google.android.gms.cast.RemoteMediaPlayer r2 = r4.zzfd     // Catch:{ all -> 0x0051 }
            com.google.android.gms.cast.RemoteMediaPlayer$zza r2 = r2.zzey     // Catch:{ all -> 0x0051 }
            r2.zza(r0)     // Catch:{ all -> 0x0051 }
            throw r1     // Catch:{ all -> 0x0051 }
        L_0x0051:
            r0 = move-exception
            monitor-exit(r5)     // Catch:{ all -> 0x0051 }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.zzbg.zza(com.google.android.gms.internal.cast.zzcn):void");
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ void doExecute(AnyClient anyClient) throws RemoteException {
        doExecute((zzcn) anyClient);
    }
}
