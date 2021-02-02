package org.fourthline.cling.model.message.discovery;

import org.fourthline.cling.model.Constants;
import org.fourthline.cling.model.Location;
import org.fourthline.cling.model.message.IncomingDatagramMessage;
import org.fourthline.cling.model.message.OutgoingDatagramMessage;
import org.fourthline.cling.model.message.UpnpResponse;
import org.fourthline.cling.model.message.UpnpResponse.Status;
import org.fourthline.cling.model.message.header.EXTHeader;
import org.fourthline.cling.model.message.header.InterfaceMacHeader;
import org.fourthline.cling.model.message.header.LocationHeader;
import org.fourthline.cling.model.message.header.MaxAgeHeader;
import org.fourthline.cling.model.message.header.ServerHeader;
import org.fourthline.cling.model.message.header.UpnpHeader;
import org.fourthline.cling.model.message.header.UpnpHeader.Type;
import org.fourthline.cling.model.meta.LocalDevice;

public class OutgoingSearchResponse extends OutgoingDatagramMessage<UpnpResponse> {
    public OutgoingSearchResponse(IncomingDatagramMessage incomingDatagramMessage, Location location, LocalDevice localDevice) {
        super(new UpnpResponse(Status.OK), incomingDatagramMessage.getSourceAddress(), incomingDatagramMessage.getSourcePort());
        getHeaders().add(Type.MAX_AGE, (UpnpHeader) new MaxAgeHeader(localDevice.getIdentity().getMaxAgeSeconds()));
        getHeaders().add(Type.LOCATION, (UpnpHeader) new LocationHeader(location.getURL()));
        getHeaders().add(Type.SERVER, (UpnpHeader) new ServerHeader());
        getHeaders().add(Type.EXT, (UpnpHeader) new EXTHeader());
        if ("true".equals(System.getProperty(Constants.SYSTEM_PROPERTY_ANNOUNCE_MAC_ADDRESS)) && location.getNetworkAddress().getHardwareAddress() != null) {
            getHeaders().add(Type.EXT_IFACE_MAC, (UpnpHeader) new InterfaceMacHeader(location.getNetworkAddress().getHardwareAddress()));
        }
    }
}
