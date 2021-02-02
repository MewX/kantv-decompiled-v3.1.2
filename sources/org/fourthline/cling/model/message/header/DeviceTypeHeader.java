package org.fourthline.cling.model.message.header;

import java.net.URI;
import org.fourthline.cling.model.types.DeviceType;

public class DeviceTypeHeader extends UpnpHeader<DeviceType> {
    public DeviceTypeHeader() {
    }

    public DeviceTypeHeader(URI uri) {
        setString(uri.toString());
    }

    public DeviceTypeHeader(DeviceType deviceType) {
        setValue(deviceType);
    }

    public void setString(String str) throws InvalidHeaderException {
        try {
            setValue(DeviceType.valueOf(str));
        } catch (RuntimeException e) {
            StringBuilder sb = new StringBuilder();
            sb.append("Invalid device type header value, ");
            sb.append(e.getMessage());
            throw new InvalidHeaderException(sb.toString());
        }
    }

    public String getString() {
        return ((DeviceType) getValue()).toString();
    }
}
