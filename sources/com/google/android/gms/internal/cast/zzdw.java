package com.google.android.gms.internal.cast;

import android.annotation.TargetApi;
import android.hardware.display.DisplayManager;
import android.os.RemoteException;
import android.view.Display;
import android.view.Surface;
import com.google.android.gms.common.api.Status;

@TargetApi(19)
public final class zzdw extends zzdu {
    private final zzea zzys;
    private final /* synthetic */ zzdv zzyt;

    public zzdw(zzdv zzdv, zzea zzea) {
        this.zzyt = zzdv;
        this.zzys = zzea;
    }

    public final void zza(int i, int i2, Surface surface) {
        zzdq.zzbe.d("onConnected", new Object[0]);
        DisplayManager displayManager = (DisplayManager) this.zzys.getContext().getSystemService("display");
        if (displayManager == null) {
            zzdq.zzbe.e("Unable to get the display manager", new Object[0]);
            this.zzyt.setResult(new zzdy(Status.RESULT_INTERNAL_ERROR));
            return;
        }
        this.zzyt.zzyq.zzb();
        this.zzyt.zzyq.zzbf = displayManager.createVirtualDisplay("private_display", i, i2, ((i < i2 ? i : i2) * 320) / 1080, surface, 2);
        if (this.zzyt.zzyq.zzbf == null) {
            zzdq.zzbe.e("Unable to create virtual display", new Object[0]);
            this.zzyt.setResult(new zzdy(Status.RESULT_INTERNAL_ERROR));
        } else if (this.zzyt.zzyq.zzbf.getDisplay() == null) {
            zzdq.zzbe.e("Virtual display does not have a display", new Object[0]);
            this.zzyt.setResult(new zzdy(Status.RESULT_INTERNAL_ERROR));
        } else {
            try {
                ((zzee) this.zzys.getService()).zza(this, this.zzyt.zzyq.zzbf.getDisplay().getDisplayId());
            } catch (RemoteException | IllegalStateException unused) {
                zzdq.zzbe.e("Unable to provision the route's new virtual Display", new Object[0]);
                this.zzyt.setResult(new zzdy(Status.RESULT_INTERNAL_ERROR));
            }
        }
    }

    public final void zzc() {
        zzdq.zzbe.d("onConnectedWithDisplay", new Object[0]);
        if (this.zzyt.zzyq.zzbf == null) {
            zzdq.zzbe.e("There is no virtual display", new Object[0]);
            this.zzyt.setResult(new zzdy(Status.RESULT_INTERNAL_ERROR));
            return;
        }
        Display display = this.zzyt.zzyq.zzbf.getDisplay();
        if (display != null) {
            this.zzyt.setResult(new zzdy(display));
            return;
        }
        zzdq.zzbe.e("Virtual display no longer has a display", new Object[0]);
        this.zzyt.setResult(new zzdy(Status.RESULT_INTERNAL_ERROR));
    }

    public final void onError(int i) throws RemoteException {
        zzdq.zzbe.d("onError: %d", Integer.valueOf(i));
        this.zzyt.zzyq.zzb();
        this.zzyt.setResult(new zzdy(Status.RESULT_INTERNAL_ERROR));
    }
}
