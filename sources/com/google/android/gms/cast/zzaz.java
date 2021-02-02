package com.google.android.gms.cast;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.cast.zzcn;
import org.json.JSONObject;

final class zzaz extends zzb {
    private final /* synthetic */ RemoteMediaPlayer zzfd;
    private final /* synthetic */ GoogleApiClient zzfe;
    private final /* synthetic */ JSONObject zzfk;

    zzaz(RemoteMediaPlayer remoteMediaPlayer, GoogleApiClient googleApiClient, GoogleApiClient googleApiClient2, JSONObject jSONObject) {
        this.zzfd = remoteMediaPlayer;
        this.zzfe = googleApiClient2;
        this.zzfk = jSONObject;
        super(googleApiClient);
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Can't wrap try/catch for region: R(4:10|11|12|13) */
    /* JADX WARNING: Code restructure failed: missing block: B:11:?, code lost:
        setResult((com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) createFailedResult(new com.google.android.gms.common.api.Status(2100)));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x004d, code lost:
        r11.zzfd.zzey.zza(null);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0056, code lost:
        throw r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0030, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:10:0x0032 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zza(com.google.android.gms.internal.cast.zzcn r12) {
        /*
            r11 = this;
            com.google.android.gms.cast.RemoteMediaPlayer r12 = r11.zzfd
            java.lang.Object r12 = r12.lock
            monitor-enter(r12)
            com.google.android.gms.cast.RemoteMediaPlayer r0 = r11.zzfd     // Catch:{ all -> 0x0057 }
            com.google.android.gms.cast.RemoteMediaPlayer$zza r0 = r0.zzey     // Catch:{ all -> 0x0057 }
            com.google.android.gms.common.api.GoogleApiClient r1 = r11.zzfe     // Catch:{ all -> 0x0057 }
            r0.zza(r1)     // Catch:{ all -> 0x0057 }
            r0 = 0
            com.google.android.gms.cast.RemoteMediaPlayer r1 = r11.zzfd     // Catch:{ zzdk | IllegalStateException -> 0x0032 }
            com.google.android.gms.internal.cast.zzdh r2 = r1.zzex     // Catch:{ zzdk | IllegalStateException -> 0x0032 }
            com.google.android.gms.internal.cast.zzdm r3 = r11.zzgd     // Catch:{ zzdk | IllegalStateException -> 0x0032 }
            r4 = 0
            r5 = -1
            r7 = 0
            r8 = -1
            r9 = 0
            org.json.JSONObject r10 = r11.zzfk     // Catch:{ zzdk | IllegalStateException -> 0x0032 }
            r2.zza(r3, r4, r5, r7, r8, r9, r10)     // Catch:{ zzdk | IllegalStateException -> 0x0032 }
            com.google.android.gms.cast.RemoteMediaPlayer r1 = r11.zzfd     // Catch:{ all -> 0x0057 }
            com.google.android.gms.cast.RemoteMediaPlayer$zza r1 = r1.zzey     // Catch:{ all -> 0x0057 }
            r1.zza(r0)     // Catch:{ all -> 0x0057 }
            goto L_0x004b
        L_0x0030:
            r1 = move-exception
            goto L_0x004d
        L_0x0032:
            com.google.android.gms.common.api.Status r1 = new com.google.android.gms.common.api.Status     // Catch:{ all -> 0x0030 }
            r2 = 2100(0x834, float:2.943E-42)
            r1.<init>(r2)     // Catch:{ all -> 0x0030 }
            com.google.android.gms.common.api.Result r1 = r11.createFailedResult(r1)     // Catch:{ all -> 0x0030 }
            com.google.android.gms.cast.RemoteMediaPlayer$MediaChannelResult r1 = (com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) r1     // Catch:{ all -> 0x0030 }
            r11.setResult(r1)     // Catch:{ all -> 0x0030 }
            com.google.android.gms.cast.RemoteMediaPlayer r1 = r11.zzfd     // Catch:{ all -> 0x0057 }
            com.google.android.gms.cast.RemoteMediaPlayer$zza r1 = r1.zzey     // Catch:{ all -> 0x0057 }
            r1.zza(r0)     // Catch:{ all -> 0x0057 }
        L_0x004b:
            monitor-exit(r12)     // Catch:{ all -> 0x0057 }
            return
        L_0x004d:
            com.google.android.gms.cast.RemoteMediaPlayer r2 = r11.zzfd     // Catch:{ all -> 0x0057 }
            com.google.android.gms.cast.RemoteMediaPlayer$zza r2 = r2.zzey     // Catch:{ all -> 0x0057 }
            r2.zza(r0)     // Catch:{ all -> 0x0057 }
            throw r1     // Catch:{ all -> 0x0057 }
        L_0x0057:
            r0 = move-exception
            monitor-exit(r12)     // Catch:{ all -> 0x0057 }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.zzaz.zza(com.google.android.gms.internal.cast.zzcn):void");
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ void doExecute(AnyClient anyClient) throws RemoteException {
        doExecute((zzcn) anyClient);
    }
}
