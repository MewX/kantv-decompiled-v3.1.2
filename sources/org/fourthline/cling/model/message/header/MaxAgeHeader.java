package org.fourthline.cling.model.message.header;

import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class MaxAgeHeader extends UpnpHeader<Integer> {
    public static final Pattern MAX_AGE_REGEX = Pattern.compile(".*max-age\\s*=\\s*([0-9]+).*");

    public MaxAgeHeader(Integer num) {
        setValue(num);
    }

    public MaxAgeHeader() {
        setValue(Integer.valueOf(1800));
    }

    public void setString(String str) throws InvalidHeaderException {
        Matcher matcher = MAX_AGE_REGEX.matcher(str.toLowerCase(Locale.ROOT));
        if (matcher.matches()) {
            setValue(Integer.valueOf(Integer.parseInt(matcher.group(1))));
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Invalid cache-control value, can't parse max-age seconds: ");
        sb.append(str);
        throw new InvalidHeaderException(sb.toString());
    }

    public String getString() {
        StringBuilder sb = new StringBuilder();
        sb.append("max-age=");
        sb.append(((Integer) getValue()).toString());
        return sb.toString();
    }
}
