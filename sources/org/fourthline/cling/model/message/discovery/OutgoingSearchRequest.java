package org.fourthline.cling.model.message.discovery;

import org.fourthline.cling.model.Constants;
import org.fourthline.cling.model.ModelUtil;
import org.fourthline.cling.model.message.OutgoingDatagramMessage;
import org.fourthline.cling.model.message.UpnpRequest;
import org.fourthline.cling.model.message.UpnpRequest.Method;
import org.fourthline.cling.model.message.header.HostHeader;
import org.fourthline.cling.model.message.header.MANHeader;
import org.fourthline.cling.model.message.header.MXHeader;
import org.fourthline.cling.model.message.header.UpnpHeader;
import org.fourthline.cling.model.message.header.UpnpHeader.Type;
import org.fourthline.cling.model.types.NotificationSubtype;

public class OutgoingSearchRequest extends OutgoingDatagramMessage<UpnpRequest> {
    private UpnpHeader searchTarget;

    public OutgoingSearchRequest(UpnpHeader upnpHeader, int i) {
        super(new UpnpRequest(Method.MSEARCH), ModelUtil.getInetAddressByName(Constants.IPV4_UPNP_MULTICAST_GROUP), 1900);
        this.searchTarget = upnpHeader;
        getHeaders().add(Type.MAN, (UpnpHeader) new MANHeader(NotificationSubtype.DISCOVER.getHeaderString()));
        getHeaders().add(Type.MX, (UpnpHeader) new MXHeader(Integer.valueOf(i)));
        getHeaders().add(Type.ST, upnpHeader);
        getHeaders().add(Type.HOST, (UpnpHeader) new HostHeader());
    }

    public UpnpHeader getSearchTarget() {
        return this.searchTarget;
    }
}
