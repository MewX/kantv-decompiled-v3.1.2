package com.google.android.gms.internal.cast;

import android.view.View;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;

public final class zzbd extends UIController {
    private final View view;

    public zzbd(View view2) {
        this.view = view2;
        this.view.setEnabled(false);
    }

    public final void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        zzco();
    }

    public final void onSessionEnded() {
        this.view.setEnabled(false);
        super.onSessionEnded();
    }

    public final void onMediaStatusUpdated() {
        zzco();
    }

    public final void onSendingRemoteMediaRequest() {
        this.view.setEnabled(false);
    }

    private final void zzco() {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession() || remoteMediaClient.isLiveStream() || remoteMediaClient.isPlayingAd()) {
            this.view.setEnabled(false);
        } else {
            this.view.setEnabled(true);
        }
    }
}
