package org.fourthline.cling.model.message.gena;

import org.fourthline.cling.model.message.StreamRequestMessage;
import org.fourthline.cling.model.message.header.CallbackHeader;
import org.fourthline.cling.model.message.header.NTEventHeader;
import org.fourthline.cling.model.message.header.SubscriptionIdHeader;
import org.fourthline.cling.model.message.header.UpnpHeader.Type;
import org.fourthline.cling.model.meta.LocalService;

public class IncomingUnsubscribeRequestMessage extends StreamRequestMessage {
    private final LocalService service;

    public IncomingUnsubscribeRequestMessage(StreamRequestMessage streamRequestMessage, LocalService localService) {
        super(streamRequestMessage);
        this.service = localService;
    }

    public LocalService getService() {
        return this.service;
    }

    public boolean hasCallbackHeader() {
        return getHeaders().getFirstHeader(Type.CALLBACK, CallbackHeader.class) != null;
    }

    public boolean hasNotificationHeader() {
        return getHeaders().getFirstHeader(Type.NT, NTEventHeader.class) != null;
    }

    public String getSubscriptionId() {
        SubscriptionIdHeader subscriptionIdHeader = (SubscriptionIdHeader) getHeaders().getFirstHeader(Type.SID, SubscriptionIdHeader.class);
        if (subscriptionIdHeader != null) {
            return (String) subscriptionIdHeader.getValue();
        }
        return null;
    }
}
