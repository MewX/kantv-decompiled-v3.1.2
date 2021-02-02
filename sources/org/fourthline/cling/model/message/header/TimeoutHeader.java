package org.fourthline.cling.model.message.header;

import java.io.Serializable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class TimeoutHeader extends UpnpHeader<Integer> {
    public static final Integer INFINITE_VALUE = Integer.valueOf(Integer.MAX_VALUE);
    public static final Pattern PATTERN = Pattern.compile("Second-(?:([0-9]+)|infinite)");

    public TimeoutHeader() {
        setValue(Integer.valueOf(1800));
    }

    public TimeoutHeader(int i) {
        setValue(Integer.valueOf(i));
    }

    public TimeoutHeader(Integer num) {
        setValue(num);
    }

    public void setString(String str) throws InvalidHeaderException {
        Matcher matcher = PATTERN.matcher(str);
        if (!matcher.matches()) {
            StringBuilder sb = new StringBuilder();
            sb.append("Can't parse timeout seconds integer from: ");
            sb.append(str);
            throw new InvalidHeaderException(sb.toString());
        } else if (matcher.group(1) != null) {
            setValue(Integer.valueOf(Integer.parseInt(matcher.group(1))));
        } else {
            setValue(INFINITE_VALUE);
        }
    }

    public String getString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Second-");
        sb.append(((Integer) getValue()).equals(INFINITE_VALUE) ? "infinite" : (Serializable) getValue());
        return sb.toString();
    }
}
