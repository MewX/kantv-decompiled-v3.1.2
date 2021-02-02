package com.google.android.gms.cast;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.Display;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.internal.cast.zzdz;
import com.google.android.gms.internal.cast.zzec;
import com.google.android.gms.internal.cast.zzee;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zzq extends TaskApiCall<zzdz, Display> {
    private final /* synthetic */ String zzaf;
    private final /* synthetic */ int zzbg;
    private final /* synthetic */ PendingIntent zzbh;
    private final /* synthetic */ CastDevice zzbi;
    final /* synthetic */ CastRemoteDisplayClient zzbj;

    zzq(CastRemoteDisplayClient castRemoteDisplayClient, int i, PendingIntent pendingIntent, CastDevice castDevice, String str) {
        this.zzbj = castRemoteDisplayClient;
        this.zzbg = i;
        this.zzbh = pendingIntent;
        this.zzbi = castDevice;
        this.zzaf = str;
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ void doExecute(AnyClient anyClient, TaskCompletionSource taskCompletionSource) throws RemoteException {
        zzdz zzdz = (zzdz) anyClient;
        Bundle bundle = new Bundle();
        bundle.putInt("configuration", this.zzbg);
        ((zzee) zzdz.getService()).zza((zzec) new zzr(this, taskCompletionSource, zzdz), this.zzbh, this.zzbi.getDeviceId(), this.zzaf, bundle);
    }
}
