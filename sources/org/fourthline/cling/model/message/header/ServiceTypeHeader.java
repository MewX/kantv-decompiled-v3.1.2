package org.fourthline.cling.model.message.header;

import java.net.URI;
import org.fourthline.cling.model.types.ServiceType;

public class ServiceTypeHeader extends UpnpHeader<ServiceType> {
    public ServiceTypeHeader() {
    }

    public ServiceTypeHeader(URI uri) {
        setString(uri.toString());
    }

    public ServiceTypeHeader(ServiceType serviceType) {
        setValue(serviceType);
    }

    public void setString(String str) throws InvalidHeaderException {
        try {
            setValue(ServiceType.valueOf(str));
        } catch (RuntimeException e) {
            StringBuilder sb = new StringBuilder();
            sb.append("Invalid service type header value, ");
            sb.append(e.getMessage());
            throw new InvalidHeaderException(sb.toString());
        }
    }

    public String getString() {
        return ((ServiceType) getValue()).toString();
    }
}
