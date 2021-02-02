package com.google.android.gms.cast;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import com.google.android.gms.cast.CastRemoteDisplayLocalService.Callbacks;
import com.google.android.gms.cast.CastRemoteDisplayLocalService.NotificationSettings;
import com.google.android.gms.cast.CastRemoteDisplayLocalService.Options;
import com.google.android.gms.common.api.Status;

final class zzw implements ServiceConnection {
    private final /* synthetic */ String zzaf;
    private final /* synthetic */ CastDevice zzci;
    private final /* synthetic */ Options zzcj;
    private final /* synthetic */ NotificationSettings zzck;
    private final /* synthetic */ Context zzcl;
    private final /* synthetic */ Callbacks zzcm;

    zzw(String str, CastDevice castDevice, Options options, NotificationSettings notificationSettings, Context context, Callbacks callbacks) {
        this.zzaf = str;
        this.zzci = castDevice;
        this.zzcj = options;
        this.zzck = notificationSettings;
        this.zzcl = context;
        this.zzcm = callbacks;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:3:0x0017, code lost:
        if (r0.zza(r8.zzaf, r8.zzci, r8.zzcj, r8.zzck, r8.zzcl, r8, r8.zzcm) == false) goto L_0x0019;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void onServiceConnected(android.content.ComponentName r9, android.os.IBinder r10) {
        /*
            r8 = this;
            com.google.android.gms.cast.CastRemoteDisplayLocalService$zza r10 = (com.google.android.gms.cast.CastRemoteDisplayLocalService.zza) r10
            com.google.android.gms.cast.CastRemoteDisplayLocalService r0 = com.google.android.gms.cast.CastRemoteDisplayLocalService.this
            if (r0 == 0) goto L_0x0019
            java.lang.String r1 = r8.zzaf
            com.google.android.gms.cast.CastDevice r2 = r8.zzci
            com.google.android.gms.cast.CastRemoteDisplayLocalService$Options r3 = r8.zzcj
            com.google.android.gms.cast.CastRemoteDisplayLocalService$NotificationSettings r4 = r8.zzck
            android.content.Context r5 = r8.zzcl
            com.google.android.gms.cast.CastRemoteDisplayLocalService$Callbacks r7 = r8.zzcm
            r6 = r8
            boolean r9 = r0.zza(r1, r2, r3, r4, r5, r6, r7)
            if (r9 != 0) goto L_0x0049
        L_0x0019:
            com.google.android.gms.internal.cast.zzdg r9 = com.google.android.gms.cast.CastRemoteDisplayLocalService.zzbe
            r10 = 0
            java.lang.Object[] r0 = new java.lang.Object[r10]
            java.lang.String r1 = "Connected but unable to get the service instance"
            r9.e(r1, r0)
            com.google.android.gms.cast.CastRemoteDisplayLocalService$Callbacks r9 = r8.zzcm
            com.google.android.gms.common.api.Status r0 = new com.google.android.gms.common.api.Status
            r1 = 2200(0x898, float:3.083E-42)
            r0.<init>(r1)
            r9.onRemoteDisplaySessionError(r0)
            java.util.concurrent.atomic.AtomicBoolean r9 = com.google.android.gms.cast.CastRemoteDisplayLocalService.zzbq
            r9.set(r10)
            android.content.Context r9 = r8.zzcl     // Catch:{ IllegalArgumentException -> 0x003e }
            r9.unbindService(r8)     // Catch:{ IllegalArgumentException -> 0x003e }
            return
        L_0x003e:
            com.google.android.gms.internal.cast.zzdg r9 = com.google.android.gms.cast.CastRemoteDisplayLocalService.zzbe
            java.lang.Object[] r10 = new java.lang.Object[r10]
            java.lang.String r0 = "No need to unbind service, already unbound"
            r9.d(r0, r10)
        L_0x0049:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.zzw.onServiceConnected(android.content.ComponentName, android.os.IBinder):void");
    }

    public final void onServiceDisconnected(ComponentName componentName) {
        CastRemoteDisplayLocalService.zzbe.d("onServiceDisconnected", new Object[0]);
        this.zzcm.onRemoteDisplaySessionError(new Status(CastStatusCodes.ERROR_SERVICE_DISCONNECTED, "Service Disconnected"));
        CastRemoteDisplayLocalService.zzbq.set(false);
        try {
            this.zzcl.unbindService(this);
        } catch (IllegalArgumentException unused) {
            CastRemoteDisplayLocalService.zzbe.d("No need to unbind service, already unbound", new Object[0]);
        }
    }
}
