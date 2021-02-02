package org.fourthline.cling.model.message.header;

import org.fourthline.cling.model.types.BytesRange;
import org.fourthline.cling.model.types.InvalidValueException;

public class RangeHeader extends UpnpHeader<BytesRange> {
    public RangeHeader() {
    }

    public RangeHeader(BytesRange bytesRange) {
        setValue(bytesRange);
    }

    public RangeHeader(String str) {
        setString(str);
    }

    public void setString(String str) throws InvalidHeaderException {
        try {
            setValue(BytesRange.valueOf(str));
        } catch (InvalidValueException e) {
            StringBuilder sb = new StringBuilder();
            sb.append("Invalid Range Header: ");
            sb.append(e.getMessage());
            throw new InvalidHeaderException(sb.toString());
        }
    }

    public String getString() {
        return ((BytesRange) getValue()).getString();
    }
}
