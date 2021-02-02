package org.fourthline.cling.protocol.sync;

import java.util.logging.Logger;
import org.fourthline.cling.UpnpService;
import org.fourthline.cling.model.UnsupportedDataException;
import org.fourthline.cling.model.gena.RemoteGENASubscription;
import org.fourthline.cling.model.message.StreamRequestMessage;
import org.fourthline.cling.model.message.UpnpResponse;
import org.fourthline.cling.model.message.UpnpResponse.Status;
import org.fourthline.cling.model.message.gena.IncomingEventRequestMessage;
import org.fourthline.cling.model.message.gena.OutgoingEventResponseMessage;
import org.fourthline.cling.model.meta.RemoteService;
import org.fourthline.cling.model.resource.ServiceEventCallbackResource;
import org.fourthline.cling.protocol.ReceivingSync;
import org.fourthline.cling.transport.RouterException;

public class ReceivingEvent extends ReceivingSync<StreamRequestMessage, OutgoingEventResponseMessage> {
    /* access modifiers changed from: private */
    public static final Logger log = Logger.getLogger(ReceivingEvent.class.getName());

    public ReceivingEvent(UpnpService upnpService, StreamRequestMessage streamRequestMessage) {
        super(upnpService, streamRequestMessage);
    }

    /* access modifiers changed from: protected */
    public OutgoingEventResponseMessage executeSync() throws RouterException {
        if (!((StreamRequestMessage) getInputMessage()).isContentTypeTextUDA()) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Received without or with invalid Content-Type: ");
            sb.append(getInputMessage());
            logger.warning(sb.toString());
        }
        ServiceEventCallbackResource serviceEventCallbackResource = (ServiceEventCallbackResource) getUpnpService().getRegistry().getResource(ServiceEventCallbackResource.class, ((StreamRequestMessage) getInputMessage()).getUri());
        if (serviceEventCallbackResource == null) {
            Logger logger2 = log;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("No local resource found: ");
            sb2.append(getInputMessage());
            logger2.fine(sb2.toString());
            return new OutgoingEventResponseMessage(new UpnpResponse(Status.NOT_FOUND));
        }
        final IncomingEventRequestMessage incomingEventRequestMessage = new IncomingEventRequestMessage((StreamRequestMessage) getInputMessage(), (RemoteService) serviceEventCallbackResource.getModel());
        if (incomingEventRequestMessage.getSubscrptionId() == null) {
            Logger logger3 = log;
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Subscription ID missing in event request: ");
            sb3.append(getInputMessage());
            logger3.fine(sb3.toString());
            return new OutgoingEventResponseMessage(new UpnpResponse(Status.PRECONDITION_FAILED));
        } else if (!incomingEventRequestMessage.hasValidNotificationHeaders()) {
            Logger logger4 = log;
            StringBuilder sb4 = new StringBuilder();
            sb4.append("Missing NT and/or NTS headers in event request: ");
            sb4.append(getInputMessage());
            logger4.fine(sb4.toString());
            return new OutgoingEventResponseMessage(new UpnpResponse(Status.BAD_REQUEST));
        } else if (!incomingEventRequestMessage.hasValidNotificationHeaders()) {
            Logger logger5 = log;
            StringBuilder sb5 = new StringBuilder();
            sb5.append("Invalid NT and/or NTS headers in event request: ");
            sb5.append(getInputMessage());
            logger5.fine(sb5.toString());
            return new OutgoingEventResponseMessage(new UpnpResponse(Status.PRECONDITION_FAILED));
        } else if (incomingEventRequestMessage.getSequence() == null) {
            Logger logger6 = log;
            StringBuilder sb6 = new StringBuilder();
            sb6.append("Sequence missing in event request: ");
            sb6.append(getInputMessage());
            logger6.fine(sb6.toString());
            return new OutgoingEventResponseMessage(new UpnpResponse(Status.PRECONDITION_FAILED));
        } else {
            try {
                getUpnpService().getConfiguration().getGenaEventProcessor().readBody(incomingEventRequestMessage);
                final RemoteGENASubscription waitRemoteSubscription = getUpnpService().getRegistry().getWaitRemoteSubscription(incomingEventRequestMessage.getSubscrptionId());
                if (waitRemoteSubscription == null) {
                    Logger logger7 = log;
                    StringBuilder sb7 = new StringBuilder();
                    sb7.append("Invalid subscription ID, no active subscription: ");
                    sb7.append(incomingEventRequestMessage);
                    logger7.severe(sb7.toString());
                    return new OutgoingEventResponseMessage(new UpnpResponse(Status.PRECONDITION_FAILED));
                }
                getUpnpService().getConfiguration().getRegistryListenerExecutor().execute(new Runnable() {
                    public void run() {
                        ReceivingEvent.log.fine("Calling active subscription with event state variable values");
                        waitRemoteSubscription.receive(incomingEventRequestMessage.getSequence(), incomingEventRequestMessage.getStateVariableValues());
                    }
                });
                return new OutgoingEventResponseMessage();
            } catch (UnsupportedDataException e) {
                Logger logger8 = log;
                StringBuilder sb8 = new StringBuilder();
                sb8.append("Can't read event message request body, ");
                sb8.append(e);
                logger8.fine(sb8.toString());
                final RemoteGENASubscription remoteSubscription = getUpnpService().getRegistry().getRemoteSubscription(incomingEventRequestMessage.getSubscrptionId());
                if (remoteSubscription != null) {
                    getUpnpService().getConfiguration().getRegistryListenerExecutor().execute(new Runnable() {
                        public void run() {
                            remoteSubscription.invalidMessage(e);
                        }
                    });
                }
                return new OutgoingEventResponseMessage(new UpnpResponse(Status.INTERNAL_SERVER_ERROR));
            }
        }
    }
}
