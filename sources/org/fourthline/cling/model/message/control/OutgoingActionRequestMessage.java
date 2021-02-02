package org.fourthline.cling.model.message.control;

import java.net.URL;
import java.util.logging.Logger;
import org.fourthline.cling.model.action.ActionInvocation;
import org.fourthline.cling.model.action.RemoteActionInvocation;
import org.fourthline.cling.model.message.StreamRequestMessage;
import org.fourthline.cling.model.message.UpnpRequest;
import org.fourthline.cling.model.message.UpnpRequest.Method;
import org.fourthline.cling.model.message.header.ContentTypeHeader;
import org.fourthline.cling.model.message.header.SoapActionHeader;
import org.fourthline.cling.model.message.header.UpnpHeader;
import org.fourthline.cling.model.message.header.UpnpHeader.Type;
import org.fourthline.cling.model.message.header.UserAgentHeader;
import org.fourthline.cling.model.meta.Action;
import org.fourthline.cling.model.meta.QueryStateVariableAction;
import org.fourthline.cling.model.types.SoapActionType;

public class OutgoingActionRequestMessage extends StreamRequestMessage implements ActionRequestMessage {
    private static Logger log = Logger.getLogger(OutgoingActionRequestMessage.class.getName());
    private final String actionNamespace;

    public OutgoingActionRequestMessage(ActionInvocation actionInvocation, URL url) {
        this(actionInvocation.getAction(), new UpnpRequest(Method.POST, url));
        if (actionInvocation instanceof RemoteActionInvocation) {
            RemoteActionInvocation remoteActionInvocation = (RemoteActionInvocation) actionInvocation;
            if (remoteActionInvocation.getRemoteClientInfo() != null && remoteActionInvocation.getRemoteClientInfo().getRequestUserAgent() != null) {
                getHeaders().add(Type.USER_AGENT, (UpnpHeader) new UserAgentHeader(remoteActionInvocation.getRemoteClientInfo().getRequestUserAgent()));
            }
        } else if (actionInvocation.getClientInfo() != null) {
            getHeaders().putAll(actionInvocation.getClientInfo().getRequestHeaders());
        }
    }

    public OutgoingActionRequestMessage(Action action, UpnpRequest upnpRequest) {
        SoapActionHeader soapActionHeader;
        super(upnpRequest);
        getHeaders().add(Type.CONTENT_TYPE, (UpnpHeader) new ContentTypeHeader(ContentTypeHeader.DEFAULT_CONTENT_TYPE_UTF8));
        if (action instanceof QueryStateVariableAction) {
            log.fine("Adding magic control SOAP action header for state variable query action");
            soapActionHeader = new SoapActionHeader(new SoapActionType("schemas-upnp-org", SoapActionType.MAGIC_CONTROL_TYPE, null, action.getName()));
        } else {
            soapActionHeader = new SoapActionHeader(new SoapActionType(action.getService().getServiceType(), action.getName()));
        }
        this.actionNamespace = ((SoapActionType) soapActionHeader.getValue()).getTypeString();
        if (((UpnpRequest) getOperation()).getMethod().equals(Method.POST)) {
            getHeaders().add(Type.SOAPACTION, (UpnpHeader) soapActionHeader);
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Added SOAP action header: ");
            sb.append(soapActionHeader);
            logger.fine(sb.toString());
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Can't send action with request method: ");
        sb2.append(((UpnpRequest) getOperation()).getMethod());
        throw new IllegalArgumentException(sb2.toString());
    }

    public String getActionNamespace() {
        return this.actionNamespace;
    }
}
