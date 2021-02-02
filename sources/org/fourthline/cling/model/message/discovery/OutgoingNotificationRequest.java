package org.fourthline.cling.model.message.discovery;

import org.fourthline.cling.model.Constants;
import org.fourthline.cling.model.Location;
import org.fourthline.cling.model.ModelUtil;
import org.fourthline.cling.model.message.OutgoingDatagramMessage;
import org.fourthline.cling.model.message.UpnpRequest;
import org.fourthline.cling.model.message.UpnpRequest.Method;
import org.fourthline.cling.model.message.header.HostHeader;
import org.fourthline.cling.model.message.header.LocationHeader;
import org.fourthline.cling.model.message.header.MaxAgeHeader;
import org.fourthline.cling.model.message.header.NTSHeader;
import org.fourthline.cling.model.message.header.ServerHeader;
import org.fourthline.cling.model.message.header.UpnpHeader;
import org.fourthline.cling.model.message.header.UpnpHeader.Type;
import org.fourthline.cling.model.meta.LocalDevice;
import org.fourthline.cling.model.types.NotificationSubtype;

public abstract class OutgoingNotificationRequest extends OutgoingDatagramMessage<UpnpRequest> {
    private NotificationSubtype type;

    protected OutgoingNotificationRequest(Location location, LocalDevice localDevice, NotificationSubtype notificationSubtype) {
        super(new UpnpRequest(Method.NOTIFY), ModelUtil.getInetAddressByName(Constants.IPV4_UPNP_MULTICAST_GROUP), 1900);
        this.type = notificationSubtype;
        getHeaders().add(Type.MAX_AGE, (UpnpHeader) new MaxAgeHeader(localDevice.getIdentity().getMaxAgeSeconds()));
        getHeaders().add(Type.LOCATION, (UpnpHeader) new LocationHeader(location.getURL()));
        getHeaders().add(Type.SERVER, (UpnpHeader) new ServerHeader());
        getHeaders().add(Type.HOST, (UpnpHeader) new HostHeader());
        getHeaders().add(Type.NTS, (UpnpHeader) new NTSHeader(notificationSubtype));
    }

    public NotificationSubtype getType() {
        return this.type;
    }
}
