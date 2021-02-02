package org.fourthline.cling.support.model.dlna.message.header;

import org.fourthline.cling.model.message.header.InvalidHeaderException;

public class FriendlyNameHeader extends DLNAHeader<String> {
    public FriendlyNameHeader() {
        setValue("");
    }

    public FriendlyNameHeader(String str) {
        setValue(str);
    }

    public void setString(String str) throws InvalidHeaderException {
        if (str.length() != 0) {
            setValue(str);
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Invalid GetAvailableSeekRange header value: ");
        sb.append(str);
        throw new InvalidHeaderException(sb.toString());
    }

    public String getString() {
        return (String) getValue();
    }
}
