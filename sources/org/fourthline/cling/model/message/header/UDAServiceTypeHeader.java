package org.fourthline.cling.model.message.header;

import java.net.URI;
import org.fourthline.cling.model.types.ServiceType;
import org.fourthline.cling.model.types.UDAServiceType;

public class UDAServiceTypeHeader extends ServiceTypeHeader {
    public UDAServiceTypeHeader() {
    }

    public UDAServiceTypeHeader(URI uri) {
        super(uri);
    }

    public UDAServiceTypeHeader(UDAServiceType uDAServiceType) {
        super((ServiceType) uDAServiceType);
    }

    public void setString(String str) throws InvalidHeaderException {
        try {
            setValue(UDAServiceType.valueOf(str));
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append("Invalid UDA service type header value, ");
            sb.append(e.getMessage());
            throw new InvalidHeaderException(sb.toString());
        }
    }
}
