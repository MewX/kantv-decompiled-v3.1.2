package com.samsung.multiscreen.ble.adparser;

import com.avos.avoscloud.java_websocket.drafts.Draft_75;

public class TypeByteDump extends AdElement {
    byte[] b;
    int type;

    public TypeByteDump(int i, byte[] bArr, int i2, int i3) {
        this.type = i;
        this.b = new byte[i3];
        System.arraycopy(bArr, i2, this.b, 0, i3);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        switch (this.type) {
            case 13:
                stringBuffer.append("Class of device: ");
                break;
            case 14:
                stringBuffer.append("Simple Pairing Hash C: ");
                break;
            case 15:
                stringBuffer.append("Simple Pairing Randomizer R: ");
                break;
            case 16:
                stringBuffer.append("TK Value: ");
                break;
        }
        for (int i = 0; i < this.b.length; i++) {
            if (i > 0) {
                stringBuffer.append(",");
            }
            stringBuffer.append(hex8(this.b[i] & Draft_75.END_OF_FRAME));
        }
        return new String(stringBuffer);
    }

    public int getType() {
        return this.type;
    }

    public byte[] getBytes() {
        return this.b;
    }
}
