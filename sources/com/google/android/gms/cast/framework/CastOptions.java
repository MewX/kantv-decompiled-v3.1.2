package com.google.android.gms.cast.framework;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Class;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Constructor;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Field;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Param;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Reserved;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Class(creator = "CastOptionsCreator")
@Reserved({1})
public class CastOptions extends AbstractSafeParcelable {
    public static final Creator<CastOptions> CREATOR = new zzb();
    @Field(getter = "getLaunchOptions", id = 5)
    private final LaunchOptions zzdc;
    @Field(getter = "getReceiverApplicationId", id = 2)
    private String zzhd;
    @Field(getter = "getSupportedNamespaces", id = 3)
    private final List<String> zzhe;
    @Field(getter = "getStopReceiverApplicationWhenEndingSession", id = 4)
    private final boolean zzhf;
    @Field(getter = "getResumeSavedSession", id = 6)
    private final boolean zzhg;
    @Field(getter = "getCastMediaOptions", id = 7)
    private final CastMediaOptions zzhh;
    @Field(getter = "getEnableReconnectionService", id = 8)
    private final boolean zzhi;
    @Field(getter = "getVolumeDeltaBeforeIceCreamSandwich", id = 9)
    private final double zzhj;
    @Field(getter = "getEnableIpv6Support", id = 10)
    private final boolean zzhk;

    @VisibleForTesting
    public static final class Builder {
        private LaunchOptions zzdc = new LaunchOptions();
        private String zzhd;
        private List<String> zzhe = new ArrayList();
        private boolean zzhf;
        private boolean zzhg = true;
        private CastMediaOptions zzhh = new com.google.android.gms.cast.framework.media.CastMediaOptions.Builder().build();
        private boolean zzhi = true;
        private double zzhj = 0.05000000074505806d;
        private boolean zzhl = false;

        public final Builder setReceiverApplicationId(String str) {
            this.zzhd = str;
            return this;
        }

        public final Builder setSupportedNamespaces(List<String> list) {
            this.zzhe = list;
            return this;
        }

        public final Builder setStopReceiverApplicationWhenEndingSession(boolean z) {
            this.zzhf = z;
            return this;
        }

        public final Builder setLaunchOptions(LaunchOptions launchOptions) {
            this.zzdc = launchOptions;
            return this;
        }

        public final Builder setResumeSavedSession(boolean z) {
            this.zzhg = z;
            return this;
        }

        public final Builder setCastMediaOptions(CastMediaOptions castMediaOptions) {
            this.zzhh = castMediaOptions;
            return this;
        }

        public final Builder setEnableReconnectionService(boolean z) {
            this.zzhi = z;
            return this;
        }

        public final Builder setVolumeDeltaBeforeIceCreamSandwich(double d) throws IllegalArgumentException {
            if (d <= 0.0d || d > 0.5d) {
                throw new IllegalArgumentException("volumeDelta must be greater than 0 and less or equal to 0.5");
            }
            this.zzhj = d;
            return this;
        }

        public final CastOptions build() {
            CastOptions castOptions = new CastOptions(this.zzhd, this.zzhe, this.zzhf, this.zzdc, this.zzhg, this.zzhh, this.zzhi, this.zzhj, false);
            return castOptions;
        }
    }

    @Constructor
    CastOptions(@Param(id = 2) String str, @Param(id = 3) List<String> list, @Param(id = 4) boolean z, @Param(id = 5) LaunchOptions launchOptions, @Param(id = 6) boolean z2, @Param(id = 7) CastMediaOptions castMediaOptions, @Param(id = 8) boolean z3, @Param(id = 9) double d, @Param(id = 10) boolean z4) {
        int i;
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        this.zzhd = str;
        if (list == null) {
            i = 0;
        } else {
            i = list.size();
        }
        this.zzhe = new ArrayList(i);
        if (i > 0) {
            this.zzhe.addAll(list);
        }
        this.zzhf = z;
        if (launchOptions == null) {
            launchOptions = new LaunchOptions();
        }
        this.zzdc = launchOptions;
        this.zzhg = z2;
        this.zzhh = castMediaOptions;
        this.zzhi = z3;
        this.zzhj = d;
        this.zzhk = z4;
    }

    public String getReceiverApplicationId() {
        return this.zzhd;
    }

    public final void setReceiverApplicationId(String str) {
        this.zzhd = str;
    }

    public List<String> getSupportedNamespaces() {
        return Collections.unmodifiableList(this.zzhe);
    }

    public boolean getStopReceiverApplicationWhenEndingSession() {
        return this.zzhf;
    }

    public LaunchOptions getLaunchOptions() {
        return this.zzdc;
    }

    public boolean getResumeSavedSession() {
        return this.zzhg;
    }

    public CastMediaOptions getCastMediaOptions() {
        return this.zzhh;
    }

    public boolean getEnableReconnectionService() {
        return this.zzhi;
    }

    public double getVolumeDeltaBeforeIceCreamSandwich() {
        return this.zzhj;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, getReceiverApplicationId(), false);
        SafeParcelWriter.writeStringList(parcel, 3, getSupportedNamespaces(), false);
        SafeParcelWriter.writeBoolean(parcel, 4, getStopReceiverApplicationWhenEndingSession());
        SafeParcelWriter.writeParcelable(parcel, 5, getLaunchOptions(), i, false);
        SafeParcelWriter.writeBoolean(parcel, 6, getResumeSavedSession());
        SafeParcelWriter.writeParcelable(parcel, 7, getCastMediaOptions(), i, false);
        SafeParcelWriter.writeBoolean(parcel, 8, getEnableReconnectionService());
        SafeParcelWriter.writeDouble(parcel, 9, getVolumeDeltaBeforeIceCreamSandwich());
        SafeParcelWriter.writeBoolean(parcel, 10, this.zzhk);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
