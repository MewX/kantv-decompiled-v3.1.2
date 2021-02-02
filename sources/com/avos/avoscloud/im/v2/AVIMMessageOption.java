package com.avos.avoscloud.im.v2;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class AVIMMessageOption implements Parcelable {
    public static final Creator<AVIMMessageOption> CREATOR = new Creator<AVIMMessageOption>() {
        public AVIMMessageOption createFromParcel(Parcel parcel) {
            return new AVIMMessageOption(parcel);
        }

        public AVIMMessageOption[] newArray(int i) {
            return new AVIMMessageOption[i];
        }
    };
    private boolean isReceipt;
    private boolean isTransient;
    private boolean isWill;
    private MessagePriority priority;
    private String pushData;

    public enum MessagePriority {
        High(1),
        Normal(2),
        Low(3);
        
        private int priorityIndex;

        public static MessagePriority getProiority(int i) {
            if (i == 1) {
                return High;
            }
            if (i == 2) {
                return Normal;
            }
            if (i != 3) {
                return null;
            }
            return Low;
        }

        private MessagePriority(int i) {
            this.priorityIndex = i;
        }

        public int getNumber() {
            return this.priorityIndex;
        }
    }

    public int describeContents() {
        return 0;
    }

    public AVIMMessageOption() {
        this.priority = null;
        this.isTransient = false;
        this.isReceipt = false;
        this.isWill = false;
    }

    public void setPriority(MessagePriority messagePriority) {
        this.priority = messagePriority;
    }

    public MessagePriority getPriority() {
        return this.priority;
    }

    public boolean isTransient() {
        return this.isTransient;
    }

    public void setTransient(boolean z) {
        this.isTransient = z;
    }

    public boolean isReceipt() {
        return this.isReceipt;
    }

    public void setReceipt(boolean z) {
        this.isReceipt = z;
    }

    public void writeToParcel(Parcel parcel, int i) {
        MessagePriority messagePriority = this.priority;
        parcel.writeInt(messagePriority != null ? messagePriority.getNumber() : -1);
        parcel.writeInt(this.isTransient ? 1 : 0);
        parcel.writeInt(this.isReceipt ? 1 : 0);
        parcel.writeString(this.pushData);
    }

    public AVIMMessageOption(Parcel parcel) {
        this.priority = null;
        boolean z = false;
        this.isTransient = false;
        this.isReceipt = false;
        this.isWill = false;
        this.priority = MessagePriority.getProiority(parcel.readInt());
        this.isTransient = parcel.readInt() == 1;
        if (parcel.readInt() == 1) {
            z = true;
        }
        this.isReceipt = z;
        this.pushData = parcel.readString();
    }

    public String getPushData() {
        return this.pushData;
    }

    public void setPushData(String str) {
        this.pushData = str;
    }

    public boolean isWill() {
        return this.isWill;
    }

    public void setWill(boolean z) {
        this.isWill = z;
    }
}
