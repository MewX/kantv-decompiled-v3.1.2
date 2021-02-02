package com.google.android.gms.internal.cast;

import android.graphics.drawable.ColorDrawable;
import android.widget.SeekBar;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;
import com.google.android.gms.common.util.PlatformVersion;

public final class zzat extends UIController {
    private final SeekBar zzqz;
    private final SeekBar zzra;

    public zzat(SeekBar seekBar, SeekBar seekBar2) {
        this.zzqz = seekBar;
        this.zzra = seekBar2;
        this.zzqz.setClickable(false);
        if (PlatformVersion.isAtLeastKitKat()) {
            this.zzqz.setThumb(null);
        } else {
            this.zzqz.setThumb(new ColorDrawable(0));
        }
        this.zzqz.setMax(1);
        this.zzqz.setProgress(1);
        this.zzqz.setOnTouchListener(new zzau(this));
    }

    public final void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        zzcq();
    }

    public final void onMediaStatusUpdated() {
        zzcq();
    }

    private final void zzcq() {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient != null && remoteMediaClient.hasMediaSession()) {
            boolean isLiveStream = remoteMediaClient.isLiveStream();
            int i = 0;
            this.zzqz.setVisibility(isLiveStream ? 0 : 4);
            SeekBar seekBar = this.zzra;
            if (isLiveStream) {
                i = 4;
            }
            seekBar.setVisibility(i);
        }
    }
}
