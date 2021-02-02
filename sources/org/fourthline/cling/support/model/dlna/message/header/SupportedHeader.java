package org.fourthline.cling.support.model.dlna.message.header;

import org.fourthline.cling.model.message.header.InvalidHeaderException;

public class SupportedHeader extends DLNAHeader<String[]> {
    public SupportedHeader() {
        setValue(new String[0]);
    }

    public void setString(String str) throws InvalidHeaderException {
        if (str.length() != 0) {
            if (str.endsWith(";")) {
                str = str.substring(0, str.length() - 1);
            }
            setValue(str.split("\\s*,\\s*"));
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Invalid Supported header value: ");
        sb.append(str);
        throw new InvalidHeaderException(sb.toString());
    }

    public String getString() {
        String[] strArr = (String[]) getValue();
        String str = strArr.length > 0 ? strArr[0] : "";
        for (int i = 1; i < strArr.length; i++) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(",");
            sb.append(strArr[i]);
            str = sb.toString();
        }
        return str;
    }
}
