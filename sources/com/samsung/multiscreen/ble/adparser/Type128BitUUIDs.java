package com.samsung.multiscreen.ble.adparser;

import java.util.UUID;

public class Type128BitUUIDs extends AdElement {
    int type;
    UUID[] uuids;

    public Type128BitUUIDs(int i, byte[] bArr, int i2, int i3) {
        this.type = i;
        int i4 = i3 / 16;
        this.uuids = new UUID[i4];
        int i5 = i2;
        for (int i6 = 0; i6 < i4; i6++) {
            int i7 = i5 + 1;
            int i8 = i7 + 1;
            int i9 = i8 + 1;
            int i10 = i9 + 1;
            int i11 = i10 + 1;
            int i12 = i11 + 1;
            int i13 = i12 + 1;
            long j = (((long) bArr[i5]) & 255) | ((((long) bArr[i7]) & 255) << 8) | ((((long) bArr[i8]) & 255) << 16) | ((((long) bArr[i9]) & 255) << 24) | ((((long) bArr[i10]) & 255) << 32) | ((((long) bArr[i11]) & 255) << 40) | ((((long) bArr[i12]) & 255) << 48) | ((((long) bArr[i13]) & 255) << 56);
            int i14 = i13 + 1;
            int i15 = i14 + 1;
            int i16 = i15 + 1;
            int i17 = i16 + 1;
            int i18 = i17 + 1;
            int i19 = i18 + 1;
            int i20 = i19 + 1;
            long j2 = (((long) bArr[i14]) & 255) | ((((long) bArr[i15]) & 255) << 8) | ((((long) bArr[i16]) & 255) << 16) | ((((long) bArr[i17]) & 255) << 24) | ((((long) bArr[i18]) & 255) << 32) | ((((long) bArr[i19]) & 255) << 40) | ((((long) bArr[i20]) & 255) << 48);
            int i21 = i20 + 1;
            long j3 = ((255 & ((long) bArr[i21])) << 56) | j2;
            i5 = i21 + 1;
            this.uuids[i6] = new UUID(j3, j);
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("flags: ");
        int i = this.type;
        if (i == 4) {
            stringBuffer.append("More 32-bit UUIDs: ");
        } else if (i != 5) {
            StringBuilder sb = new StringBuilder();
            sb.append("Unknown 32Bit UUIDs type: 0x");
            sb.append(Integer.toHexString(this.type));
            sb.append(": ");
            stringBuffer.append(sb.toString());
        } else {
            stringBuffer.append("Complete list of 32-bit UUIDs: ");
        }
        for (int i2 = 0; i2 < this.uuids.length; i2++) {
            if (i2 > 0) {
                stringBuffer.append(",");
            }
            stringBuffer.append(this.uuids[i2].toString());
        }
        return new String(stringBuffer);
    }

    public int getType() {
        return this.type;
    }

    public UUID[] getUUIDs() {
        return this.uuids;
    }
}
