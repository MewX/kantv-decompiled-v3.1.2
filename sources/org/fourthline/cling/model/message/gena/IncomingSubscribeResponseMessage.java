package org.fourthline.cling.model.message.gena;

import org.fourthline.cling.model.message.StreamResponseMessage;
import org.fourthline.cling.model.message.header.SubscriptionIdHeader;
import org.fourthline.cling.model.message.header.TimeoutHeader;
import org.fourthline.cling.model.message.header.UpnpHeader.Type;

public class IncomingSubscribeResponseMessage extends StreamResponseMessage {
    public IncomingSubscribeResponseMessage(StreamResponseMessage streamResponseMessage) {
        super(streamResponseMessage);
    }

    public boolean isValidHeaders() {
        return (getHeaders().getFirstHeader(Type.SID, SubscriptionIdHeader.class) == null || getHeaders().getFirstHeader(Type.TIMEOUT, TimeoutHeader.class) == null) ? false : true;
    }

    public String getSubscriptionId() {
        return (String) ((SubscriptionIdHeader) getHeaders().getFirstHeader(Type.SID, SubscriptionIdHeader.class)).getValue();
    }

    public int getSubscriptionDurationSeconds() {
        return ((Integer) ((TimeoutHeader) getHeaders().getFirstHeader(Type.TIMEOUT, TimeoutHeader.class)).getValue()).intValue();
    }
}
