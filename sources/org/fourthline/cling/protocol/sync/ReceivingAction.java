package org.fourthline.cling.protocol.sync;

import java.util.logging.Level;
import java.util.logging.Logger;
import org.fourthline.cling.UpnpService;
import org.fourthline.cling.model.UnsupportedDataException;
import org.fourthline.cling.model.action.ActionCancelledException;
import org.fourthline.cling.model.action.ActionException;
import org.fourthline.cling.model.action.ActionInvocation;
import org.fourthline.cling.model.action.RemoteActionInvocation;
import org.fourthline.cling.model.message.StreamRequestMessage;
import org.fourthline.cling.model.message.StreamResponseMessage;
import org.fourthline.cling.model.message.UpnpResponse;
import org.fourthline.cling.model.message.UpnpResponse.Status;
import org.fourthline.cling.model.message.control.ActionRequestMessage;
import org.fourthline.cling.model.message.control.ActionResponseMessage;
import org.fourthline.cling.model.message.control.IncomingActionRequestMessage;
import org.fourthline.cling.model.message.control.OutgoingActionResponseMessage;
import org.fourthline.cling.model.message.header.ContentTypeHeader;
import org.fourthline.cling.model.message.header.UpnpHeader.Type;
import org.fourthline.cling.model.meta.LocalService;
import org.fourthline.cling.model.resource.ServiceControlResource;
import org.fourthline.cling.model.types.ErrorCode;
import org.fourthline.cling.protocol.ReceivingSync;
import org.fourthline.cling.transport.RouterException;
import org.seamless.util.Exceptions;

public class ReceivingAction extends ReceivingSync<StreamRequestMessage, StreamResponseMessage> {
    private static final Logger log = Logger.getLogger(ReceivingAction.class.getName());

    public ReceivingAction(UpnpService upnpService, StreamRequestMessage streamRequestMessage) {
        super(upnpService, streamRequestMessage);
    }

    /* access modifiers changed from: protected */
    public StreamResponseMessage executeSync() throws RouterException {
        RemoteActionInvocation remoteActionInvocation;
        OutgoingActionResponseMessage outgoingActionResponseMessage;
        ActionException actionException;
        ContentTypeHeader contentTypeHeader = (ContentTypeHeader) ((StreamRequestMessage) getInputMessage()).getHeaders().getFirstHeader(Type.CONTENT_TYPE, ContentTypeHeader.class);
        if (contentTypeHeader == null || contentTypeHeader.isUDACompliantXML()) {
            if (contentTypeHeader == null) {
                Logger logger = log;
                StringBuilder sb = new StringBuilder();
                sb.append("Received without Content-Type: ");
                sb.append(getInputMessage());
                logger.warning(sb.toString());
            }
            ServiceControlResource serviceControlResource = (ServiceControlResource) getUpnpService().getRegistry().getResource(ServiceControlResource.class, ((StreamRequestMessage) getInputMessage()).getUri());
            if (serviceControlResource == null) {
                Logger logger2 = log;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("No local resource found: ");
                sb2.append(getInputMessage());
                logger2.fine(sb2.toString());
                return null;
            }
            Logger logger3 = log;
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Found local action resource matching relative request URI: ");
            sb3.append(((StreamRequestMessage) getInputMessage()).getUri());
            logger3.fine(sb3.toString());
            try {
                IncomingActionRequestMessage incomingActionRequestMessage = new IncomingActionRequestMessage((StreamRequestMessage) getInputMessage(), (LocalService) serviceControlResource.getModel());
                Logger logger4 = log;
                StringBuilder sb4 = new StringBuilder();
                sb4.append("Created incoming action request message: ");
                sb4.append(incomingActionRequestMessage);
                logger4.finer(sb4.toString());
                remoteActionInvocation = new RemoteActionInvocation(incomingActionRequestMessage.getAction(), getRemoteClientInfo());
                log.fine("Reading body of request message");
                getUpnpService().getConfiguration().getSoapActionProcessor().readBody((ActionRequestMessage) incomingActionRequestMessage, (ActionInvocation) remoteActionInvocation);
                Logger logger5 = log;
                StringBuilder sb5 = new StringBuilder();
                sb5.append("Executing on local service: ");
                sb5.append(remoteActionInvocation);
                logger5.fine(sb5.toString());
                ((LocalService) serviceControlResource.getModel()).getExecutor(remoteActionInvocation.getAction()).execute(remoteActionInvocation);
                if (remoteActionInvocation.getFailure() == null) {
                    outgoingActionResponseMessage = new OutgoingActionResponseMessage(remoteActionInvocation.getAction());
                } else if (remoteActionInvocation.getFailure() instanceof ActionCancelledException) {
                    log.fine("Action execution was cancelled, returning 404 to client");
                    return null;
                } else {
                    outgoingActionResponseMessage = new OutgoingActionResponseMessage(Status.INTERNAL_SERVER_ERROR, remoteActionInvocation.getAction());
                }
            } catch (ActionException e) {
                Logger logger6 = log;
                StringBuilder sb6 = new StringBuilder();
                sb6.append("Error executing local action: ");
                sb6.append(e);
                logger6.finer(sb6.toString());
                remoteActionInvocation = new RemoteActionInvocation(e, getRemoteClientInfo());
                outgoingActionResponseMessage = new OutgoingActionResponseMessage(Status.INTERNAL_SERVER_ERROR);
            } catch (UnsupportedDataException e2) {
                Logger logger7 = log;
                Level level = Level.WARNING;
                StringBuilder sb7 = new StringBuilder();
                sb7.append("Error reading action request XML body: ");
                sb7.append(e2.toString());
                logger7.log(level, sb7.toString(), Exceptions.unwrap(e2));
                if (Exceptions.unwrap(e2) instanceof ActionException) {
                    actionException = (ActionException) Exceptions.unwrap(e2);
                } else {
                    actionException = new ActionException(ErrorCode.ACTION_FAILED, e2.getMessage());
                }
                remoteActionInvocation = new RemoteActionInvocation(actionException, getRemoteClientInfo());
                outgoingActionResponseMessage = new OutgoingActionResponseMessage(Status.INTERNAL_SERVER_ERROR);
            }
            try {
                log.fine("Writing body of response message");
                getUpnpService().getConfiguration().getSoapActionProcessor().writeBody((ActionResponseMessage) outgoingActionResponseMessage, (ActionInvocation) remoteActionInvocation);
                Logger logger8 = log;
                StringBuilder sb8 = new StringBuilder();
                sb8.append("Returning finished response message: ");
                sb8.append(outgoingActionResponseMessage);
                logger8.fine(sb8.toString());
                return outgoingActionResponseMessage;
            } catch (UnsupportedDataException e3) {
                log.warning("Failure writing body of response message, sending '500 Internal Server Error' without body");
                log.log(Level.WARNING, "Exception root cause: ", Exceptions.unwrap(e3));
                return new StreamResponseMessage(Status.INTERNAL_SERVER_ERROR);
            }
        } else {
            Logger logger9 = log;
            StringBuilder sb9 = new StringBuilder();
            sb9.append("Received invalid Content-Type '");
            sb9.append(contentTypeHeader);
            sb9.append("': ");
            sb9.append(getInputMessage());
            logger9.warning(sb9.toString());
            return new StreamResponseMessage(new UpnpResponse(Status.UNSUPPORTED_MEDIA_TYPE));
        }
    }
}
