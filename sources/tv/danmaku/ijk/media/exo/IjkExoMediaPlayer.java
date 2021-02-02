package tv.danmaku.ijk.media.exo;

import android.content.Context;
import android.net.Uri;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.google.android.exoplayer.util.Util;
import java.io.FileDescriptor;
import java.util.Map;
import tv.danmaku.ijk.media.exo.demo.EventLogger;
import tv.danmaku.ijk.media.exo.demo.SmoothStreamingTestMediaDrmCallback;
import tv.danmaku.ijk.media.exo.demo.player.DemoPlayer;
import tv.danmaku.ijk.media.exo.demo.player.DemoPlayer.Listener;
import tv.danmaku.ijk.media.exo.demo.player.DemoPlayer.RendererBuilder;
import tv.danmaku.ijk.media.exo.demo.player.ExtractorRendererBuilder;
import tv.danmaku.ijk.media.exo.demo.player.HlsRendererBuilder;
import tv.danmaku.ijk.media.exo.demo.player.SmoothStreamingRendererBuilder;
import tv.danmaku.ijk.media.player.AbstractMediaPlayer;
import tv.danmaku.ijk.media.player.IMediaPlayer;
import tv.danmaku.ijk.media.player.MediaInfo;
import tv.danmaku.ijk.media.player.misc.IjkTrackInfo;

public class IjkExoMediaPlayer extends AbstractMediaPlayer {
    private Context mAppContext;
    private String mDataSource;
    private DemoPlayerListener mDemoListener = new DemoPlayerListener();
    private EventLogger mEventLogger = new EventLogger();
    /* access modifiers changed from: private */
    public DemoPlayer mInternalPlayer;
    private RendererBuilder mRendererBuilder;
    private Surface mSurface;
    /* access modifiers changed from: private */
    public int mVideoHeight;
    /* access modifiers changed from: private */
    public int mVideoWidth;

    private class DemoPlayerListener implements Listener {
        private boolean mDidPrepare;
        private boolean mIsBuffering;
        private boolean mIsPrepareing;

        private DemoPlayerListener() {
            this.mIsPrepareing = false;
            this.mDidPrepare = false;
            this.mIsBuffering = false;
        }

        public void onStateChanged(boolean z, int i) {
            if (this.mIsBuffering && (i == 4 || i == 5)) {
                IjkExoMediaPlayer ijkExoMediaPlayer = IjkExoMediaPlayer.this;
                ijkExoMediaPlayer.notifyOnInfo(IMediaPlayer.MEDIA_INFO_BUFFERING_END, ijkExoMediaPlayer.mInternalPlayer.getBufferedPercentage());
                this.mIsBuffering = false;
            }
            if (this.mIsPrepareing && i == 4) {
                IjkExoMediaPlayer.this.notifyOnPrepared();
                this.mIsPrepareing = false;
                this.mDidPrepare = false;
            }
            if (i == 1) {
                IjkExoMediaPlayer.this.notifyOnCompletion();
            } else if (i == 2) {
                this.mIsPrepareing = true;
            } else if (i == 3) {
                IjkExoMediaPlayer ijkExoMediaPlayer2 = IjkExoMediaPlayer.this;
                ijkExoMediaPlayer2.notifyOnInfo(IMediaPlayer.MEDIA_INFO_BUFFERING_START, ijkExoMediaPlayer2.mInternalPlayer.getBufferedPercentage());
                this.mIsBuffering = true;
            } else if (i != 4 && i == 5) {
                IjkExoMediaPlayer.this.notifyOnCompletion();
            }
        }

        public void onError(Exception exc) {
            IjkExoMediaPlayer.this.notifyOnError(1, 1);
        }

        public void onVideoSizeChanged(int i, int i2, int i3, float f) {
            IjkExoMediaPlayer.this.mVideoWidth = i;
            IjkExoMediaPlayer.this.mVideoHeight = i2;
            IjkExoMediaPlayer.this.notifyOnVideoSizeChanged(i, i2, 1, 1);
            if (i3 > 0) {
                IjkExoMediaPlayer.this.notifyOnInfo(10001, i3);
            }
        }
    }

    public int getAudioSessionId() {
        return 0;
    }

    public MediaInfo getMediaInfo() {
        return null;
    }

    public IjkTrackInfo[] getTrackInfo() {
        return null;
    }

    public int getVideoSarDen() {
        return 1;
    }

    public int getVideoSarNum() {
        return 1;
    }

    public boolean isLooping() {
        return false;
    }

    public boolean isPlayable() {
        return true;
    }

    public void setAudioStreamType(int i) {
    }

    public void setKeepInBackground(boolean z) {
    }

    public void setLogEnabled(boolean z) {
    }

    public void setScreenOnWhilePlaying(boolean z) {
    }

    public void setVolume(float f, float f2) {
    }

    public void setWakeMode(Context context, int i) {
    }

    public IjkExoMediaPlayer(Context context) {
        this.mAppContext = context.getApplicationContext();
        this.mEventLogger.startSession();
    }

    public void setDisplay(SurfaceHolder surfaceHolder) {
        if (surfaceHolder == null) {
            setSurface(null);
        } else {
            setSurface(surfaceHolder.getSurface());
        }
    }

    public void setSurface(Surface surface) {
        this.mSurface = surface;
        DemoPlayer demoPlayer = this.mInternalPlayer;
        if (demoPlayer != null) {
            demoPlayer.setSurface(surface);
        }
    }

    public void setDataSource(Context context, Uri uri) {
        this.mDataSource = uri.toString();
        this.mRendererBuilder = getRendererBuilder();
    }

    public void setDataSource(Context context, Uri uri, Map<String, String> map) {
        setDataSource(context, uri);
    }

    public void setDataSource(String str) {
        setDataSource(this.mAppContext, Uri.parse(str));
    }

    public void setDataSource(FileDescriptor fileDescriptor) {
        throw new UnsupportedOperationException("no support");
    }

    public String getDataSource() {
        return this.mDataSource;
    }

    public void prepareAsync() throws IllegalStateException {
        if (this.mInternalPlayer == null) {
            this.mInternalPlayer = new DemoPlayer(this.mRendererBuilder);
            this.mInternalPlayer.addListener(this.mDemoListener);
            this.mInternalPlayer.addListener(this.mEventLogger);
            this.mInternalPlayer.setInfoListener(this.mEventLogger);
            this.mInternalPlayer.setInternalErrorListener(this.mEventLogger);
            Surface surface = this.mSurface;
            if (surface != null) {
                this.mInternalPlayer.setSurface(surface);
            }
            this.mInternalPlayer.prepare();
            this.mInternalPlayer.setPlayWhenReady(false);
            return;
        }
        throw new IllegalStateException("can't prepare a prepared player");
    }

    public void start() throws IllegalStateException {
        DemoPlayer demoPlayer = this.mInternalPlayer;
        if (demoPlayer != null) {
            demoPlayer.setPlayWhenReady(true);
        }
    }

    public void stop() throws IllegalStateException {
        DemoPlayer demoPlayer = this.mInternalPlayer;
        if (demoPlayer != null) {
            demoPlayer.release();
        }
    }

    public void pause() throws IllegalStateException {
        DemoPlayer demoPlayer = this.mInternalPlayer;
        if (demoPlayer != null) {
            demoPlayer.setPlayWhenReady(false);
        }
    }

    public int getVideoWidth() {
        return this.mVideoWidth;
    }

    public int getVideoHeight() {
        return this.mVideoHeight;
    }

    public boolean isPlaying() {
        DemoPlayer demoPlayer = this.mInternalPlayer;
        if (demoPlayer == null) {
            return false;
        }
        int playbackState = demoPlayer.getPlaybackState();
        if (playbackState == 3 || playbackState == 4) {
            return this.mInternalPlayer.getPlayWhenReady();
        }
        return false;
    }

    public void seekTo(long j) throws IllegalStateException {
        DemoPlayer demoPlayer = this.mInternalPlayer;
        if (demoPlayer != null) {
            demoPlayer.seekTo(j);
        }
    }

    public long getCurrentPosition() {
        DemoPlayer demoPlayer = this.mInternalPlayer;
        if (demoPlayer == null) {
            return 0;
        }
        return demoPlayer.getCurrentPosition();
    }

    public long getDuration() {
        DemoPlayer demoPlayer = this.mInternalPlayer;
        if (demoPlayer == null) {
            return 0;
        }
        return demoPlayer.getDuration();
    }

    public void reset() {
        DemoPlayer demoPlayer = this.mInternalPlayer;
        if (demoPlayer != null) {
            demoPlayer.release();
            this.mInternalPlayer.removeListener(this.mDemoListener);
            this.mInternalPlayer.removeListener(this.mEventLogger);
            this.mInternalPlayer.setInfoListener(null);
            this.mInternalPlayer.setInternalErrorListener(null);
            this.mInternalPlayer = null;
        }
        this.mSurface = null;
        this.mDataSource = null;
        this.mVideoWidth = 0;
        this.mVideoHeight = 0;
    }

    public void setLooping(boolean z) {
        throw new UnsupportedOperationException("no support");
    }

    public void release() {
        if (this.mInternalPlayer != null) {
            reset();
            this.mDemoListener = null;
            this.mEventLogger.endSession();
            this.mEventLogger = null;
        }
    }

    public int getBufferedPercentage() {
        DemoPlayer demoPlayer = this.mInternalPlayer;
        if (demoPlayer == null) {
            return 0;
        }
        return demoPlayer.getBufferedPercentage();
    }

    private RendererBuilder getRendererBuilder() {
        Uri parse = Uri.parse(this.mDataSource);
        String userAgent = Util.getUserAgent(this.mAppContext, "IjkExoMediaPlayer");
        int inferContentType = inferContentType(parse);
        if (inferContentType == 1) {
            return new SmoothStreamingRendererBuilder(this.mAppContext, userAgent, parse.toString(), new SmoothStreamingTestMediaDrmCallback());
        }
        if (inferContentType != 2) {
            return new ExtractorRendererBuilder(this.mAppContext, userAgent, parse);
        }
        return new HlsRendererBuilder(this.mAppContext, userAgent, parse.toString());
    }

    private static int inferContentType(Uri uri) {
        return Util.inferContentType(uri.getLastPathSegment());
    }
}
