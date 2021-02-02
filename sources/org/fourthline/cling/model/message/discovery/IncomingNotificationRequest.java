package org.fourthline.cling.model.message.discovery;

import java.net.URL;
import org.fourthline.cling.model.message.IncomingDatagramMessage;
import org.fourthline.cling.model.message.UpnpRequest;
import org.fourthline.cling.model.message.header.DeviceUSNHeader;
import org.fourthline.cling.model.message.header.InterfaceMacHeader;
import org.fourthline.cling.model.message.header.LocationHeader;
import org.fourthline.cling.model.message.header.MaxAgeHeader;
import org.fourthline.cling.model.message.header.NTSHeader;
import org.fourthline.cling.model.message.header.ServiceUSNHeader;
import org.fourthline.cling.model.message.header.UDNHeader;
import org.fourthline.cling.model.message.header.USNRootDeviceHeader;
import org.fourthline.cling.model.message.header.UpnpHeader;
import org.fourthline.cling.model.message.header.UpnpHeader.Type;
import org.fourthline.cling.model.types.NamedDeviceType;
import org.fourthline.cling.model.types.NamedServiceType;
import org.fourthline.cling.model.types.NotificationSubtype;
import org.fourthline.cling.model.types.UDN;

public class IncomingNotificationRequest extends IncomingDatagramMessage<UpnpRequest> {
    public IncomingNotificationRequest(IncomingDatagramMessage<UpnpRequest> incomingDatagramMessage) {
        super(incomingDatagramMessage);
    }

    public boolean isAliveMessage() {
        NTSHeader nTSHeader = (NTSHeader) getHeaders().getFirstHeader(Type.NTS, NTSHeader.class);
        return nTSHeader != null && ((NotificationSubtype) nTSHeader.getValue()).equals(NotificationSubtype.ALIVE);
    }

    public boolean isByeByeMessage() {
        NTSHeader nTSHeader = (NTSHeader) getHeaders().getFirstHeader(Type.NTS, NTSHeader.class);
        return nTSHeader != null && ((NotificationSubtype) nTSHeader.getValue()).equals(NotificationSubtype.BYEBYE);
    }

    public URL getLocationURL() {
        LocationHeader locationHeader = (LocationHeader) getHeaders().getFirstHeader(Type.LOCATION, LocationHeader.class);
        if (locationHeader != null) {
            return (URL) locationHeader.getValue();
        }
        return null;
    }

    public UDN getUDN() {
        UpnpHeader firstHeader = getHeaders().getFirstHeader(Type.USN, USNRootDeviceHeader.class);
        if (firstHeader != null) {
            return (UDN) firstHeader.getValue();
        }
        UpnpHeader firstHeader2 = getHeaders().getFirstHeader(Type.USN, UDNHeader.class);
        if (firstHeader2 != null) {
            return (UDN) firstHeader2.getValue();
        }
        UpnpHeader firstHeader3 = getHeaders().getFirstHeader(Type.USN, DeviceUSNHeader.class);
        if (firstHeader3 != null) {
            return ((NamedDeviceType) firstHeader3.getValue()).getUdn();
        }
        UpnpHeader firstHeader4 = getHeaders().getFirstHeader(Type.USN, ServiceUSNHeader.class);
        if (firstHeader4 != null) {
            return ((NamedServiceType) firstHeader4.getValue()).getUdn();
        }
        return null;
    }

    public Integer getMaxAge() {
        MaxAgeHeader maxAgeHeader = (MaxAgeHeader) getHeaders().getFirstHeader(Type.MAX_AGE, MaxAgeHeader.class);
        if (maxAgeHeader != null) {
            return (Integer) maxAgeHeader.getValue();
        }
        return null;
    }

    public byte[] getInterfaceMacHeader() {
        InterfaceMacHeader interfaceMacHeader = (InterfaceMacHeader) getHeaders().getFirstHeader(Type.EXT_IFACE_MAC, InterfaceMacHeader.class);
        if (interfaceMacHeader != null) {
            return (byte[]) interfaceMacHeader.getValue();
        }
        return null;
    }
}
