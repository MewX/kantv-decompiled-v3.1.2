package com.google.android.gms.cast.framework.media;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Class;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Constructor;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Field;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Param;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Reserved;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.cast.zzdg;

@Class(creator = "CastMediaOptionsCreator")
@Reserved({1})
public class CastMediaOptions extends AbstractSafeParcelable {
    public static final Creator<CastMediaOptions> CREATOR = new zza();
    private static final zzdg zzbe = new zzdg("CastMediaOptions");
    @Field(getter = "getMediaIntentReceiverClassName", id = 2)
    private final String zzku;
    @Field(getter = "getExpandedControllerActivityClassName", id = 3)
    private final String zzkv;
    @Field(getter = "getImagePickerAsBinder", id = 4, type = "android.os.IBinder")
    private final zzb zzkw;
    @Field(getter = "getNotificationOptions", id = 5)
    private final NotificationOptions zzkx;
    @Field(getter = "getDisableRemoteControlNotification", id = 6)
    private final boolean zzky;

    public static final class Builder {
        private String zzku = MediaIntentReceiver.class.getName();
        private String zzkv;
        private NotificationOptions zzkx = new com.google.android.gms.cast.framework.media.NotificationOptions.Builder().build();
        private ImagePicker zzkz;

        public final Builder setMediaIntentReceiverClassName(String str) {
            this.zzku = str;
            return this;
        }

        public final Builder setExpandedControllerActivityClassName(String str) {
            this.zzkv = str;
            return this;
        }

        public final Builder setImagePicker(ImagePicker imagePicker) {
            this.zzkz = imagePicker;
            return this;
        }

        public final Builder setNotificationOptions(NotificationOptions notificationOptions) {
            this.zzkx = notificationOptions;
            return this;
        }

        public final CastMediaOptions build() {
            ImagePicker imagePicker = this.zzkz;
            CastMediaOptions castMediaOptions = new CastMediaOptions(this.zzku, this.zzkv, imagePicker == null ? null : imagePicker.zzay().asBinder(), this.zzkx, false);
            return castMediaOptions;
        }
    }

    @Constructor
    CastMediaOptions(@Param(id = 2) String str, @Param(id = 3) String str2, @Param(id = 4) IBinder iBinder, @Param(id = 5) NotificationOptions notificationOptions, @Param(id = 6) boolean z) {
        zzb zzb;
        this.zzku = str;
        this.zzkv = str2;
        if (iBinder == null) {
            zzb = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.framework.media.IImagePicker");
            if (queryLocalInterface instanceof zzb) {
                zzb = (zzb) queryLocalInterface;
            } else {
                zzb = new zzc(iBinder);
            }
        }
        this.zzkw = zzb;
        this.zzkx = notificationOptions;
        this.zzky = z;
    }

    public String getMediaIntentReceiverClassName() {
        return this.zzku;
    }

    public NotificationOptions getNotificationOptions() {
        return this.zzkx;
    }

    public final boolean zzaw() {
        return this.zzky;
    }

    public String getExpandedControllerActivityClassName() {
        return this.zzkv;
    }

    public ImagePicker getImagePicker() {
        zzb zzb = this.zzkw;
        if (zzb != null) {
            try {
                return (ImagePicker) ObjectWrapper.unwrap(zzb.zzax());
            } catch (RemoteException e) {
                zzbe.zza(e, "Unable to call %s on %s.", "getWrappedClientObject", zzb.class.getSimpleName());
            }
        }
        return null;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, getMediaIntentReceiverClassName(), false);
        SafeParcelWriter.writeString(parcel, 3, getExpandedControllerActivityClassName(), false);
        zzb zzb = this.zzkw;
        SafeParcelWriter.writeIBinder(parcel, 4, zzb == null ? null : zzb.asBinder(), false);
        SafeParcelWriter.writeParcelable(parcel, 5, getNotificationOptions(), i, false);
        SafeParcelWriter.writeBoolean(parcel, 6, this.zzky);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
