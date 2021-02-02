package org.fourthline.cling.model.message.control;

import org.fourthline.cling.model.Constants;
import org.fourthline.cling.model.message.StreamResponseMessage;
import org.fourthline.cling.model.message.UpnpResponse;
import org.fourthline.cling.model.message.UpnpResponse.Status;
import org.fourthline.cling.model.message.header.ContentTypeHeader;
import org.fourthline.cling.model.message.header.EXTHeader;
import org.fourthline.cling.model.message.header.ServerHeader;
import org.fourthline.cling.model.message.header.UpnpHeader;
import org.fourthline.cling.model.message.header.UpnpHeader.Type;
import org.fourthline.cling.model.meta.Action;
import org.fourthline.cling.model.meta.QueryStateVariableAction;

public class OutgoingActionResponseMessage extends StreamResponseMessage implements ActionResponseMessage {
    private String actionNamespace;

    public OutgoingActionResponseMessage(Action action) {
        this(Status.OK, action);
    }

    public OutgoingActionResponseMessage(Status status) {
        this(status, null);
    }

    public OutgoingActionResponseMessage(Status status, Action action) {
        super(new UpnpResponse(status));
        if (action != null) {
            if (action instanceof QueryStateVariableAction) {
                this.actionNamespace = Constants.NS_UPNP_CONTROL_10;
            } else {
                this.actionNamespace = action.getService().getServiceType().toString();
            }
        }
        addHeaders();
    }

    /* access modifiers changed from: protected */
    public void addHeaders() {
        getHeaders().add(Type.CONTENT_TYPE, (UpnpHeader) new ContentTypeHeader(ContentTypeHeader.DEFAULT_CONTENT_TYPE_UTF8));
        getHeaders().add(Type.SERVER, (UpnpHeader) new ServerHeader());
        getHeaders().add(Type.EXT, (UpnpHeader) new EXTHeader());
    }

    public String getActionNamespace() {
        return this.actionNamespace;
    }
}
