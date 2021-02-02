package com.google.android.gms.internal.cast;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.Cast.ApplicationConnectionResult;
import com.google.android.gms.cast.Cast.Listener;
import com.google.android.gms.cast.Cast.MessageReceivedCallback;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.CastStatusCodes;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.cast.zzad;
import com.google.android.gms.cast.zzag;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder;
import com.google.android.gms.common.internal.BinderWrapper;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs.CastExtraArgs;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

public final class zzcn extends GmsClient<zzcz> {
    /* access modifiers changed from: private */
    public static final zzdg zzbe = new zzdg("CastClientImpl");
    /* access modifiers changed from: private */
    public static final Object zzwk = new Object();
    private static final Object zzwl = new Object();
    private final Bundle extras;
    /* access modifiers changed from: private */
    public final Listener zzaj;
    private double zzel;
    private boolean zzem;
    /* access modifiers changed from: private */
    public final CastDevice zzht;
    /* access modifiers changed from: private */
    public ApplicationMetadata zzvs;
    /* access modifiers changed from: private */
    public final Map<String, MessageReceivedCallback> zzvt = new HashMap();
    private final long zzvu;
    private zzcp zzvv;
    /* access modifiers changed from: private */
    public String zzvw;
    private boolean zzvx;
    private boolean zzvy;
    private boolean zzvz;
    private zzad zzwa;
    private int zzwb;
    private int zzwc;
    private final AtomicLong zzwd = new AtomicLong(0);
    /* access modifiers changed from: private */
    public String zzwe;
    /* access modifiers changed from: private */
    public String zzwf;
    private Bundle zzwg;
    private final Map<Long, ResultHolder<Status>> zzwh = new HashMap();
    /* access modifiers changed from: private */
    public ResultHolder<ApplicationConnectionResult> zzwi;
    private ResultHolder<Status> zzwj;

    public zzcn(Context context, Looper looper, ClientSettings clientSettings, CastDevice castDevice, long j, Listener listener, Bundle bundle, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 10, clientSettings, connectionCallbacks, onConnectionFailedListener);
        this.zzht = castDevice;
        this.zzaj = listener;
        this.zzvu = j;
        this.extras = bundle;
        zzdf();
    }

    public final int getMinApkVersion() {
        return 12800000;
    }

    /* access modifiers changed from: protected */
    @NonNull
    public final String getServiceDescriptor() {
        return "com.google.android.gms.cast.internal.ICastDeviceController";
    }

    /* access modifiers changed from: protected */
    @NonNull
    public final String getStartServiceAction() {
        return "com.google.android.gms.cast.service.BIND_CAST_DEVICE_CONTROLLER_SERVICE";
    }

    /* access modifiers changed from: private */
    public final void zzdf() {
        this.zzvz = false;
        this.zzwb = -1;
        this.zzwc = -1;
        this.zzvs = null;
        this.zzvw = null;
        this.zzel = 0.0d;
        this.zzem = false;
        this.zzwa = null;
    }

    /* access modifiers changed from: protected */
    public final void onPostInitHandler(int i, IBinder iBinder, Bundle bundle, int i2) {
        zzbe.d("in onPostInitHandler; statusCode=%d", Integer.valueOf(i));
        if (i == 0 || i == 1001) {
            this.zzvz = true;
            this.zzvx = true;
            this.zzvy = true;
        } else {
            this.zzvz = false;
        }
        if (i == 1001) {
            this.zzwg = new Bundle();
            this.zzwg.putBoolean(Cast.EXTRA_APP_NO_LONGER_RUNNING, true);
            i = 0;
        }
        super.onPostInitHandler(i, iBinder, bundle, i2);
    }

    public final void disconnect() {
        zzbe.d("disconnect(); ServiceListener=%s, isConnected=%b", this.zzvv, Boolean.valueOf(isConnected()));
        zzcp zzcp = this.zzvv;
        this.zzvv = null;
        if (zzcp == null || zzcp.zzdj() == null) {
            zzbe.d("already disposed, so short-circuiting", new Object[0]);
            return;
        }
        zzdg();
        try {
            ((zzcz) getService()).disconnect();
        } catch (RemoteException | IllegalStateException e) {
            zzbe.zza(e, "Error while disconnecting the controller interface: %s", e.getMessage());
        } finally {
            super.disconnect();
        }
    }

    public final Bundle getConnectionHint() {
        Bundle bundle = this.zzwg;
        if (bundle == null) {
            return super.getConnectionHint();
        }
        this.zzwg = null;
        return bundle;
    }

    /* access modifiers changed from: protected */
    public final Bundle getGetServiceRequestExtraArgs() {
        Bundle bundle = new Bundle();
        zzbe.d("getRemoteService(): mLastApplicationId=%s, mLastSessionId=%s", this.zzwe, this.zzwf);
        this.zzht.putInBundle(bundle);
        bundle.putLong("com.google.android.gms.cast.EXTRA_CAST_FLAGS", this.zzvu);
        Bundle bundle2 = this.extras;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        this.zzvv = new zzcp(this);
        bundle.putParcelable(CastExtraArgs.LISTENER, new BinderWrapper(this.zzvv.asBinder()));
        String str = this.zzwe;
        if (str != null) {
            bundle.putString("last_application_id", str);
            String str2 = this.zzwf;
            if (str2 != null) {
                bundle.putString("last_session_id", str2);
            }
        }
        return bundle;
    }

    public final void zza(String str, String str2, ResultHolder<Status> resultHolder) throws IllegalArgumentException, IllegalStateException, RemoteException {
        if (TextUtils.isEmpty(str2)) {
            throw new IllegalArgumentException("The message payload cannot be null or empty");
        } else if (str2.length() <= 524288) {
            zzcu.zzo(str);
            long incrementAndGet = this.zzwd.incrementAndGet();
            try {
                this.zzwh.put(Long.valueOf(incrementAndGet), resultHolder);
                zzcz zzcz = (zzcz) getService();
                if (zzdh()) {
                    zzcz.zza(str, str2, incrementAndGet);
                } else {
                    zzb(incrementAndGet, (int) CastStatusCodes.DEVICE_CONNECTION_SUSPENDED);
                }
            } catch (Throwable th) {
                this.zzwh.remove(Long.valueOf(incrementAndGet));
                throw th;
            }
        } else {
            zzbe.w("Message send failed. Message exceeds maximum size", new Object[0]);
            throw new IllegalArgumentException("Message exceeds maximum size");
        }
    }

    public final void zza(String str, LaunchOptions launchOptions, ResultHolder<ApplicationConnectionResult> resultHolder) throws IllegalStateException, RemoteException {
        zza(resultHolder);
        zzcz zzcz = (zzcz) getService();
        if (zzdh()) {
            zzcz.zzb(str, launchOptions);
        } else {
            zzl(CastStatusCodes.DEVICE_CONNECTION_SUSPENDED);
        }
    }

    public final void zza(String str, String str2, zzag zzag, ResultHolder<ApplicationConnectionResult> resultHolder) throws IllegalStateException, RemoteException {
        zza(resultHolder);
        if (zzag == null) {
            zzag = new zzag();
        }
        zzcz zzcz = (zzcz) getService();
        if (zzdh()) {
            zzcz.zza(str, str2, zzag);
        } else {
            zzl(CastStatusCodes.DEVICE_CONNECTION_SUSPENDED);
        }
    }

    private final void zza(ResultHolder<ApplicationConnectionResult> resultHolder) {
        synchronized (zzwk) {
            if (this.zzwi != null) {
                this.zzwi.setResult(new zzco(new Status(CastStatusCodes.CANCELED)));
            }
            this.zzwi = resultHolder;
        }
    }

    public final void zzb(ResultHolder<Status> resultHolder) throws IllegalStateException, RemoteException {
        zzc(resultHolder);
        zzcz zzcz = (zzcz) getService();
        if (zzdh()) {
            zzcz.zzdm();
        } else {
            zzm(CastStatusCodes.DEVICE_CONNECTION_SUSPENDED);
        }
    }

    public final void zza(String str, ResultHolder<Status> resultHolder) throws IllegalStateException, RemoteException {
        zzc(resultHolder);
        zzcz zzcz = (zzcz) getService();
        if (zzdh()) {
            zzcz.zzi(str);
        } else {
            zzm(CastStatusCodes.DEVICE_CONNECTION_SUSPENDED);
        }
    }

    private final void zzc(ResultHolder<Status> resultHolder) {
        synchronized (zzwl) {
            if (this.zzwj != null) {
                resultHolder.setResult(new Status(CastStatusCodes.INVALID_REQUEST));
            } else {
                this.zzwj = resultHolder;
            }
        }
    }

    public final void requestStatus() throws IllegalStateException, RemoteException {
        zzcz zzcz = (zzcz) getService();
        if (zzdh()) {
            zzcz.requestStatus();
        }
    }

    public final void setVolume(double d) throws IllegalArgumentException, IllegalStateException, RemoteException {
        if (Double.isInfinite(d) || Double.isNaN(d)) {
            StringBuilder sb = new StringBuilder(41);
            sb.append("Volume cannot be ");
            sb.append(d);
            throw new IllegalArgumentException(sb.toString());
        }
        zzcz zzcz = (zzcz) getService();
        if (zzdh()) {
            zzcz.zza(d, this.zzel, this.zzem);
        }
    }

    public final void setMute(boolean z) throws IllegalStateException, RemoteException {
        zzcz zzcz = (zzcz) getService();
        if (zzdh()) {
            zzcz.zza(z, this.zzel, this.zzem);
        }
    }

    public final double getVolume() throws IllegalStateException {
        checkConnected();
        return this.zzel;
    }

    public final boolean isMute() throws IllegalStateException {
        checkConnected();
        return this.zzem;
    }

    public final int getActiveInputState() throws IllegalStateException {
        checkConnected();
        return this.zzwb;
    }

    public final int getStandbyState() throws IllegalStateException {
        checkConnected();
        return this.zzwc;
    }

    public final void setMessageReceivedCallbacks(String str, MessageReceivedCallback messageReceivedCallback) throws IllegalArgumentException, IllegalStateException, RemoteException {
        zzcu.zzo(str);
        removeMessageReceivedCallbacks(str);
        if (messageReceivedCallback != null) {
            synchronized (this.zzvt) {
                this.zzvt.put(str, messageReceivedCallback);
            }
            zzcz zzcz = (zzcz) getService();
            if (zzdh()) {
                zzcz.zzr(str);
            }
        }
    }

    public final void removeMessageReceivedCallbacks(String str) throws IllegalArgumentException, RemoteException {
        MessageReceivedCallback messageReceivedCallback;
        if (!TextUtils.isEmpty(str)) {
            synchronized (this.zzvt) {
                messageReceivedCallback = (MessageReceivedCallback) this.zzvt.remove(str);
            }
            if (messageReceivedCallback != null) {
                try {
                    ((zzcz) getService()).zzs(str);
                    return;
                } catch (IllegalStateException e) {
                    zzbe.zza(e, "Error unregistering namespace (%s): %s", str, e.getMessage());
                }
            }
            return;
        }
        throw new IllegalArgumentException("Channel namespace cannot be null or empty");
    }

    public final ApplicationMetadata getApplicationMetadata() throws IllegalStateException {
        checkConnected();
        return this.zzvs;
    }

    public final String getApplicationStatus() throws IllegalStateException {
        checkConnected();
        return this.zzvw;
    }

    public final void onConnectionFailed(ConnectionResult connectionResult) {
        super.onConnectionFailed(connectionResult);
        zzdg();
    }

    private final void zzdg() {
        zzbe.d("removing all MessageReceivedCallbacks", new Object[0]);
        synchronized (this.zzvt) {
            this.zzvt.clear();
        }
    }

    /* access modifiers changed from: private */
    public final void zza(zzcv zzcv) {
        boolean z;
        boolean z2;
        boolean z3;
        ApplicationMetadata applicationMetadata = zzcv.getApplicationMetadata();
        if (!zzcu.zza(applicationMetadata, this.zzvs)) {
            this.zzvs = applicationMetadata;
            this.zzaj.onApplicationMetadataChanged(this.zzvs);
        }
        double volume = zzcv.getVolume();
        if (Double.isNaN(volume) || Math.abs(volume - this.zzel) <= 1.0E-7d) {
            z = false;
        } else {
            this.zzel = volume;
            z = true;
        }
        boolean zzdk = zzcv.zzdk();
        if (zzdk != this.zzem) {
            this.zzem = zzdk;
            z = true;
        }
        zzbe.d("hasVolumeChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z), Boolean.valueOf(this.zzvy));
        if (this.zzaj != null && (z || this.zzvy)) {
            this.zzaj.onVolumeChanged();
        }
        int activeInputState = zzcv.getActiveInputState();
        if (activeInputState != this.zzwb) {
            this.zzwb = activeInputState;
            z2 = true;
        } else {
            z2 = false;
        }
        zzbe.d("hasActiveInputChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z2), Boolean.valueOf(this.zzvy));
        if (this.zzaj != null && (z2 || this.zzvy)) {
            this.zzaj.onActiveInputStateChanged(this.zzwb);
        }
        int standbyState = zzcv.getStandbyState();
        if (standbyState != this.zzwc) {
            this.zzwc = standbyState;
            z3 = true;
        } else {
            z3 = false;
        }
        zzbe.d("hasStandbyStateChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z3), Boolean.valueOf(this.zzvy));
        if (this.zzaj != null && (z3 || this.zzvy)) {
            this.zzaj.onStandbyStateChanged(this.zzwc);
        }
        if (!zzcu.zza(this.zzwa, zzcv.zzdl())) {
            this.zzwa = zzcv.zzdl();
        }
        this.zzvy = false;
    }

    /* access modifiers changed from: private */
    public final void zza(zzcd zzcd) {
        boolean z;
        String zzdb = zzcd.zzdb();
        if (!zzcu.zza(zzdb, this.zzvw)) {
            this.zzvw = zzdb;
            z = true;
        } else {
            z = false;
        }
        zzbe.d("hasChanged=%b, mFirstApplicationStatusUpdate=%b", Boolean.valueOf(z), Boolean.valueOf(this.zzvx));
        if (this.zzaj != null && (z || this.zzvx)) {
            this.zzaj.onApplicationStatusChanged();
        }
        this.zzvx = false;
    }

    @VisibleForTesting
    private final boolean zzdh() {
        if (this.zzvz) {
            zzcp zzcp = this.zzvv;
            if (zzcp != null && !zzcp.isDisposed()) {
                return true;
            }
        }
        return false;
    }

    /* access modifiers changed from: private */
    public final void zzb(long j, int i) {
        ResultHolder resultHolder;
        synchronized (this.zzwh) {
            resultHolder = (ResultHolder) this.zzwh.remove(Long.valueOf(j));
        }
        if (resultHolder != null) {
            resultHolder.setResult(new Status(i));
        }
    }

    public final void zzl(int i) {
        synchronized (zzwk) {
            if (this.zzwi != null) {
                this.zzwi.setResult(new zzco(new Status(i)));
                this.zzwi = null;
            }
        }
    }

    /* access modifiers changed from: private */
    public final void zzm(int i) {
        synchronized (zzwl) {
            if (this.zzwj != null) {
                this.zzwj.setResult(new Status(i));
                this.zzwj = null;
            }
        }
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.internal.ICastDeviceController");
        if (queryLocalInterface instanceof zzcz) {
            return (zzcz) queryLocalInterface;
        }
        return new zzda(iBinder);
    }
}
