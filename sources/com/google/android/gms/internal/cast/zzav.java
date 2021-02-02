package com.google.android.gms.internal.cast;

import android.view.View;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;

public final class zzav extends UIController {
    private final View view;

    public zzav(View view2) {
        this.view = view2;
    }

    public final void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        zzco();
    }

    public final void onSessionEnded() {
        this.view.setVisibility(8);
        super.onSessionEnded();
    }

    public final void onMediaStatusUpdated() {
        zzco();
    }

    public final void onSendingRemoteMediaRequest() {
        this.view.setVisibility(0);
    }

    private final void zzco() {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession() || remoteMediaClient.isBuffering()) {
            this.view.setVisibility(0);
        } else {
            this.view.setVisibility(8);
        }
    }
}
