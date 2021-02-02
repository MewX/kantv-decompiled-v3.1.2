package com.kantv.kt_player.ExoPlayer.exo2;

import com.google.android.exoplayer2.source.MediaSource;
import java.io.File;

public interface ExoMediaSourceInterceptListener {
    MediaSource getMediaSource(String str, boolean z, boolean z2, boolean z3, File file);
}
