package tv.danmaku.ijk.media.player.misc;

import android.text.TextUtils;
import com.google.android.exoplayer2.C;
import tv.danmaku.ijk.media.player.IjkMediaMeta.IjkStreamMeta;

public class IjkTrackInfo implements ITrackInfo {
    private IjkStreamMeta mStreamMeta;
    private int mTrackType = 0;

    public IjkTrackInfo(IjkStreamMeta ijkStreamMeta) {
        this.mStreamMeta = ijkStreamMeta;
    }

    public void setMediaMeta(IjkStreamMeta ijkStreamMeta) {
        this.mStreamMeta = ijkStreamMeta;
    }

    public IMediaFormat getFormat() {
        return new IjkMediaFormat(this.mStreamMeta);
    }

    public String getLanguage() {
        IjkStreamMeta ijkStreamMeta = this.mStreamMeta;
        return (ijkStreamMeta == null || TextUtils.isEmpty(ijkStreamMeta.mLanguage)) ? C.LANGUAGE_UNDETERMINED : this.mStreamMeta.mLanguage;
    }

    public int getTrackType() {
        return this.mTrackType;
    }

    public void setTrackType(int i) {
        this.mTrackType = i;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append('{');
        sb.append(getInfoInline());
        sb.append("}");
        return sb.toString();
    }

    public String getInfoInline() {
        StringBuilder sb = new StringBuilder(128);
        int i = this.mTrackType;
        String str = ", ";
        if (i == 1) {
            sb.append("VIDEO");
            sb.append(str);
            sb.append(this.mStreamMeta.getCodecShortNameInline());
            sb.append(str);
            sb.append(this.mStreamMeta.getBitrateInline());
            sb.append(str);
            sb.append(this.mStreamMeta.getResolutionInline());
        } else if (i == 2) {
            sb.append("AUDIO");
            sb.append(str);
            sb.append(this.mStreamMeta.getCodecShortNameInline());
            sb.append(str);
            sb.append(this.mStreamMeta.getBitrateInline());
            sb.append(str);
            sb.append(this.mStreamMeta.getSampleRateInline());
        } else if (i == 3) {
            sb.append("TIMEDTEXT");
            sb.append(str);
            sb.append(this.mStreamMeta.mLanguage);
        } else if (i != 4) {
            sb.append("UNKNOWN");
        } else {
            sb.append("SUBTITLE");
        }
        return sb.toString();
    }
}
