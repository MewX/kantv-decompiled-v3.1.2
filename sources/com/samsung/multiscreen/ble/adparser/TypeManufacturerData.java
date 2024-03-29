package com.samsung.multiscreen.ble.adparser;

import com.avos.avoscloud.java_websocket.drafts.Draft_75;

public class TypeManufacturerData extends AdElement {
    byte[] b;
    int manufacturer;

    public TypeManufacturerData(byte[] bArr, int i, int i2) {
        int i3 = i + 1;
        int i4 = i3 + 1;
        this.manufacturer = (bArr[i] & Draft_75.END_OF_FRAME) | ((bArr[i3] & Draft_75.END_OF_FRAME) << 8);
        int i5 = i2 - 2;
        this.b = new byte[i5];
        System.arraycopy(bArr, i4, this.b, 0, i5);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Manufacturer data (manufacturer: ");
        sb.append(hex16(this.manufacturer));
        sb.append("): ");
        StringBuffer stringBuffer = new StringBuffer(sb.toString());
        for (int i = 0; i < this.b.length; i++) {
            if (i > 0) {
                stringBuffer.append(",");
            }
            stringBuffer.append(hex8(this.b[i] & Draft_75.END_OF_FRAME));
        }
        return new String(stringBuffer);
    }

    public String getManufacturer() {
        return new String(new StringBuffer(hex16(this.manufacturer)));
    }

    public byte[] getBytes() {
        return this.b;
    }
}
