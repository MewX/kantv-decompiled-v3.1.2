package org.fourthline.cling.model.message.header;

import org.seamless.util.io.HexBin;

public class InterfaceMacHeader extends UpnpHeader<byte[]> {
    public InterfaceMacHeader() {
    }

    public InterfaceMacHeader(byte[] bArr) {
        setValue(bArr);
    }

    public InterfaceMacHeader(String str) {
        setString(str);
    }

    public void setString(String str) throws InvalidHeaderException {
        byte[] stringToBytes = HexBin.stringToBytes(str, ":");
        setValue(stringToBytes);
        if (stringToBytes.length != 6) {
            StringBuilder sb = new StringBuilder();
            sb.append("Invalid MAC address: ");
            sb.append(str);
            throw new InvalidHeaderException(sb.toString());
        }
    }

    public String getString() {
        return HexBin.bytesToString((byte[]) getValue(), ":");
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        sb.append(getClass().getSimpleName());
        sb.append(") '");
        sb.append(getString());
        sb.append("'");
        return sb.toString();
    }
}
