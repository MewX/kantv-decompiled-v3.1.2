package org.fourthline.cling.model.message.gena;

import org.fourthline.cling.model.gena.RemoteGENASubscription;
import org.fourthline.cling.model.message.StreamRequestMessage;
import org.fourthline.cling.model.message.UpnpHeaders;
import org.fourthline.cling.model.message.UpnpRequest.Method;
import org.fourthline.cling.model.message.header.SubscriptionIdHeader;
import org.fourthline.cling.model.message.header.TimeoutHeader;
import org.fourthline.cling.model.message.header.UpnpHeader;
import org.fourthline.cling.model.message.header.UpnpHeader.Type;

public class OutgoingRenewalRequestMessage extends StreamRequestMessage {
    public OutgoingRenewalRequestMessage(RemoteGENASubscription remoteGENASubscription, UpnpHeaders upnpHeaders) {
        super(Method.SUBSCRIBE, remoteGENASubscription.getEventSubscriptionURL());
        getHeaders().add(Type.SID, (UpnpHeader) new SubscriptionIdHeader(remoteGENASubscription.getSubscriptionId()));
        getHeaders().add(Type.TIMEOUT, (UpnpHeader) new TimeoutHeader(remoteGENASubscription.getRequestedDurationSeconds()));
        if (upnpHeaders != null) {
            getHeaders().putAll(upnpHeaders);
        }
    }
}
