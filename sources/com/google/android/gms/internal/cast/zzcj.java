package com.google.android.gms.internal.cast;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.List;

final class zzcj extends TaskApiCall<zzcl, Void> {
    private final /* synthetic */ List zzow;
    private final /* synthetic */ String[] zzvo;
    private final /* synthetic */ String zzvp;

    zzcj(zzch zzch, String[] strArr, String str, List list) {
        this.zzvo = strArr;
        this.zzvp = str;
        this.zzow = list;
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ void doExecute(AnyClient anyClient, TaskCompletionSource taskCompletionSource) throws RemoteException {
        zzcl zzcl = (zzcl) anyClient;
        ((zzdd) zzcl.getService()).zza(new zzck(this, taskCompletionSource), this.zzvo, this.zzvp, this.zzow);
    }
}
