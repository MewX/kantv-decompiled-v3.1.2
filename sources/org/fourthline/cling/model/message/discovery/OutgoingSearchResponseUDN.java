package org.fourthline.cling.model.message.discovery;

import org.fourthline.cling.model.Location;
import org.fourthline.cling.model.message.IncomingDatagramMessage;
import org.fourthline.cling.model.message.header.UDNHeader;
import org.fourthline.cling.model.message.header.UpnpHeader;
import org.fourthline.cling.model.message.header.UpnpHeader.Type;
import org.fourthline.cling.model.meta.LocalDevice;

public class OutgoingSearchResponseUDN extends OutgoingSearchResponse {
    public OutgoingSearchResponseUDN(IncomingDatagramMessage incomingDatagramMessage, Location location, LocalDevice localDevice) {
        super(incomingDatagramMessage, location, localDevice);
        getHeaders().add(Type.ST, (UpnpHeader) new UDNHeader(localDevice.getIdentity().getUdn()));
        getHeaders().add(Type.USN, (UpnpHeader) new UDNHeader(localDevice.getIdentity().getUdn()));
    }
}
