package tv.danmaku.ijk.media.exo.demo.player;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import com.google.android.exoplayer.DefaultLoadControl;
import com.google.android.exoplayer.MediaCodecAudioTrackRenderer;
import com.google.android.exoplayer.MediaCodecSelector;
import com.google.android.exoplayer.MediaCodecVideoTrackRenderer;
import com.google.android.exoplayer.TrackRenderer;
import com.google.android.exoplayer.audio.AudioCapabilities;
import com.google.android.exoplayer.chunk.ChunkSampleSource;
import com.google.android.exoplayer.chunk.FormatEvaluator.AdaptiveEvaluator;
import com.google.android.exoplayer.dash.DashChunkSource;
import com.google.android.exoplayer.dash.DefaultDashTrackSelector;
import com.google.android.exoplayer.dash.mpd.AdaptationSet;
import com.google.android.exoplayer.dash.mpd.MediaPresentationDescription;
import com.google.android.exoplayer.dash.mpd.MediaPresentationDescriptionParser;
import com.google.android.exoplayer.dash.mpd.Period;
import com.google.android.exoplayer.dash.mpd.UtcTimingElement;
import com.google.android.exoplayer.dash.mpd.UtcTimingElementResolver;
import com.google.android.exoplayer.dash.mpd.UtcTimingElementResolver.UtcTimingCallback;
import com.google.android.exoplayer.drm.MediaDrmCallback;
import com.google.android.exoplayer.drm.StreamingDrmSessionManager;
import com.google.android.exoplayer.drm.UnsupportedDrmException;
import com.google.android.exoplayer.text.SubtitleParser;
import com.google.android.exoplayer.text.TextTrackRenderer;
import com.google.android.exoplayer.upstream.DefaultAllocator;
import com.google.android.exoplayer.upstream.DefaultBandwidthMeter;
import com.google.android.exoplayer.upstream.DefaultUriDataSource;
import com.google.android.exoplayer.upstream.UriDataSource;
import com.google.android.exoplayer.util.ManifestFetcher;
import com.google.android.exoplayer.util.ManifestFetcher.ManifestCallback;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer2.C;
import java.io.IOException;
import tv.danmaku.ijk.media.exo.demo.player.DemoPlayer.RendererBuilder;

public class DashRendererBuilder implements RendererBuilder {
    private static final int AUDIO_BUFFER_SEGMENTS = 54;
    private static final int BUFFER_SEGMENT_SIZE = 65536;
    private static final int LIVE_EDGE_LATENCY_MS = 30000;
    private static final int SECURITY_LEVEL_1 = 1;
    private static final int SECURITY_LEVEL_3 = 3;
    private static final int SECURITY_LEVEL_UNKNOWN = -1;
    private static final String TAG = "DashRendererBuilder";
    private static final int TEXT_BUFFER_SEGMENTS = 2;
    private static final int VIDEO_BUFFER_SEGMENTS = 200;
    private final Context context;
    private AsyncRendererBuilder currentAsyncBuilder;
    private final MediaDrmCallback drmCallback;
    private final String url;
    private final String userAgent;

    private static final class AsyncRendererBuilder implements ManifestCallback<MediaPresentationDescription>, UtcTimingCallback {
        private boolean canceled;
        private final Context context;
        private final MediaDrmCallback drmCallback;
        private long elapsedRealtimeOffset;
        private MediaPresentationDescription manifest;
        private final UriDataSource manifestDataSource;
        private final ManifestFetcher<MediaPresentationDescription> manifestFetcher;
        private final DemoPlayer player;
        private final String userAgent;

        public AsyncRendererBuilder(Context context2, String str, String str2, MediaDrmCallback mediaDrmCallback, DemoPlayer demoPlayer) {
            this.context = context2;
            this.userAgent = str;
            this.drmCallback = mediaDrmCallback;
            this.player = demoPlayer;
            MediaPresentationDescriptionParser mediaPresentationDescriptionParser = new MediaPresentationDescriptionParser();
            this.manifestDataSource = new DefaultUriDataSource(context2, str);
            this.manifestFetcher = new ManifestFetcher<>(str2, this.manifestDataSource, mediaPresentationDescriptionParser);
        }

        public void init() {
            this.manifestFetcher.singleLoad(this.player.getMainHandler().getLooper(), this);
        }

        public void cancel() {
            this.canceled = true;
        }

        public void onSingleManifest(MediaPresentationDescription mediaPresentationDescription) {
            if (!this.canceled) {
                this.manifest = mediaPresentationDescription;
                if (!mediaPresentationDescription.dynamic || mediaPresentationDescription.utcTiming == null) {
                    buildRenderers();
                } else {
                    UtcTimingElementResolver.resolveTimingElement(this.manifestDataSource, mediaPresentationDescription.utcTiming, this.manifestFetcher.getManifestLoadCompleteTimestamp(), this);
                }
            }
        }

        public void onSingleManifestError(IOException iOException) {
            if (!this.canceled) {
                this.player.onRenderersError(iOException);
            }
        }

        public void onTimestampResolved(UtcTimingElement utcTimingElement, long j) {
            if (!this.canceled) {
                this.elapsedRealtimeOffset = j;
                buildRenderers();
            }
        }

        public void onTimestampError(UtcTimingElement utcTimingElement, IOException iOException) {
            if (!this.canceled) {
                StringBuilder sb = new StringBuilder();
                sb.append("Failed to resolve UtcTiming element [");
                sb.append(utcTimingElement);
                sb.append("]");
                Log.e(DashRendererBuilder.TAG, sb.toString(), iOException);
                buildRenderers();
            }
        }

        private void buildRenderers() {
            boolean z;
            Period period = this.manifest.getPeriod(0);
            Handler mainHandler = this.player.getMainHandler();
            DefaultLoadControl defaultLoadControl = new DefaultLoadControl(new DefaultAllocator(65536));
            DefaultBandwidthMeter defaultBandwidthMeter = new DefaultBandwidthMeter(mainHandler, this.player);
            boolean z2 = false;
            for (int i = 0; i < period.adaptationSets.size(); i++) {
                AdaptationSet adaptationSet = (AdaptationSet) period.adaptationSets.get(i);
                if (adaptationSet.type != -1) {
                    z2 |= adaptationSet.hasContentProtection();
                }
            }
            StreamingDrmSessionManager streamingDrmSessionManager = null;
            if (z2) {
                if (Util.SDK_INT < 18) {
                    this.player.onRenderersError(new UnsupportedDrmException(1));
                    return;
                }
                try {
                    streamingDrmSessionManager = StreamingDrmSessionManager.newWidevineInstance(this.player.getPlaybackLooper(), this.drmCallback, null, this.player.getMainHandler(), this.player);
                    if (getWidevineSecurityLevel(streamingDrmSessionManager) != 1) {
                        z = true;
                        DefaultUriDataSource defaultUriDataSource = new DefaultUriDataSource(this.context, defaultBandwidthMeter, this.userAgent);
                        Handler handler = mainHandler;
                        DefaultBandwidthMeter defaultBandwidthMeter2 = defaultBandwidthMeter;
                        DefaultLoadControl defaultLoadControl2 = defaultLoadControl;
                        DashChunkSource dashChunkSource = new DashChunkSource(this.manifestFetcher, DefaultDashTrackSelector.newVideoInstance(this.context, true, z), defaultUriDataSource, new AdaptiveEvaluator(defaultBandwidthMeter), 30000, this.elapsedRealtimeOffset, handler, this.player, 0);
                        ChunkSampleSource chunkSampleSource = new ChunkSampleSource(dashChunkSource, defaultLoadControl2, C.DEFAULT_VIDEO_BUFFER_SIZE, mainHandler, this.player, 0);
                        MediaCodecVideoTrackRenderer mediaCodecVideoTrackRenderer = new MediaCodecVideoTrackRenderer(this.context, chunkSampleSource, MediaCodecSelector.DEFAULT, 1, 5000, streamingDrmSessionManager, true, handler, this.player, 50);
                        DashChunkSource dashChunkSource2 = new DashChunkSource(this.manifestFetcher, DefaultDashTrackSelector.newAudioInstance(), new DefaultUriDataSource(this.context, defaultBandwidthMeter2, this.userAgent), null, 30000, this.elapsedRealtimeOffset, handler, this.player, 1);
                        ChunkSampleSource chunkSampleSource2 = new ChunkSampleSource(dashChunkSource2, defaultLoadControl2, C.DEFAULT_AUDIO_BUFFER_SIZE, mainHandler, this.player, 1);
                        MediaCodecAudioTrackRenderer mediaCodecAudioTrackRenderer = new MediaCodecAudioTrackRenderer(chunkSampleSource2, MediaCodecSelector.DEFAULT, streamingDrmSessionManager, true, mainHandler, this.player, AudioCapabilities.getCapabilities(this.context), 3);
                        DashChunkSource dashChunkSource3 = new DashChunkSource(this.manifestFetcher, DefaultDashTrackSelector.newTextInstance(), new DefaultUriDataSource(this.context, defaultBandwidthMeter2, this.userAgent), null, 30000, this.elapsedRealtimeOffset, mainHandler, this.player, 2);
                        ChunkSampleSource chunkSampleSource3 = new ChunkSampleSource(dashChunkSource3, defaultLoadControl2, 131072, mainHandler, this.player, 2);
                        TextTrackRenderer textTrackRenderer = new TextTrackRenderer(chunkSampleSource3, this.player, mainHandler.getLooper(), new SubtitleParser[0]);
                        TrackRenderer[] trackRendererArr = new TrackRenderer[4];
                        trackRendererArr[0] = mediaCodecVideoTrackRenderer;
                        trackRendererArr[1] = mediaCodecAudioTrackRenderer;
                        trackRendererArr[2] = textTrackRenderer;
                        this.player.onRenderers(trackRendererArr, defaultBandwidthMeter2);
                    }
                } catch (UnsupportedDrmException e) {
                    this.player.onRenderersError(e);
                    return;
                }
            }
            z = false;
            DefaultUriDataSource defaultUriDataSource2 = new DefaultUriDataSource(this.context, defaultBandwidthMeter, this.userAgent);
            Handler handler2 = mainHandler;
            DefaultBandwidthMeter defaultBandwidthMeter22 = defaultBandwidthMeter;
            DefaultLoadControl defaultLoadControl22 = defaultLoadControl;
            DashChunkSource dashChunkSource4 = new DashChunkSource(this.manifestFetcher, DefaultDashTrackSelector.newVideoInstance(this.context, true, z), defaultUriDataSource2, new AdaptiveEvaluator(defaultBandwidthMeter), 30000, this.elapsedRealtimeOffset, handler2, this.player, 0);
            ChunkSampleSource chunkSampleSource4 = new ChunkSampleSource(dashChunkSource4, defaultLoadControl22, C.DEFAULT_VIDEO_BUFFER_SIZE, mainHandler, this.player, 0);
            MediaCodecVideoTrackRenderer mediaCodecVideoTrackRenderer2 = new MediaCodecVideoTrackRenderer(this.context, chunkSampleSource4, MediaCodecSelector.DEFAULT, 1, 5000, streamingDrmSessionManager, true, handler2, this.player, 50);
            DashChunkSource dashChunkSource22 = new DashChunkSource(this.manifestFetcher, DefaultDashTrackSelector.newAudioInstance(), new DefaultUriDataSource(this.context, defaultBandwidthMeter22, this.userAgent), null, 30000, this.elapsedRealtimeOffset, handler2, this.player, 1);
            ChunkSampleSource chunkSampleSource22 = new ChunkSampleSource(dashChunkSource22, defaultLoadControl22, C.DEFAULT_AUDIO_BUFFER_SIZE, mainHandler, this.player, 1);
            MediaCodecAudioTrackRenderer mediaCodecAudioTrackRenderer2 = new MediaCodecAudioTrackRenderer(chunkSampleSource22, MediaCodecSelector.DEFAULT, streamingDrmSessionManager, true, mainHandler, this.player, AudioCapabilities.getCapabilities(this.context), 3);
            DashChunkSource dashChunkSource32 = new DashChunkSource(this.manifestFetcher, DefaultDashTrackSelector.newTextInstance(), new DefaultUriDataSource(this.context, defaultBandwidthMeter22, this.userAgent), null, 30000, this.elapsedRealtimeOffset, mainHandler, this.player, 2);
            ChunkSampleSource chunkSampleSource32 = new ChunkSampleSource(dashChunkSource32, defaultLoadControl22, 131072, mainHandler, this.player, 2);
            TextTrackRenderer textTrackRenderer2 = new TextTrackRenderer(chunkSampleSource32, this.player, mainHandler.getLooper(), new SubtitleParser[0]);
            TrackRenderer[] trackRendererArr2 = new TrackRenderer[4];
            trackRendererArr2[0] = mediaCodecVideoTrackRenderer2;
            trackRendererArr2[1] = mediaCodecAudioTrackRenderer2;
            trackRendererArr2[2] = textTrackRenderer2;
            this.player.onRenderers(trackRendererArr2, defaultBandwidthMeter22);
        }

        private static int getWidevineSecurityLevel(StreamingDrmSessionManager streamingDrmSessionManager) {
            String propertyString = streamingDrmSessionManager.getPropertyString("securityLevel");
            if (propertyString.equals("L1")) {
                return 1;
            }
            return propertyString.equals("L3") ? 3 : -1;
        }
    }

    public DashRendererBuilder(Context context2, String str, String str2, MediaDrmCallback mediaDrmCallback) {
        this.context = context2;
        this.userAgent = str;
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
