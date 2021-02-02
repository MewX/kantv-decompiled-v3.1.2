package org.fourthline.cling.model.message.header;

import java.util.Locale;

public class RootDeviceHeader extends UpnpHeader<String> {
    public RootDeviceHeader() {
        setValue("upnp:rootdevice");
    }

    public void setString(String str) throws InvalidHeaderException {
        if (!str.toLowerCase(Locale.ROOT).equals(getValue())) {
            StringBuilder sb = new StringBuilder();
            sb.append("Invalid root device NT header value: ");
            sb.append(str);
            throw new InvalidHeaderException(sb.toString());
        }
    }

    public String getString() {
        return (String) getValue();
    }
}
