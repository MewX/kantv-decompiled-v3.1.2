package com.kantv.kt_player.ExoPlayer.player;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import android.view.SurfaceHolder;
import androidx.annotation.Nullable;
import androidx.annotation.Size;
import com.google.android.exoplayer2.DefaultLoadControl;
import com.google.android.exoplayer2.DefaultLoadControl.Builder;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.ExoPlayerFactory;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.LoadControl;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.Player.EventListener;
import com.google.android.exoplayer2.RenderersFactory;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.exoplayer2.analytics.AnalyticsListener.CC;
import com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime;
import com.google.android.exoplayer2.audio.AudioAttributes;
import com.google.android.exoplayer2.decoder.DecoderCounters;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.source.ConcatenatingMediaSource;
import com.google.android.exoplayer2.source.ExtractorMediaSource;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.MediaSourceEventListener.LoadEventInfo;
import com.google.android.exoplayer2.source.MediaSourceEventListener.MediaLoadData;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.dash.DashMediaSource;
import com.google.android.exoplayer2.source.hls.HlsMediaSource;
import com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.trackselection.TrackSelectionArray;
import com.google.android.exoplayer2.trackselection.TrackSelector;
import com.google.android.exoplayer2.upstream.DataSource.Factory;
import com.google.android.exoplayer2.upstream.DefaultDataSourceFactory;
import com.google.android.exoplayer2.util.Util;
import com.kantv.kt_player.ExoPlayer.exo2.ExoSourceManager;
import com.kantv.kt_player.ExoPlayer.exo2.demo.EventLogger;
import com.kantv.kt_player.R;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import tv.danmaku.ijk.media.player.AbstractMediaPlayer;
import tv.danmaku.ijk.media.player.IMediaPlayer;
import tv.danmaku.ijk.media.player.MediaInfo;
import tv.danmaku.ijk.media.player.misc.IjkTrackInfo;

public class ExoMediaPlayer extends AbstractMediaPlayer implements EventListener, AnalyticsListener {
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
    protected Context mAppContext;
    protected File mCacheDir;
    /* access modifiers changed from: private */
    public int mContentIndex;
    protected String mDataSource;
    protected EventLogger mEventLogger;
    protected ExoSourceManager mExoHelper;
    protected Map<String, String> mHeaders = new HashMap();
    protected SimpleExoPlayer mInternalPlayer;
    protected MediaSource mMediaSource;
    private String mOverrideExtension;
    protected PlaybackParameters mSpeedPlaybackParameters;
    protected Surface mSurface;
    protected DefaultTrackSelector mTrackSelector;
    protected int mVideoHeight;
    protected int mVideoWidth;
    protected DefaultRenderersFactory rendererFactory;

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

    public ExoMediaPlayer(Context context) {
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
                ExoMediaPlayer.this.mTrackSelector = new DefaultTrackSelector();
                ExoMediaPlayer exoMediaPlayer = ExoMediaPlayer.this;
                exoMediaPlayer.mEventLogger = new EventLogger(exoMediaPlayer.mTrackSelector);
                ExoMediaPlayer exoMediaPlayer2 = ExoMediaPlayer.this;
                exoMediaPlayer2.rendererFactory = new DefaultRenderersFactory(exoMediaPlayer2.mAppContext, 2);
                DefaultLoadControl createDefaultLoadControl = new Builder().setBufferDurationsMs(90000, 300000, 2500, 5000).createDefaultLoadControl();
                ExoMediaPlayer exoMediaPlayer3 = ExoMediaPlayer.this;
                exoMediaPlayer3.mInternalPlayer = ExoPlayerFactory.newSimpleInstance(exoMediaPlayer3.mAppContext, (RenderersFactory) ExoMediaPlayer.this.rendererFactory, (TrackSelector) ExoMediaPlayer.this.mTrackSelector, (LoadControl) createDefaultLoadControl, null, Looper.getMainLooper());
                ExoMediaPlayer.this.mInternalPlayer.addListener(ExoMediaPlayer.this);
                ExoMediaPlayer.this.mInternalPlayer.addAnalyticsListener(ExoMediaPlayer.this);
                ExoMediaPlayer.this.mInternalPlayer.addListener(ExoMediaPlayer.this.mEventLogger);
                if (ExoMediaPlayer.this.mSpeedPlaybackParameters != null) {
                    ExoMediaPlayer.this.mInternalPlayer.setPlaybackParameters(ExoMediaPlayer.this.mSpeedPlaybackParameters);
                }
                if (ExoMediaPlayer.this.mSurface != null) {
                    ExoMediaPlayer.this.mInternalPlayer.setVideoSurface(ExoMediaPlayer.this.mSurface);
                }
            }
        });
    }

    public void prepare(final String str) {
        new Handler(Looper.getMainLooper()).post(new Runnable() {
            public void run() {
                DefaultDataSourceFactory defaultDataSourceFactory = new DefaultDataSourceFactory(ExoMediaPlayer.this.mAppContext, Util.getUserAgent(ExoMediaPlayer.this.mAppContext, ExoMediaPlayer.this.mAppContext.getString(R.string.app_name)));
                ArrayList arrayList = new ArrayList();
                MediaSource access$000 = ExoMediaPlayer.this.buildMediaSource(Uri.parse(str), null, defaultDataSourceFactory, str);
                if (arrayList.size() != 0) {
                    arrayList.add(access$000);
                    MediaSource[] mediaSourceArr = new MediaSource[arrayList.size()];
                    arrayList.toArray(mediaSourceArr);
                    MediaSource concatenatingMediaSource = new ConcatenatingMediaSource(mediaSourceArr);
                    ExoMediaPlayer.this.mContentIndex = mediaSourceArr.length - 1;
                    access$000 = concatenatingMediaSource;
                }
                ExoMediaPlayer exoMediaPlayer = ExoMediaPlayer.this;
                exoMediaPlayer.isPreparing = true;
                exoMediaPlayer.mInternalPlayer.prepare(access$000, true, true);
                ExoMediaPlayer.this.mInternalPlayer.setPlayWhenReady(false);
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

    /* access modifiers changed from: private */
    public MediaSource buildMediaSource(Uri uri, @Nullable String str, Factory factory, Object obj) {
        int inferContentType = Util.inferContentType(uri, str);
        if (inferContentType == 0) {
            return new DashMediaSource.Factory(factory).setTag(obj).createMediaSource(uri);
        }
        if (inferContentType == 1) {
            return new SsMediaSource.Factory(factory).setTag(obj).createMediaSource(uri);
        }
        if (inferContentType == 2) {
            return new HlsMediaSource.Factory(factory).setTag(obj).createMediaSource(uri);
        }
        if (inferContentType == 3) {
            return new ExtractorMediaSource.Factory(factory).setTag(obj).createMediaSource(uri);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Unsupported type: ");
        sb.append(inferContentType);
        throw new IllegalStateException(sb.toString());
    }
}
