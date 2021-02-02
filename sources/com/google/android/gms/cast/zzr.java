package com.google.android.gms.cast;

import android.hardware.display.DisplayManager;
import android.os.RemoteException;
import android.view.Display;
import android.view.Surface;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.internal.cast.zzdz;
import com.google.android.gms.internal.cast.zzee;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zzr extends zza {
    private final /* synthetic */ TaskCompletionSource zzbk;
    private final /* synthetic */ zzdz zzbl;
    private final /* synthetic */ zzq zzbm;

    zzr(zzq zzq, TaskCompletionSource taskCompletionSource, zzdz zzdz) {
        this.zzbm = zzq;
        this.zzbk = taskCompletionSource;
        this.zzbl = zzdz;
        super(null);
    }

    public final void zza(int i, int i2, Surface surface) throws RemoteException {
        this.zzbm.zzbj.zzbe.d("onConnected", new Object[0]);
        DisplayManager displayManager = (DisplayManager) this.zzbm.zzbj.getApplicationContext().getSystemService("display");
        if (displayManager == null) {
            this.zzbm.zzbj.zzbe.e("Unable to get the display manager", new Object[0]);
            TaskUtil.setResultOrApiException(Status.RESULT_INTERNAL_ERROR, null, this.zzbk);
            return;
        }
        this.zzbm.zzbj.zzb();
        this.zzbm.zzbj.zzbf = displayManager.createVirtualDisplay("private_display", i, i2, CastRemoteDisplayClient.zza(i, i2), surface, 2);
        if (this.zzbm.zzbj.zzbf == null) {
            this.zzbm.zzbj.zzbe.e("Unable to create virtual display", new Object[0]);
            TaskUtil.setResultOrApiException(Status.RESULT_INTERNAL_ERROR, null, this.zzbk);
            return;
        }
        Display display = this.zzbm.zzbj.zzbf.getDisplay();
        if (display == null) {
            this.zzbm.zzbj.zzbe.e("Virtual display does not have a display", new Object[0]);
            TaskUtil.setResultOrApiException(Status.RESULT_INTERNAL_ERROR, null, this.zzbk);
            return;
        }
        try {
            ((zzee) this.zzbl.getService()).zza(this, display.getDisplayId());
        } catch (RemoteException | IllegalStateException unused) {
            this.zzbm.zzbj.zzbe.e("Unable to provision the route's new virtual Display", new Object[0]);
            TaskUtil.setResultOrApiException(Status.RESULT_INTERNAL_ERROR, null, this.zzbk);
        }
    }

    public final void zzc() {
        this.zzbm.zzbj.zzbe.d("onConnectedWithDisplay", new Object[0]);
        if (this.zzbm.zzbj.zzbf == null) {
            this.zzbm.zzbj.zzbe.e("There is no virtual display", new Object[0]);
            TaskUtil.setResultOrApiException(Status.RESULT_INTERNAL_ERROR, null, this.zzbk);
            return;
        }
        Display display = this.zzbm.zzbj.zzbf.getDisplay();
        if (display != null) {
            TaskUtil.setResultOrApiException(Status.RESULT_SUCCESS, display, this.zzbk);
            return;
        }
        this.zzbm.zzbj.zzbe.e("Virtual display no longer has a display", new Object[0]);
        TaskUtil.setResultOrApiException(Status.RESULT_INTERNAL_ERROR, null, this.zzbk);
    }

    public final void onError(int i) throws RemoteException {
        this.zzbm.zzbj.zzbe.d("onError: %d", Integer.valueOf(i));
        this.zzbm.zzbj.zzb();
        TaskUtil.setResultOrApiException(Status.RESULT_INTERNAL_ERROR, null, this.zzbk);
    }
}
