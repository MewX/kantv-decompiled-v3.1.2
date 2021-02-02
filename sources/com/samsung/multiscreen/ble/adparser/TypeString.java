package com.samsung.multiscreen.ble.adparser;

public class TypeString extends AdElement {
    String s;
    int type;

    public TypeString(int i, byte[] bArr, int i2, int i3) {
        this.type = i;
        byte[] bArr2 = new byte[i3];
        System.arraycopy(bArr, i2, bArr2, 0, i3);
        this.s = new String(bArr2);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        int i = this.type;
        if (i == 8) {
            stringBuffer.append("Short local name: ");
        } else if (i != 9) {
            StringBuilder sb = new StringBuilder();
            sb.append("Unknown string type: 0x");
            sb.append(Integer.toString(this.type));
            sb.append(": ");
            stringBuffer.append(sb.toString());
        } else {
            stringBuffer.append("Local name: ");
        }
        String str = "'";
        stringBuffer.append(str);
        stringBuffer.append(this.s);
        stringBuffer.append(str);
        return new String(stringBuffer);
    }

    public int getType() {
        return this.type;
    }

    public String getString() {
        return this.s;
    }
}
