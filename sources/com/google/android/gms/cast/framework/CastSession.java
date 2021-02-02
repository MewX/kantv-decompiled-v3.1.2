package com.google.android.gms.cast.framework;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.Cast.ApplicationConnectionResult;
import com.google.android.gms.cast.Cast.CastApi;
import com.google.android.gms.cast.Cast.CastOptions;
import com.google.android.gms.cast.Cast.Listener;
import com.google.android.gms.cast.Cast.MessageReceivedCallback;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.Builder;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.cast.zzai;
import com.google.android.gms.internal.cast.zzdg;
import com.google.android.gms.internal.cast.zzdh;
import com.google.android.gms.internal.cast.zze;
import com.google.android.gms.internal.cast.zzg;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

public class CastSession extends Session {
    /* access modifiers changed from: private */
    public static final zzdg zzbe = new zzdg("CastSession");
    private final Context zzgt;
    private final CastOptions zzgz;
    /* access modifiers changed from: private */
    public final Set<Listener> zzhm = new HashSet();
    /* access modifiers changed from: private */
    public final zzl zzhn;
    /* access modifiers changed from: private */
    public final CastApi zzho;
    private final zzg zzhp;
    /* access modifiers changed from: private */
    public final zzai zzhq;
    /* access modifiers changed from: private */
    public GoogleApiClient zzhr;
    /* access modifiers changed from: private */
    public RemoteMediaClient zzhs;
    private CastDevice zzht;
    /* access modifiers changed from: private */
    public ApplicationConnectionResult zzhu;

    private class zza implements ResultCallback<ApplicationConnectionResult> {
        private String command;

        zza(String str) {
            this.command = str;
        }

        public final /* synthetic */ void onResult(@NonNull Result result) {
            ApplicationConnectionResult applicationConnectionResult = (ApplicationConnectionResult) result;
            CastSession.this.zzhu = applicationConnectionResult;
            try {
                if (applicationConnectionResult.getStatus().isSuccess()) {
                    CastSession.zzbe.d("%s() -> success result", this.command);
                    CastSession.this.zzhs = new RemoteMediaClient(new zzdh(null), CastSession.this.zzho);
                    try {
                        CastSession.this.zzhs.zzb(CastSession.this.zzhr);
                        CastSession.this.zzhs.zzcb();
                        CastSession.this.zzhs.requestStatus();
                        CastSession.this.zzhq.zza(CastSession.this.zzhs, CastSession.this.getCastDevice());
                    } catch (IOException e) {
                        CastSession.zzbe.zzc(e, "Exception when setting GoogleApiClient.", new Object[0]);
                        CastSession.this.zzhs = null;
                    }
                    CastSession.this.zzhn.zza(applicationConnectionResult.getApplicationMetadata(), applicationConnectionResult.getApplicationStatus(), applicationConnectionResult.getSessionId(), applicationConnectionResult.getWasLaunched());
                    return;
                }
                CastSession.zzbe.d("%s() -> failure result", this.command);
                CastSession.this.zzhn.zzf(applicationConnectionResult.getStatus().getStatusCode());
            } catch (RemoteException e2) {
                CastSession.zzbe.zza(e2, "Unable to call %s on %s.", "methods", zzl.class.getSimpleName());
            }
        }
    }

    private class zzb extends zzi {
        private zzb() {
        }

        public final int zzm() {
            return 12451009;
        }

        public final void zza(String str, String str2) {
            if (CastSession.this.zzhr != null) {
                CastSession.this.zzho.joinApplication(CastSession.this.zzhr, str, str2).setResultCallback(new zza("joinApplication"));
            }
        }

        public final void zza(String str, LaunchOptions launchOptions) {
            if (CastSession.this.zzhr != null) {
                CastSession.this.zzho.launchApplication(CastSession.this.zzhr, str, launchOptions).setResultCallback(new zza("launchApplication"));
            }
        }

        public final void zzi(String str) {
            if (CastSession.this.zzhr != null) {
                CastSession.this.zzho.stopApplication(CastSession.this.zzhr, str);
            }
        }

        public final void zze(int i) {
            CastSession.this.zze(i);
        }
    }

    private class zzc extends Listener {
        private zzc() {
        }

        public final void onApplicationDisconnected(int i) {
            CastSession.this.zze(i);
            CastSession.this.notifySessionEnded(i);
            for (Listener onApplicationDisconnected : new HashSet(CastSession.this.zzhm)) {
                onApplicationDisconnected.onApplicationDisconnected(i);
            }
        }

        public final void onApplicationStatusChanged() {
            for (Listener onApplicationStatusChanged : new HashSet(CastSession.this.zzhm)) {
                onApplicationStatusChanged.onApplicationStatusChanged();
            }
        }

        public final void onApplicationMetadataChanged(ApplicationMetadata applicationMetadata) {
            for (Listener onApplicationMetadataChanged : new HashSet(CastSession.this.zzhm)) {
                onApplicationMetadataChanged.onApplicationMetadataChanged(applicationMetadata);
            }
        }

        public final void onActiveInputStateChanged(int i) {
            for (Listener onActiveInputStateChanged : new HashSet(CastSession.this.zzhm)) {
                onActiveInputStateChanged.onActiveInputStateChanged(i);
            }
        }

        public final void onStandbyStateChanged(int i) {
            for (Listener onStandbyStateChanged : new HashSet(CastSession.this.zzhm)) {
                onStandbyStateChanged.onStandbyStateChanged(i);
            }
        }

        public final void onVolumeChanged() {
            for (Listener onVolumeChanged : new HashSet(CastSession.this.zzhm)) {
                onVolumeChanged.onVolumeChanged();
            }
        }
    }

    private class zzd implements ConnectionCallbacks, OnConnectionFailedListener {
        private zzd() {
        }

        public final void onConnected(Bundle bundle) {
            try {
                if (CastSession.this.zzhs != null) {
                    try {
                        CastSession.this.zzhs.zzcb();
                        CastSession.this.zzhs.requestStatus();
                    } catch (IOException e) {
                        CastSession.zzbe.zzc(e, "Exception when setting GoogleApiClient.", new Object[0]);
                        CastSession.this.zzhs = null;
                    }
                }
                CastSession.this.zzhn.onConnected(bundle);
            } catch (RemoteException e2) {
                CastSession.zzbe.zza(e2, "Unable to call %s on %s.", "onConnected", zzl.class.getSimpleName());
            }
        }

        public final void onConnectionSuspended(int i) {
            try {
                CastSession.this.zzhn.onConnectionSuspended(i);
            } catch (RemoteException e) {
                CastSession.zzbe.zza(e, "Unable to call %s on %s.", "onConnectionSuspended", zzl.class.getSimpleName());
            }
        }

        public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
            try {
                CastSession.this.zzhn.onConnectionFailed(connectionResult);
            } catch (RemoteException e) {
                CastSession.zzbe.zza(e, "Unable to call %s on %s.", "onConnectionFailed", zzl.class.getSimpleName());
            }
        }
    }

    public CastSession(Context context, String str, String str2, CastOptions castOptions, CastApi castApi, zzg zzg, zzai zzai) {
        super(context, str, str2);
        this.zzgt = context.getApplicationContext();
        this.zzgz = castOptions;
        this.zzho = castApi;
        this.zzhp = zzg;
        this.zzhq = zzai;
        this.zzhn = zze.zza(context, castOptions, zzz(), (zzh) new zzb());
    }

    /* access modifiers changed from: protected */
    public void onStarting(Bundle bundle) {
        this.zzht = CastDevice.getFromBundle(bundle);
    }

    /* access modifiers changed from: protected */
    public void onResuming(Bundle bundle) {
        this.zzht = CastDevice.getFromBundle(bundle);
    }

    /* access modifiers changed from: protected */
    public void start(Bundle bundle) {
        zzb(bundle);
    }

    /* access modifiers changed from: protected */
    public void resume(Bundle bundle) {
        zzb(bundle);
    }

    /* access modifiers changed from: protected */
    public void end(boolean z) {
        try {
            this.zzhn.zza(z, 0);
        } catch (RemoteException e) {
            zzbe.zza(e, "Unable to call %s on %s.", "disconnectFromDevice", zzl.class.getSimpleName());
        }
        notifySessionEnded(0);
    }

    public RemoteMediaClient getRemoteMediaClient() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return this.zzhs;
    }

    public CastDevice getCastDevice() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return this.zzht;
    }

    public void requestStatus() throws IOException, IllegalStateException {
        Preconditions.checkMainThread("Must be called from the main thread.");
        GoogleApiClient googleApiClient = this.zzhr;
        if (googleApiClient != null) {
            this.zzho.requestStatus(googleApiClient);
        }
    }

    public int getActiveInputState() throws IllegalStateException {
        Preconditions.checkMainThread("Must be called from the main thread.");
        GoogleApiClient googleApiClient = this.zzhr;
        if (googleApiClient != null) {
            return this.zzho.getActiveInputState(googleApiClient);
        }
        return -1;
    }

    public int getStandbyState() throws IllegalStateException {
        Preconditions.checkMainThread("Must be called from the main thread.");
        GoogleApiClient googleApiClient = this.zzhr;
        if (googleApiClient != null) {
            return this.zzho.getStandbyState(googleApiClient);
        }
        return -1;
    }

    public ApplicationMetadata getApplicationMetadata() throws IllegalStateException {
        Preconditions.checkMainThread("Must be called from the main thread.");
        GoogleApiClient googleApiClient = this.zzhr;
        if (googleApiClient != null) {
            return this.zzho.getApplicationMetadata(googleApiClient);
        }
        return null;
    }

    public String getApplicationStatus() throws IllegalStateException {
        Preconditions.checkMainThread("Must be called from the main thread.");
        GoogleApiClient googleApiClient = this.zzhr;
        if (googleApiClient != null) {
            return this.zzho.getApplicationStatus(googleApiClient);
        }
        return null;
    }

    public void setVolume(double d) throws IOException {
        Preconditions.checkMainThread("Must be called from the main thread.");
        GoogleApiClient googleApiClient = this.zzhr;
        if (googleApiClient != null) {
            this.zzho.setVolume(googleApiClient, d);
        }
    }

    public double getVolume() throws IllegalStateException {
        Preconditions.checkMainThread("Must be called from the main thread.");
        GoogleApiClient googleApiClient = this.zzhr;
        if (googleApiClient != null) {
            return this.zzho.getVolume(googleApiClient);
        }
        return 0.0d;
    }

    public final zzai zzs() {
        return this.zzhq;
    }

    public void setMute(boolean z) throws IOException, IllegalStateException {
        Preconditions.checkMainThread("Must be called from the main thread.");
        GoogleApiClient googleApiClient = this.zzhr;
        if (googleApiClient != null) {
            this.zzho.setMute(googleApiClient, z);
        }
    }

    public boolean isMute() throws IllegalStateException {
        Preconditions.checkMainThread("Must be called from the main thread.");
        GoogleApiClient googleApiClient = this.zzhr;
        if (googleApiClient != null) {
            return this.zzho.isMute(googleApiClient);
        }
        return false;
    }

    public ApplicationConnectionResult getApplicationConnectionResult() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return this.zzhu;
    }

    public void setMessageReceivedCallbacks(String str, MessageReceivedCallback messageReceivedCallback) throws IOException, IllegalStateException {
        Preconditions.checkMainThread("Must be called from the main thread.");
        GoogleApiClient googleApiClient = this.zzhr;
        if (googleApiClient != null) {
            this.zzho.setMessageReceivedCallbacks(googleApiClient, str, messageReceivedCallback);
        }
    }

    public void removeMessageReceivedCallbacks(String str) throws IOException, IllegalArgumentException {
        Preconditions.checkMainThread("Must be called from the main thread.");
        GoogleApiClient googleApiClient = this.zzhr;
        if (googleApiClient != null) {
            this.zzho.removeMessageReceivedCallbacks(googleApiClient, str);
        }
    }

    public PendingResult<Status> sendMessage(String str, String str2) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        GoogleApiClient googleApiClient = this.zzhr;
        if (googleApiClient != null) {
            return this.zzho.sendMessage(googleApiClient, str, str2);
        }
        return null;
    }

    public void addCastListener(Listener listener) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (listener != null) {
            this.zzhm.add(listener);
        }
    }

    public void removeCastListener(Listener listener) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (listener != null) {
            this.zzhm.remove(listener);
        }
    }

    private final void zzb(Bundle bundle) {
        this.zzht = CastDevice.getFromBundle(bundle);
        if (this.zzht != null) {
            GoogleApiClient googleApiClient = this.zzhr;
            if (googleApiClient != null) {
                googleApiClient.disconnect();
                this.zzhr = null;
            }
            boolean z = true;
            zzbe.d("Acquiring a connection to Google Play Services for %s", this.zzht);
            zzd zzd2 = new zzd();
            Context context = this.zzgt;
            CastDevice castDevice = this.zzht;
            CastOptions castOptions = this.zzgz;
            zzc zzc2 = new zzc();
            Bundle bundle2 = new Bundle();
            bundle2.putBoolean("com.google.android.gms.cast.EXTRA_CAST_FRAMEWORK_NOTIFICATION_ENABLED", (castOptions == null || castOptions.getCastMediaOptions() == null || castOptions.getCastMediaOptions().getNotificationOptions() == null) ? false : true);
            if (castOptions == null || castOptions.getCastMediaOptions() == null || !castOptions.getCastMediaOptions().zzaw()) {
                z = false;
            }
            bundle2.putBoolean("com.google.android.gms.cast.EXTRA_CAST_REMOTE_CONTROL_NOTIFICATION_ENABLED", z);
            this.zzhr = new Builder(context).addApi(Cast.API, new CastOptions.Builder(castDevice, zzc2).zza(bundle2).build()).addConnectionCallbacks(zzd2).addOnConnectionFailedListener(zzd2).build();
            this.zzhr.connect();
        } else if (isResuming()) {
            notifyFailedToResumeSession(8);
        } else {
            notifyFailedToStartSession(8);
        }
    }

    /* access modifiers changed from: private */
    public final void zze(int i) {
        this.zzhq.zzi(i);
        GoogleApiClient googleApiClient = this.zzhr;
        if (googleApiClient != null) {
            googleApiClient.disconnect();
            this.zzhr = null;
        }
        this.zzht = null;
        RemoteMediaClient remoteMediaClient = this.zzhs;
        if (remoteMediaClient != null) {
            remoteMediaClient.zzb(null);
            this.zzhs = null;
        }
        this.zzhu = null;
    }

    public long getSessionRemainingTimeMs() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        RemoteMediaClient remoteMediaClient = this.zzhs;
        if (remoteMediaClient == null) {
            return 0;
        }
        return remoteMediaClient.getStreamDuration() - this.zzhs.getApproximateStreamPosition();
    }
}
