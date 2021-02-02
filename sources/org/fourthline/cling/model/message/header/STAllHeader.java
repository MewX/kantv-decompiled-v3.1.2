package org.fourthline.cling.model.message.header;

import org.fourthline.cling.model.types.NotificationSubtype;

public class STAllHeader extends UpnpHeader<NotificationSubtype> {
    public STAllHeader() {
        setValue(NotificationSubtype.ALL);
    }

    public void setString(String str) throws InvalidHeaderException {
        if (!str.equals(NotificationSubtype.ALL.getHeaderString())) {
            StringBuilder sb = new StringBuilder();
            sb.append("Invalid ST header value (not ");
            sb.append(NotificationSubtype.ALL);
            sb.append("): ");
            sb.append(str);
            throw new InvalidHeaderException(sb.toString());
        }
    }

    public String getString() {
        return ((NotificationSubtype) getValue()).getHeaderString();
    }
}
