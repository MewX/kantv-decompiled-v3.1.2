package com.google.android.gms.cast.framework;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.internal.cast.zzdg;
import com.google.android.gms.internal.cast.zze;

public class ReconnectionService extends Service {
    private static final zzdg zzbe = new zzdg("ReconnectionService");
    private zzr zzih;

    public void onCreate() {
        CastContext sharedInstance = CastContext.getSharedInstance(this);
        this.zzih = zze.zza(this, sharedInstance.getSessionManager().zzu(), sharedInstance.zzr().zzu());
        try {
            this.zzih.onCreate();
        } catch (RemoteException e) {
            zzbe.zza(e, "Unable to call %s on %s.", "onCreate", zzr.class.getSimpleName());
        }
        super.onCreate();
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        try {
            return this.zzih.onStartCommand(intent, i, i2);
        } catch (RemoteException e) {
            zzbe.zza(e, "Unable to call %s on %s.", "onStartCommand", zzr.class.getSimpleName());
            return 1;
        }
    }

    public IBinder onBind(Intent intent) {
        try {
            return this.zzih.onBind(intent);
        } catch (RemoteException e) {
            zzbe.zza(e, "Unable to call %s on %s.", "onBind", zzr.class.getSimpleName());
            return null;
        }
    }

    public void onDestroy() {
        try {
            this.zzih.onDestroy();
        } catch (RemoteException e) {
            zzbe.zza(e, "Unable to call %s on %s.", "onDestroy", zzr.class.getSimpleName());
        }
        super.onDestroy();
    }
}
