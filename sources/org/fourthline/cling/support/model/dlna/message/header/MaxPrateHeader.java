package org.fourthline.cling.support.model.dlna.message.header;

import org.fourthline.cling.model.message.header.InvalidHeaderException;

public class MaxPrateHeader extends DLNAHeader<Long> {
    public MaxPrateHeader() {
        setValue(Long.valueOf(0));
    }

    public void setString(String str) throws InvalidHeaderException {
        try {
            setValue(Long.valueOf(Long.parseLong(str)));
        } catch (NumberFormatException unused) {
            StringBuilder sb = new StringBuilder();
            sb.append("Invalid SCID header value: ");
            sb.append(str);
            throw new InvalidHeaderException(sb.toString());
        }
    }

    public String getString() {
        return ((Long) getValue()).toString();
    }
}
