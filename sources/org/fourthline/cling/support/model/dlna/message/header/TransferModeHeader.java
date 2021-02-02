package org.fourthline.cling.support.model.dlna.message.header;

import org.fourthline.cling.model.message.header.InvalidHeaderException;

public class TransferModeHeader extends DLNAHeader<Type> {

    public enum Type {
        Streaming,
        Interactive,
        Background
    }

    public TransferModeHeader() {
        setValue(Type.Interactive);
    }

    public TransferModeHeader(Type type) {
        setValue(type);
    }

    public void setString(String str) throws InvalidHeaderException {
        if (str.length() != 0) {
            try {
                setValue(Type.valueOf(str));
                return;
            } catch (Exception unused) {
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Invalid TransferMode header value: ");
        sb.append(str);
        throw new InvalidHeaderException(sb.toString());
    }

    public String getString() {
        return ((Type) getValue()).toString();
    }
}
