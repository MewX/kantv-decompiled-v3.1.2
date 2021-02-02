package org.fourthline.cling.support.model.dlna.message.header;

import java.util.regex.Pattern;
import org.fourthline.cling.model.message.header.InvalidHeaderException;

public class EventTypeHeader extends DLNAHeader<String> {
    static final Pattern pattern = Pattern.compile("^[0-9]{4}$", 2);

    public EventTypeHeader() {
        setValue("0000");
    }

    public void setString(String str) throws InvalidHeaderException {
        if (pattern.matcher(str).matches()) {
            setValue(str);
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Invalid EventType header value: ");
        sb.append(str);
        throw new InvalidHeaderException(sb.toString());
    }

    public String getString() {
        return ((String) getValue()).toString();
    }
}
