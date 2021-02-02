package com.google.android.gms.internal.cast;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract class zzk extends zzb implements zzj {
    public zzk() {
        super("com.google.android.gms.cast.framework.internal.IMediaRouter");
    }

    /* access modifiers changed from: protected */
    public final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzl zzl;
        switch (i) {
            case 1:
                Bundle bundle = (Bundle) zzc.zza(parcel, Bundle.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzl = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.cast.framework.internal.IMediaRouterCallback");
                    if (queryLocalInterface instanceof zzl) {
                        zzl = (zzl) queryLocalInterface;
                    } else {
                        zzl = new zzm(readStrongBinder);
                    }
                }
                zza(bundle, zzl);
                parcel2.writeNoException();
                break;
            case 2:
                zza((Bundle) zzc.zza(parcel, Bundle.CREATOR), parcel.readInt());
                parcel2.writeNoException();
                break;
            case 3:
                zzd((Bundle) zzc.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                break;
            case 4:
                boolean zzb = zzb((Bundle) zzc.zza(parcel, Bundle.CREATOR), parcel.readInt());
                parcel2.writeNoException();
                zzc.writeBoolean(parcel2, zzb);
                break;
            case 5:
                zzk(parcel.readString());
                parcel2.writeNoException();
                break;
            case 6:
                zzak();
                parcel2.writeNoException();
                break;
            case 7:
                boolean zzal = zzal();
                parcel2.writeNoException();
                zzc.writeBoolean(parcel2, zzal);
                break;
            case 8:
                Bundle zzl2 = zzl(parcel.readString());
                parcel2.writeNoException();
                zzc.zzb(parcel2, zzl2);
                break;
            case 9:
                String zzam = zzam();
                parcel2.writeNoException();
                parcel2.writeString(zzam);
                break;
            case 10:
                zzm();
                parcel2.writeNoException();
                parcel2.writeInt(12451009);
                break;
            case 11:
                zzan();
                parcel2.writeNoException();
                break;
            default:
                return false;
        }
        return true;
    }
}
