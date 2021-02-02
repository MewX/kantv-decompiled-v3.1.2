package org.fourthline.cling.support.model.dlna.message.header;

import org.fourthline.cling.model.message.header.InvalidHeaderException;
import org.fourthline.cling.support.model.dlna.types.NormalPlayTime;

public class RealTimeInfoHeader extends DLNAHeader<NormalPlayTime> {
    public static final String PREFIX = "DLNA.ORG_TLAG=";

    public void setString(String str) throws InvalidHeaderException {
        if (str.length() != 0 && str.startsWith(PREFIX)) {
            try {
                String substring = str.substring(14);
                setValue(substring.equals("*") ? null : NormalPlayTime.valueOf(substring));
                return;
            } catch (Exception unused) {
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Invalid RealTimeInfo header value: ");
        sb.append(str);
        throw new InvalidHeaderException(sb.toString());
    }

    public String getString() {
        NormalPlayTime normalPlayTime = (NormalPlayTime) getValue();
        if (normalPlayTime == null) {
            return "DLNA.ORG_TLAG=*";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(PREFIX);
        sb.append(normalPlayTime.getString());
        return sb.toString();
    }
}
