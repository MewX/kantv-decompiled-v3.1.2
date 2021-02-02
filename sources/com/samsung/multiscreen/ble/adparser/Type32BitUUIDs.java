package com.samsung.multiscreen.ble.adparser;

import com.avos.avoscloud.java_websocket.drafts.Draft_75;

public class Type32BitUUIDs extends AdElement {
    int type;
    int[] uuids;

    public Type32BitUUIDs(int i, byte[] bArr, int i2, int i3) {
        this.type = i;
        int i4 = i3 / 4;
        this.uuids = new int[i4];
        for (int i5 = 0; i5 < i4; i5++) {
            int i6 = i2 + 1;
            int i7 = i6 + 1;
            int i8 = i7 + 1;
            int i9 = (bArr[i2] & Draft_75.END_OF_FRAME) | ((bArr[i6] & Draft_75.END_OF_FRAME) << 8) | ((bArr[i7] & Draft_75.END_OF_FRAME) << 16) | ((bArr[i8] & Draft_75.END_OF_FRAME) << 24);
            i2 = i8 + 1;
            this.uuids[i5] = i9;
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("flags: ");
        int i = this.type;
        if (i == 4) {
            stringBuffer.append("More 32-bit UUIDs: ");
        } else if (i == 5) {
            stringBuffer.append("Complete list of 32-bit UUIDs: ");
        } else if (i != 21) {
            StringBuilder sb = new StringBuilder();
            sb.append("Unknown 32Bit UUIDs type: 0x");
            sb.append(Integer.toHexString(this.type));
            sb.append(": ");
            stringBuffer.append(sb.toString());
        } else {
            stringBuffer.append("Service UUIDs: ");
        }
        for (int i2 = 0; i2 < this.uuids.length; i2++) {
            if (i2 > 0) {
                stringBuffer.append(",");
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("0x");
            sb2.append(hex32(this.uuids[i2]));
            stringBuffer.append(sb2.toString());
        }
        return new String(stringBuffer);
    }

    public int getType() {
        return this.type;
    }

    public int[] getUUIDs() {
        return this.uuids;
    }
}
