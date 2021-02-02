package org.fourthline.cling.model.message.discovery;

import org.fourthline.cling.model.Constants;
import org.fourthline.cling.model.Location;
import org.fourthline.cling.model.message.header.InterfaceMacHeader;
import org.fourthline.cling.model.message.header.RootDeviceHeader;
import org.fourthline.cling.model.message.header.USNRootDeviceHeader;
import org.fourthline.cling.model.message.header.UpnpHeader;
import org.fourthline.cling.model.message.header.UpnpHeader.Type;
import org.fourthline.cling.model.meta.LocalDevice;
import org.fourthline.cling.model.types.NotificationSubtype;

public class OutgoingNotificationRequestRootDevice extends OutgoingNotificationRequest {
    public OutgoingNotificationRequestRootDevice(Location location, LocalDevice localDevice, NotificationSubtype notificationSubtype) {
        super(location, localDevice, notificationSubtype);
        getHeaders().add(Type.NT, (UpnpHeader) new RootDeviceHeader());
        getHeaders().add(Type.USN, (UpnpHeader) new USNRootDeviceHeader(localDevice.getIdentity().getUdn()));
        if ("true".equals(System.getProperty(Constants.SYSTEM_PROPERTY_ANNOUNCE_MAC_ADDRESS)) && location.getNetworkAddress().getHardwareAddress() != null) {
            getHeaders().add(Type.EXT_IFACE_MAC, (UpnpHeader) new InterfaceMacHeader(location.getNetworkAddress().getHardwareAddress()));
        }
    }
}
