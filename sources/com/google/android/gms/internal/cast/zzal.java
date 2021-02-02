package com.google.android.gms.internal.cast;

import android.content.Intent;
import android.support.v4.media.session.MediaSessionCompat.Callback;
import android.view.KeyEvent;

final class zzal extends Callback {
    private final /* synthetic */ zzai zzqj;

    zzal(zzai zzai) {
        this.zzqj = zzai;
    }

    public final boolean onMediaButtonEvent(Intent intent) {
        KeyEvent keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT");
        if (keyEvent != null && (keyEvent.getKeyCode() == 127 || keyEvent.getKeyCode() == 126)) {
            this.zzqj.zzhs.togglePlayback();
        }
        return true;
    }

    public final void onPlay() {
        this.zzqj.zzhs.togglePlayback();
    }

    public final void onPause() {
        this.zzqj.zzhs.togglePlayback();
    }

    public final void onStop() {
        if (this.zzqj.zzhs.isLiveStream()) {
            this.zzqj.zzhs.togglePlayback();
        }
    }
}
