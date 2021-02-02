package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Class;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Constructor;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Field;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Param;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Reserved;
import com.google.android.gms.common.util.JsonUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.cast.zzcu;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.eclipse.jetty.util.security.Constraint;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@Class(creator = "MediaInfoCreator")
@Reserved({1})
public class MediaInfo extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Creator<MediaInfo> CREATOR = new zzaj();
    public static final int STREAM_TYPE_BUFFERED = 1;
    public static final int STREAM_TYPE_INVALID = -1;
    public static final int STREAM_TYPE_LIVE = 2;
    public static final int STREAM_TYPE_NONE = 0;
    public static final long UNKNOWN_DURATION = -1;
    @Field(getter = "getStreamType", id = 3)
    private int streamType;
    @Field(getter = "getContentType", id = 4)
    private String zzdd;
    @Field(getter = "getMetadata", id = 5)
    private MediaMetadata zzde;
    @Field(getter = "getStreamDuration", id = 6)
    private long zzdf;
    @Field(getter = "getMediaTracks", id = 7)
    private List<MediaTrack> zzdg;
    @Field(getter = "getTextTrackStyle", id = 8)
    private TextTrackStyle zzdh;
    @Field(getter = "getAdBreaks", id = 10)
    private List<AdBreakInfo> zzdi;
    @Field(getter = "getAdBreakClips", id = 11)
    private List<AdBreakClipInfo> zzdj;
    @Field(getter = "getEntity", id = 12)
    private String zzdk;
    @Field(id = 9)
    private String zzj;
    @Field(getter = "getContentId", id = 2)
    private final String zzk;
    private JSONObject zzp;

    @VisibleForTesting
    public static class Builder {
        private final MediaInfo zzdl;

        public Builder(String str) throws IllegalArgumentException {
            this.zzdl = new MediaInfo(str);
        }

        public Builder(String str, String str2) throws IllegalArgumentException {
            this.zzdl = new MediaInfo(str, str2);
        }

        public Builder setStreamType(int i) throws IllegalArgumentException {
            this.zzdl.setStreamType(i);
            return this;
        }

        public Builder setContentType(String str) {
            this.zzdl.setContentType(str);
            return this;
        }

        public Builder setMetadata(MediaMetadata mediaMetadata) {
            this.zzdl.zza(mediaMetadata);
            return this;
        }

        public Builder setStreamDuration(long j) throws IllegalArgumentException {
            this.zzdl.zza(j);
            return this;
        }

        public Builder setCustomData(JSONObject jSONObject) {
            this.zzdl.setCustomData(jSONObject);
            return this;
        }

        public Builder setMediaTracks(List<MediaTrack> list) {
            this.zzdl.zza(list);
            return this;
        }

        public Builder setTextTrackStyle(TextTrackStyle textTrackStyle) {
            this.zzdl.setTextTrackStyle(textTrackStyle);
            return this;
        }

        public Builder setEntity(String str) {
            this.zzdl.zzd(str);
            return this;
        }

        public Builder setAdBreaks(List<AdBreakInfo> list) {
            this.zzdl.zzb(list);
            return this;
        }

        public Builder setAdBreakClips(List<AdBreakClipInfo> list) {
            this.zzdl.zzc(list);
            return this;
        }

        public MediaInfo build() {
            return this.zzdl;
        }
    }

    @Constructor
    MediaInfo(@Param(id = 2) @NonNull String str, @Param(id = 3) int i, @Param(id = 4) String str2, @Param(id = 5) MediaMetadata mediaMetadata, @Param(id = 6) long j, @Param(id = 7) List<MediaTrack> list, @Param(id = 8) TextTrackStyle textTrackStyle, @Param(id = 9) String str3, @Param(id = 10) List<AdBreakInfo> list2, @Param(id = 11) List<AdBreakClipInfo> list3, @Param(id = 12) String str4) {
        this.zzk = str;
        this.streamType = i;
        this.zzdd = str2;
        this.zzde = mediaMetadata;
        this.zzdf = j;
        this.zzdg = list;
        this.zzdh = textTrackStyle;
        this.zzj = str3;
        String str5 = this.zzj;
        if (str5 != null) {
            try {
                this.zzp = new JSONObject(str5);
            } catch (JSONException unused) {
                this.zzp = null;
                this.zzj = null;
            }
        } else {
            this.zzp = null;
        }
        this.zzdi = list2;
        this.zzdj = list3;
        this.zzdk = str4;
    }

    MediaInfo(String str) throws IllegalArgumentException {
        this(str, -1, null, null, -1, null, null, null, null, null, null);
        if (str == null) {
            throw new IllegalArgumentException("contentID cannot be null");
        }
    }

    MediaInfo(String str, String str2) throws IllegalArgumentException {
        this(str, -1, null, null, -1, null, null, null, null, null, str2);
        if (str == null) {
            throw new IllegalArgumentException("contentID cannot be null");
        }
    }

    MediaInfo(JSONObject jSONObject) throws JSONException {
        this(jSONObject.getString("contentId"), -1, null, null, -1, null, null, null, null, null, null);
        String string = jSONObject.getString("streamType");
        if (Constraint.NONE.equals(string)) {
            this.streamType = 0;
        } else if ("BUFFERED".equals(string)) {
            this.streamType = 1;
        } else if ("LIVE".equals(string)) {
            this.streamType = 2;
        } else {
            this.streamType = -1;
        }
        this.zzdd = jSONObject.optString("contentType", null);
        String str = TtmlNode.TAG_METADATA;
        if (jSONObject.has(str)) {
            JSONObject jSONObject2 = jSONObject.getJSONObject(str);
            this.zzde = new MediaMetadata(jSONObject2.getInt("metadataType"));
            this.zzde.zze(jSONObject2);
        }
        this.zzdf = -1;
        String str2 = "duration";
        if (jSONObject.has(str2) && !jSONObject.isNull(str2)) {
            double optDouble = jSONObject.optDouble(str2, 0.0d);
            if (!Double.isNaN(optDouble) && !Double.isInfinite(optDouble)) {
                this.zzdf = (long) (optDouble * 1000.0d);
            }
        }
        String str3 = "tracks";
        if (jSONObject.has(str3)) {
            this.zzdg = new ArrayList();
            JSONArray jSONArray = jSONObject.getJSONArray(str3);
            for (int i = 0; i < jSONArray.length(); i++) {
                this.zzdg.add(new MediaTrack(jSONArray.getJSONObject(i)));
            }
        } else {
            this.zzdg = null;
        }
        String str4 = "textTrackStyle";
        if (jSONObject.has(str4)) {
            JSONObject jSONObject3 = jSONObject.getJSONObject(str4);
            TextTrackStyle textTrackStyle = new TextTrackStyle();
            textTrackStyle.zze(jSONObject3);
            this.zzdh = textTrackStyle;
        } else {
            this.zzdh = null;
        }
        zzd(jSONObject);
        this.zzp = jSONObject.optJSONObject("customData");
        String str5 = "entity";
        if (jSONObject.has(str5)) {
            this.zzdk = jSONObject.getString(str5);
        }
    }

    public String getContentId() {
        return this.zzk;
    }

    /* access modifiers changed from: 0000 */
    public final void setStreamType(int i) throws IllegalArgumentException {
        if (i < -1 || i > 2) {
            throw new IllegalArgumentException("invalid stream type");
        }
        this.streamType = i;
    }

    public int getStreamType() {
        return this.streamType;
    }

    /* access modifiers changed from: 0000 */
    public final void setContentType(String str) {
        this.zzdd = str;
    }

    public String getContentType() {
        return this.zzdd;
    }

    /* access modifiers changed from: 0000 */
    public final void zza(MediaMetadata mediaMetadata) {
        this.zzde = mediaMetadata;
    }

    public MediaMetadata getMetadata() {
        return this.zzde;
    }

    /* access modifiers changed from: 0000 */
    public final void zza(long j) throws IllegalArgumentException {
        if (j >= 0 || j == -1) {
            this.zzdf = j;
            return;
        }
        throw new IllegalArgumentException("Invalid stream duration");
    }

    public long getStreamDuration() {
        return this.zzdf;
    }

    /* access modifiers changed from: 0000 */
    public final void zza(List<MediaTrack> list) {
        this.zzdg = list;
    }

    public List<MediaTrack> getMediaTracks() {
        return this.zzdg;
    }

    public void setTextTrackStyle(TextTrackStyle textTrackStyle) {
        this.zzdh = textTrackStyle;
    }

    public TextTrackStyle getTextTrackStyle() {
        return this.zzdh;
    }

    /* access modifiers changed from: 0000 */
    public final void setCustomData(JSONObject jSONObject) {
        this.zzp = jSONObject;
    }

    public JSONObject getCustomData() {
        return this.zzp;
    }

    public List<AdBreakInfo> getAdBreaks() {
        List<AdBreakInfo> list = this.zzdi;
        if (list == null) {
            return null;
        }
        return Collections.unmodifiableList(list);
    }

    public List<AdBreakClipInfo> getAdBreakClips() {
        List<AdBreakClipInfo> list = this.zzdj;
        if (list == null) {
            return null;
        }
        return Collections.unmodifiableList(list);
    }

    @VisibleForTesting
    public final void zzb(List<AdBreakInfo> list) {
        this.zzdi = list;
    }

    /* access modifiers changed from: 0000 */
    @VisibleForTesting
    public final void zzc(List<AdBreakClipInfo> list) {
        this.zzdj = list;
    }

    /* access modifiers changed from: 0000 */
    public final void zzd(JSONObject jSONObject) throws JSONException {
        String str = "breaks";
        int i = 0;
        if (jSONObject.has(str)) {
            JSONArray jSONArray = jSONObject.getJSONArray(str);
            this.zzdi = new ArrayList(jSONArray.length());
            int i2 = 0;
            while (true) {
                if (i2 >= jSONArray.length()) {
                    break;
                }
                AdBreakInfo zzb = AdBreakInfo.zzb(jSONArray.getJSONObject(i2));
                if (zzb == null) {
                    this.zzdi.clear();
                    break;
                } else {
                    this.zzdi.add(zzb);
                    i2++;
                }
            }
        }
        String str2 = "breakClips";
        if (jSONObject.has(str2)) {
            JSONArray jSONArray2 = jSONObject.getJSONArray(str2);
            this.zzdj = new ArrayList(jSONArray2.length());
            while (i < jSONArray2.length()) {
                AdBreakClipInfo zza = AdBreakClipInfo.zza(jSONArray2.getJSONObject(i));
                if (zza != null) {
                    this.zzdj.add(zza);
                    i++;
                } else {
                    this.zzdj.clear();
                    return;
                }
            }
        }
    }

    public String getEntity() {
        return this.zzdk;
    }

    @VisibleForTesting
    public final void zzd(String str) {
        this.zzdk = str;
    }

    public final JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("contentId", this.zzk);
            int i = this.streamType;
            String str = i != 1 ? i != 2 ? Constraint.NONE : "LIVE" : "BUFFERED";
            jSONObject.put("streamType", str);
            if (this.zzdd != null) {
                jSONObject.put("contentType", this.zzdd);
            }
            if (this.zzde != null) {
                jSONObject.put(TtmlNode.TAG_METADATA, this.zzde.toJson());
            }
            String str2 = "duration";
            if (this.zzdf <= -1) {
                jSONObject.put(str2, JSONObject.NULL);
            } else {
                double d = (double) this.zzdf;
                Double.isNaN(d);
                jSONObject.put(str2, d / 1000.0d);
            }
            if (this.zzdg != null) {
                JSONArray jSONArray = new JSONArray();
                for (MediaTrack json : this.zzdg) {
                    jSONArray.put(json.toJson());
                }
                jSONObject.put("tracks", jSONArray);
            }
            if (this.zzdh != null) {
                jSONObject.put("textTrackStyle", this.zzdh.toJson());
            }
            if (this.zzp != null) {
                jSONObject.put("customData", this.zzp);
            }
            if (this.zzdk != null) {
                jSONObject.put("entity", this.zzdk);
            }
            if (this.zzdi != null) {
                JSONArray jSONArray2 = new JSONArray();
                for (AdBreakInfo json2 : this.zzdi) {
                    jSONArray2.put(json2.toJson());
                }
                jSONObject.put("breaks", jSONArray2);
            }
            if (this.zzdj != null) {
                JSONArray jSONArray3 = new JSONArray();
                for (AdBreakClipInfo json3 : this.zzdj) {
                    jSONArray3.put(json3.toJson());
                }
                jSONObject.put("breakClips", jSONArray3);
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaInfo)) {
            return false;
        }
        MediaInfo mediaInfo = (MediaInfo) obj;
        if ((this.zzp == null) != (mediaInfo.zzp == null)) {
            return false;
        }
        JSONObject jSONObject = this.zzp;
        if (jSONObject != null) {
            JSONObject jSONObject2 = mediaInfo.zzp;
            if (jSONObject2 != null && !JsonUtils.areJsonValuesEquivalent(jSONObject, jSONObject2)) {
                return false;
            }
        }
        return zzcu.zza(this.zzk, mediaInfo.zzk) && this.streamType == mediaInfo.streamType && zzcu.zza(this.zzdd, mediaInfo.zzdd) && zzcu.zza(this.zzde, mediaInfo.zzde) && this.zzdf == mediaInfo.zzdf && zzcu.zza(this.zzdg, mediaInfo.zzdg) && zzcu.zza(this.zzdh, mediaInfo.zzdh) && zzcu.zza(this.zzdi, mediaInfo.zzdi) && zzcu.zza(this.zzdj, mediaInfo.zzdj) && zzcu.zza(this.zzdk, mediaInfo.zzdk);
    }

    public int hashCode() {
        return Objects.hashCode(this.zzk, Integer.valueOf(this.streamType), this.zzdd, this.zzde, Long.valueOf(this.zzdf), String.valueOf(this.zzp), this.zzdg, this.zzdh, this.zzdi, this.zzdj, this.zzdk);
    }

    public void writeToParcel(Parcel parcel, int i) {
        JSONObject jSONObject = this.zzp;
        this.zzj = jSONObject == null ? null : jSONObject.toString();
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, getContentId(), false);
        SafeParcelWriter.writeInt(parcel, 3, getStreamType());
        SafeParcelWriter.writeString(parcel, 4, getContentType(), false);
        SafeParcelWriter.writeParcelable(parcel, 5, getMetadata(), i, false);
        SafeParcelWriter.writeLong(parcel, 6, getStreamDuration());
        SafeParcelWriter.writeTypedList(parcel, 7, getMediaTracks(), false);
        SafeParcelWriter.writeParcelable(parcel, 8, getTextTrackStyle(), i, false);
        SafeParcelWriter.writeString(parcel, 9, this.zzj, false);
        SafeParcelWriter.writeTypedList(parcel, 10, getAdBreaks(), false);
        SafeParcelWriter.writeTypedList(parcel, 11, getAdBreakClips(), false);
        SafeParcelWriter.writeString(parcel, 12, getEntity(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
