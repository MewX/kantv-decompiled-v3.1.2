package com.google.android.gms.internal.cast;

import android.view.View;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;

public final class zzbj extends UIController {
    private final View view;
    private final int zzrq;

    public zzbj(View view2, int i) {
        this.view = view2;
        this.zzrq = i;
    }

    public final void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        zzco();
    }

    public final void onSessionEnded() {
        this.view.setVisibility(this.zzrq);
        super.onSessionEnded();
    }

    public final void onMediaStatusUpdated() {
        zzco();
    }

    private final void zzco() {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession()) {
            this.view.setVisibility(this.zzrq);
        } else if (remoteMediaClient.getMediaStatus().getPreloadedItemId() == 0) {
            this.view.setVisibility(this.zzrq);
        } else {
            this.view.setVisibility(0);
        }
    }
}
