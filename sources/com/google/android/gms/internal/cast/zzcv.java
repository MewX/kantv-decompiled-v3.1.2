package com.google.android.gms.internal.cast;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.zzad;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Class;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Constructor;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Field;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Param;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Reserved;

@Class(creator = "DeviceStatusCreator")
@Reserved({1})
public final class zzcv extends AbstractSafeParcelable {
    public static final Creator<zzcv> CREATOR = new zzcw();
    @Field(getter = "getVolume", id = 2)
    private double zzel;
    @Field(getter = "getMuteState", id = 3)
    private boolean zzem;
    @Field(getter = "getEqualizerSettings", id = 7)
    private zzad zzwa;
    @Field(getter = "getActiveInputState", id = 4)
    private int zzwb;
    @Field(getter = "getStandbyState", id = 6)
    private int zzwc;
    @Field(getter = "getApplicationMetadata", id = 5)
    private ApplicationMetadata zzwm;

    @Constructor
    zzcv(@Param(id = 2) double d, @Param(id = 3) boolean z, @Param(id = 4) int i, @Param(id = 5) ApplicationMetadata applicationMetadata, @Param(id = 6) int i2, @Param(id = 7) zzad zzad) {
        this.zzel = d;
        this.zzem = z;
        this.zzwb = i;
        this.zzwm = applicationMetadata;
        this.zzwc = i2;
        this.zzwa = zzad;
    }

    public zzcv() {
        this(Double.NaN, false, -1, null, -1, null);
    }

    public final double getVolume() {
        return this.zzel;
    }

    public final boolean zzdk() {
        return this.zzem;
    }

    public final int getActiveInputState() {
        return this.zzwb;
    }

    public final int getStandbyState() {
        return this.zzwc;
    }

    public final ApplicationMetadata getApplicationMetadata() {
        return this.zzwm;
    }

    public final zzad zzdl() {
        return this.zzwa;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeDouble(parcel, 2, this.zzel);
        SafeParcelWriter.writeBoolean(parcel, 3, this.zzem);
        SafeParcelWriter.writeInt(parcel, 4, this.zzwb);
        SafeParcelWriter.writeParcelable(parcel, 5, this.zzwm, i, false);
        SafeParcelWriter.writeInt(parcel, 6, this.zzwc);
        SafeParcelWriter.writeParcelable(parcel, 7, this.zzwa, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzcv)) {
            return false;
        }
        zzcv zzcv = (zzcv) obj;
        if (this.zzel == zzcv.zzel && this.zzem == zzcv.zzem && this.zzwb == zzcv.zzwb && zzcu.zza(this.zzwm, zzcv.zzwm) && this.zzwc == zzcv.zzwc) {
            zzad zzad = this.zzwa;
            if (zzcu.zza(zzad, zzad)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(Double.valueOf(this.zzel), Boolean.valueOf(this.zzem), Integer.valueOf(this.zzwb), this.zzwm, Integer.valueOf(this.zzwc), this.zzwa);
    }
}
