package com.samsung.multiscreen.ble.adparser;

import androidx.core.internal.view.SupportMenu;

public abstract class AdElement {
    private static String hexDigits = "0123456789ABCDEF";

    public abstract String toString();

    private static char hexDigit(int i, int i2) {
        return hexDigits.charAt((i >> i2) & 15);
    }

    public static String hex8(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append("");
        sb.append(hexDigit(i, 4));
        sb.append(hexDigit(i, 0));
        return sb.toString();
    }

    public static String hex16(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append("");
        sb.append(hexDigit(i, 12));
        sb.append(hexDigit(i, 8));
        sb.append(hexDigit(i, 4));
        sb.append(hexDigit(i, 0));
        return sb.toString();
    }

    public static String hex32(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append("");
        sb.append(hexDigit(i, 28));
        sb.append(hexDigit(i, 24));
        sb.append(hexDigit(i, 20));
        sb.append(hexDigit(i, 16));
        sb.append(hexDigit(i, 12));
        sb.append(hexDigit(i, 8));
        sb.append(hexDigit(i, 4));
        sb.append(hexDigit(i, 0));
        return sb.toString();
    }

    public static String uuid128(int i, int i2, int i3, int i4) {
        int i5 = (i2 >> 16) & SupportMenu.USER_MASK;
        int i6 = i2 & SupportMenu.USER_MASK;
        int i7 = 65535 & (i3 >> 16);
        StringBuilder sb = new StringBuilder();
        sb.append("");
        sb.append(hex32(i));
        String str = "-";
        sb.append(str);
        sb.append(hex16(i5));
        sb.append(str);
        sb.append(hex16(i6));
        sb.append(str);
        sb.append(hex16(i7));
        sb.append(str);
        sb.append(hexDigit(i3, 12));
        sb.append(hexDigit(i3, 8));
        sb.append(hexDigit(i3, 4));
        sb.append(hexDigit(i3, 0));
        sb.append(hexDigit(i4, 28));
        sb.append(hexDigit(i4, 24));
        sb.append(hexDigit(i4, 20));
        sb.append(hexDigit(i4, 16));
        sb.append(hexDigit(i4, 12));
        sb.append(hexDigit(i4, 8));
        sb.append(hexDigit(i4, 4));
        sb.append(hexDigit(i4, 0));
        return sb.toString();
    }
}
