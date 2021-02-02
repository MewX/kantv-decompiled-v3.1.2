package com.avos.avoscloud;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class AVIMClientParcel implements Parcelable {
    public static final Creator<AVIMClientParcel> CREATOR = new Creator<AVIMClientParcel>() {
        public AVIMClientParcel createFromParcel(Parcel parcel) {
            return new AVIMClientParcel(parcel);
        }

        public AVIMClientParcel[] newArray(int i) {
            return new AVIMClientParcel[i];
        }
    };
    private String clientTag;
    private boolean isReconnection = false;
    private String sessionToken;

    public int describeContents() {
        return 0;
    }

    public AVIMClientParcel() {
        String str = "";
        this.clientTag = str;
        this.sessionToken = str;
    }

    public AVIMClientParcel(Parcel parcel) {
        String str = "";
        this.clientTag = str;
        this.sessionToken = str;
        boolean z = false;
        this.clientTag = parcel.readString();
        this.sessionToken = parcel.readString();
        if (parcel.readInt() == 1) {
            z = true;
        }
        this.isReconnection = z;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.clientTag);
        parcel.writeString(this.sessionToken);
        parcel.writeInt(this.isReconnection ? 1 : 0);
    }

    public void setClientTag(String str) {
        this.clientTag = str;
    }

    public String getClientTag() {
        return this.clientTag;
    }

    public void setReconnection(boolean z) {
        this.isReconnection = z;
    }

    public boolean isReconnection() {
        return this.isReconnection;
    }

    public void setSessionToken(String str) {
        this.sessionToken = str;
    }

    public String getSessionToken() {
        return this.sessionToken;
    }
}
