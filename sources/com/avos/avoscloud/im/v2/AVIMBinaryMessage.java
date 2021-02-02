package com.avos.avoscloud.im.v2;

import android.os.Parcel;

public class AVIMBinaryMessage extends AVIMMessage {
    public static final AVIMMessageCreator<AVIMBinaryMessage> CREATOR = new AVIMMessageCreator<>(AVIMBinaryMessage.class);
    private byte[] bytes = new byte[0];

    public AVIMBinaryMessage() {
    }

    public AVIMBinaryMessage(String str, String str2) {
        super(str, str2);
    }

    public AVIMBinaryMessage(String str, String str2, long j, long j2) {
        super(str, str2, j, j2);
    }

    public AVIMBinaryMessage(String str, String str2, long j, long j2, long j3) {
        super(str, str2, j, j2, j3);
    }

    public static AVIMBinaryMessage createInstanceFromMessage(AVIMMessage aVIMMessage) {
        if (aVIMMessage == null) {
            return null;
        }
        AVIMBinaryMessage aVIMBinaryMessage = new AVIMBinaryMessage();
        aVIMBinaryMessage.conversationId = aVIMMessage.conversationId;
        aVIMBinaryMessage.currentClient = aVIMMessage.currentClient;
        aVIMBinaryMessage.from = aVIMMessage.from;
        aVIMBinaryMessage.ioType = aVIMMessage.ioType;
        aVIMBinaryMessage.mentionList = aVIMMessage.mentionList;
        aVIMBinaryMessage.mentionAll = aVIMMessage.mentionAll;
        aVIMBinaryMessage.messageId = aVIMMessage.messageId;
        aVIMBinaryMessage.uniqueToken = aVIMMessage.uniqueToken;
        aVIMBinaryMessage.status = aVIMMessage.status;
        aVIMBinaryMessage.deliveredAt = aVIMMessage.deliveredAt;
        aVIMBinaryMessage.readAt = aVIMMessage.readAt;
        aVIMBinaryMessage.timestamp = aVIMMessage.timestamp;
        aVIMBinaryMessage.updateAt = aVIMMessage.updateAt;
        return aVIMBinaryMessage;
    }

    public void setBytes(byte[] bArr) {
        this.bytes = bArr;
    }

    public byte[] getBytes() {
        return this.bytes;
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        byte[] bArr = this.bytes;
        if (bArr == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(bArr.length);
        parcel.writeByteArray(this.bytes);
    }

    public AVIMBinaryMessage(Parcel parcel) {
        super(parcel);
        int readInt = parcel.readInt();
        if (readInt <= 0) {
            this.bytes = null;
            return;
        }
        this.bytes = new byte[readInt];
        parcel.readByteArray(this.bytes);
    }
}
