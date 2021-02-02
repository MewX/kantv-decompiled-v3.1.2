package com.google.android.gms.cast.framework.media.uicontroller;

import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;

final class zzf implements OnSeekBarChangeListener {
    private final /* synthetic */ UIMediaController zzqq;

    zzf(UIMediaController uIMediaController) {
        this.zzqq = uIMediaController;
    }

    public final void onStopTrackingTouch(SeekBar seekBar) {
        this.zzqq.onSeekBarStopTrackingTouch(seekBar);
    }

    public final void onStartTrackingTouch(SeekBar seekBar) {
        this.zzqq.onSeekBarStartTrackingTouch(seekBar);
    }

    public final void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        this.zzqq.onSeekBarProgressChanged(seekBar, i, z);
    }
}
