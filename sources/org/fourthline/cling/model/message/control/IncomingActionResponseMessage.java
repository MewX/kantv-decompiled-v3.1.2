package org.fourthline.cling.model.message.control;

import org.fourthline.cling.model.message.StreamResponseMessage;
import org.fourthline.cling.model.message.UpnpResponse;
import org.fourthline.cling.model.message.UpnpResponse.Status;

public class IncomingActionResponseMessage extends StreamResponseMessage implements ActionResponseMessage {
    public String getActionNamespace() {
        return null;
    }

    public IncomingActionResponseMessage(StreamResponseMessage streamResponseMessage) {
        super(streamResponseMessage);
    }

    public IncomingActionResponseMessage(UpnpResponse upnpResponse) {
        super(upnpResponse);
    }

    public boolean isFailedNonRecoverable() {
        int statusCode = ((UpnpResponse) getOperation()).getStatusCode();
        return ((UpnpResponse) getOperation()).isFailed() && statusCode != Status.METHOD_NOT_SUPPORTED.getStatusCode() && (statusCode != Status.INTERNAL_SERVER_ERROR.getStatusCode() || !hasBody());
    }

    public boolean isFailedRecoverable() {
        return hasBody() && ((UpnpResponse) getOperation()).getStatusCode() == Status.INTERNAL_SERVER_ERROR.getStatusCode();
    }
}
