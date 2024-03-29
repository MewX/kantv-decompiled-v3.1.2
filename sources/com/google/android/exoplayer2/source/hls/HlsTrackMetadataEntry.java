package com.google.android.exoplayer2.source.hls;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.metadata.Metadata.Entry;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class HlsTrackMetadataEntry implements Entry {
    public static final Creator<HlsTrackMetadataEntry> CREATOR = new Creator<HlsTrackMetadataEntry>() {
        public HlsTrackMetadataEntry createFromParcel(Parcel parcel) {
            return new HlsTrackMetadataEntry(parcel);
        }

        public HlsTrackMetadataEntry[] newArray(int i) {
            return new HlsTrackMetadataEntry[i];
        }
    };
    @Nullable
    public final String groupId;
    @Nullable
    public final String name;
    public final List<VariantInfo> variantInfos;

    public static final class VariantInfo implements Parcelable {
        public static final Creator<VariantInfo> CREATOR = new Creator<VariantInfo>() {
            public VariantInfo createFromParcel(Parcel parcel) {
                return new VariantInfo(parcel);
            }

            public VariantInfo[] newArray(int i) {
                return new VariantInfo[i];
            }
        };
        @Nullable
        public final String audioGroupId;
        public final long bitrate;
        @Nullable
        public final String captionGroupId;
        @Nullable
        public final String subtitleGroupId;
        @Nullable
        public final String videoGroupId;

        public int describeContents() {
            return 0;
        }

        public VariantInfo(long j, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4) {
            this.bitrate = j;
            this.videoGroupId = str;
            this.audioGroupId = str2;
            this.subtitleGroupId = str3;
            this.captionGroupId = str4;
        }

        VariantInfo(Parcel parcel) {
            this.bitrate = parcel.readLong();
            this.videoGroupId = parcel.readString();
            this.audioGroupId = parcel.readString();
            this.subtitleGroupId = parcel.readString();
            this.captionGroupId = parcel.readString();
        }

        public boolean equals(@Nullable Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            VariantInfo variantInfo = (VariantInfo) obj;
            if (this.bitrate != variantInfo.bitrate || !TextUtils.equals(this.videoGroupId, variantInfo.videoGroupId) || !TextUtils.equals(this.audioGroupId, variantInfo.audioGroupId) || !TextUtils.equals(this.subtitleGroupId, variantInfo.subtitleGroupId) || !TextUtils.equals(this.captionGroupId, variantInfo.captionGroupId)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            long j = this.bitrate;
            int i = ((int) (j ^ (j >>> 32))) * 31;
            String str = this.videoGroupId;
            int i2 = 0;
            int hashCode = (i + (str != null ? str.hashCode() : 0)) * 31;
            String str2 = this.audioGroupId;
            int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.subtitleGroupId;
            int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
            String str4 = this.captionGroupId;
            if (str4 != null) {
                i2 = str4.hashCode();
            }
            return hashCode3 + i2;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.bitrate);
            parcel.writeString(this.videoGroupId);
            parcel.writeString(this.audioGroupId);
            parcel.writeString(this.subtitleGroupId);
            parcel.writeString(this.captionGroupId);
        }
    }

    public int describeContents() {
        return 0;
    }

    public HlsTrackMetadataEntry(@Nullable String str, @Nullable String str2, List<VariantInfo> list) {
        this.groupId = str;
        this.name = str2;
        this.variantInfos = Collections.unmodifiableList(new ArrayList(list));
    }

    HlsTrackMetadataEntry(Parcel parcel) {
        this.groupId = parcel.readString();
        this.name = parcel.readString();
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            arrayList.add(parcel.readParcelable(VariantInfo.class.getClassLoader()));
        }
        this.variantInfos = Collections.unmodifiableList(arrayList);
    }

    public boolean equals(@Nullable Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        HlsTrackMetadataEntry hlsTrackMetadataEntry = (HlsTrackMetadataEntry) obj;
        if (!TextUtils.equals(this.groupId, hlsTrackMetadataEntry.groupId) || !TextUtils.equals(this.name, hlsTrackMetadataEntry.name) || !this.variantInfos.equals(hlsTrackMetadataEntry.variantInfos)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.groupId;
        int i = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.name;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((hashCode + i) * 31) + this.variantInfos.hashCode();
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.groupId);
        parcel.writeString(this.name);
        int size = this.variantInfos.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeParcelable((Parcelable) this.variantInfos.get(i2), 0);
        }
    }
}
