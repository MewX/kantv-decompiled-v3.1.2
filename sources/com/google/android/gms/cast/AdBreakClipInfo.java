package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Class;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Constructor;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Field;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Param;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Reserved;
import com.google.android.gms.internal.cast.zzcu;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

@Class(creator = "AdBreakClipInfoCreator")
@Reserved({1})
public class AdBreakClipInfo extends AbstractSafeParcelable {
    public static final long AD_BREAK_CLIP_NOT_SKIPPABLE = -1;
    public static final Creator<AdBreakClipInfo> CREATOR = new zza();
    @Field(getter = "getMimeType", id = 6)
    private final String mimeType;
    @Field(getter = "getId", id = 2)
    private final String zze;
    @Field(getter = "getTitle", id = 3)
    private final String zzf;
    @Field(getter = "getDurationInMs", id = 4)
    private final long zzg;
    @Field(getter = "getContentUrl", id = 5)
    private final String zzh;
    @Field(getter = "getClickThroughUrl", id = 7)
    private final String zzi;
    @Field(getter = "getCustomDataAsString", id = 8)
    private String zzj;
    @Field(getter = "getContentId", id = 9)
    private String zzk;
    @Field(getter = "getImageUrl", id = 10)
    private String zzl;
    @Field(getter = "getWhenSkippableInMs", id = 11)
    private final long zzm;
    @HlsSegmentFormat
    @Field(getter = "getHlsSegmentFormat", id = 12)
    private final String zzn;
    @Field(getter = "getVastAdsRequest", id = 13)
    private final VastAdsRequest zzo;
    private JSONObject zzp;

    public static class Builder {
        private String mimeType = null;
        private String zze = null;
        private String zzf = null;
        private long zzg = 0;
        private String zzh = null;
        private String zzi = null;
        private String zzj = null;
        private String zzk = null;
        private String zzl = null;
        private long zzm = -1;
        @HlsSegmentFormat
        private String zzn;
        private VastAdsRequest zzo = null;

        public Builder(String str) {
            this.zze = str;
        }

        public Builder setTitle(String str) {
            this.zzf = str;
            return this;
        }

        public Builder setDurationInMs(long j) {
            this.zzg = j;
            return this;
        }

        public Builder setContentUrl(String str) {
            this.zzh = str;
            return this;
        }

        public Builder setMimeType(String str) {
            this.mimeType = str;
            return this;
        }

        public Builder setClickThroughUrl(String str) {
            this.zzi = str;
            return this;
        }

        public Builder setCustomDataJsonString(String str) {
            this.zzj = str;
            return this;
        }

        public Builder setContentId(String str) {
            this.zzk = str;
            return this;
        }

        public Builder setImageUrl(String str) {
            this.zzl = str;
            return this;
        }

        public Builder setWhenSkippableInMs(long j) {
            this.zzm = j;
            return this;
        }

        public Builder setHlsSegmentFormat(String str) {
            this.zzn = str;
            return this;
        }

        public Builder setVastAdsRequest(VastAdsRequest vastAdsRequest) {
            this.zzo = vastAdsRequest;
            return this;
        }

        public AdBreakClipInfo build() {
            AdBreakClipInfo adBreakClipInfo = new AdBreakClipInfo(this.zze, this.zzf, this.zzg, this.zzh, this.mimeType, this.zzi, this.zzj, this.zzk, this.zzl, this.zzm, this.zzn, this.zzo);
            return adBreakClipInfo;
        }
    }

    @Constructor
    AdBreakClipInfo(@Param(id = 2) String str, @Param(id = 3) String str2, @Param(id = 4) long j, @Param(id = 5) String str3, @Param(id = 6) String str4, @Param(id = 7) String str5, @Param(id = 8) String str6, @Param(id = 9) String str7, @Param(id = 10) String str8, @Param(id = 11) long j2, @HlsSegmentFormat @Param(id = 12) String str9, @Param(id = 13) VastAdsRequest vastAdsRequest) {
        this.zze = str;
        this.zzf = str2;
        this.zzg = j;
        this.zzh = str3;
        this.mimeType = str4;
        this.zzi = str5;
        this.zzj = str6;
        this.zzk = str7;
        this.zzl = str8;
        this.zzm = j2;
        this.zzn = str9;
        this.zzo = vastAdsRequest;
        if (!TextUtils.isEmpty(this.zzj)) {
            try {
                this.zzp = new JSONObject(str6);
            } catch (JSONException e) {
                Log.w("AdBreakClipInfo", String.format(Locale.ROOT, "Error creating AdBreakClipInfo: %s", new Object[]{e.getMessage()}));
                this.zzj = null;
                this.zzp = new JSONObject();
            }
        } else {
            this.zzp = new JSONObject();
        }
    }

    public String getId() {
        return this.zze;
    }

    public String getTitle() {
        return this.zzf;
    }

    public long getDurationInMs() {
        return this.zzg;
    }

    public String getContentUrl() {
        return this.zzh;
    }

    public String getMimeType() {
        return this.mimeType;
    }

    public String getClickThroughUrl() {
        return this.zzi;
    }

    public JSONObject getCustomData() {
        return this.zzp;
    }

    public String getContentId() {
        return this.zzk;
    }

    public String getImageUrl() {
        return this.zzl;
    }

    public long getWhenSkippableInMs() {
        return this.zzm;
    }

    public String getHlsSegmentFormat() {
        return this.zzn;
    }

    public VastAdsRequest getVastAdsRequest() {
        return this.zzo;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, getId(), false);
        SafeParcelWriter.writeString(parcel, 3, getTitle(), false);
        SafeParcelWriter.writeLong(parcel, 4, getDurationInMs());
        SafeParcelWriter.writeString(parcel, 5, getContentUrl(), false);
        SafeParcelWriter.writeString(parcel, 6, getMimeType(), false);
        SafeParcelWriter.writeString(parcel, 7, getClickThroughUrl(), false);
        SafeParcelWriter.writeString(parcel, 8, this.zzj, false);
        SafeParcelWriter.writeString(parcel, 9, getContentId(), false);
        SafeParcelWriter.writeString(parcel, 10, getImageUrl(), false);
        SafeParcelWriter.writeLong(parcel, 11, getWhenSkippableInMs());
        SafeParcelWriter.writeString(parcel, 12, getHlsSegmentFormat(), false);
        SafeParcelWriter.writeParcelable(parcel, 13, getVastAdsRequest(), i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public int hashCode() {
        return Objects.hashCode(this.zze, this.zzf, Long.valueOf(this.zzg), this.zzh, this.mimeType, this.zzi, this.zzj, this.zzk, this.zzl, Long.valueOf(this.zzm), this.zzn, this.zzo);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdBreakClipInfo)) {
            return false;
        }
        AdBreakClipInfo adBreakClipInfo = (AdBreakClipInfo) obj;
        return zzcu.zza(this.zze, adBreakClipInfo.zze) && zzcu.zza(this.zzf, adBreakClipInfo.zzf) && this.zzg == adBreakClipInfo.zzg && zzcu.zza(this.zzh, adBreakClipInfo.zzh) && zzcu.zza(this.mimeType, adBreakClipInfo.mimeType) && zzcu.zza(this.zzi, adBreakClipInfo.zzi) && zzcu.zza(this.zzj, adBreakClipInfo.zzj) && zzcu.zza(this.zzk, adBreakClipInfo.zzk) && zzcu.zza(this.zzl, adBreakClipInfo.zzl) && this.zzm == adBreakClipInfo.zzm && zzcu.zza(this.zzn, adBreakClipInfo.zzn) && zzcu.zza(this.zzo, adBreakClipInfo.zzo);
    }

    static AdBreakClipInfo zza(JSONObject jSONObject) {
        long j;
        String str;
        JSONObject jSONObject2 = jSONObject;
        String str2 = "whenSkippable";
        if (jSONObject2 == null) {
            return null;
        }
        String str3 = "id";
        if (!jSONObject2.has(str3)) {
            return null;
        }
        try {
            String string = jSONObject2.getString(str3);
            double optLong = (double) jSONObject2.optLong("duration");
            Double.isNaN(optLong);
            long j2 = (long) (optLong * 1000.0d);
            String optString = jSONObject2.optString("clickThroughUrl", null);
            String optString2 = jSONObject2.optString("contentUrl", null);
            String optString3 = jSONObject2.optString("mimeType", null);
            if (optString3 == null) {
                optString3 = jSONObject2.optString("contentType", null);
            }
            String str4 = optString3;
            String optString4 = jSONObject2.optString("title", null);
            JSONObject optJSONObject = jSONObject2.optJSONObject("customData");
            String optString5 = jSONObject2.optString("contentId", null);
            String optString6 = jSONObject2.optString("posterUrl", null);
            long j3 = -1;
            if (jSONObject2.has(str2)) {
                j = j2;
                double intValue = (double) ((Integer) jSONObject2.get(str2)).intValue();
                Double.isNaN(intValue);
                j3 = (long) (intValue * 1000.0d);
            } else {
                j = j2;
            }
            String optString7 = jSONObject2.optString("hlsSegmentFormat", null);
            VastAdsRequest fromJson = VastAdsRequest.fromJson(jSONObject2.optJSONObject("vastAdsRequest"));
            if (optJSONObject != null) {
                if (optJSONObject.length() != 0) {
                    str = optJSONObject.toString();
                    AdBreakClipInfo adBreakClipInfo = new AdBreakClipInfo(string, optString4, j, optString2, str4, optString, str, optString5, optString6, j3, optString7, fromJson);
                    return adBreakClipInfo;
                }
            }
            str = null;
            AdBreakClipInfo adBreakClipInfo2 = new AdBreakClipInfo(string, optString4, j, optString2, str4, optString, str, optString5, optString6, j3, optString7, fromJson);
            return adBreakClipInfo2;
        } catch (JSONException e) {
            Log.d("AdBreakClipInfo", String.format(Locale.ROOT, "Error while creating an AdBreakClipInfo from JSON: %s", new Object[]{e.getMessage()}));
            return null;
        }
    }

    public final JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", this.zze);
            String str = "duration";
            double d = (double) this.zzg;
            Double.isNaN(d);
            jSONObject.put(str, d / 1000.0d);
            if (this.zzm != -1) {
                String str2 = "whenSkippable";
                double d2 = (double) this.zzm;
                Double.isNaN(d2);
                jSONObject.put(str2, d2 / 1000.0d);
            }
            if (this.zzk != null) {
                jSONObject.put("contentId", this.zzk);
            }
            if (this.mimeType != null) {
                jSONObject.put("contentType", this.mimeType);
            }
            if (this.zzf != null) {
                jSONObject.put("title", this.zzf);
            }
            if (this.zzh != null) {
                jSONObject.put("contentUrl", this.zzh);
            }
            if (this.zzi != null) {
                jSONObject.put("clickThroughUrl", this.zzi);
            }
            if (this.zzp != null) {
                jSONObject.put("customData", this.zzp);
            }
            if (this.zzl != null) {
                jSONObject.put("posterUrl", this.zzl);
            }
            if (this.zzn != null) {
                jSONObject.put("hlsSegmentFormat", this.zzn);
            }
            if (this.zzo != null) {
                jSONObject.put("vastAdsRequest", this.zzo.toJson());
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }
}
