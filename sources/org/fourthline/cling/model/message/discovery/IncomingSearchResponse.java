package org.fourthline.cling.model.message.discovery;

import java.net.URL;
import org.fourthline.cling.model.message.IncomingDatagramMessage;
import org.fourthline.cling.model.message.UpnpResponse;
import org.fourthline.cling.model.message.header.DeviceUSNHeader;
import org.fourthline.cling.model.message.header.InterfaceMacHeader;
import org.fourthline.cling.model.message.header.LocationHeader;
import org.fourthline.cling.model.message.header.MaxAgeHeader;
import org.fourthline.cling.model.message.header.ServiceUSNHeader;
import org.fourthline.cling.model.message.header.UDNHeader;
import org.fourthline.cling.model.message.header.USNRootDeviceHeader;
import org.fourthline.cling.model.message.header.UpnpHeader;
import org.fourthline.cling.model.message.header.UpnpHeader.Type;
import org.fourthline.cling.model.types.NamedDeviceType;
import org.fourthline.cling.model.types.NamedServiceType;
import org.fourthline.cling.model.types.UDN;

public class IncomingSearchResponse extends IncomingDatagramMessage<UpnpResponse> {
    public IncomingSearchResponse(IncomingDatagramMessage<UpnpResponse> incomingDatagramMessage) {
        super(incomingDatagramMessage);
    }

    public boolean isSearchResponseMessage() {
        UpnpHeader firstHeader = getHeaders().getFirstHeader(Type.ST);
        UpnpHeader firstHeader2 = getHeaders().getFirstHeader(Type.USN);
        return (firstHeader == null || firstHeader.getValue() == null || firstHeader2 == null || firstHeader2.getValue() == null || getHeaders().getFirstHeader(Type.EXT) == null) ? false : true;
    }

    public UDN getRootDeviceUDN() {
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

    public URL getLocationURL() {
        LocationHeader locationHeader = (LocationHeader) getHeaders().getFirstHeader(Type.LOCATION, LocationHeader.class);
        if (locationHeader != null) {
            return (URL) locationHeader.getValue();
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
