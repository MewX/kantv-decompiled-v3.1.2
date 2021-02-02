package org.fourthline.cling.support.model.dlna.message.header;

import org.fourthline.cling.model.message.header.InvalidHeaderException;

public class SCIDHeader extends DLNAHeader<String> {
    public SCIDHeader() {
        setValue("");
    }

    public void setString(String str) throws InvalidHeaderException {
        if (str.length() != 0) {
            setValue(str);
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Invalid SCID header value: ");
        sb.append(str);
        throw new InvalidHeaderException(sb.toString());
    }

    public String getString() {
        return ((String) getValue()).toString();
    }
}
