package org.fourthline.cling.model.message.discovery;

import org.fourthline.cling.model.Location;
import org.fourthline.cling.model.message.header.UDNHeader;
import org.fourthline.cling.model.message.header.UpnpHeader;
import org.fourthline.cling.model.message.header.UpnpHeader.Type;
import org.fourthline.cling.model.meta.LocalDevice;
import org.fourthline.cling.model.types.NotificationSubtype;

public class OutgoingNotificationRequestUDN extends OutgoingNotificationRequest {
    public OutgoingNotificationRequestUDN(Location location, LocalDevice localDevice, NotificationSubtype notificationSubtype) {
        super(location, localDevice, notificationSubtype);
        getHeaders().add(Type.NT, (UpnpHeader) new UDNHeader(localDevice.getIdentity().getUdn()));
        getHeaders().add(Type.USN, (UpnpHeader) new UDNHeader(localDevice.getIdentity().getUdn()));
    }
}
