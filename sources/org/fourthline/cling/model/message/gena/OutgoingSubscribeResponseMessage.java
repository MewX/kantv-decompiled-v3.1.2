package org.fourthline.cling.model.message.gena;

import org.fourthline.cling.model.gena.LocalGENASubscription;
import org.fourthline.cling.model.message.StreamResponseMessage;
import org.fourthline.cling.model.message.UpnpResponse;
import org.fourthline.cling.model.message.UpnpResponse.Status;
import org.fourthline.cling.model.message.header.ServerHeader;
import org.fourthline.cling.model.message.header.SubscriptionIdHeader;
import org.fourthline.cling.model.message.header.TimeoutHeader;
import org.fourthline.cling.model.message.header.UpnpHeader;
import org.fourthline.cling.model.message.header.UpnpHeader.Type;

public class OutgoingSubscribeResponseMessage extends StreamResponseMessage {
    public OutgoingSubscribeResponseMessage(Status status) {
        super(status);
    }

    public OutgoingSubscribeResponseMessage(LocalGENASubscription localGENASubscription) {
        super(new UpnpResponse(Status.OK));
        getHeaders().add(Type.SERVER, (UpnpHeader) new ServerHeader());
        getHeaders().add(Type.SID, (UpnpHeader) new SubscriptionIdHeader(localGENASubscription.getSubscriptionId()));
        getHeaders().add(Type.TIMEOUT, (UpnpHeader) new TimeoutHeader(localGENASubscription.getActualDurationSeconds()));
    }
}
