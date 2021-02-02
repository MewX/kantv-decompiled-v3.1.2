package tv.danmaku.ijk.media.exo2.demo;

import android.os.SystemClock;
import android.util.Log;
import android.view.Surface;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.Player.EventListener;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.Timeline.Period;
import com.google.android.exoplayer2.Timeline.Window;
import com.google.android.exoplayer2.audio.AudioRendererEventListener;
import com.google.android.exoplayer2.decoder.DecoderCounters;
import com.google.android.exoplayer2.drm.DefaultDrmSessionEventListener;
import com.google.android.exoplayer2.drm.DefaultDrmSessionEventListener.CC;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.Metadata.Entry;
import com.google.android.exoplayer2.metadata.MetadataOutput;
import com.google.android.exoplayer2.metadata.emsg.EventMessage;
import com.google.android.exoplayer2.metadata.id3.ApicFrame;
import com.google.android.exoplayer2.metadata.id3.CommentFrame;
import com.google.android.exoplayer2.metadata.id3.GeobFrame;
import com.google.android.exoplayer2.metadata.id3.Id3Frame;
import com.google.android.exoplayer2.metadata.id3.PrivFrame;
import com.google.android.exoplayer2.metadata.id3.TextInformationFrame;
import com.google.android.exoplayer2.metadata.id3.UrlLinkFrame;
import com.google.android.exoplayer2.source.MediaSource.MediaPeriodId;
import com.google.android.exoplayer2.source.MediaSourceEventListener;
import com.google.android.exoplayer2.source.MediaSourceEventListener.LoadEventInfo;
import com.google.android.exoplayer2.source.MediaSourceEventListener.MediaLoadData;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.MappingTrackSelector;
import com.google.android.exoplayer2.trackselection.MappingTrackSelector.MappedTrackInfo;
import com.google.android.exoplayer2.trackselection.TrackSelection;
import com.google.android.exoplayer2.trackselection.TrackSelectionArray;
import com.google.android.exoplayer2.video.VideoRendererEventListener;
import java.io.IOException;
import java.text.NumberFormat;
import java.util.Locale;

public final class EventLogger implements EventListener, MetadataOutput, AudioRendererEventListener, VideoRendererEventListener, MediaSourceEventListener, DefaultDrmSessionEventListener {
    private static final int MAX_TIMELINE_ITEM_LINES = 3;
    private static final String TAG = "EventLogger";
    private static final NumberFormat TIME_FORMAT = NumberFormat.getInstance(Locale.US);
    private final Period period = new Period();
    private final long startTimeMs = SystemClock.elapsedRealtime();
    private final MappingTrackSelector trackSelector;
    private final Window window = new Window();

    private static String getAdaptiveSupportString(int i, int i2) {
        return i < 2 ? "N/A" : i2 != 0 ? i2 != 8 ? i2 != 16 ? "?" : "YES" : "YES_NOT_SEAMLESS" : "NO";
    }

    private static String getDiscontinuityReasonString(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 4 ? "?" : "INTERNAL" : "SEEK_ADJUSTMENT" : "SEEK" : "PERIOD_TRANSITION";
    }

    private static String getFormatSupportString(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? "?" : "YES" : "NO_EXCEEDS_CAPABILITIES" : "NO_UNSUPPORTED_DRM" : "NO_UNSUPPORTED_TYPE" : "NO";
    }

    private static String getRepeatModeString(int i) {
        return i != 0 ? i != 1 ? i != 2 ? "?" : "ALL" : "ONE" : "OFF";
    }

    private static String getStateString(int i) {
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? "?" : "E" : "R" : "B" : "I";
    }

    private static String getTrackStatusString(boolean z) {
        return z ? "[X]" : "[ ]";
    }

    public void onDownstreamFormatChanged(int i, @Nullable MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData) {
    }

    public /* synthetic */ void onDrmSessionAcquired() {
        CC.$default$onDrmSessionAcquired(this);
    }

    public /* synthetic */ void onDrmSessionReleased() {
        CC.$default$onDrmSessionReleased(this);
    }

    public void onLoadCanceled(int i, @Nullable MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
    }

    public void onLoadCompleted(int i, @Nullable MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
    }

    public void onLoadStarted(int i, @Nullable MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
    }

    public void onMediaPeriodCreated(int i, MediaPeriodId mediaPeriodId) {
    }

    public void onMediaPeriodReleased(int i, MediaPeriodId mediaPeriodId) {
    }

    public void onReadingStarted(int i, MediaPeriodId mediaPeriodId) {
    }

    public void onUpstreamDiscarded(int i, MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData) {
    }

    static {
        TIME_FORMAT.setMinimumFractionDigits(2);
        TIME_FORMAT.setMaximumFractionDigits(2);
        TIME_FORMAT.setGroupingUsed(false);
    }

    public EventLogger(MappingTrackSelector mappingTrackSelector) {
        this.trackSelector = mappingTrackSelector;
    }

    public void onLoadingChanged(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append("loading [");
        sb.append(z);
        sb.append("]");
        Log.d(TAG, sb.toString());
    }

    public void onPlayerStateChanged(boolean z, int i) {
        StringBuilder sb = new StringBuilder();
        sb.append("state [");
        sb.append(getSessionTimeString());
        String str = ", ";
        sb.append(str);
        sb.append(z);
        sb.append(str);
        sb.append(getStateString(i));
        sb.append("]");
        Log.d(TAG, sb.toString());
    }

    public void onRepeatModeChanged(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append("repeatMode [");
        sb.append(getRepeatModeString(i));
        sb.append("]");
        Log.d(TAG, sb.toString());
    }

    public void onShuffleModeEnabledChanged(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append("shuffleModeEnabled [");
        sb.append(z);
        sb.append("]");
        Log.d(TAG, sb.toString());
    }

    public void onPositionDiscontinuity(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append("positionDiscontinuity [");
        sb.append(getDiscontinuityReasonString(i));
        sb.append("]");
        Log.d(TAG, sb.toString());
    }

    public void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
        StringBuilder sb = new StringBuilder();
        sb.append("playbackParameters ");
        sb.append(String.format("[speed=%.2f, pitch=%.2f]", new Object[]{Float.valueOf(playbackParameters.speed), Float.valueOf(playbackParameters.pitch)}));
        Log.d(TAG, sb.toString());
    }

    public void onPlayerError(ExoPlaybackException exoPlaybackException) {
        StringBuilder sb = new StringBuilder();
        sb.append("playerFailed [");
        sb.append(getSessionTimeString());
        sb.append("]");
        Log.e(TAG, sb.toString(), exoPlaybackException);
    }

    public void onTracksChanged(TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        EventLogger eventLogger;
        EventLogger eventLogger2 = this;
        MappedTrackInfo currentMappedTrackInfo = eventLogger2.trackSelector.getCurrentMappedTrackInfo();
        String str9 = TAG;
        if (currentMappedTrackInfo == null) {
            Log.d(str9, "Tracks []");
            return;
        }
        Log.d(str9, "Tracks [");
        int i = 0;
        while (true) {
            str = ", supported=";
            str2 = ", ";
            str3 = " Track:";
            str4 = "    Group:";
            str5 = "  ]";
            str6 = "      ";
            str7 = "    ]";
            str8 = " [";
            if (i >= currentMappedTrackInfo.length) {
                break;
            }
            TrackGroupArray trackGroups = currentMappedTrackInfo.getTrackGroups(i);
            TrackSelection trackSelection = trackSelectionArray.get(i);
            if (trackGroups.length > 0) {
                StringBuilder sb = new StringBuilder();
                sb.append("  Renderer:");
                sb.append(i);
                sb.append(str8);
                Log.d(str9, sb.toString());
                int i2 = 0;
                while (i2 < trackGroups.length) {
                    TrackGroup trackGroup = trackGroups.get(i2);
                    TrackGroupArray trackGroupArray2 = trackGroups;
                    String str10 = str5;
                    String adaptiveSupportString = getAdaptiveSupportString(trackGroup.length, currentMappedTrackInfo.getAdaptiveSupport(i, i2, false));
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str4);
                    sb2.append(i2);
                    sb2.append(", adaptive_supported=");
                    sb2.append(adaptiveSupportString);
                    sb2.append(str8);
                    Log.d(str9, sb2.toString());
                    int i3 = 0;
                    while (i3 < trackGroup.length) {
                        String trackStatusString = getTrackStatusString(trackSelection, trackGroup, i3);
                        String formatSupportString = getFormatSupportString(currentMappedTrackInfo.getTrackFormatSupport(i, i2, i3));
                        String str11 = str8;
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(str6);
                        sb3.append(trackStatusString);
                        sb3.append(str3);
                        sb3.append(i3);
                        sb3.append(str2);
                        sb3.append(Format.toLogString(trackGroup.getFormat(i3)));
                        sb3.append(str);
                        sb3.append(formatSupportString);
                        Log.d(str9, sb3.toString());
                        i3++;
                        str8 = str11;
                    }
                    String str12 = str8;
                    Log.d(str9, str7);
                    i2++;
                    trackGroups = trackGroupArray2;
                    str5 = str10;
                }
                String str13 = str5;
                if (trackSelection != null) {
                    int i4 = 0;
                    while (true) {
                        if (i4 >= trackSelection.length()) {
                            break;
                        }
                        Metadata metadata = trackSelection.getFormat(i4).metadata;
                        if (metadata != null) {
                            Log.d(str9, "    Metadata [");
                            eventLogger = this;
                            eventLogger.printMetadata(metadata, str6);
                            Log.d(str9, str7);
                            break;
                        }
                        i4++;
                    }
                    Log.d(str9, str13);
                }
                eventLogger = this;
                Log.d(str9, str13);
            } else {
                eventLogger = eventLogger2;
            }
            i++;
            eventLogger2 = eventLogger;
        }
        EventLogger eventLogger3 = eventLogger2;
        String str14 = str5;
        String str15 = str8;
        TrackGroupArray unassociatedTrackGroups = currentMappedTrackInfo.getUnassociatedTrackGroups();
        if (unassociatedTrackGroups.length > 0) {
            Log.d(str9, "  Renderer:None [");
            int i5 = 0;
            while (i5 < unassociatedTrackGroups.length) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append(str4);
                sb4.append(i5);
                String str16 = str15;
                sb4.append(str16);
                Log.d(str9, sb4.toString());
                TrackGroup trackGroup2 = unassociatedTrackGroups.get(i5);
                int i6 = 0;
                while (i6 < trackGroup2.length) {
                    String trackStatusString2 = getTrackStatusString(false);
                    TrackGroupArray trackGroupArray3 = unassociatedTrackGroups;
                    String formatSupportString2 = getFormatSupportString(0);
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append(str6);
                    sb5.append(trackStatusString2);
                    sb5.append(str3);
                    sb5.append(i6);
                    sb5.append(str2);
                    sb5.append(Format.toLogString(trackGroup2.getFormat(i6)));
                    sb5.append(str);
                    sb5.append(formatSupportString2);
                    Log.d(str9, sb5.toString());
                    i6++;
                    unassociatedTrackGroups = trackGroupArray3;
                }
                TrackGroupArray trackGroupArray4 = unassociatedTrackGroups;
                Log.d(str9, str7);
                i5++;
                str15 = str16;
            }
            Log.d(str9, str14);
        }
        Log.d(str9, "]");
    }

    public void onSeekProcessed() {
        Log.d(TAG, "seekProcessed");
    }

    public void onMetadata(Metadata metadata) {
        String str = TAG;
        Log.d(str, "onMetadata [");
        printMetadata(metadata, "  ");
        Log.d(str, "]");
    }

    public void onAudioEnabled(DecoderCounters decoderCounters) {
        StringBuilder sb = new StringBuilder();
        sb.append("audioEnabled [");
        sb.append(getSessionTimeString());
        sb.append("]");
        Log.d(TAG, sb.toString());
    }

    public void onAudioSessionId(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append("audioSessionId [");
        sb.append(i);
        sb.append("]");
        Log.d(TAG, sb.toString());
    }

    public void onAudioDecoderInitialized(String str, long j, long j2) {
        StringBuilder sb = new StringBuilder();
        sb.append("audioDecoderInitialized [");
        sb.append(getSessionTimeString());
        sb.append(", ");
        sb.append(str);
        sb.append("]");
        Log.d(TAG, sb.toString());
    }

    public void onAudioInputFormatChanged(Format format) {
        StringBuilder sb = new StringBuilder();
        sb.append("audioFormatChanged [");
        sb.append(getSessionTimeString());
        sb.append(", ");
        sb.append(Format.toLogString(format));
        sb.append("]");
        Log.d(TAG, sb.toString());
    }

    public void onAudioDisabled(DecoderCounters decoderCounters) {
        StringBuilder sb = new StringBuilder();
        sb.append("audioDisabled [");
        sb.append(getSessionTimeString());
        sb.append("]");
        Log.d(TAG, sb.toString());
    }

    public void onAudioSinkUnderrun(int i, long j, long j2) {
        StringBuilder sb = new StringBuilder();
        sb.append("audioTrackUnderrun [");
        sb.append(i);
        String str = ", ";
        sb.append(str);
        sb.append(j);
        sb.append(str);
        sb.append(j2);
        sb.append("]");
        printInternalError(sb.toString(), null);
    }

    public void onVideoEnabled(DecoderCounters decoderCounters) {
        StringBuilder sb = new StringBuilder();
        sb.append("videoEnabled [");
        sb.append(getSessionTimeString());
        sb.append("]");
        Log.d(TAG, sb.toString());
    }

    public void onVideoDecoderInitialized(String str, long j, long j2) {
        StringBuilder sb = new StringBuilder();
        sb.append("videoDecoderInitialized [");
        sb.append(getSessionTimeString());
        sb.append(", ");
        sb.append(str);
        sb.append("]");
        Log.d(TAG, sb.toString());
    }

    public void onVideoInputFormatChanged(Format format) {
        StringBuilder sb = new StringBuilder();
        sb.append("videoFormatChanged [");
        sb.append(getSessionTimeString());
        sb.append(", ");
        sb.append(Format.toLogString(format));
        sb.append("]");
        Log.d(TAG, sb.toString());
    }

    public void onVideoDisabled(DecoderCounters decoderCounters) {
        StringBuilder sb = new StringBuilder();
        sb.append("videoDisabled [");
        sb.append(getSessionTimeString());
        sb.append("]");
        Log.d(TAG, sb.toString());
    }

    public void onDroppedFrames(int i, long j) {
        StringBuilder sb = new StringBuilder();
        sb.append("droppedFrames [");
        sb.append(getSessionTimeString());
        sb.append(", ");
        sb.append(i);
        sb.append("]");
        Log.d(TAG, sb.toString());
    }

    public void onVideoSizeChanged(int i, int i2, int i3, float f) {
        StringBuilder sb = new StringBuilder();
        sb.append("videoSizeChanged [");
        sb.append(i);
        sb.append(", ");
        sb.append(i2);
        sb.append("]");
        Log.d(TAG, sb.toString());
    }

    public void onRenderedFirstFrame(Surface surface) {
        StringBuilder sb = new StringBuilder();
        sb.append("renderedFirstFrame [");
        sb.append(surface);
        sb.append("]");
        Log.d(TAG, sb.toString());
    }

    public void onDrmSessionManagerError(Exception exc) {
        printInternalError("drmSessionManagerError", exc);
    }

    public void onDrmKeysRestored() {
        StringBuilder sb = new StringBuilder();
        sb.append("drmKeysRestored [");
        sb.append(getSessionTimeString());
        sb.append("]");
        Log.d(TAG, sb.toString());
    }

    public void onDrmKeysRemoved() {
        StringBuilder sb = new StringBuilder();
        sb.append("drmKeysRemoved [");
        sb.append(getSessionTimeString());
        sb.append("]");
        Log.d(TAG, sb.toString());
    }

    public void onDrmKeysLoaded() {
        StringBuilder sb = new StringBuilder();
        sb.append("drmKeysLoaded [");
        sb.append(getSessionTimeString());
        sb.append("]");
        Log.d(TAG, sb.toString());
    }

    public void onTimelineChanged(Timeline timeline, Object obj, int i) {
        String str;
        int periodCount = timeline.getPeriodCount();
        int windowCount = timeline.getWindowCount();
        StringBuilder sb = new StringBuilder();
        sb.append("sourceInfo [periodCount=");
        sb.append(periodCount);
        sb.append(", windowCount=");
        sb.append(windowCount);
        String sb2 = sb.toString();
        String str2 = TAG;
        Log.d(str2, sb2);
        int i2 = 0;
        while (true) {
            str = "]";
            if (i2 >= Math.min(periodCount, 3)) {
                break;
            }
            timeline.getPeriod(i2, this.period);
            StringBuilder sb3 = new StringBuilder();
            sb3.append("  period [");
            sb3.append(getTimeString(this.period.getDurationMs()));
            sb3.append(str);
            Log.d(str2, sb3.toString());
            i2++;
        }
        String str3 = "  ...";
        if (periodCount > 3) {
            Log.d(str2, str3);
        }
        for (int i3 = 0; i3 < Math.min(windowCount, 3); i3++) {
            timeline.getWindow(i3, this.window);
            StringBuilder sb4 = new StringBuilder();
            sb4.append("  window [");
            sb4.append(getTimeString(this.window.getDurationMs()));
            String str4 = ", ";
            sb4.append(str4);
            sb4.append(this.window.isSeekable);
            sb4.append(str4);
            sb4.append(this.window.isDynamic);
            sb4.append(str);
            Log.d(str2, sb4.toString());
        }
        if (windowCount > 3) {
            Log.d(str2, str3);
        }
        Log.d(str2, str);
    }

    public void onLoadError(int i, @Nullable MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z) {
        printInternalError("loadError", iOException);
    }

    private void printInternalError(String str, Exception exc) {
        StringBuilder sb = new StringBuilder();
        sb.append("internalError [");
        sb.append(getSessionTimeString());
        sb.append(", ");
        sb.append(str);
        sb.append("]");
        Log.e(TAG, sb.toString(), exc);
    }

    private void printMetadata(Metadata metadata, String str) {
        for (int i = 0; i < metadata.length(); i++) {
            Entry entry = metadata.get(i);
            boolean z = entry instanceof TextInformationFrame;
            String str2 = TAG;
            if (z) {
                TextInformationFrame textInformationFrame = (TextInformationFrame) entry;
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append(String.format("%s: value=%s", new Object[]{textInformationFrame.id, textInformationFrame.value}));
                Log.d(str2, sb.toString());
            } else if (entry instanceof UrlLinkFrame) {
                UrlLinkFrame urlLinkFrame = (UrlLinkFrame) entry;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append(String.format("%s: url=%s", new Object[]{urlLinkFrame.id, urlLinkFrame.url}));
                Log.d(str2, sb2.toString());
            } else if (entry instanceof PrivFrame) {
                PrivFrame privFrame = (PrivFrame) entry;
                StringBuilder sb3 = new StringBuilder();
                sb3.append(str);
                sb3.append(String.format("%s: owner=%s", new Object[]{privFrame.id, privFrame.owner}));
                Log.d(str2, sb3.toString());
            } else if (entry instanceof GeobFrame) {
                GeobFrame geobFrame = (GeobFrame) entry;
                StringBuilder sb4 = new StringBuilder();
                sb4.append(str);
                sb4.append(String.format("%s: mimeType=%s, filename=%s, description=%s", new Object[]{geobFrame.id, geobFrame.mimeType, geobFrame.filename, geobFrame.description}));
                Log.d(str2, sb4.toString());
            } else if (entry instanceof ApicFrame) {
                ApicFrame apicFrame = (ApicFrame) entry;
                StringBuilder sb5 = new StringBuilder();
                sb5.append(str);
                sb5.append(String.format("%s: mimeType=%s, description=%s", new Object[]{apicFrame.id, apicFrame.mimeType, apicFrame.description}));
                Log.d(str2, sb5.toString());
            } else if (entry instanceof CommentFrame) {
                CommentFrame commentFrame = (CommentFrame) entry;
                StringBuilder sb6 = new StringBuilder();
                sb6.append(str);
                sb6.append(String.format("%s: language=%s, description=%s", new Object[]{commentFrame.id, commentFrame.language, commentFrame.description}));
                Log.d(str2, sb6.toString());
            } else if (entry instanceof Id3Frame) {
                Id3Frame id3Frame = (Id3Frame) entry;
                StringBuilder sb7 = new StringBuilder();
                sb7.append(str);
                sb7.append(String.format("%s", new Object[]{id3Frame.id}));
                Log.d(str2, sb7.toString());
            } else if (entry instanceof EventMessage) {
                EventMessage eventMessage = (EventMessage) entry;
                StringBuilder sb8 = new StringBuilder();
                sb8.append(str);
                sb8.append(String.format("EMSG: scheme=%s, id=%d, value=%s", new Object[]{eventMessage.schemeIdUri, Long.valueOf(eventMessage.id), eventMessage.value}));
                Log.d(str2, sb8.toString());
            }
        }
    }

    private String getSessionTimeString() {
        return getTimeString(SystemClock.elapsedRealtime() - this.startTimeMs);
    }

    private static String getTimeString(long j) {
        return j == C.TIME_UNSET ? "?" : TIME_FORMAT.format((double) (((float) j) / 1000.0f));
    }

    private static String getTrackStatusString(TrackSelection trackSelection, TrackGroup trackGroup, int i) {
        return getTrackStatusString((trackSelection == null || trackSelection.getTrackGroup() != trackGroup || trackSelection.indexOf(i) == -1) ? false : true);
    }
}
