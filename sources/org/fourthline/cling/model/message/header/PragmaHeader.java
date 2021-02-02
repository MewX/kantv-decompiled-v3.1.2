package org.fourthline.cling.model.message.header;

import org.fourthline.cling.model.types.InvalidValueException;
import org.fourthline.cling.model.types.PragmaType;

public class PragmaHeader extends UpnpHeader<PragmaType> {
    public PragmaHeader() {
    }

    public PragmaHeader(PragmaType pragmaType) {
        setValue(pragmaType);
    }

    public PragmaHeader(String str) {
        setString(str);
    }

    public void setString(String str) throws InvalidHeaderException {
        try {
            setValue(PragmaType.valueOf(str));
        } catch (InvalidValueException e) {
            StringBuilder sb = new StringBuilder();
            sb.append("Invalid Range Header: ");
            sb.append(e.getMessage());
            throw new InvalidHeaderException(sb.toString());
        }
    }

    public String getString() {
        return ((PragmaType) getValue()).getString();
    }
}
