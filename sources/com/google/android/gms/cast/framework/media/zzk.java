package com.google.android.gms.cast.framework.media;

import java.util.TimerTask;

final class zzk extends TimerTask {
    private final /* synthetic */ MediaQueue zzmr;

    zzk(MediaQueue mediaQueue) {
        this.zzmr = mediaQueue;
    }

    public final void run() {
        this.zzmr.zzbg();
    }
}
