package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import androidx.annotation.VisibleForTesting;
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

@Class(creator = "RequestItemCreator")
@Reserved({1})
public final class zzbq extends AbstractSafeParcelable {
    public static final Creator<zzbq> CREATOR = new zzbr();
    @Field(getter = "getUrl", id = 2)
    private final String url;
    @Field(getter = "getProtocolType", id = 3)
    private final int zzgg;
    @Field(defaultValue = "0", getter = "getInitialTime", id = 4)
    private final int zzgh;
    @Field(getter = "getHlsSegmentFormat", id = 5)
    private final String zzn;

    @Constructor
    public zzbq(@Param(id = 2) String str, @Param(id = 3) int i, @Param(id = 4) int i2, @HlsSegmentFormat @Param(id = 5) String str2) {
        this.url = str;
        this.zzgg = i;
        this.zzgh = i2;
        this.zzn = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzbq)) {
            return false;
        }
        zzbq zzbq = (zzbq) obj;
        return zzcu.zza(this.url, zzbq.url) && zzcu.zza(Integer.valueOf(this.zzgg), Integer.valueOf(zzbq.zzgg)) && zzcu.zza(Integer.valueOf(this.zzgh), Integer.valueOf(zzbq.zzgh)) && zzcu.zza(zzbq.zzn, this.zzn);
    }

    public final JSONObject toJson() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("url", this.url);
        jSONObject.put("protocolType", this.zzgg);
        jSONObject.put("initialTime", this.zzgh);
        jSONObject.put("hlsSegmentFormat", this.zzn);
        return jSONObject;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.url, false);
        SafeParcelWriter.writeInt(parcel, 3, this.zzgg);
        SafeParcelWriter.writeInt(parcel, 4, this.zzgh);
        SafeParcelWriter.writeString(parcel, 5, this.zzn, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @VisibleForTesting
    public final int hashCode() {
        return Objects.hashCode(this.url, Integer.valueOf(this.zzgg), Integer.valueOf(this.zzgh), this.zzn);
    }
}
