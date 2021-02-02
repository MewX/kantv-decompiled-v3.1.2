package com.google.android.gms.internal.cast;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

final class zzeb extends zzeh {
    private final /* synthetic */ zzeg zzyw;
    private final /* synthetic */ zzea zzyx;

    zzeb(zzea zzea, zzeg zzeg) {
        this.zzyx = zzea;
        this.zzyw = zzeg;
    }

    public final void zzr(int i) throws RemoteException {
        zzea.zzbe.d("onRemoteDisplayEnded", new Object[0]);
        zzeg zzeg = this.zzyw;
        if (zzeg != null) {
            zzeg.zzr(i);
        }
        if (this.zzyx.zzyu != null) {
            this.zzyx.zzyu.onRemoteDisplayEnded(new Status(i));
        }
    }
}
