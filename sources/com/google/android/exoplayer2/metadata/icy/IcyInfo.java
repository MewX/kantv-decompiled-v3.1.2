package com.google.android.exoplayer2.metadata.icy;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.metadata.Metadata.Entry;
import com.google.android.exoplayer2.util.Util;

public final class IcyInfo implements Entry {
    public static final Creator<IcyInfo> CREATOR = new Creator<IcyInfo>() {
        public IcyInfo createFromParcel(Parcel parcel) {
            return new IcyInfo(parcel);
        }

        public IcyInfo[] newArray(int i) {
            return new IcyInfo[i];
        }
    };
    @Nullable
    public final String title;
    @Nullable
    public final String url;

    public int describeContents() {
        return 0;
    }

    public IcyInfo(@Nullable String str, @Nullable String str2) {
        this.title = str;
        this.url = str2;
    }

    IcyInfo(Parcel parcel) {
        this.title = parcel.readString();
        this.url = parcel.readString();
    }

    public boolean equals(@Nullable Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        IcyInfo icyInfo = (IcyInfo) obj;
        if (!Util.areEqual(this.title, icyInfo.title) || !Util.areEqual(this.url, icyInfo.url)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.title;
        int i = 0;
        int hashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.url;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return hashCode + i;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ICY: title=\"");
        sb.append(this.title);
        sb.append("\", url=\"");
        sb.append(this.url);
        sb.append("\"");
        return sb.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.title);
        parcel.writeString(this.url);
    }
}
