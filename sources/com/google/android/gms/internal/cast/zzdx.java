package com.google.android.gms.internal.cast;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

public final class zzdx extends zzdu {
    private final /* synthetic */ zzdv zzyt;

    protected zzdx(zzdv zzdv) {
        this.zzyt = zzdv;
    }

    public final void onDisconnected() throws RemoteException {
        zzdq.zzbe.d("onDisconnected", new Object[0]);
        this.zzyt.zzyq.zzb();
        this.zzyt.setResult(new zzdy(Status.RESULT_SUCCESS));
    }

    public final void onError(int i) throws RemoteException {
        zzdq.zzbe.d("onError: %d", Integer.valueOf(i));
        this.zzyt.zzyq.zzb();
        this.zzyt.setResult(new zzdy(Status.RESULT_INTERNAL_ERROR));
    }
}
