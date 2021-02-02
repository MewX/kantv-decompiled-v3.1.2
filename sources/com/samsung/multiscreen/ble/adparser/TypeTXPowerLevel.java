package com.samsung.multiscreen.ble.adparser;

public class TypeTXPowerLevel extends AdElement {
    byte txpower;

    public TypeTXPowerLevel(byte[] bArr, int i) {
        this.txpower = bArr[i];
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("TX Power Level: ");
        sb.append(Byte.toString(this.txpower));
        sb.append(" dBm");
        return sb.toString();
    }

    public byte getTXPowerLevel() {
        return this.txpower;
    }
}
