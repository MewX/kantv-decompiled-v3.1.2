package org.fourthline.cling.model.message.discovery;

import org.fourthline.cling.model.Location;
import org.fourthline.cling.model.message.IncomingDatagramMessage;
import org.fourthline.cling.model.message.header.ServiceTypeHeader;
import org.fourthline.cling.model.message.header.ServiceUSNHeader;
import org.fourthline.cling.model.message.header.UpnpHeader;
import org.fourthline.cling.model.message.header.UpnpHeader.Type;
import org.fourthline.cling.model.meta.LocalDevice;
import org.fourthline.cling.model.types.ServiceType;

public class OutgoingSearchResponseServiceType extends OutgoingSearchResponse {
    public OutgoingSearchResponseServiceType(IncomingDatagramMessage incomingDatagramMessage, Location location, LocalDevice localDevice, ServiceType serviceType) {
        super(incomingDatagramMessage, location, localDevice);
        getHeaders().add(Type.ST, (UpnpHeader) new ServiceTypeHeader(serviceType));
        getHeaders().add(Type.USN, (UpnpHeader) new ServiceUSNHeader(localDevice.getIdentity().getUdn(), serviceType));
    }
}
