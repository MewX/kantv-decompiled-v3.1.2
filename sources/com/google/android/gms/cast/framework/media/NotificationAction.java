package com.google.android.gms.cast.framework.media;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Class;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Constructor;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Field;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Param;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Reserved;

@Class(creator = "NotificationActionCreator")
@Reserved({1})
public class NotificationAction extends AbstractSafeParcelable {
    public static final Creator<NotificationAction> CREATOR = new zzo();
    @Field(getter = "getAction", id = 2)
    private final String zzmw;
    @Field(getter = "getIconResId", id = 3)
    private final int zzmx;
    @Field(getter = "getContentDescription", id = 4)
    private final String zzmy;

    public static final class Builder {
        private String zzmw;
        private int zzmx;
        private String zzmy;

        public final Builder setAction(@NonNull String str) {
            if (!TextUtils.isEmpty(str)) {
                this.zzmw = str;
                return this;
            }
            throw new IllegalArgumentException("action cannot be null or an empty string.");
        }

        public final Builder setIconResId(int i) {
            this.zzmx = i;
            return this;
        }

        public final Builder setContentDescription(@NonNull String str) {
            if (!TextUtils.isEmpty(str)) {
                this.zzmy = str;
                return this;
            }
            throw new IllegalArgumentException("contentDescription cannot be null  or an empty string.");
        }

        public final NotificationAction build() {
            return new NotificationAction(this.zzmw, this.zzmx, this.zzmy);
        }
    }

    @Constructor
    NotificationAction(@Param(id = 2) String str, @Param(id = 3) int i, @Param(id = 4) String str2) {
        this.zzmw = str;
        this.zzmx = i;
        this.zzmy = str2;
    }

    public String getAction() {
        return this.zzmw;
    }

    public int getIconResId() {
        return this.zzmx;
    }

    public String getContentDescription() {
        return this.zzmy;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, getAction(), false);
        SafeParcelWriter.writeInt(parcel, 3, getIconResId());
        SafeParcelWriter.writeString(parcel, 4, getContentDescription(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
