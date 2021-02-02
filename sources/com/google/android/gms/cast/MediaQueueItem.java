package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.Objects;
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
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@Class(creator = "MediaQueueItemCreator")
@Reserved({1})
public class MediaQueueItem extends AbstractSafeParcelable {
    public static final Creator<MediaQueueItem> CREATOR = new zzan();
    public static final double DEFAULT_PLAYBACK_DURATION = Double.POSITIVE_INFINITY;
    public static final int INVALID_ITEM_ID = 0;
    @Field(getter = "getAutoplay", id = 4)
    private boolean zzdm;
    @Field(getter = "getActiveTrackIds", id = 8)
    private long[] zzdp;
    @Field(getter = "getMedia", id = 2)
    private MediaInfo zzdz;
    @Field(getter = "getItemId", id = 3)
    private int zzea;
    @Field(getter = "getStartTime", id = 5)
    private double zzeb;
    @Field(getter = "getPlaybackDuration", id = 6)
    private double zzec;
    @Field(getter = "getPreloadTime", id = 7)
    private double zzed;
    @Field(id = 9)
    private String zzj;
    private JSONObject zzp;

    @VisibleForTesting
    public static class Builder {
        private final MediaQueueItem zzee;

        public Builder(MediaInfo mediaInfo) throws IllegalArgumentException {
            this.zzee = new MediaQueueItem(mediaInfo);
        }

        public Builder(JSONObject jSONObject) throws JSONException {
            this.zzee = new MediaQueueItem(jSONObject);
        }

        public Builder(MediaQueueItem mediaQueueItem) throws IllegalArgumentException {
            this.zzee = new MediaQueueItem();
        }

        public Builder clearItemId() {
            this.zzee.zza(0);
            return this;
        }

        public Builder setAutoplay(boolean z) {
            this.zzee.zze(z);
            return this;
        }

        public Builder setStartTime(double d) throws IllegalArgumentException {
            this.zzee.zza(d);
            return this;
        }

        public Builder setPlaybackDuration(double d) {
            this.zzee.zzb(d);
            return this;
        }

        public Builder setPreloadTime(double d) throws IllegalArgumentException {
            this.zzee.zzc(d);
            return this;
        }

        public Builder setActiveTrackIds(long[] jArr) {
            this.zzee.zza(jArr);
            return this;
        }

        public Builder setCustomData(JSONObject jSONObject) {
            this.zzee.setCustomData(jSONObject);
            return this;
        }

        public MediaQueueItem build() {
            this.zzee.zzi();
            return this.zzee;
        }
    }

    @Constructor
    MediaQueueItem(@Param(id = 2) MediaInfo mediaInfo, @Param(id = 3) int i, @Param(id = 4) boolean z, @Param(id = 5) double d, @Param(id = 6) double d2, @Param(id = 7) double d3, @Param(id = 8) long[] jArr, @Param(id = 9) String str) {
        this.zzdz = mediaInfo;
        this.zzea = i;
        this.zzdm = z;
        this.zzeb = d;
        this.zzec = d2;
        this.zzed = d3;
        this.zzdp = jArr;
        this.zzj = str;
        String str2 = this.zzj;
        if (str2 != null) {
            try {
                this.zzp = new JSONObject(str2);
            } catch (JSONException unused) {
                this.zzp = null;
                this.zzj = null;
            }
        } else {
            this.zzp = null;
        }
    }

    private MediaQueueItem(MediaInfo mediaInfo) throws IllegalArgumentException {
        this(mediaInfo, 0, true, 0.0d, Double.POSITIVE_INFINITY, 0.0d, null, null);
        if (mediaInfo == null) {
            throw new IllegalArgumentException("media cannot be null.");
        }
    }

    MediaQueueItem(JSONObject jSONObject) throws JSONException {
        this(null, 0, true, 0.0d, Double.POSITIVE_INFINITY, 0.0d, null, null);
        zzf(jSONObject);
    }

    private MediaQueueItem(MediaQueueItem mediaQueueItem) throws IllegalArgumentException {
        this(mediaQueueItem.getMedia(), mediaQueueItem.getItemId(), mediaQueueItem.getAutoplay(), mediaQueueItem.getStartTime(), mediaQueueItem.getPlaybackDuration(), mediaQueueItem.getPreloadTime(), mediaQueueItem.getActiveTrackIds(), null);
        if (this.zzdz != null) {
            this.zzp = mediaQueueItem.getCustomData();
            return;
        }
        throw new IllegalArgumentException("media cannot be null.");
    }

    public final boolean zzf(JSONObject jSONObject) throws JSONException {
        boolean z;
        long[] jArr;
        String str = "media";
        boolean z2 = false;
        if (jSONObject.has(str)) {
            this.zzdz = new MediaInfo(jSONObject.getJSONObject(str));
            z = true;
        } else {
            z = false;
        }
        String str2 = "itemId";
        if (jSONObject.has(str2)) {
            int i = jSONObject.getInt(str2);
            if (this.zzea != i) {
                this.zzea = i;
                z = true;
            }
        }
        String str3 = "autoplay";
        if (jSONObject.has(str3)) {
            boolean z3 = jSONObject.getBoolean(str3);
            if (this.zzdm != z3) {
                this.zzdm = z3;
                z = true;
            }
        }
        String str4 = "startTime";
        if (jSONObject.has(str4)) {
            double d = jSONObject.getDouble(str4);
            if (Math.abs(d - this.zzeb) > 1.0E-7d) {
                this.zzeb = d;
                z = true;
            }
        }
        String str5 = "playbackDuration";
        if (jSONObject.has(str5)) {
            double d2 = jSONObject.getDouble(str5);
            if (Math.abs(d2 - this.zzec) > 1.0E-7d) {
                this.zzec = d2;
                z = true;
            }
        }
        String str6 = "preloadTime";
        if (jSONObject.has(str6)) {
            double d3 = jSONObject.getDouble(str6);
            if (Math.abs(d3 - this.zzed) > 1.0E-7d) {
                this.zzed = d3;
                z = true;
            }
        }
        String str7 = "activeTrackIds";
        if (jSONObject.has(str7)) {
            JSONArray jSONArray = jSONObject.getJSONArray(str7);
            int length = jSONArray.length();
            jArr = new long[length];
            for (int i2 = 0; i2 < length; i2++) {
                jArr[i2] = jSONArray.getLong(i2);
            }
            long[] jArr2 = this.zzdp;
            if (jArr2 != null && jArr2.length == length) {
                int i3 = 0;
                while (true) {
                    if (i3 >= length) {
                        break;
                    } else if (this.zzdp[i3] != jArr[i3]) {
                        break;
                    } else {
                        i3++;
                    }
                }
            }
            z2 = true;
        } else {
            jArr = null;
        }
        if (z2) {
            this.zzdp = jArr;
            z = true;
        }
        String str8 = "customData";
        if (!jSONObject.has(str8)) {
            return z;
        }
        this.zzp = jSONObject.getJSONObject(str8);
        return true;
    }

    public MediaInfo getMedia() {
        return this.zzdz;
    }

    public int getItemId() {
        return this.zzea;
    }

    /* access modifiers changed from: 0000 */
    public final void zza(int i) {
        this.zzea = 0;
    }

    public boolean getAutoplay() {
        return this.zzdm;
    }

    /* access modifiers changed from: 0000 */
    public final void zze(boolean z) {
        this.zzdm = z;
    }

    public double getStartTime() {
        return this.zzeb;
    }

    /* access modifiers changed from: 0000 */
    public final void zza(double d) throws IllegalArgumentException {
        if (Double.isNaN(d) || d < 0.0d) {
            throw new IllegalArgumentException("startTime cannot be negative or NaN.");
        }
        this.zzeb = d;
    }

    public double getPlaybackDuration() {
        return this.zzec;
    }

    /* access modifiers changed from: 0000 */
    public final void zzb(double d) throws IllegalArgumentException {
        if (!Double.isNaN(d)) {
            this.zzec = d;
            return;
        }
        throw new IllegalArgumentException("playbackDuration cannot be NaN.");
    }

    public double getPreloadTime() {
        return this.zzed;
    }

    /* access modifiers changed from: 0000 */
    public final void zzc(double d) throws IllegalArgumentException {
        if (Double.isNaN(d) || d < 0.0d) {
            throw new IllegalArgumentException("preloadTime cannot be negative or NaN.");
        }
        this.zzed = d;
    }

    public long[] getActiveTrackIds() {
        return this.zzdp;
    }

    /* access modifiers changed from: 0000 */
    public final void zza(long[] jArr) {
        this.zzdp = jArr;
    }

    public JSONObject getCustomData() {
        return this.zzp;
    }

    /* access modifiers changed from: 0000 */
    public final void setCustomData(JSONObject jSONObject) {
        this.zzp = jSONObject;
    }

    /* access modifiers changed from: 0000 */
    public final void zzi() throws IllegalArgumentException {
        if (this.zzdz == null) {
            throw new IllegalArgumentException("media cannot be null.");
        } else if (Double.isNaN(this.zzeb) || this.zzeb < 0.0d) {
            throw new IllegalArgumentException("startTime cannot be negative or NaN.");
        } else if (Double.isNaN(this.zzec)) {
            throw new IllegalArgumentException("playbackDuration cannot be NaN.");
        } else if (Double.isNaN(this.zzed) || this.zzed < 0.0d) {
            throw new IllegalArgumentException("preloadTime cannot be negative or Nan.");
        }
    }

    public final JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("media", this.zzdz.toJson());
            if (this.zzea != 0) {
                jSONObject.put("itemId", this.zzea);
            }
            jSONObject.put("autoplay", this.zzdm);
            jSONObject.put("startTime", this.zzeb);
            if (this.zzec != Double.POSITIVE_INFINITY) {
                jSONObject.put("playbackDuration", this.zzec);
            }
            jSONObject.put("preloadTime", this.zzed);
            if (this.zzdp != null) {
                JSONArray jSONArray = new JSONArray();
                for (long put : this.zzdp) {
                    jSONArray.put(put);
                }
                jSONObject.put("activeTrackIds", jSONArray);
            }
            if (this.zzp != null) {
                jSONObject.put("customData", this.zzp);
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaQueueItem)) {
            return false;
        }
        MediaQueueItem mediaQueueItem = (MediaQueueItem) obj;
        if ((this.zzp == null) != (mediaQueueItem.zzp == null)) {
            return false;
        }
        JSONObject jSONObject = this.zzp;
        if (jSONObject != null) {
            JSONObject jSONObject2 = mediaQueueItem.zzp;
            if (jSONObject2 != null && !JsonUtils.areJsonValuesEquivalent(jSONObject, jSONObject2)) {
                return false;
            }
        }
        return zzcu.zza(this.zzdz, mediaQueueItem.zzdz) && this.zzea == mediaQueueItem.zzea && this.zzdm == mediaQueueItem.zzdm && this.zzeb == mediaQueueItem.zzeb && this.zzec == mediaQueueItem.zzec && this.zzed == mediaQueueItem.zzed && Arrays.equals(this.zzdp, mediaQueueItem.zzdp);
    }

    public int hashCode() {
        return Objects.hashCode(this.zzdz, Integer.valueOf(this.zzea), Boolean.valueOf(this.zzdm), Double.valueOf(this.zzeb), Double.valueOf(this.zzec), Double.valueOf(this.zzed), Integer.valueOf(Arrays.hashCode(this.zzdp)), String.valueOf(this.zzp));
    }

    public void writeToParcel(Parcel parcel, int i) {
        JSONObject jSONObject = this.zzp;
        this.zzj = jSONObject == null ? null : jSONObject.toString();
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, getMedia(), i, false);
        SafeParcelWriter.writeInt(parcel, 3, getItemId());
        SafeParcelWriter.writeBoolean(parcel, 4, getAutoplay());
        SafeParcelWriter.writeDouble(parcel, 5, getStartTime());
        SafeParcelWriter.writeDouble(parcel, 6, getPlaybackDuration());
        SafeParcelWriter.writeDouble(parcel, 7, getPreloadTime());
        SafeParcelWriter.writeLongArray(parcel, 8, getActiveTrackIds(), false);
        SafeParcelWriter.writeString(parcel, 9, this.zzj, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
