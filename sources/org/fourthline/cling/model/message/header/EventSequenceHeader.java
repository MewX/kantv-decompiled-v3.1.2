package org.fourthline.cling.model.message.header;

import org.fourthline.cling.model.types.UnsignedIntegerFourBytes;

public class EventSequenceHeader extends UpnpHeader<UnsignedIntegerFourBytes> {
    public EventSequenceHeader() {
    }

    public EventSequenceHeader(long j) {
        setValue(new UnsignedIntegerFourBytes(j));
    }

    public void setString(String str) throws InvalidHeaderException {
        String str2 = "0";
        if (!str2.equals(str)) {
            while (str.startsWith(str2)) {
                str = str.substring(1);
            }
        }
        try {
            setValue(new UnsignedIntegerFourBytes(str));
        } catch (NumberFormatException e) {
            StringBuilder sb = new StringBuilder();
            sb.append("Invalid event sequence, ");
            sb.append(e.getMessage());
            throw new InvalidHeaderException(sb.toString());
        }
    }

    public String getString() {
        return ((UnsignedIntegerFourBytes) getValue()).toString();
    }
}
