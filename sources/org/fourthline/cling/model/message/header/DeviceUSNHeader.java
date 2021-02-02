package org.fourthline.cling.model.message.header;

import org.fourthline.cling.model.types.DeviceType;
import org.fourthline.cling.model.types.NamedDeviceType;
import org.fourthline.cling.model.types.UDN;

public class DeviceUSNHeader extends UpnpHeader<NamedDeviceType> {
    public DeviceUSNHeader() {
    }

    public DeviceUSNHeader(UDN udn, DeviceType deviceType) {
        setValue(new NamedDeviceType(udn, deviceType));
    }

    public DeviceUSNHeader(NamedDeviceType namedDeviceType) {
        setValue(namedDeviceType);
    }

    public void setString(String str) throws InvalidHeaderException {
        try {
            setValue(NamedDeviceType.valueOf(str));
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append("Invalid device USN header value, ");
            sb.append(e.getMessage());
            throw new InvalidHeaderException(sb.toString());
        }
    }

    public String getString() {
        return ((NamedDeviceType) getValue()).toString();
    }
}
