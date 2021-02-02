package com.google.android.gms.cast.framework;

import androidx.annotation.NonNull;

public class MediaNotificationManager {
    private final SessionManager zzgv;

    public MediaNotificationManager(@NonNull SessionManager sessionManager) {
        this.zzgv = sessionManager;
    }

    public void updateNotification() {
        CastSession currentCastSession = this.zzgv.getCurrentCastSession();
        if (currentCastSession != null) {
            currentCastSession.zzs().zzg(true);
        }
    }
}
