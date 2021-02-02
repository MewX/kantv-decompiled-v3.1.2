package com.google.android.gms.internal.cast;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IBinder.DeathRecipient;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.CastRemoteDisplay.CastRemoteDisplaySessionCallbacks;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;

@Deprecated
public final class zzea extends GmsClient<zzee> implements DeathRecipient {
    /* access modifiers changed from: private */
    public static final zzdg zzbe = new zzdg("CastRemoteDisplayClientImpl");
    private CastDevice zzai;
    /* access modifiers changed from: private */
    public CastRemoteDisplaySessionCallbacks zzyu;
    private Bundle zzyv;

    public zzea(Context context, Looper looper, ClientSettings clientSettings, CastDevice castDevice, Bundle bundle, CastRemoteDisplaySessionCallbacks castRemoteDisplaySessionCallbacks, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 83, clientSettings, connectionCallbacks, onConnectionFailedListener);
        zzbe.d("instance created", new Object[0]);
        this.zzyu = castRemoteDisplaySessionCallbacks;
        this.zzai = castDevice;
        this.zzyv = bundle;
    }

    public final void binderDied() {
    }

    public final int getMinApkVersion() {
        return GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    }

    /* access modifiers changed from: protected */
    public final String getServiceDescriptor() {
        return "com.google.android.gms.cast.remote_display.ICastRemoteDisplayService";
    }

    /* access modifiers changed from: protected */
    public final String getStartServiceAction() {
        return "com.google.android.gms.cast.remote_display.service.START";
    }

    public final void disconnect() {
        zzbe.d("disconnect", new Object[0]);
        this.zzyu = null;
        this.zzai = null;
        try {
            ((zzee) getService()).disconnect();
        } catch (RemoteException | IllegalStateException unused) {
        } finally {
            super.disconnect();
        }
    }

    public final void zza(zzec zzec, zzeg zzeg, String str) throws RemoteException {
        zzbe.d("startRemoteDisplay", new Object[0]);
        zzec zzec2 = zzec;
        ((zzee) getService()).zza(zzec2, (zzeg) new zzeb(this, zzeg), this.zzai.getDeviceId(), str, this.zzyv);
    }

    public final void zza(zzec zzec) throws RemoteException {
        zzbe.d("stopRemoteDisplay", new Object[0]);
        ((zzee) getService()).zza(zzec);
    }

    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.remote_display.ICastRemoteDisplayService");
        if (queryLocalInterface instanceof zzee) {
            return (zzee) queryLocalInterface;
        }
        return new zzef(iBinder);
    }
}
