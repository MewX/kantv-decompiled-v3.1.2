package com.google.android.gms.internal.cast;

import android.os.RemoteException;
import com.google.android.gms.cast.CastRemoteDisplay.CastRemoteDisplaySessionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl;
import com.google.android.gms.common.util.VisibleForTesting;

@VisibleForTesting
class zzdv extends ApiMethodImpl<CastRemoteDisplaySessionResult, zzea> {
    final /* synthetic */ zzdq zzyq;

    public zzdv(zzdq zzdq, GoogleApiClient googleApiClient) {
        this.zzyq = zzdq;
        super(zzdq.zzyo, googleApiClient);
    }

    @VisibleForTesting
    /* renamed from: zza */
    public void doExecute(zzea zzea) throws RemoteException {
    }

    /* access modifiers changed from: protected */
    public /* synthetic */ Result createFailedResult(Status status) {
        return new zzdy(status);
    }
}
