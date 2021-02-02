package org.fourthline.cling.model.message.discovery;

import org.fourthline.cling.model.Location;
import org.fourthline.cling.model.message.header.ServiceTypeHeader;
import org.fourthline.cling.model.message.header.ServiceUSNHeader;
import org.fourthline.cling.model.message.header.UpnpHeader;
import org.fourthline.cling.model.message.header.UpnpHeader.Type;
import org.fourthline.cling.model.meta.LocalDevice;
import org.fourthline.cling.model.types.NotificationSubtype;
import org.fourthline.cling.model.types.ServiceType;

public class OutgoingNotificationRequestServiceType extends OutgoingNotificationRequest {
    public OutgoingNotificationRequestServiceType(Location location, LocalDevice localDevice, NotificationSubtype notificationSubtype, ServiceType serviceType) {
        super(location, localDevice, notificationSubtype);
        getHeaders().add(Type.NT, (UpnpHeader) new ServiceTypeHeader(serviceType));
        getHeaders().add(Type.USN, (UpnpHeader) new ServiceUSNHeader(localDevice.getIdentity().getUdn(), serviceType));
    }
}
