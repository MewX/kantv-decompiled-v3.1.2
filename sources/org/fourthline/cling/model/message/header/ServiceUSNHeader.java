package org.fourthline.cling.model.message.header;

import org.fourthline.cling.model.types.NamedServiceType;
import org.fourthline.cling.model.types.ServiceType;
import org.fourthline.cling.model.types.UDN;

public class ServiceUSNHeader extends UpnpHeader<NamedServiceType> {
    public ServiceUSNHeader() {
    }

    public ServiceUSNHeader(UDN udn, ServiceType serviceType) {
        setValue(new NamedServiceType(udn, serviceType));
    }

    public ServiceUSNHeader(NamedServiceType namedServiceType) {
        setValue(namedServiceType);
    }

    public void setString(String str) throws InvalidHeaderException {
        try {
            setValue(NamedServiceType.valueOf(str));
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append("Invalid service USN header value, ");
            sb.append(e.getMessage());
            throw new InvalidHeaderException(sb.toString());
        }
    }

    public String getString() {
        return ((NamedServiceType) getValue()).toString();
    }
}
