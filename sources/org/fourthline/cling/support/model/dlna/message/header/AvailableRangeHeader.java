package org.fourthline.cling.support.model.dlna.message.header;

import org.fourthline.cling.model.message.header.InvalidHeaderException;
import org.fourthline.cling.support.model.dlna.types.NormalPlayTimeRange;

public class AvailableRangeHeader extends DLNAHeader<NormalPlayTimeRange> {
    public void setString(String str) throws InvalidHeaderException {
        if (str.length() != 0) {
            try {
                setValue(NormalPlayTimeRange.valueOf(str, true));
                return;
            } catch (Exception unused) {
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Invalid AvailableRange header value: ");
        sb.append(str);
        throw new InvalidHeaderException(sb.toString());
    }

    public String getString() {
        return ((NormalPlayTimeRange) getValue()).toString();
    }
}
