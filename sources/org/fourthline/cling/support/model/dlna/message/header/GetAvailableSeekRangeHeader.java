package org.fourthline.cling.support.model.dlna.message.header;

import org.fourthline.cling.model.message.header.InvalidHeaderException;

public class GetAvailableSeekRangeHeader extends DLNAHeader<Integer> {
    public GetAvailableSeekRangeHeader() {
        setValue(Integer.valueOf(1));
    }

    public void setString(String str) throws InvalidHeaderException {
        if (str.length() != 0) {
            try {
                if (Integer.parseInt(str) == 1) {
                    return;
                }
            } catch (Exception unused) {
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Invalid GetAvailableSeekRange header value: ");
        sb.append(str);
        throw new InvalidHeaderException(sb.toString());
    }

    public String getString() {
        return ((Integer) getValue()).toString();
    }
}
