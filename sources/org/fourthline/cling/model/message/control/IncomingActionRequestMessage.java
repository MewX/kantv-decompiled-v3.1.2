package org.fourthline.cling.model.message.control;

import org.fourthline.cling.model.action.ActionException;
import org.fourthline.cling.model.message.StreamRequestMessage;
import org.fourthline.cling.model.message.header.SoapActionHeader;
import org.fourthline.cling.model.message.header.UpnpHeader.Type;
import org.fourthline.cling.model.meta.Action;
import org.fourthline.cling.model.meta.LocalService;
import org.fourthline.cling.model.meta.QueryStateVariableAction;
import org.fourthline.cling.model.types.ErrorCode;
import org.fourthline.cling.model.types.SoapActionType;

public class IncomingActionRequestMessage extends StreamRequestMessage implements ActionRequestMessage {
    private final Action action;
    private final String actionNamespace;

    public IncomingActionRequestMessage(StreamRequestMessage streamRequestMessage, LocalService localService) throws ActionException {
        super(streamRequestMessage);
        SoapActionHeader soapActionHeader = (SoapActionHeader) getHeaders().getFirstHeader(Type.SOAPACTION, SoapActionHeader.class);
        if (soapActionHeader != null) {
            SoapActionType soapActionType = (SoapActionType) soapActionHeader.getValue();
            this.action = localService.getAction(soapActionType.getActionName());
            if (this.action != null) {
                if (QueryStateVariableAction.ACTION_NAME.equals(soapActionType.getActionName()) || localService.getServiceType().implementsVersion(soapActionType.getServiceType())) {
                    this.actionNamespace = soapActionType.getTypeString();
                    return;
                }
                throw new ActionException(ErrorCode.INVALID_ACTION, "Service doesn't support the requested service version");
            }
            ErrorCode errorCode = ErrorCode.INVALID_ACTION;
            StringBuilder sb = new StringBuilder();
            sb.append("Service doesn't implement action: ");
            sb.append(soapActionType.getActionName());
            throw new ActionException(errorCode, sb.toString());
        }
        throw new ActionException(ErrorCode.INVALID_ACTION, "Missing SOAP action header");
    }

    public Action getAction() {
        return this.action;
    }

    public String getActionNamespace() {
        return this.actionNamespace;
    }
}
