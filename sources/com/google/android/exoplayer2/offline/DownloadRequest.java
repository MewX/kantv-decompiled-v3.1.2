package com.google.android.exoplayer2.offline;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public final class DownloadRequest implements Parcelable {
    public static final Creator<DownloadRequest> CREATOR = new Creator<DownloadRequest>() {
        public DownloadRequest createFromParcel(Parcel parcel) {
            return new DownloadRequest(parcel);
        }

        public DownloadRequest[] newArray(int i) {
            return new DownloadRequest[i];
        }
    };
    public static final String TYPE_DASH = "dash";
    public static final String TYPE_HLS = "hls";
    public static final String TYPE_PROGRESSIVE = "progressive";
    public static final String TYPE_SS = "ss";
    @Nullable
    public final String customCacheKey;
    public final byte[] data;
    public final String id;
    public final List<StreamKey> streamKeys;
    public final String type;
    public final Uri uri;

    public static class UnsupportedRequestException extends IOException {
    }

    public int describeContents() {
        return 0;
    }

    public DownloadRequest(String str, String str2, Uri uri2, List<StreamKey> list, @Nullable String str3, @Nullable byte[] bArr) {
        if (TYPE_DASH.equals(str2) || TYPE_HLS.equals(str2) || TYPE_SS.equals(str2)) {
            boolean z = str3 == null;
            StringBuilder sb = new StringBuilder();
            sb.append("customCacheKey must be null for type: ");
            sb.append(str2);
            Assertions.checkArgument(z, sb.toString());
        }
        this.id = str;
        this.type = str2;
        this.uri = uri2;
        ArrayList arrayList = new ArrayList(list);
        Collections.sort(arrayList);
        this.streamKeys = Collections.unmodifiableList(arrayList);
        this.customCacheKey = str3;
        this.data = bArr != null ? Arrays.copyOf(bArr, bArr.length) : Util.EMPTY_BYTE_ARRAY;
    }

    DownloadRequest(Parcel parcel) {
        this.id = (String) Util.castNonNull(parcel.readString());
        this.type = (String) Util.castNonNull(parcel.readString());
        this.uri = Uri.parse((String) Util.castNonNull(parcel.readString()));
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            arrayList.add(parcel.readParcelable(StreamKey.class.getClassLoader()));
        }
        this.streamKeys = Collections.unmodifiableList(arrayList);
        this.customCacheKey = parcel.readString();
        this.data = new byte[parcel.readInt()];
        parcel.readByteArray(this.data);
    }

    public DownloadRequest copyWithId(String str) {
        DownloadRequest downloadRequest = new DownloadRequest(str, this.type, this.uri, this.streamKeys, this.customCacheKey, this.data);
        return downloadRequest;
    }

    public DownloadRequest copyWithMergedRequest(DownloadRequest downloadRequest) {
        List list;
        Assertions.checkArgument(this.id.equals(downloadRequest.id));
        Assertions.checkArgument(this.type.equals(downloadRequest.type));
        if (this.streamKeys.isEmpty() || downloadRequest.streamKeys.isEmpty()) {
            list = Collections.emptyList();
        } else {
            list = new ArrayList(this.streamKeys);
            for (int i = 0; i < downloadRequest.streamKeys.size(); i++) {
                StreamKey streamKey = (StreamKey) downloadRequest.streamKeys.get(i);
                if (!list.contains(streamKey)) {
                    list.add(streamKey);
                }
            }
        }
        DownloadRequest downloadRequest2 = new DownloadRequest(this.id, this.type, downloadRequest.uri, list, downloadRequest.customCacheKey, downloadRequest.data);
        return downloadRequest2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.type);
        sb.append(":");
        sb.append(this.id);
        return sb.toString();
    }

    public boolean equals(@Nullable Object obj) {
        boolean z = false;
        if (!(obj instanceof DownloadRequest)) {
            return false;
        }
        DownloadRequest downloadRequest = (DownloadRequest) obj;
        if (this.id.equals(downloadRequest.id) && this.type.equals(downloadRequest.type) && this.uri.equals(downloadRequest.uri) && this.streamKeys.equals(downloadRequest.streamKeys) && Util.areEqual(this.customCacheKey, downloadRequest.customCacheKey) && Arrays.equals(this.data, downloadRequest.data)) {
            z = true;
        }
        return z;
    }

    public final int hashCode() {
        int hashCode = ((((((((this.type.hashCode() * 31) + this.id.hashCode()) * 31) + this.type.hashCode()) * 31) + this.uri.hashCode()) * 31) + this.streamKeys.hashCode()) * 31;
        String str = this.customCacheKey;
        return ((hashCode + (str != null ? str.hashCode() : 0)) * 31) + Arrays.hashCode(this.data);
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.id);
        parcel.writeString(this.type);
        parcel.writeString(this.uri.toString());
        parcel.writeInt(this.streamKeys.size());
        for (int i2 = 0; i2 < this.streamKeys.size(); i2++) {
            parcel.writeParcelable((Parcelable) this.streamKeys.get(i2), 0);
        }
        parcel.writeString(this.customCacheKey);
        parcel.writeInt(this.data.length);
        parcel.writeByteArray(this.data);
    }
}
