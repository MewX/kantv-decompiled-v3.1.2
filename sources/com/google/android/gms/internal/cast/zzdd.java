package com.google.android.gms.internal.cast;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.cast.zzbq;
import com.google.android.gms.common.api.internal.IStatusCallback;
import java.util.List;

public interface zzdd extends IInterface {
    void zza(IStatusCallback iStatusCallback, String[] strArr, String str, List<zzbq> list) throws RemoteException;
}
