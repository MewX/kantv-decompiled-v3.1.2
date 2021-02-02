package com.google.android.gms.internal.cast;

import android.widget.ProgressBar;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.RemoteMediaClient.ProgressListener;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;

public final class zzbb extends UIController implements ProgressListener {
    private final ProgressBar zzro;
    private final long zzrp;

    public zzbb(ProgressBar progressBar, long j) {
        this.zzro = progressBar;
        this.zzrp = j;
    }

    public final void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient != null) {
            remoteMediaClient.addProgressListener(this, this.zzrp);
            if (remoteMediaClient.hasMediaSession()) {
                this.zzro.setMax((int) remoteMediaClient.getStreamDuration());
                this.zzro.setProgress((int) remoteMediaClient.getApproximateStreamPosition());
                return;
            }
            this.zzro.setMax(1);
            this.zzro.setProgress(0);
        }
    }

    public final void onSessionEnded() {
        if (getRemoteMediaClient() != null) {
            getRemoteMediaClient().removeProgressListener(this);
        }
        this.zzro.setMax(1);
        this.zzro.setProgress(0);
        super.onSessionEnded();
    }

    public final void onMediaStatusUpdated() {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession()) {
            this.zzro.setMax(1);
            this.zzro.setProgress(0);
        }
    }

    public final void onProgressUpdated(long j, long j2) {
        this.zzro.setMax((int) j2);
        this.zzro.setProgress((int) j);
    }
}
