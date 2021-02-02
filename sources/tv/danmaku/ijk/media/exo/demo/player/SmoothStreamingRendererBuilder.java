package tv.danmaku.ijk.media.exo.demo.player;

import android.content.Context;
import android.os.Handler;
import com.google.android.exoplayer.DefaultLoadControl;
import com.google.android.exoplayer.MediaCodecAudioTrackRenderer;
import com.google.android.exoplayer.MediaCodecSelector;
import com.google.android.exoplayer.MediaCodecVideoTrackRenderer;
import com.google.android.exoplayer.TrackRenderer;
import com.google.android.exoplayer.audio.AudioCapabilities;
import com.google.android.exoplayer.chunk.ChunkSampleSource;
import com.google.android.exoplayer.chunk.FormatEvaluator.AdaptiveEvaluator;
import com.google.android.exoplayer.drm.DrmSessionManager;
import com.google.android.exoplayer.drm.MediaDrmCallback;
import com.google.android.exoplayer.drm.StreamingDrmSessionManager;
import com.google.android.exoplayer.drm.UnsupportedDrmException;
import com.google.android.exoplayer.smoothstreaming.DefaultSmoothStreamingTrackSelector;
import com.google.android.exoplayer.smoothstreaming.SmoothStreamingChunkSource;
import com.google.android.exoplayer.smoothstreaming.SmoothStreamingManifest;
import com.google.android.exoplayer.smoothstreaming.SmoothStreamingManifestParser;
import com.google.android.exoplayer.text.SubtitleParser;
import com.google.android.exoplayer.text.TextTrackRenderer;
import com.google.android.exoplayer.upstream.DefaultAllocator;
import com.google.android.exoplayer.upstream.DefaultBandwidthMeter;
import com.google.android.exoplayer.upstream.DefaultHttpDataSource;
import com.google.android.exoplayer.upstream.DefaultUriDataSource;
import com.google.android.exoplayer.util.ManifestFetcher;
import com.google.android.exoplayer.util.ManifestFetcher.ManifestCallback;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer2.C;
import java.io.IOException;
import tv.danmaku.ijk.media.exo.demo.player.DemoPlayer.RendererBuilder;

public class SmoothStreamingRendererBuilder implements RendererBuilder {
    private static final int AUDIO_BUFFER_SEGMENTS = 54;
    private static final int BUFFER_SEGMENT_SIZE = 65536;
    private static final int LIVE_EDGE_LATENCY_MS = 30000;
    private static final int TEXT_BUFFER_SEGMENTS = 2;
    private static final int VIDEO_BUFFER_SEGMENTS = 200;
    private final Context context;
    private AsyncRendererBuilder currentAsyncBuilder;
    private final MediaDrmCallback drmCallback;
    private final String url;
    private final String userAgent;

    private static final class AsyncRendererBuilder implements ManifestCallback<SmoothStreamingManifest> {
        private boolean canceled;
        private final Context context;
        private final MediaDrmCallback drmCallback;
        private final ManifestFetcher<SmoothStreamingManifest> manifestFetcher;
        private final DemoPlayer player;
        private final String userAgent;

        public AsyncRendererBuilder(Context context2, String str, String str2, MediaDrmCallback mediaDrmCallback, DemoPlayer demoPlayer) {
            this.context = context2;
            this.userAgent = str;
            this.drmCallback = mediaDrmCallback;
            this.player = demoPlayer;
            this.manifestFetcher = new ManifestFetcher<>(str2, new DefaultHttpDataSource(str, null), new SmoothStreamingManifestParser());
        }

        public void init() {
            this.manifestFetcher.singleLoad(this.player.getMainHandler().getLooper(), this);
        }

        public void cancel() {
            this.canceled = true;
        }

        public void onSingleManifestError(IOException iOException) {
            if (!this.canceled) {
                this.player.onRenderersError(iOException);
            }
        }

        public void onSingleManifest(SmoothStreamingManifest smoothStreamingManifest) {
            DrmSessionManager drmSessionManager;
            SmoothStreamingManifest smoothStreamingManifest2 = smoothStreamingManifest;
            if (!this.canceled) {
                Handler mainHandler = this.player.getMainHandler();
                DefaultLoadControl defaultLoadControl = new DefaultLoadControl(new DefaultAllocator(65536));
                DefaultBandwidthMeter defaultBandwidthMeter = new DefaultBandwidthMeter(mainHandler, this.player);
                if (smoothStreamingManifest2.protectionElement == null) {
                    drmSessionManager = null;
                } else if (Util.SDK_INT < 18) {
                    this.player.onRenderersError(new UnsupportedDrmException(1));
                    return;
                } else {
                    try {
                        drmSessionManager = StreamingDrmSessionManager.newFrameworkInstance(smoothStreamingManifest2.protectionElement.uuid, this.player.getPlaybackLooper(), this.drmCallback, null, this.player.getMainHandler(), this.player);
                    } catch (UnsupportedDrmException e) {
                        this.player.onRenderersError(e);
                        return;
                    }
                }
                SmoothStreamingChunkSource smoothStreamingChunkSource = new SmoothStreamingChunkSource(this.manifestFetcher, DefaultSmoothStreamingTrackSelector.newVideoInstance(this.context, true, false), new DefaultUriDataSource(this.context, defaultBandwidthMeter, this.userAgent), new AdaptiveEvaluator(defaultBandwidthMeter), 30000);
                ChunkSampleSource chunkSampleSource = new ChunkSampleSource(smoothStreamingChunkSource, defaultLoadControl, C.DEFAULT_VIDEO_BUFFER_SIZE, mainHandler, this.player, 0);
                DrmSessionManager drmSessionManager2 = drmSessionManager;
                DefaultBandwidthMeter defaultBandwidthMeter2 = defaultBandwidthMeter;
                MediaCodecVideoTrackRenderer mediaCodecVideoTrackRenderer = new MediaCodecVideoTrackRenderer(this.context, chunkSampleSource, MediaCodecSelector.DEFAULT, 1, 5000, drmSessionManager, true, mainHandler, this.player, 50);
                DefaultUriDataSource defaultUriDataSource = new DefaultUriDataSource(this.context, defaultBandwidthMeter2, this.userAgent);
                SmoothStreamingChunkSource smoothStreamingChunkSource2 = new SmoothStreamingChunkSource(this.manifestFetcher, DefaultSmoothStreamingTrackSelector.newAudioInstance(), defaultUriDataSource, null, 30000);
                ChunkSampleSource chunkSampleSource2 = new ChunkSampleSource(smoothStreamingChunkSource2, defaultLoadControl, C.DEFAULT_AUDIO_BUFFER_SIZE, mainHandler, this.player, 1);
                MediaCodecAudioTrackRenderer mediaCodecAudioTrackRenderer = new MediaCodecAudioTrackRenderer(chunkSampleSource2, MediaCodecSelector.DEFAULT, drmSessionManager2, true, mainHandler, this.player, AudioCapabilities.getCapabilities(this.context), 3);
                DefaultUriDataSource defaultUriDataSource2 = new DefaultUriDataSource(this.context, defaultBandwidthMeter2, this.userAgent);
                SmoothStreamingChunkSource smoothStreamingChunkSource3 = new SmoothStreamingChunkSource(this.manifestFetcher, DefaultSmoothStreamingTrackSelector.newTextInstance(), defaultUriDataSource2, null, 30000);
                ChunkSampleSource chunkSampleSource3 = new ChunkSampleSource(smoothStreamingChunkSource3, defaultLoadControl, 131072, mainHandler, this.player, 2);
                TextTrackRenderer textTrackRenderer = new TextTrackRenderer(chunkSampleSource3, this.player, mainHandler.getLooper(), new SubtitleParser[0]);
                TrackRenderer[] trackRendererArr = new TrackRenderer[4];
                trackRendererArr[0] = mediaCodecVideoTrackRenderer;
                trackRendererArr[1] = mediaCodecAudioTrackRenderer;
                trackRendererArr[2] = textTrackRenderer;
                this.player.onRenderers(trackRendererArr, defaultBandwidthMeter2);
            }
        }
    }

    public SmoothStreamingRendererBuilder(Context context2, String str, String str2, MediaDrmCallback mediaDrmCallback) {
        this.context = context2;
        this.userAgent = str;
        if (!Util.toLowerInvariant(str2).endsWith("/manifest")) {
            StringBuilder sb = new StringBuilder();
            sb.append(str2);
            sb.append("/Manifest");
            str2 = sb.toString();
        }
        this.url = str2;
        this.drmCallback = mediaDrmCallback;
    }

    public void buildRenderers(DemoPlayer demoPlayer) {
        AsyncRendererBuilder asyncRendererBuilder = new AsyncRendererBuilder(this.context, this.userAgent, this.url, this.drmCallback, demoPlayer);
        this.currentAsyncBuilder = asyncRendererBuilder;
        this.currentAsyncBuilder.init();
    }

    public void cancel() {
        AsyncRendererBuilder asyncRendererBuilder = this.currentAsyncBuilder;
        if (asyncRendererBuilder != null) {
            asyncRendererBuilder.cancel();
            this.currentAsyncBuilder = null;
        }
    }
}
