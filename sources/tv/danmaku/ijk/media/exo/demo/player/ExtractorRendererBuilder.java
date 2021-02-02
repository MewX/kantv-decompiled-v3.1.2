package tv.danmaku.ijk.media.exo.demo.player;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import com.google.android.exoplayer.MediaCodecAudioTrackRenderer;
import com.google.android.exoplayer.MediaCodecSelector;
import com.google.android.exoplayer.MediaCodecVideoTrackRenderer;
import com.google.android.exoplayer.TrackRenderer;
import com.google.android.exoplayer.audio.AudioCapabilities;
import com.google.android.exoplayer.extractor.Extractor;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.SubtitleParser;
import com.google.android.exoplayer.text.TextTrackRenderer;
import com.google.android.exoplayer.upstream.DefaultAllocator;
import com.google.android.exoplayer.upstream.DefaultBandwidthMeter;
import com.google.android.exoplayer.upstream.DefaultUriDataSource;
import tv.danmaku.ijk.media.exo.demo.player.DemoPlayer.RendererBuilder;

public class ExtractorRendererBuilder implements RendererBuilder {
    private static final int BUFFER_SEGMENT_COUNT = 256;
    private static final int BUFFER_SEGMENT_SIZE = 65536;
    private final Context context;
    private final Uri uri;
    private final String userAgent;

    public void cancel() {
    }

    public ExtractorRendererBuilder(Context context2, String str, Uri uri2) {
        this.context = context2;
        this.userAgent = str;
        this.uri = uri2;
    }

    public void buildRenderers(DemoPlayer demoPlayer) {
        DemoPlayer demoPlayer2 = demoPlayer;
        DefaultAllocator defaultAllocator = new DefaultAllocator(65536);
        Handler mainHandler = demoPlayer.getMainHandler();
        DefaultBandwidthMeter defaultBandwidthMeter = new DefaultBandwidthMeter(mainHandler, null);
        ExtractorSampleSource extractorSampleSource = new ExtractorSampleSource(this.uri, new DefaultUriDataSource(this.context, defaultBandwidthMeter, this.userAgent), defaultAllocator, 16777216, mainHandler, demoPlayer, 0, new Extractor[0]);
        MediaCodecVideoTrackRenderer mediaCodecVideoTrackRenderer = new MediaCodecVideoTrackRenderer(this.context, extractorSampleSource, MediaCodecSelector.DEFAULT, 1, 5000, mainHandler, demoPlayer, 50);
        MediaCodecAudioTrackRenderer mediaCodecAudioTrackRenderer = new MediaCodecAudioTrackRenderer(extractorSampleSource, MediaCodecSelector.DEFAULT, null, true, mainHandler, demoPlayer, AudioCapabilities.getCapabilities(this.context), 3);
        TextTrackRenderer textTrackRenderer = new TextTrackRenderer(extractorSampleSource, demoPlayer2, mainHandler.getLooper(), new SubtitleParser[0]);
        TrackRenderer[] trackRendererArr = new TrackRenderer[4];
        trackRendererArr[0] = mediaCodecVideoTrackRenderer;
        trackRendererArr[1] = mediaCodecAudioTrackRenderer;
        trackRendererArr[2] = textTrackRenderer;
        demoPlayer2.onRenderers(trackRendererArr, defaultBandwidthMeter);
    }
}
