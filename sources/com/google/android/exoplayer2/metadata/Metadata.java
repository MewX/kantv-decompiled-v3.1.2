package com.google.android.exoplayer2.metadata;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.Util;
import java.util.Arrays;
import java.util.List;

public final class Metadata implements Parcelable {
    public static final Creator<Metadata> CREATOR = new Creator<Metadata>() {
        public Metadata createFromParcel(Parcel parcel) {
            return new Metadata(parcel);
        }

        public Metadata[] newArray(int i) {
            return new Metadata[i];
        }
    };
    private final Entry[] entries;

    public interface Entry extends Parcelable {
    }

    public int describeContents() {
        return 0;
    }

    public Metadata(Entry... entryArr) {
        if (entryArr == null) {
            entryArr = new Entry[0];
        }
        this.entries = entryArr;
    }

    public Metadata(List<? extends Entry> list) {
        if (list != null) {
            this.entries = new Entry[list.size()];
            list.toArray(this.entries);
            return;
        }
        this.entries = new Entry[0];
    }

    Metadata(Parcel parcel) {
        this.entries = new Entry[parcel.readInt()];
        int i = 0;
        while (true) {
            Entry[] entryArr = this.entries;
            if (i < entryArr.length) {
                entryArr[i] = (Entry) parcel.readParcelable(Entry.class.getClassLoader());
                i++;
            } else {
                return;
            }
        }
    }

    public int length() {
        return this.entries.length;
    }

    public Entry get(int i) {
        return this.entries[i];
    }

    public Metadata copyWithAppendedEntriesFrom(@Nullable Metadata metadata) {
        return metadata == null ? this : copyWithAppendedEntries(metadata.entries);
    }

    public Metadata copyWithAppendedEntries(Entry... entryArr) {
        Entry[] entryArr2 = this.entries;
        Entry[] entryArr3 = (Entry[]) Arrays.copyOf(entryArr2, entryArr2.length + entryArr.length);
        System.arraycopy(entryArr, 0, entryArr3, this.entries.length, entryArr.length);
        return new Metadata((Entry[]) Util.castNonNullTypeArray(entryArr3));
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.entries, ((Metadata) obj).entries);
    }

    public int hashCode() {
        return Arrays.hashCode(this.entries);
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.entries.length);
        for (Entry writeParcelable : this.entries) {
            parcel.writeParcelable(writeParcelable, 0);
        }
    }
}