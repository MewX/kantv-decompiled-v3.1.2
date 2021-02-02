package com.avos.avoscloud.im.v2.callback;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.List;

public class AVIMOperationFailure implements Parcelable {
    public static final Creator<AVIMOperationFailure> CREATOR = new Creator() {
        public AVIMOperationFailure createFromParcel(Parcel parcel) {
            AVIMOperationFailure aVIMOperationFailure = new AVIMOperationFailure();
            aVIMOperationFailure.setCode(parcel.readInt());
            aVIMOperationFailure.setReason(parcel.readString());
            int readInt = parcel.readInt();
            if (readInt > 0) {
                ArrayList arrayList = new ArrayList(readInt);
                parcel.readStringList(arrayList);
                aVIMOperationFailure.setMemberIds(arrayList);
            }
            return aVIMOperationFailure;
        }

        public AVIMOperationFailure[] newArray(int i) {
            return new AVIMOperationFailure[i];
        }
    };
    int code = 0;
    List<String> memberIds = null;
    String reason = "";

    public int describeContents() {
        return 0;
    }

    public String getReason() {
        return this.reason;
    }

    public void setReason(String str) {
        this.reason = str;
    }

    public int getCode() {
        return this.code;
    }

    public void setCode(int i) {
        this.code = i;
    }

    public List<String> getMemberIds() {
        return this.memberIds;
    }

    public void setMemberIds(List<String> list) {
        this.memberIds = list;
    }

    public int getMemberIdCount() {
        List<String> list = this.memberIds;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public void writeToParcel(Parcel parcel, int i) {
        int memberIdCount = getMemberIdCount();
        parcel.writeInt(this.code);
        parcel.writeString(this.reason);
        parcel.writeInt(memberIdCount);
        if (memberIdCount > 0) {
            parcel.writeStringList(this.memberIds);
        }
    }
}
