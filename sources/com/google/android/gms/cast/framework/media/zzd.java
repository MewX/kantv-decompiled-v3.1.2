package com.google.android.gms.cast.framework.media;

import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.cast.zzb;
import com.google.android.gms.internal.cast.zzc;
import java.util.List;

public interface zzd extends IInterface {

    public static abstract class zza extends zzb implements zzd {
        public zza() {
            super("com.google.android.gms.cast.framework.media.INotificationActionsProvider");
        }

        /* access modifiers changed from: protected */
        public final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                int zzm = zzm();
                parcel2.writeNoException();
                parcel2.writeInt(zzm);
            } else if (i == 2) {
                IObjectWrapper zzax = zzax();
                parcel2.writeNoException();
                zzc.zza(parcel2, (IInterface) zzax);
            } else if (i == 3) {
                List notificationActions = getNotificationActions();
                parcel2.writeNoException();
                parcel2.writeTypedList(notificationActions);
            } else if (i != 4) {
                return false;
            } else {
                int[] compactViewActionIndices = getCompactViewActionIndices();
                parcel2.writeNoException();
                parcel2.writeIntArray(compactViewActionIndices);
            }
            return true;
        }
    }

    int[] getCompactViewActionIndices() throws RemoteException;

    List<NotificationAction> getNotificationActions() throws RemoteException;

    IObjectWrapper zzax() throws RemoteException;

    int zzm() throws RemoteException;
}
