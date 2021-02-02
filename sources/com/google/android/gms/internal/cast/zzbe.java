package com.google.android.gms.internal.cast;

import android.view.View;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;

public final class zzbe extends UIController {
    private final View view;
    private final int zzrq;

    public zzbe(View view2, int i) {
        this.view = view2;
        this.zzrq = i;
        this.view.setEnabled(false);
    }

    public final void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        zzcr();
    }

    public final void onSessionEnded() {
        this.view.setEnabled(false);
        super.onSessionEnded();
    }

    public final void onMediaStatusUpdated() {
        zzcr();
    }

    public final void onSendingRemoteMediaRequest() {
        this.view.setEnabled(false);
    }

    private final void zzcr() {
        boolean z;
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession()) {
            this.view.setEnabled(false);
            return;
        }
        MediaStatus mediaStatus = remoteMediaClient.getMediaStatus();
        if (mediaStatus.getQueueRepeatMode() == 0) {
            Integer indexById = mediaStatus.getIndexById(mediaStatus.getCurrentItemId());
            if (indexById == null || indexById.intValue() >= mediaStatus.getQueueItemCount() - 1) {
                z = false;
                if (z || remoteMediaClient.isPlayingAd()) {
                    this.view.setVisibility(this.zzrq);
                    this.view.setEnabled(false);
                }
                this.view.setVisibility(0);
                this.view.setEnabled(true);
                return;
            }
        }
        z = true;
        if (z) {
        }
        this.view.setVisibility(this.zzrq);
        this.view.setEnabled(false);
    }
}
