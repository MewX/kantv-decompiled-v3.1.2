package tv.danmaku.ijk.media.exo.demo.player;

import android.content.Context;
import android.os.Handler;
import com.google.android.exoplayer.DefaultLoadControl;
import com.google.android.exoplayer.MediaCodecAudioTrackRenderer;
import com.google.android.exoplayer.MediaCodecSelector;
import com.google.android.exoplayer.MediaCodecVideoTrackRenderer;
import com.google.android.exoplayer.SampleSource;
import com.google.android.exoplayer.TrackRenderer;
import com.google.android.exoplayer.audio.AudioCapabilities;
import com.google.android.exoplayer.hls.DefaultHlsTrackSelector;
import com.google.android.exoplayer.hls.HlsChunkSource;
import com.google.android.exoplayer.hls.HlsMasterPlaylist;
import com.google.android.exoplayer.hls.HlsPlaylist;
import com.google.android.exoplayer.hls.HlsPlaylistParser;
import com.google.android.exoplayer.hls.HlsSampleSource;
import com.google.android.exoplayer.hls.PtsTimestampAdjusterProvider;
import com.google.android.exoplayer.metadata.MetadataTrackRenderer;
import com.google.android.exoplayer.metadata.id3.Id3Parser;
import com.google.android.exoplayer.text.SubtitleParser;
import com.google.android.exoplayer.text.TextTrackRenderer;
import com.google.android.exoplayer.text.eia608.Eia608TrackRenderer;
import com.google.android.exoplayer.upstream.DefaultAllocator;
import com.google.android.exoplayer.upstream.DefaultBandwidthMeter;
import com.google.android.exoplayer.upstream.DefaultUriDataSource;
import com.google.android.exoplayer.util.ManifestFetcher;
import com.google.android.exoplayer.util.ManifestFetcher.ManifestCallback;
import com.google.android.exoplayer2.C;
import java.io.IOException;
import tv.danmaku.ijk.media.exo.demo.player.DemoPlayer.RendererBuilder;

public class HlsRendererBuilder implements RendererBuilder {
    private static final int AUDIO_BUFFER_SEGMENTS = 54;
    private static final int BUFFER_SEGMENT_SIZE = 65536;
    private static final int MAIN_BUFFER_SEGMENTS = 254;
    private static final int TEXT_BUFFER_SEGMENTS = 2;
    private final Context context;
    private AsyncRendererBuilder currentAsyncBuilder;
    private final String url;
    private final String userAgent;

    private static final class AsyncRendererBuilder implements ManifestCallback<HlsPlaylist> {
        private boolean canceled;
        private final Context context;
        private final DemoPlayer player;
        private final ManifestFetcher<HlsPlaylist> playlistFetcher;
        private final String userAgent;

        public AsyncRendererBuilder(Context context2, String str, String str2, DemoPlayer demoPlayer) {
            this.context = context2;
            this.userAgent = str;
            this.player = demoPlayer;
            this.playlistFetcher = new ManifestFetcher<>(str2, new DefaultUriDataSource(context2, str), new HlsPlaylistParser());
        }

        public void init() {
            this.playlistFetcher.singleLoad(this.player.getMainHandler().getLooper(), this);
        }

        public void cancel() {
            this.canceled = true;
        }

        public void onSingleManifestError(IOException iOException) {
            if (!this.canceled) {
                this.player.onRenderersError(iOException);
            }
        }

        public void onSingleManifest(HlsPlaylist hlsPlaylist) {
            boolean z;
            boolean z2;
            MetadataTrackRenderer metadataTrackRenderer;
            MediaCodecAudioTrackRenderer mediaCodecAudioTrackRenderer;
            DefaultBandwidthMeter defaultBandwidthMeter;
            HlsSampleSource hlsSampleSource;
            char c;
            DefaultBandwidthMeter defaultBandwidthMeter2;
            char c2;
            TextTrackRenderer textTrackRenderer;
            HlsPlaylist hlsPlaylist2 = hlsPlaylist;
            if (!this.canceled) {
                Handler mainHandler = this.player.getMainHandler();
                DefaultLoadControl defaultLoadControl = new DefaultLoadControl(new DefaultAllocator(65536));
                DefaultBandwidthMeter defaultBandwidthMeter3 = new DefaultBandwidthMeter();
                PtsTimestampAdjusterProvider ptsTimestampAdjusterProvider = new PtsTimestampAdjusterProvider();
                if (hlsPlaylist2 instanceof HlsMasterPlaylist) {
                    HlsMasterPlaylist hlsMasterPlaylist = (HlsMasterPlaylist) hlsPlaylist2;
                    z2 = !hlsMasterPlaylist.audios.isEmpty();
                    z = !hlsMasterPlaylist.subtitles.isEmpty();
                } else {
                    z2 = false;
                    z = false;
                }
                HlsChunkSource hlsChunkSource = new HlsChunkSource(true, new DefaultUriDataSource(this.context, defaultBandwidthMeter3, this.userAgent), hlsPlaylist, DefaultHlsTrackSelector.newDefaultInstance(this.context), defaultBandwidthMeter3, ptsTimestampAdjusterProvider);
                DefaultBandwidthMeter defaultBandwidthMeter4 = defaultBandwidthMeter3;
                DefaultLoadControl defaultLoadControl2 = defaultLoadControl;
                HlsSampleSource hlsSampleSource2 = new HlsSampleSource(hlsChunkSource, defaultLoadControl, 16646144, mainHandler, this.player, 0);
                MediaCodecVideoTrackRenderer mediaCodecVideoTrackRenderer = new MediaCodecVideoTrackRenderer(this.context, hlsSampleSource2, MediaCodecSelector.DEFAULT, 1, 5000, mainHandler, this.player, 50);
                MetadataTrackRenderer metadataTrackRenderer2 = new MetadataTrackRenderer(hlsSampleSource2, new Id3Parser(), this.player, mainHandler.getLooper());
                if (z2) {
                    defaultBandwidthMeter = defaultBandwidthMeter4;
                    HlsSampleSource hlsSampleSource3 = hlsSampleSource2;
                    HlsChunkSource hlsChunkSource2 = new HlsChunkSource(false, new DefaultUriDataSource(this.context, defaultBandwidthMeter4, this.userAgent), hlsPlaylist, DefaultHlsTrackSelector.newAudioInstance(), defaultBandwidthMeter, ptsTimestampAdjusterProvider);
                    hlsSampleSource = hlsSampleSource3;
                    metadataTrackRenderer = metadataTrackRenderer2;
                    HlsSampleSource hlsSampleSource4 = new HlsSampleSource(hlsChunkSource2, defaultLoadControl2, C.DEFAULT_AUDIO_BUFFER_SIZE, mainHandler, this.player, 1);
                    SampleSource[] sampleSourceArr = {hlsSampleSource, hlsSampleSource4};
                    SampleSource[] sampleSourceArr2 = sampleSourceArr;
                    MediaCodecAudioTrackRenderer mediaCodecAudioTrackRenderer2 = new MediaCodecAudioTrackRenderer(sampleSourceArr2, MediaCodecSelector.DEFAULT, null, true, this.player.getMainHandler(), this.player, AudioCapabilities.getCapabilities(this.context), 3);
                    mediaCodecAudioTrackRenderer = mediaCodecAudioTrackRenderer2;
                } else {
                    defaultBandwidthMeter = defaultBandwidthMeter4;
                    hlsSampleSource = hlsSampleSource2;
                    metadataTrackRenderer = metadataTrackRenderer2;
                    HlsSampleSource hlsSampleSource5 = hlsSampleSource;
                    MediaCodecAudioTrackRenderer mediaCodecAudioTrackRenderer3 = new MediaCodecAudioTrackRenderer(hlsSampleSource5, MediaCodecSelector.DEFAULT, null, true, this.player.getMainHandler(), this.player, AudioCapabilities.getCapabilities(this.context), 3);
                    mediaCodecAudioTrackRenderer = mediaCodecAudioTrackRenderer3;
                }
                if (z) {
                    c2 = 2;
                    defaultBandwidthMeter2 = defaultBandwidthMeter;
                    c = 0;
                    HlsChunkSource hlsChunkSource3 = new HlsChunkSource(false, new DefaultUriDataSource(this.context, defaultBandwidthMeter, this.userAgent), hlsPlaylist, DefaultHlsTrackSelector.newSubtitleInstance(), defaultBandwidthMeter, ptsTimestampAdjusterProvider);
                    HlsSampleSource hlsSampleSource6 = new HlsSampleSource(hlsChunkSource3, defaultLoadControl2, 131072, mainHandler, this.player, 2);
                    textTrackRenderer = new TextTrackRenderer(hlsSampleSource6, this.player, mainHandler.getLooper(), new SubtitleParser[0]);
                } else {
                    defaultBandwidthMeter2 = defaultBandwidthMeter;
                    c2 = 2;
                    c = 0;
                    textTrackRenderer = new Eia608TrackRenderer(hlsSampleSource, this.player, mainHandler.getLooper());
                }
                TrackRenderer[] trackRendererArr = new TrackRenderer[4];
                trackRendererArr[c] = mediaCodecVideoTrackRenderer;
                trackRendererArr[1] = mediaCodecAudioTrackRenderer;
                trackRendererArr[3] = metadataTrackRenderer;
                trackRendererArr[c2] = textTrackRenderer;
                this.player.onRenderers(trackRendererArr, defaultBandwidthMeter2);
            }
        }
    }

    public HlsRendererBuilder(Context context2, String str, String str2) {
        this.context = context2;
        this.userAgent = str;
        this.url = str2;
    }

    public void buildRenderers(DemoPlayer demoPlayer) {
        this.currentAsyncBuilder = new AsyncRendererBuilder(this.context, this.userAgent, this.url, demoPlayer);
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
