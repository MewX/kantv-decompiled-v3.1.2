package com.google.android.gms.cast;

import android.view.Display;
import com.google.android.gms.tasks.OnCompleteListener;

final class zzz implements OnCompleteListener<Display> {
    private final /* synthetic */ CastRemoteDisplayLocalService zzch;

    zzz(CastRemoteDisplayLocalService castRemoteDisplayLocalService) {
        this.zzch = castRemoteDisplayLocalService;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0041, code lost:
        r5 = (android.view.Display) r5.getResult();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0047, code lost:
        if (r5 == null) goto L_0x004f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0049, code lost:
        r4.zzch.zza(r5);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x004f, code lost:
        com.google.android.gms.cast.CastRemoteDisplayLocalService.zzbe.e("Cast Remote Display session created without display", new java.lang.Object[0]);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x005a, code lost:
        com.google.android.gms.cast.CastRemoteDisplayLocalService.zzbq.set(false);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0067, code lost:
        if (r4.zzch.zzbz == null) goto L_0x0097;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x006f, code lost:
        if (r4.zzch.zzca == null) goto L_0x0097;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:?, code lost:
        r4.zzch.zzbz.unbindService(r4.zzch.zzca);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0081, code lost:
        com.google.android.gms.cast.CastRemoteDisplayLocalService.zzbe.d("No need to unbind service, already unbound", new java.lang.Object[0]);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void onComplete(@androidx.annotation.NonNull com.google.android.gms.tasks.Task<android.view.Display> r5) {
        /*
            r4 = this;
            boolean r0 = r5.isSuccessful()
            r1 = 0
            if (r0 != 0) goto L_0x0018
            com.google.android.gms.internal.cast.zzdg r5 = com.google.android.gms.cast.CastRemoteDisplayLocalService.zzbe
            java.lang.Object[] r0 = new java.lang.Object[r1]
            java.lang.String r1 = "Connection was not successful"
            r5.e(r1, r0)
            com.google.android.gms.cast.CastRemoteDisplayLocalService r5 = r4.zzch
            r5.zzd()
            return
        L_0x0018:
            com.google.android.gms.internal.cast.zzdg r0 = com.google.android.gms.cast.CastRemoteDisplayLocalService.zzbe
            java.lang.Object[] r2 = new java.lang.Object[r1]
            java.lang.String r3 = "startRemoteDisplay successful"
            r0.d(r3, r2)
            java.lang.Object r0 = com.google.android.gms.cast.CastRemoteDisplayLocalService.zzbp
            monitor-enter(r0)
            com.google.android.gms.cast.CastRemoteDisplayLocalService r2 = com.google.android.gms.cast.CastRemoteDisplayLocalService.zzcf     // Catch:{ all -> 0x0098 }
            if (r2 != 0) goto L_0x0040
            com.google.android.gms.internal.cast.zzdg r5 = com.google.android.gms.cast.CastRemoteDisplayLocalService.zzbe     // Catch:{ all -> 0x0098 }
            java.lang.String r2 = "Remote Display started but session already cancelled"
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch:{ all -> 0x0098 }
            r5.d(r2, r1)     // Catch:{ all -> 0x0098 }
            com.google.android.gms.cast.CastRemoteDisplayLocalService r5 = r4.zzch     // Catch:{ all -> 0x0098 }
            r5.zzd()     // Catch:{ all -> 0x0098 }
            monitor-exit(r0)     // Catch:{ all -> 0x0098 }
            return
        L_0x0040:
            monitor-exit(r0)     // Catch:{ all -> 0x0098 }
            java.lang.Object r5 = r5.getResult()
            android.view.Display r5 = (android.view.Display) r5
            if (r5 == 0) goto L_0x004f
            com.google.android.gms.cast.CastRemoteDisplayLocalService r0 = r4.zzch
            r0.zza(r5)
            goto L_0x005a
        L_0x004f:
            com.google.android.gms.internal.cast.zzdg r5 = com.google.android.gms.cast.CastRemoteDisplayLocalService.zzbe
            java.lang.Object[] r0 = new java.lang.Object[r1]
            java.lang.String r2 = "Cast Remote Display session created without display"
            r5.e(r2, r0)
        L_0x005a:
            java.util.concurrent.atomic.AtomicBoolean r5 = com.google.android.gms.cast.CastRemoteDisplayLocalService.zzbq
            r5.set(r1)
            com.google.android.gms.cast.CastRemoteDisplayLocalService r5 = r4.zzch
            android.content.Context r5 = r5.zzbz
            if (r5 == 0) goto L_0x0097
            com.google.android.gms.cast.CastRemoteDisplayLocalService r5 = r4.zzch
            android.content.ServiceConnection r5 = r5.zzca
            if (r5 == 0) goto L_0x0097
            com.google.android.gms.cast.CastRemoteDisplayLocalService r5 = r4.zzch     // Catch:{ IllegalArgumentException -> 0x0081 }
            android.content.Context r5 = r5.zzbz     // Catch:{ IllegalArgumentException -> 0x0081 }
            com.google.android.gms.cast.CastRemoteDisplayLocalService r0 = r4.zzch     // Catch:{ IllegalArgumentException -> 0x0081 }
            android.content.ServiceConnection r0 = r0.zzca     // Catch:{ IllegalArgumentException -> 0x0081 }
            r5.unbindService(r0)     // Catch:{ IllegalArgumentException -> 0x0081 }
            goto L_0x008c
        L_0x0081:
            com.google.android.gms.internal.cast.zzdg r5 = com.google.android.gms.cast.CastRemoteDisplayLocalService.zzbe
            java.lang.Object[] r0 = new java.lang.Object[r1]
            java.lang.String r1 = "No need to unbind service, already unbound"
            r5.d(r1, r0)
        L_0x008c:
            com.google.android.gms.cast.CastRemoteDisplayLocalService r5 = r4.zzch
            r0 = 0
            r5.zzca = null
            com.google.android.gms.cast.CastRemoteDisplayLocalService r5 = r4.zzch
            r5.zzbz = null
        L_0x0097:
            return
        L_0x0098:
            r5 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x0098 }
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.zzz.onComplete(com.google.android.gms.tasks.Task):void");
    }
}
