package com.google.android.gms.internal.cast;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.api.GoogleApiClient;

final class zzds extends zzdv {
    private final /* synthetic */ zzdq zzyq;
    private final /* synthetic */ String zzyr;

    zzds(zzdq zzdq, GoogleApiClient googleApiClient, String str) {
        this.zzyq = zzdq;
        this.zzyr = str;
        super(zzdq, googleApiClient);
    }

    public final void zza(zzea zzea) throws RemoteException {
        zzea.zza(new zzdw(this, zzea), this.zzyq.zzyp, this.zzyr);
    }

    public final /* synthetic */ void doExecute(AnyClient anyClient) throws RemoteException {
        doExecute((zzea) anyClient);
    }
}
