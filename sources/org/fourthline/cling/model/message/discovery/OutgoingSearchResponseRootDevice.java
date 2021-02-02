package org.fourthline.cling.model.message.discovery;

import org.fourthline.cling.model.Location;
import org.fourthline.cling.model.message.IncomingDatagramMessage;
import org.fourthline.cling.model.message.header.RootDeviceHeader;
import org.fourthline.cling.model.message.header.USNRootDeviceHeader;
import org.fourthline.cling.model.message.header.UpnpHeader;
import org.fourthline.cling.model.message.header.UpnpHeader.Type;
import org.fourthline.cling.model.meta.LocalDevice;

public class OutgoingSearchResponseRootDevice extends OutgoingSearchResponse {
    public OutgoingSearchResponseRootDevice(IncomingDatagramMessage incomingDatagramMessage, Location location, LocalDevice localDevice) {
        super(incomingDatagramMessage, location, localDevice);
        getHeaders().add(Type.ST, (UpnpHeader) new RootDeviceHeader());
        getHeaders().add(Type.USN, (UpnpHeader) new USNRootDeviceHeader(localDevice.getIdentity().getUdn()));
    }
}
