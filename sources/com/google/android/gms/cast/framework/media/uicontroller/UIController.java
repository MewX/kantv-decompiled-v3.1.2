package com.google.android.gms.cast.framework.media.uicontroller;

import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;

public class UIController {
    private RemoteMediaClient zzhs;

    public void onMediaStatusUpdated() {
    }

    public void onSendingRemoteMediaRequest() {
    }

    /* access modifiers changed from: protected */
    public RemoteMediaClient getRemoteMediaClient() {
        return this.zzhs;
    }

    public void onSessionConnected(CastSession castSession) {
        if (castSession != null) {
            this.zzhs = castSession.getRemoteMediaClient();
        } else {
            this.zzhs = null;
        }
    }

    public void onSessionEnded() {
        this.zzhs = null;
    }
}
