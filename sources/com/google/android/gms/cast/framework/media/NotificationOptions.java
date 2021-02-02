package com.google.android.gms.cast.framework.media;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import androidx.annotation.NonNull;
import com.google.android.gms.cast.framework.R;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Class;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Constructor;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Field;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Param;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Reserved;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;

@Class(creator = "NotificationOptionsCreator")
@Reserved({1})
public class NotificationOptions extends AbstractSafeParcelable {
    public static final Creator<NotificationOptions> CREATOR = new zzq();
    public static final long SKIP_STEP_TEN_SECONDS_IN_MS = 10000;
    public static final long SKIP_STEP_THIRTY_SECONDS_IN_MS = 30000;
    /* access modifiers changed from: private */
    public static final List<String> zznb = Arrays.asList(new String[]{MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK, MediaIntentReceiver.ACTION_STOP_CASTING});
    /* access modifiers changed from: private */
    public static final int[] zznc = {0, 1};
    @Field(getter = "getSkipStepMs", id = 4)
    private final long zzlj;
    @Field(getter = "getActions", id = 2)
    private final List<String> zznd;
    @Field(getter = "getCompatActionIndices", id = 3)
    private final int[] zzne;
    @Field(getter = "getTargetActivityClassName", id = 5)
    private final String zznf;
    @Field(getter = "getSmallIconDrawableResId", id = 6)
    private final int zzng;
    @Field(getter = "getStopLiveStreamDrawableResId", id = 7)
    private final int zznh;
    @Field(getter = "getPauseDrawableResId", id = 8)
    private final int zzni;
    @Field(getter = "getPlayDrawableResId", id = 9)
    private final int zznj;
    @Field(getter = "getSkipNextDrawableResId", id = 10)
    private final int zznk;
    @Field(getter = "getSkipPrevDrawableResId", id = 11)
    private final int zznl;
    @Field(getter = "getForwardDrawableResId", id = 12)
    private final int zznm;
    @Field(getter = "getForward10DrawableResId", id = 13)
    private final int zznn;
    @Field(getter = "getForward30DrawableResId", id = 14)
    private final int zzno;
    @Field(getter = "getRewindDrawableResId", id = 15)
    private final int zznp;
    @Field(getter = "getRewind10DrawableResId", id = 16)
    private final int zznq;
    @Field(getter = "getRewind30DrawableResId", id = 17)
    private final int zznr;
    @Field(getter = "getDisconnectDrawableResId", id = 18)
    private final int zzns;
    @Field(getter = "getImageSizeDimenResId", id = 19)
    private final int zznt;
    @Field(getter = "getCastingToDeviceStringResId", id = 20)
    private final int zznu;
    @Field(getter = "getStopLiveStreamTitleResId", id = 21)
    private final int zznv;
    @Field(getter = "getPauseTitleResId", id = 22)
    private final int zznw;
    @Field(getter = "getPlayTitleResId", id = 23)
    private final int zznx;
    @Field(getter = "getSkipNextTitleResId", id = 24)
    private final int zzny;
    @Field(getter = "getSkipPrevTitleResId", id = 25)
    private final int zznz;
    @Field(getter = "getForwardTitleResId", id = 26)
    private final int zzoa;
    @Field(getter = "getForward10TitleResId", id = 27)
    private final int zzob;
    @Field(getter = "getForward30TitleResId", id = 28)
    private final int zzoc;
    @Field(getter = "getRewindTitleResId", id = 29)
    private final int zzod;
    @Field(getter = "getRewind10TitleResId", id = 30)
    private final int zzoe;
    @Field(getter = "getRewind30TitleResId", id = 31)
    private final int zzof;
    @Field(getter = "getDisconnectTitleResId", id = 32)
    private final int zzog;
    @Field(getter = "getNotificationActionsProviderAsBinder", id = 33, type = "android.os.IBinder")
    private final zzd zzoh;

    public static final class Builder {
        private long zzlj = NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS;
        private List<String> zznd = NotificationOptions.zznb;
        private int[] zzne = NotificationOptions.zznc;
        private String zznf;
        private int zzng = R.drawable.cast_ic_notification_small_icon;
        private int zznh = R.drawable.cast_ic_notification_stop_live_stream;
        private int zzni = R.drawable.cast_ic_notification_pause;
        private int zznj = R.drawable.cast_ic_notification_play;
        private int zznk = R.drawable.cast_ic_notification_skip_next;
        private int zznl = R.drawable.cast_ic_notification_skip_prev;
        private int zznm = R.drawable.cast_ic_notification_forward;
        private int zznn = R.drawable.cast_ic_notification_forward10;
        private int zzno = R.drawable.cast_ic_notification_forward30;
        private int zznp = R.drawable.cast_ic_notification_rewind;
        private int zznq = R.drawable.cast_ic_notification_rewind10;
        private int zznr = R.drawable.cast_ic_notification_rewind30;
        private int zzns = R.drawable.cast_ic_notification_disconnect;
        private NotificationActionsProvider zzoi;

        public final Builder setActions(List<String> list, int[] iArr) {
            if (list == null && iArr != null) {
                throw new IllegalArgumentException("When setting actions to null, you must also set compatActionIndices to null.");
            } else if (list == null || iArr != null) {
                if (list == null || iArr == null) {
                    this.zznd = NotificationOptions.zznb;
                    this.zzne = NotificationOptions.zznc;
                } else {
                    int size = list.size();
                    if (iArr.length <= size) {
                        for (int i : iArr) {
                            if (i < 0 || i >= size) {
                                throw new IllegalArgumentException(String.format(Locale.ROOT, "Index %d in compatActionIndices out of range: [0, %d]", new Object[]{Integer.valueOf(i), Integer.valueOf(size - 1)}));
                            }
                        }
                        this.zznd = new ArrayList(list);
                        this.zzne = Arrays.copyOf(iArr, iArr.length);
                    } else {
                        throw new IllegalArgumentException(String.format(Locale.ROOT, "Invalid number of compat actions: %d > %d.", new Object[]{Integer.valueOf(iArr.length), Integer.valueOf(size)}));
                    }
                }
                return this;
            } else {
                throw new IllegalArgumentException("When setting compatActionIndices to null, you must also set actions to null.");
            }
        }

        public final Builder setNotificationActionsProvider(@NonNull NotificationActionsProvider notificationActionsProvider) {
            if (notificationActionsProvider != null) {
                this.zzoi = notificationActionsProvider;
                return this;
            }
            throw new IllegalArgumentException("notificationActionsProvider cannot be null.");
        }

        public final Builder setSkipStepMs(long j) {
            Preconditions.checkArgument(j > 0, "skipStepMs must be positive.");
            this.zzlj = j;
            return this;
        }

        public final Builder setTargetActivityClassName(String str) {
            this.zznf = str;
            return this;
        }

        public final Builder setSmallIconDrawableResId(int i) {
            this.zzng = i;
            return this;
        }

        public final Builder setStopLiveStreamDrawableResId(int i) {
            this.zznh = i;
            return this;
        }

        public final Builder setPauseDrawableResId(int i) {
            this.zzni = i;
            return this;
        }

        public final Builder setPlayDrawableResId(int i) {
            this.zznj = i;
            return this;
        }

        public final Builder setDisconnectDrawableResId(int i) {
            this.zzns = i;
            return this;
        }

        public final Builder setSkipNextDrawableResId(int i) {
            this.zznk = i;
            return this;
        }

        public final Builder setSkipPrevDrawableResId(int i) {
            this.zznl = i;
            return this;
        }

        public final Builder setForwardDrawableResId(int i) {
            this.zznm = i;
            return this;
        }

        public final Builder setForward10DrawableResId(int i) {
            this.zznn = i;
            return this;
        }

        public final Builder setForward30DrawableResId(int i) {
            this.zzno = i;
            return this;
        }

        public final Builder setRewindDrawableResId(int i) {
            this.zznp = i;
            return this;
        }

        public final Builder setRewind10DrawableResId(int i) {
            this.zznq = i;
            return this;
        }

        public final Builder setRewind30DrawableResId(int i) {
            this.zznr = i;
            return this;
        }

        public final NotificationOptions build() {
            IBinder iBinder;
            NotificationActionsProvider notificationActionsProvider = this.zzoi;
            if (notificationActionsProvider == null) {
                iBinder = null;
            } else {
                iBinder = notificationActionsProvider.zzbl().asBinder();
            }
            NotificationOptions notificationOptions = r2;
            NotificationOptions notificationOptions2 = new NotificationOptions(this.zznd, this.zzne, this.zzlj, this.zznf, this.zzng, this.zznh, this.zzni, this.zznj, this.zznk, this.zznl, this.zznm, this.zznn, this.zzno, this.zznp, this.zznq, this.zznr, this.zzns, R.dimen.cast_notification_image_size, R.string.cast_casting_to_device, R.string.cast_stop_live_stream, R.string.cast_pause, R.string.cast_play, R.string.cast_skip_next, R.string.cast_skip_prev, R.string.cast_forward, R.string.cast_forward_10, R.string.cast_forward_30, R.string.cast_rewind, R.string.cast_rewind_10, R.string.cast_rewind_30, R.string.cast_disconnect, iBinder);
            return notificationOptions;
        }
    }

    @Constructor
    public NotificationOptions(@Param(id = 2) List<String> list, @Param(id = 3) int[] iArr, @Param(id = 4) long j, @Param(id = 5) String str, @Param(id = 6) int i, @Param(id = 7) int i2, @Param(id = 8) int i3, @Param(id = 9) int i4, @Param(id = 10) int i5, @Param(id = 11) int i6, @Param(id = 12) int i7, @Param(id = 13) int i8, @Param(id = 14) int i9, @Param(id = 15) int i10, @Param(id = 16) int i11, @Param(id = 17) int i12, @Param(id = 18) int i13, @Param(id = 19) int i14, @Param(id = 20) int i15, @Param(id = 21) int i16, @Param(id = 22) int i17, @Param(id = 23) int i18, @Param(id = 24) int i19, @Param(id = 25) int i20, @Param(id = 26) int i21, @Param(id = 27) int i22, @Param(id = 28) int i23, @Param(id = 29) int i24, @Param(id = 30) int i25, @Param(id = 31) int i26, @Param(id = 32) int i27, @Param(id = 33) IBinder iBinder) {
        int[] iArr2 = iArr;
        IBinder iBinder2 = iBinder;
        zzd zzd = null;
        if (list != null) {
            this.zznd = new ArrayList(list);
        } else {
            this.zznd = null;
        }
        if (iArr2 != null) {
            this.zzne = Arrays.copyOf(iArr, iArr2.length);
        } else {
            this.zzne = null;
        }
        this.zzlj = j;
        this.zznf = str;
        this.zzng = i;
        this.zznh = i2;
        this.zzni = i3;
        this.zznj = i4;
        this.zznk = i5;
        this.zznl = i6;
        this.zznm = i7;
        this.zznn = i8;
        this.zzno = i9;
        this.zznp = i10;
        this.zznq = i11;
        this.zznr = i12;
        this.zzns = i13;
        this.zznt = i14;
        this.zznu = i15;
        this.zznv = i16;
        this.zznw = i17;
        this.zznx = i18;
        this.zzny = i19;
        this.zznz = i20;
        this.zzoa = i21;
        this.zzob = i22;
        this.zzoc = i23;
        this.zzod = i24;
        this.zzoe = i25;
        this.zzof = i26;
        this.zzog = i27;
        if (iBinder2 != null) {
            IInterface queryLocalInterface = iBinder2.queryLocalInterface("com.google.android.gms.cast.framework.media.INotificationActionsProvider");
            if (queryLocalInterface instanceof zzd) {
                zzd = (zzd) queryLocalInterface;
            } else {
                zzd = new zze(iBinder2);
            }
        }
        this.zzoh = zzd;
    }

    public List<String> getActions() {
        return this.zznd;
    }

    public int[] getCompatActionIndices() {
        int[] iArr = this.zzne;
        return Arrays.copyOf(iArr, iArr.length);
    }

    public long getSkipStepMs() {
        return this.zzlj;
    }

    public String getTargetActivityClassName() {
        return this.zznf;
    }

    public int getSmallIconDrawableResId() {
        return this.zzng;
    }

    public int getStopLiveStreamDrawableResId() {
        return this.zznh;
    }

    public int getPauseDrawableResId() {
        return this.zzni;
    }

    public int getPlayDrawableResId() {
        return this.zznj;
    }

    public int getSkipNextDrawableResId() {
        return this.zznk;
    }

    public int getSkipPrevDrawableResId() {
        return this.zznl;
    }

    public int getForwardDrawableResId() {
        return this.zznm;
    }

    public int getForward10DrawableResId() {
        return this.zznn;
    }

    public int getForward30DrawableResId() {
        return this.zzno;
    }

    public int getRewindDrawableResId() {
        return this.zznp;
    }

    public int getRewind10DrawableResId() {
        return this.zznq;
    }

    public int getRewind30DrawableResId() {
        return this.zznr;
    }

    public int getDisconnectDrawableResId() {
        return this.zzns;
    }

    public final int zzbm() {
        return this.zznt;
    }

    public int getCastingToDeviceStringResId() {
        return this.zznu;
    }

    public int getStopLiveStreamTitleResId() {
        return this.zznv;
    }

    public final int zzbn() {
        return this.zznw;
    }

    public final int zzbo() {
        return this.zznx;
    }

    public final int zzbp() {
        return this.zzny;
    }

    public final int zzbq() {
        return this.zznz;
    }

    public final int zzbr() {
        return this.zzoa;
    }

    public final int zzbs() {
        return this.zzob;
    }

    public final int zzbt() {
        return this.zzoc;
    }

    public final int zzbu() {
        return this.zzod;
    }

    public final int zzbv() {
        return this.zzoe;
    }

    public final int zzbw() {
        return this.zzof;
    }

    public final int zzbx() {
        return this.zzog;
    }

    public final zzd zzby() {
        return this.zzoh;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeStringList(parcel, 2, getActions(), false);
        SafeParcelWriter.writeIntArray(parcel, 3, getCompatActionIndices(), false);
        SafeParcelWriter.writeLong(parcel, 4, getSkipStepMs());
        SafeParcelWriter.writeString(parcel, 5, getTargetActivityClassName(), false);
        SafeParcelWriter.writeInt(parcel, 6, getSmallIconDrawableResId());
        SafeParcelWriter.writeInt(parcel, 7, getStopLiveStreamDrawableResId());
        SafeParcelWriter.writeInt(parcel, 8, getPauseDrawableResId());
        SafeParcelWriter.writeInt(parcel, 9, getPlayDrawableResId());
        SafeParcelWriter.writeInt(parcel, 10, getSkipNextDrawableResId());
        SafeParcelWriter.writeInt(parcel, 11, getSkipPrevDrawableResId());
        SafeParcelWriter.writeInt(parcel, 12, getForwardDrawableResId());
        SafeParcelWriter.writeInt(parcel, 13, getForward10DrawableResId());
        SafeParcelWriter.writeInt(parcel, 14, getForward30DrawableResId());
        SafeParcelWriter.writeInt(parcel, 15, getRewindDrawableResId());
        SafeParcelWriter.writeInt(parcel, 16, getRewind10DrawableResId());
        SafeParcelWriter.writeInt(parcel, 17, getRewind30DrawableResId());
        SafeParcelWriter.writeInt(parcel, 18, getDisconnectDrawableResId());
        SafeParcelWriter.writeInt(parcel, 19, this.zznt);
        SafeParcelWriter.writeInt(parcel, 20, getCastingToDeviceStringResId());
        SafeParcelWriter.writeInt(parcel, 21, getStopLiveStreamTitleResId());
        SafeParcelWriter.writeInt(parcel, 22, this.zznw);
        SafeParcelWriter.writeInt(parcel, 23, this.zznx);
        SafeParcelWriter.writeInt(parcel, 24, this.zzny);
        SafeParcelWriter.writeInt(parcel, 25, this.zznz);
        SafeParcelWriter.writeInt(parcel, 26, this.zzoa);
        SafeParcelWriter.writeInt(parcel, 27, this.zzob);
        SafeParcelWriter.writeInt(parcel, 28, this.zzoc);
        SafeParcelWriter.writeInt(parcel, 29, this.zzod);
        SafeParcelWriter.writeInt(parcel, 30, this.zzoe);
        SafeParcelWriter.writeInt(parcel, 31, this.zzof);
        SafeParcelWriter.writeInt(parcel, 32, this.zzog);
        zzd zzd = this.zzoh;
        SafeParcelWriter.writeIBinder(parcel, 33, zzd == null ? null : zzd.asBinder(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
