package com.avos.avoscloud.im.v2;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.avos.avoscloud.im.v2.AVIMMessage;
import java.lang.reflect.Array;

public class AVIMMessageCreator<T extends AVIMMessage> implements Creator<T> {
    Class mClazz;

    public AVIMMessageCreator(Class<T> cls) {
        this.mClazz = cls;
    }

    public T createFromParcel(Parcel parcel) {
        AVIMMessage aVIMMessage;
        try {
            aVIMMessage = (AVIMMessage) this.mClazz.getDeclaredConstructor(new Class[]{Parcel.class}).newInstance(new Object[]{parcel});
        } catch (Exception unused) {
            aVIMMessage = new AVIMMessage(parcel);
        }
        return AVIMMessageManager.parseTypedMessage(aVIMMessage);
    }

    public T[] newArray(int i) {
        return (AVIMMessage[]) Array.newInstance(this.mClazz, i);
    }
}
