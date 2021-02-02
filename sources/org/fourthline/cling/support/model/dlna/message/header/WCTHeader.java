package org.fourthline.cling.support.model.dlna.message.header;

import java.util.regex.Pattern;
import org.fourthline.cling.model.message.header.InvalidHeaderException;

public class WCTHeader extends DLNAHeader<Boolean> {
    static final Pattern pattern = Pattern.compile("^[01]{1}$", 2);

    public WCTHeader() {
        setValue(Boolean.valueOf(false));
    }

    public void setString(String str) throws InvalidHeaderException {
        if (pattern.matcher(str).matches()) {
            setValue(Boolean.valueOf(str.equals("1")));
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Invalid SCID header value: ");
        sb.append(str);
        throw new InvalidHeaderException(sb.toString());
    }

    public String getString() {
        return ((Boolean) getValue()).booleanValue() ? "1" : "0";
    }
}
