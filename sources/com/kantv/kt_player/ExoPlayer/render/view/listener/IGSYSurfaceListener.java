package com.kantv.kt_player.ExoPlayer.render.view.listener;

import android.view.Surface;

public interface IGSYSurfaceListener {
    void onSurfaceAvailable(Surface surface);

    boolean onSurfaceDestroyed(Surface surface);

    void onSurfaceSizeChanged(Surface surface, int i, int i2);

    void onSurfaceUpdated(Surface surface);
}
