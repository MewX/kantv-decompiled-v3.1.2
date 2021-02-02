package com.samsung.multiscreen.ble.adparser;

import com.avos.avoscloud.java_websocket.drafts.Draft_75;

public class TypeUnknown extends AdElement {
    byte[] unknownData;
    int unknownType;

    public TypeUnknown(int i, byte[] bArr, int i2, int i3) {
        this.unknownType = i;
        this.unknownData = new byte[i3];
        System.arraycopy(bArr, i2, this.unknownData, 0, i3);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        StringBuilder sb = new StringBuilder();
        sb.append("unknown type: 0x");
        sb.append(Integer.toHexString(this.unknownType));
        sb.append(" ");
        stringBuffer.append(sb.toString());
        for (int i = 0; i < this.unknownData.length; i++) {
            if (i > 0) {
                stringBuffer.append(",");
            }
            byte b = this.unknownData[i] & Draft_75.END_OF_FRAME;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("0x");
            sb2.append(Integer.toHexString(b));
            stringBuffer.append(sb2.toString());
        }
        return new String(stringBuffer);
    }

    public int getType() {
        return this.unknownType;
    }

    public byte[] getBytes() {
        return this.unknownData;
    }
}
