package org.fourthline.cling.model.message.discovery;

import org.fourthline.cling.model.Location;
import org.fourthline.cling.model.message.IncomingDatagramMessage;
import org.fourthline.cling.model.message.header.DeviceTypeHeader;
import org.fourthline.cling.model.message.header.DeviceUSNHeader;
import org.fourthline.cling.model.message.header.UpnpHeader;
import org.fourthline.cling.model.message.header.UpnpHeader.Type;
import org.fourthline.cling.model.meta.LocalDevice;

public class OutgoingSearchResponseDeviceType extends OutgoingSearchResponse {
    public OutgoingSearchResponseDeviceType(IncomingDatagramMessage incomingDatagramMessage, Location location, LocalDevice localDevice) {
        super(incomingDatagramMessage, location, localDevice);
        getHeaders().add(Type.ST, (UpnpHeader) new DeviceTypeHeader(localDevice.getType()));
        getHeaders().add(Type.USN, (UpnpHeader) new DeviceUSNHeader(localDevice.getIdentity().getUdn(), localDevice.getType()));
    }
}
