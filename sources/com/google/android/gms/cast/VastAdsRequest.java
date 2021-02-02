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
import com.google.android.gms.internal.cast.zzcu;
import org.json.JSONException;
import org.json.JSONObject;

@Class(creator = "VastAdsRequestCreator")
@Reserved({1})
public class VastAdsRequest extends AbstractSafeParcelable {
    public static final Creator<VastAdsRequest> CREATOR = new zzbt();
    @Field(getter = "getAdTagUrl", id = 2)
    private final String zzgm;
    @Field(getter = "getAdsResponse", id = 3)
    private final String zzgn;

    public static class Builder {
        private String zzgm = null;
        private String zzgn = null;

        public Builder setAdTagUrl(String str) {
            this.zzgm = str;
            return this;
        }

        public Builder setAdsResponse(String str) {
            this.zzgn = str;
            return this;
        }

        public VastAdsRequest build() {
            return new VastAdsRequest(this.zzgm, this.zzgn);
        }
    }

    @Constructor
    VastAdsRequest(@Param(id = 2) String str, @Param(id = 3) String str2) {
        this.zzgm = str;
        this.zzgn = str2;
    }

    public String getAdTagUrl() {
        return this.zzgm;
    }

    public String getAdsResponse() {
        return this.zzgn;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, getAdTagUrl(), false);
        SafeParcelWriter.writeString(parcel, 3, getAdsResponse(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public int hashCode() {
        return Objects.hashCode(this.zzgm, this.zzgn);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VastAdsRequest)) {
            return false;
        }
        VastAdsRequest vastAdsRequest = (VastAdsRequest) obj;
        return zzcu.zza(this.zzgm, vastAdsRequest.zzgm) && zzcu.zza(this.zzgn, vastAdsRequest.zzgn);
    }

    public static VastAdsRequest fromJson(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        return new VastAdsRequest(jSONObject.optString("adTagUrl", null), jSONObject.optString("adsResponse", null));
    }

    public final JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (this.zzgm != null) {
                jSONObject.put("adTagUrl", this.zzgm);
            }
            if (this.zzgn != null) {
                jSONObject.put("adsResponse", this.zzgn);
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }
}
