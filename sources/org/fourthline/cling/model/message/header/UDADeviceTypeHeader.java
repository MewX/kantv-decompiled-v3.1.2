package org.fourthline.cling.model.message.header;

import java.net.URI;
import org.fourthline.cling.model.types.DeviceType;
import org.fourthline.cling.model.types.UDADeviceType;

public class UDADeviceTypeHeader extends DeviceTypeHeader {
    public UDADeviceTypeHeader() {
    }

    public UDADeviceTypeHeader(URI uri) {
        super(uri);
    }

    public UDADeviceTypeHeader(DeviceType deviceType) {
        super(deviceType);
    }

    public void setString(String str) throws InvalidHeaderException {
        try {
            setValue(UDADeviceType.valueOf(str));
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append("Invalid UDA device type header value, ");
            sb.append(e.getMessage());
            throw new InvalidHeaderException(sb.toString());
        }
    }
}
