package org.fourthline.cling.model.message.header;

import org.fourthline.cling.model.types.UDN;

public class USNRootDeviceHeader extends UpnpHeader<UDN> {
    public static final String ROOT_DEVICE_SUFFIX = "::upnp:rootdevice";

    public USNRootDeviceHeader() {
    }

    public USNRootDeviceHeader(UDN udn) {
        setValue(udn);
    }

    public void setString(String str) throws InvalidHeaderException {
        if (!str.startsWith("uuid:") || !str.endsWith(ROOT_DEVICE_SUFFIX)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Invalid root device USN header value, must start with 'uuid:' and end with '::upnp:rootdevice' but is '");
            sb.append(str);
            sb.append("'");
            throw new InvalidHeaderException(sb.toString());
        }
        setValue(new UDN(str.substring(5, str.length() - 17)));
    }

    public String getString() {
        StringBuilder sb = new StringBuilder();
        sb.append(((UDN) getValue()).toString());
        sb.append(ROOT_DEVICE_SUFFIX);
        return sb.toString();
    }
}
