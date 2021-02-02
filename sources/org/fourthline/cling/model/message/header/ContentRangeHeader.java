package org.fourthline.cling.model.message.header;

import org.fourthline.cling.model.types.BytesRange;
import org.fourthline.cling.model.types.InvalidValueException;

public class ContentRangeHeader extends UpnpHeader<BytesRange> {
    public static final String PREFIX = "bytes ";

    public ContentRangeHeader() {
    }

    public ContentRangeHeader(BytesRange bytesRange) {
        setValue(bytesRange);
    }

    public ContentRangeHeader(String str) {
        setString(str);
    }

    public void setString(String str) throws InvalidHeaderException {
        try {
            setValue(BytesRange.valueOf(str, PREFIX));
        } catch (InvalidValueException e) {
            StringBuilder sb = new StringBuilder();
            sb.append("Invalid Range Header: ");
            sb.append(e.getMessage());
            throw new InvalidHeaderException(sb.toString());
        }
    }

    public String getString() {
        return ((BytesRange) getValue()).getString(true, PREFIX);
    }
}
