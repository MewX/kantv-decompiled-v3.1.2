package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.framework.AppVisibilityListener;

final class zzi implements AppVisibilityListener {
    private final /* synthetic */ MediaNotificationService zzls;

    zzi(MediaNotificationService mediaNotificationService) {
        this.zzls = mediaNotificationService;
    }

    public final void onAppEnteredForeground() {
        this.zzls.stopForeground(true);
    }

    public final void onAppEnteredBackground() {
        if (this.zzls.zzbu != null) {
            MediaNotificationService mediaNotificationService = this.zzls;
            mediaNotificationService.startForeground(1, mediaNotificationService.zzbu);
            return;
        }
        this.zzls.stopForeground(true);
    }
}
