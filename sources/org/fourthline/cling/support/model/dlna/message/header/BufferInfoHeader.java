package org.fourthline.cling.support.model.dlna.message.header;

import org.fourthline.cling.model.message.header.InvalidHeaderException;
import org.fourthline.cling.support.model.dlna.types.BufferInfoType;

public class BufferInfoHeader extends DLNAHeader<BufferInfoType> {
    public void setString(String str) throws InvalidHeaderException {
        if (str.length() != 0) {
            try {
                setValue(BufferInfoType.valueOf(str));
                return;
            } catch (Exception unused) {
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Invalid BufferInfo header value: ");
        sb.append(str);
        throw new InvalidHeaderException(sb.toString());
    }

    public String getString() {
        return ((BufferInfoType) getValue()).getString();
    }
}
