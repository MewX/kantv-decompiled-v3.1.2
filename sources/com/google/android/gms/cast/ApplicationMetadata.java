package com.google.android.gms.cast;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Class;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Constructor;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Field;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Param;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Reserved;
import com.google.android.gms.internal.cast.zzcu;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Class(creator = "ApplicationMetadataCreator")
@Reserved({1})
public class ApplicationMetadata extends AbstractSafeParcelable {
    public static final Creator<ApplicationMetadata> CREATOR = new zzd();
    @Field(getter = "getName", id = 3)
    private String name;
    @Field(getter = "getSupportedNamespaces", id = 5)
    private List<String> zzaa;
    @Field(getter = "getSenderAppIdentifier", id = 6)
    private String zzab;
    @Field(getter = "getSenderAppLaunchUrl", id = 7)
    private Uri zzac;
    @Field(getter = "getApplicationId", id = 2)
    private String zzy;
    @Field(getter = "getImages", id = 4)
    private List<WebImage> zzz;

    @Constructor
    ApplicationMetadata(@Param(id = 2) String str, @Param(id = 3) String str2, @Param(id = 4) List<WebImage> list, @Param(id = 5) List<String> list2, @Param(id = 6) String str3, @Param(id = 7) Uri uri) {
        this.zzy = str;
        this.name = str2;
        this.zzz = list;
        this.zzaa = list2;
        this.zzab = str3;
        this.zzac = uri;
    }

    private ApplicationMetadata() {
        this.zzz = new ArrayList();
        this.zzaa = new ArrayList();
    }

    public String getApplicationId() {
        return this.zzy;
    }

    public String getName() {
        return this.name;
    }

    public boolean isNamespaceSupported(String str) {
        List<String> list = this.zzaa;
        return list != null && list.contains(str);
    }

    public List<String> getSupportedNamespaces() {
        return Collections.unmodifiableList(this.zzaa);
    }

    public boolean areNamespacesSupported(List<String> list) {
        List<String> list2 = this.zzaa;
        return list2 != null && list2.containsAll(list);
    }

    public String getSenderAppIdentifier() {
        return this.zzab;
    }

    public List<WebImage> getImages() {
        return this.zzz;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("applicationId: ");
        sb.append(this.zzy);
        sb.append(", name: ");
        sb.append(this.name);
        sb.append(", images.count: ");
        List<WebImage> list = this.zzz;
        int i = 0;
        sb.append(list == null ? 0 : list.size());
        sb.append(", namespaces.count: ");
        List<String> list2 = this.zzaa;
        if (list2 != null) {
            i = list2.size();
        }
        sb.append(i);
        sb.append(", senderAppIdentifier: ");
        sb.append(this.zzab);
        sb.append(", senderAppLaunchUrl: ");
        sb.append(this.zzac);
        return sb.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, getApplicationId(), false);
        SafeParcelWriter.writeString(parcel, 3, getName(), false);
        SafeParcelWriter.writeTypedList(parcel, 4, getImages(), false);
        SafeParcelWriter.writeStringList(parcel, 5, getSupportedNamespaces(), false);
        SafeParcelWriter.writeString(parcel, 6, getSenderAppIdentifier(), false);
        SafeParcelWriter.writeParcelable(parcel, 7, this.zzac, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public int hashCode() {
        return Objects.hashCode(this.zzy, this.name, this.zzz, this.zzaa, this.zzab, this.zzac);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ApplicationMetadata)) {
            return false;
        }
        ApplicationMetadata applicationMetadata = (ApplicationMetadata) obj;
        return zzcu.zza(this.zzy, applicationMetadata.zzy) && zzcu.zza(this.zzz, applicationMetadata.zzz) && zzcu.zza(this.name, applicationMetadata.name) && zzcu.zza(this.zzaa, applicationMetadata.zzaa) && zzcu.zza(this.zzab, applicationMetadata.zzab) && zzcu.zza(this.zzac, applicationMetadata.zzac);
    }
}
