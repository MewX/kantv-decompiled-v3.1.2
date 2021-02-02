package com.google.android.gms.internal.cast;

import android.widget.SeekBar;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.RemoteMediaClient.ProgressListener;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;

public final class zzbc extends UIController implements ProgressListener {
    private boolean zzmc = true;
    private final SeekBar zzra;
    private final long zzrp;

    public zzbc(SeekBar seekBar, long j) {
        this.zzra = seekBar;
        this.zzrp = j;
        this.zzra.setEnabled(false);
    }

    public final void onSendingRemoteMediaRequest() {
    }

    public final void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient != null) {
            remoteMediaClient.addProgressListener(this, this.zzrp);
            if (remoteMediaClient.hasMediaSession()) {
                this.zzra.setMax((int) remoteMediaClient.getStreamDuration());
                this.zzra.setProgress((int) remoteMediaClient.getApproximateStreamPosition());
                this.zzra.setEnabled(true);
                return;
            }
        }
        this.zzra.setMax(1);
        this.zzra.setProgress(0);
        this.zzra.setEnabled(false);
    }

    public final void onSessionEnded() {
        if (getRemoteMediaClient() != null) {
            getRemoteMediaClient().removeProgressListener(this);
        }
        this.zzra.setMax(1);
        this.zzra.setProgress(0);
        this.zzra.setEnabled(false);
        super.onSessionEnded();
    }

    public final void onProgressUpdated(long j, long j2) {
        MediaStatus mediaStatus;
        if (this.zzmc) {
            RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
            if (remoteMediaClient == null) {
                mediaStatus = null;
            } else {
                mediaStatus = remoteMediaClient.getMediaStatus();
            }
            if (mediaStatus != null && mediaStatus.isPlayingAd()) {
                this.zzra.setEnabled(false);
            } else {
                this.zzra.setProgress((int) j);
                this.zzra.setEnabled(true);
            }
            this.zzra.setMax((int) j2);
        }
    }

    public final void zzj(boolean z) {
        this.zzmc = z;
    }
}
