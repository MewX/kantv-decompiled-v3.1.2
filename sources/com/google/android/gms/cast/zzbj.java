package com.google.android.gms.cast;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.cast.zzcn;
import org.json.JSONObject;

final class zzbj extends zzb {
    private final /* synthetic */ long val$position;
    private final /* synthetic */ RemoteMediaPlayer zzfd;
    private final /* synthetic */ GoogleApiClient zzfe;
    private final /* synthetic */ JSONObject zzfk;
    private final /* synthetic */ int zzfw;

    zzbj(RemoteMediaPlayer remoteMediaPlayer, GoogleApiClient googleApiClient, GoogleApiClient googleApiClient2, long j, int i, JSONObject jSONObject) {
        this.zzfd = remoteMediaPlayer;
        this.zzfe = googleApiClient2;
        this.val$position = j;
        this.zzfw = i;
        this.zzfk = jSONObject;
        super(googleApiClient);
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:11:?, code lost:
        setResult((com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) createFailedResult(new com.google.android.gms.common.api.Status(2100)));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x004b, code lost:
        r8.zzfd.zzey.zza(null);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0054, code lost:
        throw r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x002e, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:10:0x0030 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zza(com.google.android.gms.internal.cast.zzcn r9) {
        /*
            r8 = this;
            com.google.android.gms.cast.RemoteMediaPlayer r9 = r8.zzfd
            java.lang.Object r9 = 
            // error: 0x0002: INVOKE  (r9 I:java.lang.Object) = (r9 I:com.google.android.gms.cast.RemoteMediaPlayer) com.google.android.gms.cast.RemoteMediaPlayer.zze(com.google.android.gms.cast.RemoteMediaPlayer):java.lang.Object type: STATIC
            monitor-enter(r9)
            com.google.android.gms.cast.RemoteMediaPlayer r0 = r8.zzfd     // Catch:{ all -> 0x0055 }
            com.google.android.gms.cast.RemoteMediaPlayer$zza r0 = r0.zzey     // Catch:{ all -> 0x0055 }
            com.google.android.gms.common.api.GoogleApiClient r1 = r8.zzfe     // Catch:{ all -> 0x0055 }
            r0.zza(r1)     // Catch:{ all -> 0x0055 }
            r0 = 0
            com.google.android.gms.cast.RemoteMediaPlayer r1 = r8.zzfd     // Catch:{ zzdk | IllegalStateException -> 0x0030 }
            com.google.android.gms.internal.cast.zzdh r2 = r1.zzex     // Catch:{ zzdk | IllegalStateException -> 0x0030 }
            com.google.android.gms.internal.cast.zzdm r3 = r8.zzgd     // Catch:{ zzdk | IllegalStateException -> 0x0030 }
            long r4 = r8.val$position     // Catch:{ zzdk | IllegalStateException -> 0x0030 }
            int r6 = r8.zzfw     // Catch:{ zzdk | IllegalStateException -> 0x0030 }
            org.json.JSONObject r7 = r8.zzfk     // Catch:{ zzdk | IllegalStateException -> 0x0030 }
            r2.zza(r3, r4, r6, r7)     // Catch:{ zzdk | IllegalStateException -> 0x0030 }
            com.google.android.gms.cast.RemoteMediaPlayer r1 = r8.zzfd     // Catch:{ all -> 0x0055 }
            com.google.android.gms.cast.RemoteMediaPlayer$zza r1 = r1.zzey     // Catch:{ all -> 0x0055 }
            r1.zza(r0)     // Catch:{ all -> 0x0055 }
            goto L_0x0049
        L_0x002e:
            r1 = move-exception
            goto L_0x004b
        L_0x0030:
            com.google.android.gms.common.api.Status r1 = new com.google.android.gms.common.api.Status     // Catch:{ all -> 0x002e }
            r2 = 2100(0x834, float:2.943E-42)
            r1.<init>(r2)     // Catch:{ all -> 0x002e }
            com.google.android.gms.common.api.Result r1 = r8.createFailedResult(r1)     // Catch:{ all -> 0x002e }
            com.google.android.gms.cast.RemoteMediaPlayer$MediaChannelResult r1 = (com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) r1     // Catch:{ all -> 0x002e }
            r8.setResult(r1)     // Catch:{ all -> 0x002e }
            com.google.android.gms.cast.RemoteMediaPlayer r1 = r8.zzfd     // Catch:{ all -> 0x0055 }
            com.google.android.gms.cast.RemoteMediaPlayer$zza r1 = r1.zzey     // Catch:{ all -> 0x0055 }
            r1.zza(r0)     // Catch:{ all -> 0x0055 }
        L_0x0049:
            monitor-exit(r9)     // Catch:{ all -> 0x0055 }
            return
        L_0x004b:
            com.google.android.gms.cast.RemoteMediaPlayer r2 = r8.zzfd     // Catch:{ all -> 0x0055 }
            com.google.android.gms.cast.RemoteMediaPlayer$zza r2 = r2.zzey     // Catch:{ all -> 0x0055 }
            r2.zza(r0)     // Catch:{ all -> 0x0055 }
            throw r1     // Catch:{ all -> 0x0055 }
        L_0x0055:
            r0 = move-exception
            monitor-exit(r9)     // Catch:{ all -> 0x0055 }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.zzbj.zza(com.google.android.gms.internal.cast.zzcn):void");
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ void doExecute(AnyClient anyClient) throws RemoteException {
        doExecute((zzcn) anyClient);
    }
}
