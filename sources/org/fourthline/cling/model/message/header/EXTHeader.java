package org.fourthline.cling.model.message.header;

public class EXTHeader extends UpnpHeader<String> {
    public static final String DEFAULT_VALUE = "";

    public EXTHeader() {
        setValue("");
    }

    public void setString(String str) throws InvalidHeaderException {
        if (str != null && str.length() > 0) {
            StringBuilder sb = new StringBuilder();
            sb.append("Invalid EXT header, it has no value: ");
            sb.append(str);
            throw new InvalidHeaderException(sb.toString());
        }
    }

    public String getString() {
        return (String) getValue();
    }
}
