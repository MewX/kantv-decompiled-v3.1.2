package org.fourthline.cling.support.model.dlna.message.header;

import org.fourthline.cling.model.message.header.InvalidHeaderException;
import org.fourthline.cling.model.types.UnsignedIntegerFourBytes;

public class BufferBytesHeader extends DLNAHeader<UnsignedIntegerFourBytes> {
    public BufferBytesHeader() {
        setValue(new UnsignedIntegerFourBytes(0));
    }

    public void setString(String str) throws InvalidHeaderException {
        try {
            setValue(new UnsignedIntegerFourBytes(str));
        } catch (NumberFormatException unused) {
            StringBuilder sb = new StringBuilder();
            sb.append("Invalid header value: ");
            sb.append(str);
            throw new InvalidHeaderException(sb.toString());
        }
    }

    public String getString() {
        return ((UnsignedIntegerFourBytes) getValue()).getValue().toString();
    }
}
