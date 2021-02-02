package com.samsung.multiscreen.ble.adparser;

import com.avos.avoscloud.java_websocket.drafts.Draft_75;

public class TypeFlags extends AdElement {
    public static int FLAGS_BR_EDR_NOT_SUPPORTED = 4;
    public static int FLAGS_LE_GENERAL_DISCOVERABLE_MODE = 2;
    public static int FLAGS_LE_LIMITED_DISCOVERABLE_MODE = 1;
    public static int FLAGS_SIMULTANEOUS_LE_CONTROLLER = 8;
    public static int FLAGS_SIMULTANEOUS_LE_HOST = 16;
    int flags;

    public TypeFlags(byte[] bArr, int i) {
        this.flags = bArr[i] & Draft_75.END_OF_FRAME;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("flags:");
        if ((this.flags & FLAGS_LE_LIMITED_DISCOVERABLE_MODE) != 0) {
            stringBuffer.append("LE Limited Discoverable Mode");
        }
        String str = ",";
        if ((this.flags & FLAGS_LE_GENERAL_DISCOVERABLE_MODE) != 0) {
            if (stringBuffer.length() > 6) {
                stringBuffer.append(str);
            }
            stringBuffer.append("LE General Discoverable Mode");
        }
        if ((this.flags & FLAGS_BR_EDR_NOT_SUPPORTED) != 0) {
            if (stringBuffer.length() > 6) {
                stringBuffer.append(str);
            }
            stringBuffer.append("BR/EDR Not Supported");
        }
        if ((this.flags & FLAGS_SIMULTANEOUS_LE_CONTROLLER) != 0) {
            if (stringBuffer.length() > 6) {
                stringBuffer.append(str);
            }
            stringBuffer.append("Simultaneous LE and BR/EDR to Same Device Capable (Controller)");
        }
        if ((this.flags & FLAGS_SIMULTANEOUS_LE_HOST) != 0) {
            if (stringBuffer.length() > 6) {
                stringBuffer.append(str);
            }
            stringBuffer.append("Simultaneous LE and BR/EDR to Same Device Capable (Host)");
        }
        return new String(stringBuffer);
    }

    public int getFlags() {
        return this.flags;
    }
}
