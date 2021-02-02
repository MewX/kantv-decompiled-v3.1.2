package org.fourthline.cling.protocol.sync;

import java.util.logging.Logger;
import org.fourthline.cling.UpnpService;
import org.fourthline.cling.model.gena.LocalGENASubscription;
import org.fourthline.cling.model.message.StreamRequestMessage;
import org.fourthline.cling.model.message.StreamResponseMessage;
import org.fourthline.cling.model.message.UpnpResponse.Status;
import org.fourthline.cling.model.message.gena.IncomingUnsubscribeRequestMessage;
import org.fourthline.cling.model.meta.LocalService;
import org.fourthline.cling.model.resource.ServiceEventSubscriptionResource;
import org.fourthline.cling.protocol.ReceivingSync;
import org.fourthline.cling.transport.RouterException;

public class ReceivingUnsubscribe extends ReceivingSync<StreamRequestMessage, StreamResponseMessage> {
    private static final Logger log = Logger.getLogger(ReceivingUnsubscribe.class.getName());

    public ReceivingUnsubscribe(UpnpService upnpService, StreamRequestMessage streamRequestMessage) {
        super(upnpService, streamRequestMessage);
    }

    /* access modifiers changed from: protected */
    public StreamResponseMessage executeSync() throws RouterException {
        ServiceEventSubscriptionResource serviceEventSubscriptionResource = (ServiceEventSubscriptionResource) getUpnpService().getRegistry().getResource(ServiceEventSubscriptionResource.class, ((StreamRequestMessage) getInputMessage()).getUri());
        if (serviceEventSubscriptionResource == null) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("No local resource found: ");
            sb.append(getInputMessage());
            logger.fine(sb.toString());
            return null;
        }
        Logger logger2 = log;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Found local event subscription matching relative request URI: ");
        sb2.append(((StreamRequestMessage) getInputMessage()).getUri());
        logger2.fine(sb2.toString());
        IncomingUnsubscribeRequestMessage incomingUnsubscribeRequestMessage = new IncomingUnsubscribeRequestMessage((StreamRequestMessage) getInputMessage(), (LocalService) serviceEventSubscriptionResource.getModel());
        if (incomingUnsubscribeRequestMessage.getSubscriptionId() == null || (!incomingUnsubscribeRequestMessage.hasNotificationHeader() && !incomingUnsubscribeRequestMessage.hasCallbackHeader())) {
            LocalGENASubscription localSubscription = getUpnpService().getRegistry().getLocalSubscription(incomingUnsubscribeRequestMessage.getSubscriptionId());
            if (localSubscription == null) {
                Logger logger3 = log;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Invalid subscription ID for unsubscribe request: ");
                sb3.append(getInputMessage());
                logger3.fine(sb3.toString());
                return new StreamResponseMessage(Status.PRECONDITION_FAILED);
            }
            Logger logger4 = log;
            StringBuilder sb4 = new StringBuilder();
            sb4.append("Unregistering subscription: ");
            sb4.append(localSubscription);
            logger4.fine(sb4.toString());
            if (getUpnpService().getRegistry().removeLocalSubscription(localSubscription)) {
                localSubscription.end(null);
            } else {
                log.fine("Subscription was already removed from registry");
            }
            return new StreamResponseMessage(Status.OK);
        }
        Logger logger5 = log;
        StringBuilder sb5 = new StringBuilder();
        sb5.append("Subscription ID and NT or Callback in unsubcribe request: ");
        sb5.append(getInputMessage());
        logger5.fine(sb5.toString());
        return new StreamResponseMessage(Status.BAD_REQUEST);
    }
}
