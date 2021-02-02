package com.google.android.gms.cast.framework;

import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.IObjectWrapper.Stub;
import com.google.android.gms.internal.cast.zzb;
import com.google.android.gms.internal.cast.zzc;

public abstract class zzy extends zzb implements zzx {
    public zzy() {
        super("com.google.android.gms.cast.framework.ISessionManagerListener");
    }

    /* access modifiers changed from: protected */
    public final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                IObjectWrapper zzn = zzn();
                parcel2.writeNoException();
                zzc.zza(parcel2, (IInterface) zzn);
                break;
            case 2:
                zza(Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                break;
            case 3:
                zza(Stub.asInterface(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                break;
            case 4:
                zza(Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                break;
            case 5:
                zzb(Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                break;
            case 6:
                zzb(Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                break;
            case 7:
                zzb(Stub.asInterface(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                break;
            case 8:
                zza(Stub.asInterface(parcel.readStrongBinder()), zzc.zza(parcel));
                parcel2.writeNoException();
                break;
            case 9:
                zzc(Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                break;
            case 10:
                zzd(Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                break;
            case 11:
                zzm();
                parcel2.writeNoException();
                parcel2.writeInt(12451009);
                break;
            default:
                return false;
        }
        return true;
    }
}
