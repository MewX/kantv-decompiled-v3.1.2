package org.fourthline.cling.model.message.header;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class MANHeader extends UpnpHeader<String> {
    public static final Pattern NAMESPACE_PATTERN = Pattern.compile(";\\s?ns\\s?=\\s?([0-9]{2})");
    public static final Pattern PATTERN = Pattern.compile("\"(.+?)\"(;.+?)??");
    public String namespace;

    public MANHeader() {
    }

    public MANHeader(String str) {
        setValue(str);
    }

    public MANHeader(String str, String str2) {
        this(str);
        this.namespace = str2;
    }

    public void setString(String str) throws InvalidHeaderException {
        Matcher matcher = PATTERN.matcher(str);
        if (matcher.matches()) {
            setValue(matcher.group(1));
            if (matcher.group(2) != null) {
                Matcher matcher2 = NAMESPACE_PATTERN.matcher(matcher.group(2));
                if (matcher2.matches()) {
                    setNamespace(matcher2.group(1));
                    return;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("Invalid namespace in MAN header value: ");
                sb.append(str);
                throw new InvalidHeaderException(sb.toString());
            }
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Invalid MAN header value: ");
        sb2.append(str);
        throw new InvalidHeaderException(sb2.toString());
    }

    public String getString() {
        if (getValue() == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        String str = "\"";
        sb.append(str);
        sb.append((String) getValue());
        sb.append(str);
        if (getNamespace() != null) {
            sb.append("; ns=");
            sb.append(getNamespace());
        }
        return sb.toString();
    }

    public String getNamespace() {
        return this.namespace;
    }

    public void setNamespace(String str) {
        this.namespace = str;
    }
}
