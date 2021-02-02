package com.avos.avoscloud;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.avos.avoscloud.im.v2.AVIMMessage;

public class PushServiceParcel implements Parcelable {
    public static final Creator<PushServiceParcel> CREATOR = new Creator<PushServiceParcel>() {
        public PushServiceParcel createFromParcel(Parcel parcel) {
            return new PushServiceParcel(parcel);
        }

        public PushServiceParcel[] newArray(int i) {
            return new PushServiceParcel[i];
        }
    };
    private AVIMMessage newMessage;
    private AVIMMessage oldMessage;
    private AVIMMessage recallMessage;

    public int describeContents() {
        return 0;
    }

    public PushServiceParcel() {
    }

    public PushServiceParcel(Parcel parcel) {
        this.oldMessage = (AVIMMessage) parcel.readParcelable(AVIMMessage.CREATOR.getClass().getClassLoader());
        this.newMessage = (AVIMMessage) parcel.readParcelable(AVIMMessage.CREATOR.getClass().getClassLoader());
        this.recallMessage = (AVIMMessage) parcel.readParcelable(AVIMMessage.CREATOR.getClass().getClassLoader());
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.oldMessage, 0);
        parcel.writeParcelable(this.newMessage, 0);
        parcel.writeParcelable(this.recallMessage, 0);
    }

    public AVIMMessage getRecallMessage() {
        return this.recallMessage;
    }

    public void setRecallMessage(AVIMMessage aVIMMessage) {
        this.recallMessage = aVIMMessage;
    }

    public AVIMMessage getOldMessage() {
        return this.oldMessage;
    }

    public void setOldMessage(AVIMMessage aVIMMessage) {
        this.oldMessage = aVIMMessage;
    }

    public AVIMMessage getNewMessage() {
        return this.newMessage;
    }

    public void setNewMessage(AVIMMessage aVIMMessage) {
        this.newMessage = aVIMMessage;
    }
}
