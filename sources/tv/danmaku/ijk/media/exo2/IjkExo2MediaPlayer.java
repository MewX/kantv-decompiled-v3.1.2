package tv.danmaku.ijk.media.exo2;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import android.view.SurfaceHolder;
import androidx.annotation.Nullable;
import androidx.annotation.Size;
import com.google.android.exoplayer2.DefaultLoadControl;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.ExoPlayerFactory;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.LoadControl;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.Player.EventListener;
import com.google.android.exoplayer2.RenderersFactory;
import com.google.android.exoplayer2.SeekParameters;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.exoplayer2.analytics.AnalyticsListener.CC;
import com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime;
import com.google.android.exoplayer2.audio.AudioAttributes;
import com.google.android.exoplayer2.decoder.DecoderCounters;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.MediaSourceEventListener.LoadEventInfo;
import com.google.android.exoplayer2.source.MediaSourceEventListener.MediaLoadData;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.trackselection.MappingTrackSelector;
import com.google.android.exoplayer2.trackselection.TrackSelectionArray;
import com.google.android.exoplayer2.trackselection.TrackSelector;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import tv.danmaku.ijk.media.exo2.demo.EventLogger;
import tv.danmaku.ijk.media.player.AbstractMediaPlayer;
import tv.danmaku.ijk.media.player.IMediaPlayer;
import tv.danmaku.ijk.media.player.MediaInfo;
import tv.danmaku.ijk.media.player.misc.IjkTrackInfo;

public class IjkExo2MediaPlayer extends AbstractMediaPlayer implements EventListener, AnalyticsListener {
    public static int ON_POSITION_DISCOUNTINUITY = 2702;
    private static final String TAG = "IjkExo2MediaPlayer";
    protected int audioSessionId = 0;
    protected boolean isBuffering = false;
    protected boolean isCache = false;
    protected boolean isLastReportedPlayWhenReady;
    protected boolean isLooping = false;
    protected boolean isPreparing = true;
    protected boolean isPreview = false;
    protected int lastReportedPlaybackState;
    /* access modifiers changed from: protected */
    public Context mAppContext;
    protected File mCacheDir;
    protected String mDataSource;
    /* access modifiers changed from: protected */
    public EventLogger mEventLogger;
    protected ExoSourceManager mExoHelper;
    protected Map<String, String> mHeaders = new HashMap();
    /* access modifiers changed from: protected */
    public SimpleExoPlayer mInternalPlayer;
    protected LoadControl mLoadControl;
    /* access modifiers changed from: protected */
    public MediaSource mMediaSource;
    private String mOverrideExtension;
    protected DefaultRenderersFactory mRendererFactory;
    /* access modifiers changed from: protected */
    public PlaybackParameters mSpeedPlaybackParameters;
    /* access modifiers changed from: protected */
    public Surface mSurface;
    /* access modifiers changed from: protected */
    public MappingTrackSelector mTrackSelector;
    protected int mVideoHeight;
    protected int mVideoWidth;

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

    public boolean isPlayable() {
        return true;
    }

    public /* synthetic */ void onAudioAttributesChanged(EventTime eventTime, AudioAttributes audioAttributes) {
        CC.$default$onAudioAttributesChanged(this, eventTime, audioAttributes);
    }

    public void onAudioUnderrun(EventTime eventTime, int i, long j, long j2) {
    }

    public void onBandwidthEstimate(EventTime eventTime, int i, long j, long j2) {
    }

    public void onDecoderEnabled(EventTime eventTime, int i, DecoderCounters decoderCounters) {
    }

    public void onDecoderInitialized(EventTime eventTime, int i, String str, long j) {
    }

    public void onDecoderInputFormatChanged(EventTime eventTime, int i, Format format) {
    }

    public void onDownstreamFormatChanged(EventTime eventTime, MediaLoadData mediaLoadData) {
    }

    public void onDrmKeysLoaded(EventTime eventTime) {
    }

    public void onDrmKeysRemoved(EventTime eventTime) {
    }

    public void onDrmKeysRestored(EventTime eventTime) {
    }

    public /* synthetic */ void onDrmSessionAcquired(EventTime eventTime) {
        CC.$default$onDrmSessionAcquired(this, eventTime);
    }

    public void onDrmSessionManagerError(EventTime eventTime, Exception exc) {
    }

    public /* synthetic */ void onDrmSessionReleased(EventTime eventTime) {
        CC.$default$onDrmSessionReleased(this, eventTime);
    }

    public void onDroppedVideoFrames(EventTime eventTime, int i, long j) {
    }

    public void onLoadCanceled(EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
    }

    public void onLoadCompleted(EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
    }

    public void onLoadError(EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z) {
    }

    public void onLoadStarted(EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
    }

    public void onLoadingChanged(EventTime eventTime, boolean z) {
    }

    public void onLoadingChanged(boolean z) {
    }

    public void onMediaPeriodCreated(EventTime eventTime) {
    }

    public void onMediaPeriodReleased(EventTime eventTime) {
    }

    public void onMetadata(EventTime eventTime, Metadata metadata) {
    }

    public void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
    }

    public void onPlaybackParametersChanged(EventTime eventTime, PlaybackParameters playbackParameters) {
    }

    public void onPlayerError(EventTime eventTime, ExoPlaybackException exoPlaybackException) {
    }

    public void onPlayerStateChanged(EventTime eventTime, boolean z, int i) {
    }

    public void onPositionDiscontinuity(int i) {
    }

    public void onReadingStarted(EventTime eventTime) {
    }

    public void onRenderedFirstFrame(EventTime eventTime, Surface surface) {
    }

    public void onRepeatModeChanged(int i) {
    }

    public void onRepeatModeChanged(EventTime eventTime, int i) {
    }

    public void onSeekProcessed(EventTime eventTime) {
    }

    public void onSeekStarted(EventTime eventTime) {
    }

    public void onShuffleModeChanged(EventTime eventTime, boolean z) {
    }

    public void onShuffleModeEnabledChanged(boolean z) {
    }

    public /* synthetic */ void onSurfaceSizeChanged(EventTime eventTime, int i, int i2) {
        CC.$default$onSurfaceSizeChanged(this, eventTime, i, i2);
    }

    public void onTimelineChanged(Timeline timeline, Object obj, int i) {
    }

    public void onTimelineChanged(EventTime eventTime, int i) {
    }

    public void onTracksChanged(EventTime eventTime, TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray) {
    }

    public void onTracksChanged(TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray) {
    }

    public void onUpstreamDiscarded(EventTime eventTime, MediaLoadData mediaLoadData) {
    }

    public /* synthetic */ void onVolumeChanged(EventTime eventTime, float f) {
        CC.$default$onVolumeChanged(this, eventTime, f);
    }

    public void setAudioStreamType(int i) {
    }

    public void setKeepInBackground(boolean z) {
    }

    public void setLogEnabled(boolean z) {
    }

    public void setScreenOnWhilePlaying(boolean z) {
    }

    public void setWakeMode(Context context, int i) {
    }

    public IjkExo2MediaPlayer(Context context) {
        this.mAppContext = context.getApplicationContext();
        this.lastReportedPlaybackState = 1;
        this.mExoHelper = ExoSourceManager.newInstance(context, this.mHeaders);
    }

    private int getVideoRendererIndex() {
        if (this.mInternalPlayer != null) {
            for (int i = 0; i < this.mInternalPlayer.getRendererCount(); i++) {
                if (this.mInternalPlayer.getRendererType(i) == 2) {
                    return i;
                }
            }
        }
        return 0;
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
        if (this.mInternalPlayer != null) {
            if (surface != null && !surface.isValid()) {
                this.mSurface = null;
            }
            this.mInternalPlayer.setVideoSurface(surface);
        }
    }

    public void setDataSource(Context context, Uri uri, Map<String, String> map) {
        if (map != null) {
            this.mHeaders.clear();
            this.mHeaders.putAll(map);
        }
        setDataSource(context, uri);
    }

    public void setDataSource(String str) {
        setDataSource(this.mAppContext, Uri.parse(str));
    }

    public void setDataSource(Context context, Uri uri) {
        this.mDataSource = uri.toString();
        this.mMediaSource = this.mExoHelper.getMediaSource(this.mDataSource, this.isPreview, this.isCache, this.isLooping, this.mCacheDir, this.mOverrideExtension);
    }

    public void setDataSource(FileDescriptor fileDescriptor) {
        throw new UnsupportedOperationException("no support");
    }

    public String getDataSource() {
        return this.mDataSource;
    }

    public void prepareAsync() throws IllegalStateException {
        if (this.mInternalPlayer == null) {
            prepareAsyncInternal();
            return;
        }
        throw new IllegalStateException("can't prepare a prepared player");
    }

    public void start() throws IllegalStateException {
        SimpleExoPlayer simpleExoPlayer = this.mInternalPlayer;
        if (simpleExoPlayer != null) {
            simpleExoPlayer.setPlayWhenReady(true);
        }
    }

    public void stop() throws IllegalStateException {
        SimpleExoPlayer simpleExoPlayer = this.mInternalPlayer;
        if (simpleExoPlayer != null) {
            simpleExoPlayer.release();
        }
    }

    public void pause() throws IllegalStateException {
        SimpleExoPlayer simpleExoPlayer = this.mInternalPlayer;
        if (simpleExoPlayer != null) {
            simpleExoPlayer.setPlayWhenReady(false);
        }
    }

    public int getVideoWidth() {
        return this.mVideoWidth;
    }

    public int getVideoHeight() {
        return this.mVideoHeight;
    }

    public boolean isPlaying() {
        SimpleExoPlayer simpleExoPlayer = this.mInternalPlayer;
        if (simpleExoPlayer == null) {
            return false;
        }
        int playbackState = simpleExoPlayer.getPlaybackState();
        if (playbackState == 2 || playbackState == 3) {
            return this.mInternalPlayer.getPlayWhenReady();
        }
        return false;
    }

    public void seekTo(long j) throws IllegalStateException {
        SimpleExoPlayer simpleExoPlayer = this.mInternalPlayer;
        if (simpleExoPlayer != null) {
            simpleExoPlayer.seekTo(j);
        }
    }

    public long getCurrentPosition() {
        SimpleExoPlayer simpleExoPlayer = this.mInternalPlayer;
        if (simpleExoPlayer == null) {
            return 0;
        }
        return simpleExoPlayer.getCurrentPosition();
    }

    public long getDuration() {
        SimpleExoPlayer simpleExoPlayer = this.mInternalPlayer;
        if (simpleExoPlayer == null) {
            return 0;
        }
        return simpleExoPlayer.getDuration();
    }

    public void reset() {
        SimpleExoPlayer simpleExoPlayer = this.mInternalPlayer;
        if (simpleExoPlayer != null) {
            simpleExoPlayer.release();
            this.mInternalPlayer = null;
        }
        ExoSourceManager exoSourceManager = this.mExoHelper;
        if (exoSourceManager != null) {
            exoSourceManager.release();
        }
        this.mSurface = null;
        this.mDataSource = null;
        this.mVideoWidth = 0;
        this.mVideoHeight = 0;
    }

    public void setLooping(boolean z) {
        this.isLooping = z;
    }

    public boolean isLooping() {
        return this.isLooping;
    }

    public void setVolume(float f, float f2) {
        SimpleExoPlayer simpleExoPlayer = this.mInternalPlayer;
        if (simpleExoPlayer != null) {
            simpleExoPlayer.setVolume((f + f2) / 2.0f);
        }
    }

    public int getAudioSessionId() {
        return this.audioSessionId;
    }

    public void release() {
        if (this.mInternalPlayer != null) {
            reset();
            this.mEventLogger = null;
        }
    }

    /* access modifiers changed from: protected */
    public void prepareAsyncInternal() {
        new Handler(Looper.getMainLooper()).post(new Runnable() {
            public void run() {
                if (IjkExo2MediaPlayer.this.mTrackSelector == null) {
                    IjkExo2MediaPlayer.this.mTrackSelector = new DefaultTrackSelector();
                }
                IjkExo2MediaPlayer ijkExo2MediaPlayer = IjkExo2MediaPlayer.this;
                ijkExo2MediaPlayer.mEventLogger = new EventLogger(ijkExo2MediaPlayer.mTrackSelector);
                if (IjkExo2MediaPlayer.this.mRendererFactory == null) {
                    IjkExo2MediaPlayer ijkExo2MediaPlayer2 = IjkExo2MediaPlayer.this;
                    ijkExo2MediaPlayer2.mRendererFactory = new DefaultRenderersFactory(ijkExo2MediaPlayer2.mAppContext);
                    IjkExo2MediaPlayer.this.mRendererFactory.setExtensionRendererMode(2);
                }
                if (IjkExo2MediaPlayer.this.mLoadControl == null) {
                    IjkExo2MediaPlayer.this.mLoadControl = new DefaultLoadControl();
                }
                IjkExo2MediaPlayer ijkExo2MediaPlayer3 = IjkExo2MediaPlayer.this;
                ijkExo2MediaPlayer3.mInternalPlayer = ExoPlayerFactory.newSimpleInstance(ijkExo2MediaPlayer3.mAppContext, (RenderersFactory) IjkExo2MediaPlayer.this.mRendererFactory, (TrackSelector) IjkExo2MediaPlayer.this.mTrackSelector, IjkExo2MediaPlayer.this.mLoadControl, null, Looper.getMainLooper());
                IjkExo2MediaPlayer.this.mInternalPlayer.addListener(IjkExo2MediaPlayer.this);
                IjkExo2MediaPlayer.this.mInternalPlayer.addAnalyticsListener(IjkExo2MediaPlayer.this);
                IjkExo2MediaPlayer.this.mInternalPlayer.addListener(IjkExo2MediaPlayer.this.mEventLogger);
                if (IjkExo2MediaPlayer.this.mSpeedPlaybackParameters != null) {
                    IjkExo2MediaPlayer.this.mInternalPlayer.setPlaybackParameters(IjkExo2MediaPlayer.this.mSpeedPlaybackParameters);
                }
                if (IjkExo2MediaPlayer.this.mSurface != null) {
                    IjkExo2MediaPlayer.this.mInternalPlayer.setVideoSurface(IjkExo2MediaPlayer.this.mSurface);
                }
                IjkExo2MediaPlayer.this.mInternalPlayer.prepare(IjkExo2MediaPlayer.this.mMediaSource);
                IjkExo2MediaPlayer.this.mInternalPlayer.setPlayWhenReady(false);
            }
        });
    }

    public String getOverrideExtension() {
        return this.mOverrideExtension;
    }

    public void setOverrideExtension(String str) {
        this.mOverrideExtension = str;
    }

    public void stopPlayback() {
        this.mInternalPlayer.stop();
    }

    public void setPreview(boolean z) {
        this.isPreview = z;
    }

    public boolean isPreview() {
        return this.isPreview;
    }

    public boolean isCache() {
        return this.isCache;
    }

    public void setSeekParameter(@Nullable SeekParameters seekParameters) {
        this.mInternalPlayer.setSeekParameters(seekParameters);
    }

    public void setCache(boolean z) {
        this.isCache = z;
    }

    public File getCacheDir() {
        return this.mCacheDir;
    }

    public void setCacheDir(File file) {
        this.mCacheDir = file;
    }

    public MediaSource getMediaSource() {
        return this.mMediaSource;
    }

    public void setMediaSource(MediaSource mediaSource) {
        this.mMediaSource = mediaSource;
    }

    public ExoSourceManager getExoHelper() {
        return this.mExoHelper;
    }

    public void setSpeed(@Size(min = 0) float f, @Size(min = 0) float f2) {
        PlaybackParameters playbackParameters = new PlaybackParameters(f, f2);
        this.mSpeedPlaybackParameters = playbackParameters;
        SimpleExoPlayer simpleExoPlayer = this.mInternalPlayer;
        if (simpleExoPlayer != null) {
            simpleExoPlayer.setPlaybackParameters(playbackParameters);
        }
    }

    public float getSpeed() {
        return this.mInternalPlayer.getPlaybackParameters().speed;
    }

    public int getBufferedPercentage() {
        SimpleExoPlayer simpleExoPlayer = this.mInternalPlayer;
        if (simpleExoPlayer == null) {
            return 0;
        }
        return simpleExoPlayer.getBufferedPercentage();
    }

    public MappingTrackSelector getTrackSelector() {
        return this.mTrackSelector;
    }

    public void setTrackSelector(MappingTrackSelector mappingTrackSelector) {
        this.mTrackSelector = mappingTrackSelector;
    }

    public LoadControl getLoadControl() {
        return this.mLoadControl;
    }

    public void setLoadControl(LoadControl loadControl) {
        this.mLoadControl = loadControl;
    }

    public DefaultRenderersFactory getRendererFactory() {
        return this.mRendererFactory;
    }

    public void setRendererFactory(DefaultRenderersFactory defaultRenderersFactory) {
        this.mRendererFactory = defaultRenderersFactory;
    }

    public void onPlayerStateChanged(boolean z, int i) {
        if (!(this.isLastReportedPlayWhenReady == z && this.lastReportedPlaybackState == i)) {
            if (this.isBuffering && (i == 3 || i == 4)) {
                notifyOnInfo(IMediaPlayer.MEDIA_INFO_BUFFERING_END, this.mInternalPlayer.getBufferedPercentage());
                this.isBuffering = false;
            }
            if (this.isPreparing && i == 3) {
                notifyOnPrepared();
                this.isPreparing = false;
            }
            if (i == 2) {
                notifyOnInfo(IMediaPlayer.MEDIA_INFO_BUFFERING_START, this.mInternalPlayer.getBufferedPercentage());
                this.isBuffering = true;
            } else if (i != 3 && i == 4) {
                notifyOnCompletion();
            }
        }
        this.isLastReportedPlayWhenReady = z;
        this.lastReportedPlaybackState = i;
    }

    public void onPlayerError(ExoPlaybackException exoPlaybackException) {
        notifyOnError(1, 1);
    }

    public void onSeekProcessed() {
        notifyOnSeekComplete();
    }

    public void onPositionDiscontinuity(EventTime eventTime, int i) {
        notifyOnInfo(ON_POSITION_DISCOUNTINUITY, i);
    }

    public void onDecoderDisabled(EventTime eventTime, int i, DecoderCounters decoderCounters) {
        this.audioSessionId = 0;
    }

    public void onAudioSessionId(EventTime eventTime, int i) {
        this.audioSessionId = i;
    }

    public void onVideoSizeChanged(EventTime eventTime, int i, int i2, int i3, float f) {
        this.mVideoWidth = i;
        this.mVideoHeight = i2;
        notifyOnVideoSizeChanged(i, i2, 1, 1);
        if (i3 > 0) {
            notifyOnInfo(10001, i3);
        }
    }
}
