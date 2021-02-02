package org.fourthline.cling.model.message.gena;

import java.net.URL;
import java.util.List;
import org.fourthline.cling.model.gena.RemoteGENASubscription;
import org.fourthline.cling.model.message.StreamRequestMessage;
import org.fourthline.cling.model.message.UpnpHeaders;
import org.fourthline.cling.model.message.UpnpRequest.Method;
import org.fourthline.cling.model.message.header.CallbackHeader;
import org.fourthline.cling.model.message.header.NTEventHeader;
import org.fourthline.cling.model.message.header.TimeoutHeader;
import org.fourthline.cling.model.message.header.UpnpHeader;
import org.fourthline.cling.model.message.header.UpnpHeader.Type;

public class OutgoingSubscribeRequestMessage extends StreamRequestMessage {
    public OutgoingSubscribeRequestMessage(RemoteGENASubscription remoteGENASubscription, List<URL> list, UpnpHeaders upnpHeaders) {
        super(Method.SUBSCRIBE, remoteGENASubscription.getEventSubscriptionURL());
        getHeaders().add(Type.CALLBACK, (UpnpHeader) new CallbackHeader(list));
        getHeaders().add(Type.NT, (UpnpHeader) new NTEventHeader());
        getHeaders().add(Type.TIMEOUT, (UpnpHeader) new TimeoutHeader(remoteGENASubscription.getRequestedDurationSeconds()));
        if (upnpHeaders != null) {
            getHeaders().putAll(upnpHeaders);
        }
    }

    public boolean hasCallbackURLs() {
        return ((List) ((CallbackHeader) getHeaders().getFirstHeader(Type.CALLBACK, CallbackHeader.class)).getValue()).size() > 0;
    }
}
