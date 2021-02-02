package org.fourthline.cling.support.model.dlna.message.header;

import org.fourthline.cling.model.message.header.InvalidHeaderException;
import org.fourthline.cling.model.types.InvalidValueException;
import org.fourthline.cling.support.avtransport.lastchange.AVTransportVariable.TransportPlaySpeed;

public class PlaySpeedHeader extends DLNAHeader<TransportPlaySpeed> {
    public PlaySpeedHeader() {
    }

    public PlaySpeedHeader(TransportPlaySpeed transportPlaySpeed) {
        setValue(transportPlaySpeed);
    }

    public void setString(String str) throws InvalidHeaderException {
        if (str.length() != 0) {
            try {
                setValue(new TransportPlaySpeed(str));
                return;
            } catch (InvalidValueException unused) {
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Invalid PlaySpeed header value: ");
        sb.append(str);
        throw new InvalidHeaderException(sb.toString());
    }

    public String getString() {
        return (String) ((TransportPlaySpeed) getValue()).getValue();
    }
}
