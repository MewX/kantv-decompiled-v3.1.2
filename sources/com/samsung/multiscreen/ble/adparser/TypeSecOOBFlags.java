package com.samsung.multiscreen.ble.adparser;

import com.avos.avoscloud.java_websocket.drafts.Draft_75;

public class TypeSecOOBFlags extends AdElement {
    public static int FLAGS_LE_SUPPORTED_HOST = 2;
    public static int FLAGS_OOB_DATA_PRESENT = 1;
    public static int FLAGS_RANDOM_ADDRESS = 8;
    public static int FLAGS_SIMULTANEOUS_LE_BR_EDR = 4;
    int flags;

    public TypeSecOOBFlags(byte[] bArr, int i) {
        this.flags = bArr[i] & Draft_75.END_OF_FRAME;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("OOB Flags: ");
        if ((this.flags & FLAGS_OOB_DATA_PRESENT) != 0) {
            stringBuffer.append("OOB data present");
        }
        String str = ",";
        if ((this.flags & FLAGS_LE_SUPPORTED_HOST) != 0) {
            if (stringBuffer.length() > 10) {
                stringBuffer.append(str);
            }
            stringBuffer.append("LE supported (Host)");
        }
        if ((this.flags & FLAGS_SIMULTANEOUS_LE_BR_EDR) != 0) {
            if (stringBuffer.length() > 10) {
                stringBuffer.append(str);
            }
            stringBuffer.append("Simultaneous LE and BR/EDR to Same Device Capable (Host)");
        }
        if (stringBuffer.length() > 10) {
            stringBuffer.append(str);
        }
        if ((this.flags & FLAGS_RANDOM_ADDRESS) != 0) {
            stringBuffer.append("Random Address");
        } else {
            stringBuffer.append("Public Address");
        }
        return new String(stringBuffer);
    }

    public int getFlags() {
        return this.flags;
    }
}
