package com.google.android.gms.cast;

import android.annotation.TargetApi;
import android.app.PendingIntent;
import android.content.Context;
import android.hardware.display.VirtualDisplay;
import android.os.RemoteException;
import android.view.Display;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.cast.CastRemoteDisplay.Configuration;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.AbstractClientBuilder;
import com.google.android.gms.common.api.Api.ApiOptions.NoOptions;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.GoogleApi.Settings;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.internal.cast.zzdf;
import com.google.android.gms.internal.cast.zzdg;
import com.google.android.gms.internal.cast.zzdz;
import com.google.android.gms.internal.cast.zzed;
import com.google.android.gms.tasks.Task;

@TargetApi(19)
public class CastRemoteDisplayClient extends GoogleApi<NoOptions> {
    private static final Api<NoOptions> API = new Api<>("CastRemoteDisplay.API", CLIENT_BUILDER, zzdf.zzxa);
    private static final AbstractClientBuilder<zzdz, NoOptions> CLIENT_BUILDER = new zzp();
    /* access modifiers changed from: private */
    public final zzdg zzbe = new zzdg("CastRemoteDisplay");
    /* access modifiers changed from: private */
    public VirtualDisplay zzbf;

    private static class zza extends zzed {
        private zza() {
        }

        public void zza(int i, int i2, Surface surface) throws RemoteException {
            throw new UnsupportedOperationException();
        }

        public void onError(int i) throws RemoteException {
            throw new UnsupportedOperationException();
        }

        public void onDisconnected() throws RemoteException {
            throw new UnsupportedOperationException();
        }

        public void zzc() throws RemoteException {
            throw new UnsupportedOperationException();
        }

        /* synthetic */ zza(zzp zzp) {
            this();
        }
    }

    CastRemoteDisplayClient(@NonNull Context context) {
        super(context, API, null, Settings.DEFAULT_SETTINGS);
    }

    public Task<Display> startRemoteDisplay(@NonNull CastDevice castDevice, @NonNull String str, @Configuration int i, @Nullable PendingIntent pendingIntent) {
        zzq zzq = new zzq(this, i, pendingIntent, castDevice, str);
        return doWrite((TaskApiCall<A, TResult>) zzq);
    }

    /* access modifiers changed from: private */
    public static int zza(int i, int i2) {
        return (Math.min(i, i2) * 320) / 1080;
    }

    /* access modifiers changed from: private */
    @TargetApi(19)
    public final void zzb() {
        VirtualDisplay virtualDisplay = this.zzbf;
        if (virtualDisplay != null) {
            if (virtualDisplay.getDisplay() != null) {
                zzdg zzdg = this.zzbe;
                int displayId = this.zzbf.getDisplay().getDisplayId();
                StringBuilder sb = new StringBuilder(38);
                sb.append("releasing virtual display: ");
                sb.append(displayId);
                zzdg.d(sb.toString(), new Object[0]);
            }
            this.zzbf.release();
            this.zzbf = null;
        }
    }

    public Task<Void> stopRemoteDisplay() {
        return doWrite((TaskApiCall<A, TResult>) new zzs<A,TResult>(this));
    }
}
