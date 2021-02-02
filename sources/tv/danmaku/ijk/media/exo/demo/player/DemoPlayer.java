package tv.danmaku.ijk.media.exo.demo.player;

import android.media.MediaCodec.CryptoException;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import com.google.android.exoplayer.CodecCounters;
import com.google.android.exoplayer.DummyTrackRenderer;
import com.google.android.exoplayer.ExoPlaybackException;
import com.google.android.exoplayer.ExoPlayer;
import com.google.android.exoplayer.ExoPlayer.Factory;
import com.google.android.exoplayer.MediaCodecAudioTrackRenderer;
import com.google.android.exoplayer.MediaCodecTrackRenderer;
import com.google.android.exoplayer.MediaCodecTrackRenderer.DecoderInitializationException;
import com.google.android.exoplayer.MediaCodecVideoTrackRenderer;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.SingleSampleSource;
import com.google.android.exoplayer.TimeRange;
import com.google.android.exoplayer.TrackRenderer;
import com.google.android.exoplayer.audio.AudioTrack.InitializationException;
import com.google.android.exoplayer.audio.AudioTrack.WriteException;
import com.google.android.exoplayer.chunk.ChunkSampleSource.EventListener;
import com.google.android.exoplayer.chunk.Format;
import com.google.android.exoplayer.dash.DashChunkSource;
import com.google.android.exoplayer.drm.StreamingDrmSessionManager;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.hls.HlsSampleSource;
import com.google.android.exoplayer.metadata.MetadataTrackRenderer.MetadataRenderer;
import com.google.android.exoplayer.metadata.id3.Id3Frame;
import com.google.android.exoplayer.text.Cue;
import com.google.android.exoplayer.text.TextRenderer;
import com.google.android.exoplayer.upstream.BandwidthMeter;
import com.google.android.exoplayer.util.DebugTextViewHelper.Provider;
import com.google.android.exoplayer.util.PlayerControl;
import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class DemoPlayer implements com.google.android.exoplayer.ExoPlayer.Listener, EventListener, HlsSampleSource.EventListener, ExtractorSampleSource.EventListener, SingleSampleSource.EventListener, BandwidthMeter.EventListener, MediaCodecVideoTrackRenderer.EventListener, MediaCodecAudioTrackRenderer.EventListener, StreamingDrmSessionManager.EventListener, DashChunkSource.EventListener, TextRenderer, MetadataRenderer<List<Id3Frame>>, Provider {
    private static final int RENDERER_BUILDING_STATE_BUILDING = 2;
    private static final int RENDERER_BUILDING_STATE_BUILT = 3;
    private static final int RENDERER_BUILDING_STATE_IDLE = 1;
    public static final int RENDERER_COUNT = 4;
    public static final int STATE_BUFFERING = 3;
    public static final int STATE_ENDED = 5;
    public static final int STATE_IDLE = 1;
    public static final int STATE_PREPARING = 2;
    public static final int STATE_READY = 4;
    public static final int TRACK_DEFAULT = 0;
    public static final int TRACK_DISABLED = -1;
    public static final int TYPE_AUDIO = 1;
    public static final int TYPE_METADATA = 3;
    public static final int TYPE_TEXT = 2;
    public static final int TYPE_VIDEO = 0;
    private boolean backgrounded;
    private BandwidthMeter bandwidthMeter;
    private CaptionListener captionListener;
    private CodecCounters codecCounters;
    private Id3MetadataListener id3MetadataListener;
    private InfoListener infoListener;
    private InternalErrorListener internalErrorListener;
    private boolean lastReportedPlayWhenReady;
    private int lastReportedPlaybackState;
    private final CopyOnWriteArrayList<Listener> listeners;
    private final Handler mainHandler;
    private final ExoPlayer player = Factory.newInstance(4, 1000, 5000);
    private final PlayerControl playerControl;
    private final RendererBuilder rendererBuilder;
    private int rendererBuildingState;
    private Surface surface;
    private Format videoFormat;
    private TrackRenderer videoRenderer;
    private int videoTrackToRestore;

    public interface CaptionListener {
        void onCues(List<Cue> list);
    }

    public interface Id3MetadataListener {
        void onId3Metadata(List<Id3Frame> list);
    }

    public interface InfoListener {
        void onAudioFormatEnabled(Format format, int i, long j);

        void onAvailableRangeChanged(int i, TimeRange timeRange);

        void onBandwidthSample(int i, long j, long j2);

        void onDecoderInitialized(String str, long j, long j2);

        void onDroppedFrames(int i, long j);

        void onLoadCompleted(int i, long j, int i2, int i3, Format format, long j2, long j3, long j4, long j5);

        void onLoadStarted(int i, long j, int i2, int i3, Format format, long j2, long j3);

        void onVideoFormatEnabled(Format format, int i, long j);
    }

    public interface InternalErrorListener {
        void onAudioTrackInitializationError(InitializationException initializationException);

        void onAudioTrackUnderrun(int i, long j, long j2);

        void onAudioTrackWriteError(WriteException writeException);

        void onCryptoError(CryptoException cryptoException);

        void onDecoderInitializationError(DecoderInitializationException decoderInitializationException);

        void onDrmSessionManagerError(Exception exc);

        void onLoadError(int i, IOException iOException);

        void onRendererInitializationError(Exception exc);
    }

    public interface Listener {
        void onError(Exception exc);

        void onStateChanged(boolean z, int i);

        void onVideoSizeChanged(int i, int i2, int i3, float f);
    }

    public interface RendererBuilder {
        void buildRenderers(DemoPlayer demoPlayer);

        void cancel();
    }

    public void onDrawnToSurface(Surface surface2) {
    }

    public void onDrmKeysLoaded() {
    }

    public void onLoadCanceled(int i, long j) {
    }

    public void onPlayWhenReadyCommitted() {
    }

    public void onUpstreamDiscarded(int i, long j, long j2) {
    }

    public DemoPlayer(RendererBuilder rendererBuilder2) {
        this.rendererBuilder = rendererBuilder2;
        this.player.addListener(this);
        this.playerControl = new PlayerControl(this.player);
        this.mainHandler = new Handler();
        this.listeners = new CopyOnWriteArrayList<>();
        this.lastReportedPlaybackState = 1;
        this.rendererBuildingState = 1;
        this.player.setSelectedTrack(2, -1);
    }

    public PlayerControl getPlayerControl() {
        return this.playerControl;
    }

    public void addListener(Listener listener) {
        this.listeners.add(listener);
    }

    public void removeListener(Listener listener) {
        this.listeners.remove(listener);
    }

    public void setInternalErrorListener(InternalErrorListener internalErrorListener2) {
        this.internalErrorListener = internalErrorListener2;
    }

    public void setInfoListener(InfoListener infoListener2) {
        this.infoListener = infoListener2;
    }

    public void setCaptionListener(CaptionListener captionListener2) {
        this.captionListener = captionListener2;
    }

    public void setMetadataListener(Id3MetadataListener id3MetadataListener2) {
        this.id3MetadataListener = id3MetadataListener2;
    }

    public void setSurface(Surface surface2) {
        this.surface = surface2;
        pushSurface(false);
    }

    public Surface getSurface() {
        return this.surface;
    }

    public void blockingClearSurface() {
        this.surface = null;
        pushSurface(true);
    }

    public int getTrackCount(int i) {
        return this.player.getTrackCount(i);
    }

    public MediaFormat getTrackFormat(int i, int i2) {
        return this.player.getTrackFormat(i, i2);
    }

    public int getSelectedTrack(int i) {
        return this.player.getSelectedTrack(i);
    }

    public void setSelectedTrack(int i, int i2) {
        this.player.setSelectedTrack(i, i2);
        if (i == 2 && i2 < 0) {
            CaptionListener captionListener2 = this.captionListener;
            if (captionListener2 != null) {
                captionListener2.onCues(Collections.emptyList());
            }
        }
    }

    public boolean getBackgrounded() {
        return this.backgrounded;
    }

    public void setBackgrounded(boolean z) {
        if (this.backgrounded != z) {
            this.backgrounded = z;
            if (z) {
                this.videoTrackToRestore = getSelectedTrack(0);
                setSelectedTrack(0, -1);
                blockingClearSurface();
            } else {
                setSelectedTrack(0, this.videoTrackToRestore);
            }
        }
    }

    public void prepare() {
        if (this.rendererBuildingState == 3) {
            this.player.stop();
        }
        this.rendererBuilder.cancel();
        this.videoFormat = null;
        this.videoRenderer = null;
        this.rendererBuildingState = 2;
        maybeReportPlayerState();
        this.rendererBuilder.buildRenderers(this);
    }

    /* access modifiers changed from: 0000 */
    public void onRenderers(TrackRenderer[] trackRendererArr, BandwidthMeter bandwidthMeter2) {
        CodecCounters codecCounters2;
        for (int i = 0; i < 4; i++) {
            if (trackRendererArr[i] == null) {
                trackRendererArr[i] = new DummyTrackRenderer();
            }
        }
        this.videoRenderer = trackRendererArr[0];
        MediaCodecTrackRenderer mediaCodecTrackRenderer = this.videoRenderer;
        if (!(mediaCodecTrackRenderer instanceof MediaCodecTrackRenderer)) {
            if (trackRendererArr[1] instanceof MediaCodecTrackRenderer) {
                mediaCodecTrackRenderer = trackRendererArr[1];
            } else {
                codecCounters2 = null;
                this.codecCounters = codecCounters2;
                this.bandwidthMeter = bandwidthMeter2;
                pushSurface(false);
                this.player.prepare(trackRendererArr);
                this.rendererBuildingState = 3;
            }
        }
        codecCounters2 = mediaCodecTrackRenderer.codecCounters;
        this.codecCounters = codecCounters2;
        this.bandwidthMeter = bandwidthMeter2;
        pushSurface(false);
        this.player.prepare(trackRendererArr);
        this.rendererBuildingState = 3;
    }

    /* access modifiers changed from: 0000 */
    public void onRenderersError(Exception exc) {
        InternalErrorListener internalErrorListener2 = this.internalErrorListener;
        if (internalErrorListener2 != null) {
            internalErrorListener2.onRendererInitializationError(exc);
        }
        Iterator it = this.listeners.iterator();
        while (it.hasNext()) {
            ((Listener) it.next()).onError(exc);
        }
        this.rendererBuildingState = 1;
        maybeReportPlayerState();
    }

    public void setPlayWhenReady(boolean z) {
        this.player.setPlayWhenReady(z);
    }

    public void seekTo(long j) {
        this.player.seekTo(j);
    }

    public void release() {
        this.rendererBuilder.cancel();
        this.rendererBuildingState = 1;
        this.surface = null;
        this.player.release();
    }

    public int getPlaybackState() {
        if (this.rendererBuildingState == 2) {
            return 2;
        }
        int playbackState = this.player.getPlaybackState();
        if (this.rendererBuildingState == 3 && playbackState == 1) {
            return 2;
        }
        return playbackState;
    }

    public Format getFormat() {
        return this.videoFormat;
    }

    public BandwidthMeter getBandwidthMeter() {
        return this.bandwidthMeter;
    }

    public CodecCounters getCodecCounters() {
        return this.codecCounters;
    }

    public long getCurrentPosition() {
        return this.player.getCurrentPosition();
    }

    public long getDuration() {
        return this.player.getDuration();
    }

    public int getBufferedPercentage() {
        return this.player.getBufferedPercentage();
    }

    public boolean getPlayWhenReady() {
        return this.player.getPlayWhenReady();
    }

    /* access modifiers changed from: 0000 */
    public Looper getPlaybackLooper() {
        return this.player.getPlaybackLooper();
    }

    /* access modifiers changed from: 0000 */
    public Handler getMainHandler() {
        return this.mainHandler;
    }

    public void onPlayerStateChanged(boolean z, int i) {
        maybeReportPlayerState();
    }

    public void onPlayerError(ExoPlaybackException exoPlaybackException) {
        this.rendererBuildingState = 1;
        Iterator it = this.listeners.iterator();
        while (it.hasNext()) {
            ((Listener) it.next()).onError(exoPlaybackException);
        }
    }

    public void onVideoSizeChanged(int i, int i2, int i3, float f) {
        Iterator it = this.listeners.iterator();
        while (it.hasNext()) {
            ((Listener) it.next()).onVideoSizeChanged(i, i2, i3, f);
        }
    }

    public void onDroppedFrames(int i, long j) {
        InfoListener infoListener2 = this.infoListener;
        if (infoListener2 != null) {
            infoListener2.onDroppedFrames(i, j);
        }
    }

    public void onBandwidthSample(int i, long j, long j2) {
        InfoListener infoListener2 = this.infoListener;
        if (infoListener2 != null) {
            infoListener2.onBandwidthSample(i, j, j2);
        }
    }

    public void onDownstreamFormatChanged(int i, Format format, int i2, long j) {
        InfoListener infoListener2 = this.infoListener;
        if (infoListener2 != null) {
            if (i == 0) {
                this.videoFormat = format;
                infoListener2.onVideoFormatEnabled(format, i2, j);
            } else if (i == 1) {
                infoListener2.onAudioFormatEnabled(format, i2, j);
            }
        }
    }

    public void onDrmSessionManagerError(Exception exc) {
        InternalErrorListener internalErrorListener2 = this.internalErrorListener;
        if (internalErrorListener2 != null) {
            internalErrorListener2.onDrmSessionManagerError(exc);
        }
    }

    public void onDecoderInitializationError(DecoderInitializationException decoderInitializationException) {
        InternalErrorListener internalErrorListener2 = this.internalErrorListener;
        if (internalErrorListener2 != null) {
            internalErrorListener2.onDecoderInitializationError(decoderInitializationException);
        }
    }

    public void onAudioTrackInitializationError(InitializationException initializationException) {
        InternalErrorListener internalErrorListener2 = this.internalErrorListener;
        if (internalErrorListener2 != null) {
            internalErrorListener2.onAudioTrackInitializationError(initializationException);
        }
    }

    public void onAudioTrackWriteError(WriteException writeException) {
        InternalErrorListener internalErrorListener2 = this.internalErrorListener;
        if (internalErrorListener2 != null) {
            internalErrorListener2.onAudioTrackWriteError(writeException);
        }
    }

    public void onAudioTrackUnderrun(int i, long j, long j2) {
        InternalErrorListener internalErrorListener2 = this.internalErrorListener;
        if (internalErrorListener2 != null) {
            internalErrorListener2.onAudioTrackUnderrun(i, j, j2);
        }
    }

    public void onCryptoError(CryptoException cryptoException) {
        InternalErrorListener internalErrorListener2 = this.internalErrorListener;
        if (internalErrorListener2 != null) {
            internalErrorListener2.onCryptoError(cryptoException);
        }
    }

    public void onDecoderInitialized(String str, long j, long j2) {
        InfoListener infoListener2 = this.infoListener;
        if (infoListener2 != null) {
            infoListener2.onDecoderInitialized(str, j, j2);
        }
    }

    public void onLoadError(int i, IOException iOException) {
        InternalErrorListener internalErrorListener2 = this.internalErrorListener;
        if (internalErrorListener2 != null) {
            internalErrorListener2.onLoadError(i, iOException);
        }
    }

    public void onCues(List<Cue> list) {
        if (this.captionListener != null && getSelectedTrack(2) != -1) {
            this.captionListener.onCues(list);
        }
    }

    public void onMetadata(List<Id3Frame> list) {
        if (this.id3MetadataListener != null && getSelectedTrack(3) != -1) {
            this.id3MetadataListener.onId3Metadata(list);
        }
    }

    public void onAvailableRangeChanged(int i, TimeRange timeRange) {
        InfoListener infoListener2 = this.infoListener;
        if (infoListener2 != null) {
            infoListener2.onAvailableRangeChanged(i, timeRange);
        }
    }

    public void onLoadStarted(int i, long j, int i2, int i3, Format format, long j2, long j3) {
        InfoListener infoListener2 = this.infoListener;
        if (infoListener2 != null) {
            infoListener2.onLoadStarted(i, j, i2, i3, format, j2, j3);
        }
    }

    public void onLoadCompleted(int i, long j, int i2, int i3, Format format, long j2, long j3, long j4, long j5) {
        InfoListener infoListener2 = this.infoListener;
        if (infoListener2 != null) {
            infoListener2.onLoadCompleted(i, j, i2, i3, format, j2, j3, j4, j5);
        }
    }

    private void maybeReportPlayerState() {
        boolean playWhenReady = this.player.getPlayWhenReady();
        int playbackState = getPlaybackState();
        if (this.lastReportedPlayWhenReady != playWhenReady || this.lastReportedPlaybackState != playbackState) {
            Iterator it = this.listeners.iterator();
            while (it.hasNext()) {
                ((Listener) it.next()).onStateChanged(playWhenReady, playbackState);
            }
            this.lastReportedPlayWhenReady = playWhenReady;
            this.lastReportedPlaybackState = playbackState;
        }
    }

    private void pushSurface(boolean z) {
        TrackRenderer trackRenderer = this.videoRenderer;
        if (trackRenderer != null) {
            if (z) {
                this.player.blockingSendMessage(trackRenderer, 1, this.surface);
            } else {
                this.player.sendMessage(trackRenderer, 1, this.surface);
            }
        }
    }
}
