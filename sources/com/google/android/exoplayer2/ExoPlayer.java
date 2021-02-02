package com.google.android.exoplayer2;

import android.os.Looper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.PlayerMessage.Target;
import com.google.android.exoplayer2.source.MediaSource;

public interface ExoPlayer extends Player {

    @Deprecated
    public interface ExoPlayerComponent extends Target {
    }

    @Deprecated
    public static final class ExoPlayerMessage {
        public final Object message;
        public final int messageType;
        public final Target target;

        @Deprecated
        public ExoPlayerMessage(Target target2, int i, Object obj) {
            this.target = target2;
            this.messageType = i;
            this.message = obj;
        }
    }

    @Deprecated
    void blockingSendMessages(ExoPlayerMessage... exoPlayerMessageArr);

    PlayerMessage createMessage(Target target);

    Looper getPlaybackLooper();

    SeekParameters getSeekParameters();

    void prepare(MediaSource mediaSource);

    void prepare(MediaSource mediaSource, boolean z, boolean z2);

    void retry();

    @Deprecated
    void sendMessages(ExoPlayerMessage... exoPlayerMessageArr);

    void setForegroundMode(boolean z);

    void setSeekParameters(@Nullable SeekParameters seekParameters);
}
