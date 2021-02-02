package tv.danmaku.ijk.media.player.misc;

import android.annotation.TargetApi;
import android.media.MediaFormat;
import android.media.MediaPlayer;
import android.media.MediaPlayer.TrackInfo;
import android.os.Build.VERSION;
import com.google.android.exoplayer2.C;

public class AndroidTrackInfo implements ITrackInfo {
    private final TrackInfo mTrackInfo;

    public static AndroidTrackInfo[] fromMediaPlayer(MediaPlayer mediaPlayer) {
        if (VERSION.SDK_INT >= 16) {
            return fromTrackInfo(mediaPlayer.getTrackInfo());
        }
        return null;
    }

    private static AndroidTrackInfo[] fromTrackInfo(TrackInfo[] trackInfoArr) {
        if (trackInfoArr == null) {
            return null;
        }
        AndroidTrackInfo[] androidTrackInfoArr = new AndroidTrackInfo[trackInfoArr.length];
        for (int i = 0; i < trackInfoArr.length; i++) {
            androidTrackInfoArr[i] = new AndroidTrackInfo(trackInfoArr[i]);
        }
        return androidTrackInfoArr;
    }

    private AndroidTrackInfo(TrackInfo trackInfo) {
        this.mTrackInfo = trackInfo;
    }

    @TargetApi(19)
    public IMediaFormat getFormat() {
        if (this.mTrackInfo == null || VERSION.SDK_INT < 19) {
            return null;
        }
        MediaFormat format = this.mTrackInfo.getFormat();
        if (format == null) {
            return null;
        }
        return new AndroidMediaFormat(format);
    }

    @TargetApi(16)
    public String getLanguage() {
        TrackInfo trackInfo = this.mTrackInfo;
        if (trackInfo == null) {
            return C.LANGUAGE_UNDETERMINED;
        }
        return trackInfo.getLanguage();
    }

    @TargetApi(16)
    public int getTrackType() {
        TrackInfo trackInfo = this.mTrackInfo;
        if (trackInfo == null) {
            return 0;
        }
        return trackInfo.getTrackType();
    }

    @TargetApi(16)
    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append(getClass().getSimpleName());
        sb.append('{');
        TrackInfo trackInfo = this.mTrackInfo;
        if (trackInfo != null) {
            sb.append(trackInfo.toString());
        } else {
            sb.append("null");
        }
        sb.append('}');
        return sb.toString();
    }

    @TargetApi(16)
    public String getInfoInline() {
        TrackInfo trackInfo = this.mTrackInfo;
        return trackInfo != null ? trackInfo.toString() : "null";
    }
}
