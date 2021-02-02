package org.fourthline.cling.model.message.gena;

import org.fourthline.cling.model.message.StreamResponseMessage;
import org.fourthline.cling.model.message.UpnpResponse;
import org.fourthline.cling.model.message.UpnpResponse.Status;
import org.fourthline.cling.model.message.header.ContentTypeHeader;
import org.fourthline.cling.model.message.header.UpnpHeader;
import org.fourthline.cling.model.message.header.UpnpHeader.Type;

public class OutgoingEventResponseMessage extends StreamResponseMessage {
    public OutgoingEventResponseMessage() {
        super(new UpnpResponse(Status.OK));
        getHeaders().add(Type.CONTENT_TYPE, (UpnpHeader) new ContentTypeHeader());
    }

    public OutgoingEventResponseMessage(UpnpResponse upnpResponse) {
        super(upnpResponse);
        getHeaders().add(Type.CONTENT_TYPE, (UpnpHeader) new ContentTypeHeader());
    }
}
