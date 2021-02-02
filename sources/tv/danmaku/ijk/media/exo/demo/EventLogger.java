package tv.danmaku.ijk.media.exo.demo;

import android.media.MediaCodec.CryptoException;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.exoplayer.MediaCodecTrackRenderer.DecoderInitializationException;
import com.google.android.exoplayer.TimeRange;
import com.google.android.exoplayer.audio.AudioTrack.InitializationException;
import com.google.android.exoplayer.audio.AudioTrack.WriteException;
import com.google.android.exoplayer.chunk.Format;
import com.google.android.exoplayer.util.VerboseLogUtil;
import java.io.IOException;
import java.text.NumberFormat;
import java.util.Locale;
import tv.danmaku.ijk.media.exo.demo.player.DemoPlayer.InfoListener;
import tv.danmaku.ijk.media.exo.demo.player.DemoPlayer.InternalErrorListener;
import tv.danmaku.ijk.media.exo.demo.player.DemoPlayer.Listener;

public class EventLogger implements Listener, InfoListener, InternalErrorListener {
    private static final String TAG = "EventLogger";
    private static final NumberFormat TIME_FORMAT = NumberFormat.getInstance(Locale.US);
    private long[] availableRangeValuesUs;
    private long[] loadStartTimeMs = new long[4];
    private long sessionStartTimeMs;

    private String getStateString(int i) {
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? "?" : "E" : "R" : "B" : "P" : "I";
    }

    static {
        TIME_FORMAT.setMinimumFractionDigits(2);
        TIME_FORMAT.setMaximumFractionDigits(2);
    }

    public void startSession() {
        this.sessionStartTimeMs = SystemClock.elapsedRealtime();
        Log.d(TAG, "start [0]");
    }

    public void endSession() {
        StringBuilder sb = new StringBuilder();
        sb.append("end [");
        sb.append(getSessionTimeString());
        sb.append("]");
        Log.d(TAG, sb.toString());
    }

    public void onStateChanged(boolean z, int i) {
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

    public void onError(Exception exc) {
        StringBuilder sb = new StringBuilder();
        sb.append("playerFailed [");
        sb.append(getSessionTimeString());
        sb.append("]");
        Log.e(TAG, sb.toString(), exc);
    }

    public void onVideoSizeChanged(int i, int i2, int i3, float f) {
        StringBuilder sb = new StringBuilder();
        sb.append("videoSizeChanged [");
        sb.append(i);
        String str = ", ";
        sb.append(str);
        sb.append(i2);
        sb.append(str);
        sb.append(i3);
        sb.append(str);
        sb.append(f);
        sb.append("]");
        Log.d(TAG, sb.toString());
    }

    public void onBandwidthSample(int i, long j, long j2) {
        StringBuilder sb = new StringBuilder();
        sb.append("bandwidth [");
        sb.append(getSessionTimeString());
        String str = ", ";
        sb.append(str);
        sb.append(j);
        sb.append(str);
        sb.append(getTimeString((long) i));
        sb.append(str);
        sb.append(j2);
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

    public void onLoadStarted(int i, long j, int i2, int i3, Format format, long j2, long j3) {
        this.loadStartTimeMs[i] = SystemClock.elapsedRealtime();
        String str = TAG;
        if (VerboseLogUtil.isTagEnabled(str)) {
            StringBuilder sb = new StringBuilder();
            sb.append("loadStart [");
            sb.append(getSessionTimeString());
            String str2 = ", ";
            sb.append(str2);
            sb.append(i);
            sb.append(str2);
            sb.append(i2);
            sb.append(str2);
            sb.append(j2);
            sb.append(str2);
            sb.append(j3);
            sb.append("]");
            Log.v(str, sb.toString());
        }
    }

    public void onLoadCompleted(int i, long j, int i2, int i3, Format format, long j2, long j3, long j4, long j5) {
        String str = TAG;
        if (VerboseLogUtil.isTagEnabled(str)) {
            long elapsedRealtime = SystemClock.elapsedRealtime() - this.loadStartTimeMs[i];
            StringBuilder sb = new StringBuilder();
            sb.append("loadEnd [");
            sb.append(getSessionTimeString());
            String str2 = ", ";
            sb.append(str2);
            sb.append(i);
            sb.append(str2);
            sb.append(elapsedRealtime);
            sb.append("]");
            Log.v(str, sb.toString());
        }
    }

    public void onVideoFormatEnabled(Format format, int i, long j) {
        StringBuilder sb = new StringBuilder();
        sb.append("videoFormat [");
        sb.append(getSessionTimeString());
        String str = ", ";
        sb.append(str);
        sb.append(format.id);
        sb.append(str);
        sb.append(Integer.toString(i));
        sb.append("]");
        Log.d(TAG, sb.toString());
    }

    public void onAudioFormatEnabled(Format format, int i, long j) {
        StringBuilder sb = new StringBuilder();
        sb.append("audioFormat [");
        sb.append(getSessionTimeString());
        String str = ", ";
        sb.append(str);
        sb.append(format.id);
        sb.append(str);
        sb.append(Integer.toString(i));
        sb.append("]");
        Log.d(TAG, sb.toString());
    }

    public void onLoadError(int i, IOException iOException) {
        printInternalError("loadError", iOException);
    }

    public void onRendererInitializationError(Exception exc) {
        printInternalError("rendererInitError", exc);
    }

    public void onDrmSessionManagerError(Exception exc) {
        printInternalError("drmSessionManagerError", exc);
    }

    public void onDecoderInitializationError(DecoderInitializationException decoderInitializationException) {
        printInternalError("decoderInitializationError", decoderInitializationException);
    }

    public void onAudioTrackInitializationError(InitializationException initializationException) {
        printInternalError("audioTrackInitializationError", initializationException);
    }

    public void onAudioTrackWriteError(WriteException writeException) {
        printInternalError("audioTrackWriteError", writeException);
    }

    public void onAudioTrackUnderrun(int i, long j, long j2) {
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

    public void onCryptoError(CryptoException cryptoException) {
        printInternalError("cryptoError", cryptoException);
    }

    public void onDecoderInitialized(String str, long j, long j2) {
        StringBuilder sb = new StringBuilder();
        sb.append("decoderInitialized [");
        sb.append(getSessionTimeString());
        sb.append(", ");
        sb.append(str);
        sb.append("]");
        Log.d(TAG, sb.toString());
    }

    public void onAvailableRangeChanged(int i, TimeRange timeRange) {
        this.availableRangeValuesUs = timeRange.getCurrentBoundsUs(this.availableRangeValuesUs);
        StringBuilder sb = new StringBuilder();
        sb.append("availableRange [");
        sb.append(timeRange.isStatic());
        String str = ", ";
        sb.append(str);
        sb.append(this.availableRangeValuesUs[0]);
        sb.append(str);
        sb.append(this.availableRangeValuesUs[1]);
        sb.append("]");
        Log.d(TAG, sb.toString());
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

    private String getSessionTimeString() {
        return getTimeString(SystemClock.elapsedRealtime() - this.sessionStartTimeMs);
    }

    private String getTimeString(long j) {
        return TIME_FORMAT.format((double) (((float) j) / 1000.0f));
    }
}
