package org.fourthline.cling.protocol.sync;

import java.util.List;
import java.util.logging.Logger;
import org.fourthline.cling.UpnpService;
import org.fourthline.cling.model.gena.CancelReason;
import org.fourthline.cling.model.gena.LocalGENASubscription;
import org.fourthline.cling.model.message.StreamRequestMessage;
import org.fourthline.cling.model.message.StreamResponseMessage;
import org.fourthline.cling.model.message.UpnpResponse;
import org.fourthline.cling.model.message.UpnpResponse.Status;
import org.fourthline.cling.model.message.gena.IncomingSubscribeRequestMessage;
import org.fourthline.cling.model.message.gena.OutgoingSubscribeResponseMessage;
import org.fourthline.cling.model.meta.LocalService;
import org.fourthline.cling.model.resource.ServiceEventSubscriptionResource;
import org.fourthline.cling.protocol.ReceivingSync;
import org.fourthline.cling.transport.RouterException;
import org.seamless.util.Exceptions;

public class ReceivingSubscribe extends ReceivingSync<StreamRequestMessage, OutgoingSubscribeResponseMessage> {
    private static final Logger log = Logger.getLogger(ReceivingSubscribe.class.getName());
    protected LocalGENASubscription subscription;

    public ReceivingSubscribe(UpnpService upnpService, StreamRequestMessage streamRequestMessage) {
        super(upnpService, streamRequestMessage);
    }

    /* access modifiers changed from: protected */
    public OutgoingSubscribeResponseMessage executeSync() throws RouterException {
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
        IncomingSubscribeRequestMessage incomingSubscribeRequestMessage = new IncomingSubscribeRequestMessage((StreamRequestMessage) getInputMessage(), (LocalService) serviceEventSubscriptionResource.getModel());
        if (incomingSubscribeRequestMessage.getSubscriptionId() != null && (incomingSubscribeRequestMessage.hasNotificationHeader() || incomingSubscribeRequestMessage.getCallbackURLs() != null)) {
            Logger logger3 = log;
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Subscription ID and NT or Callback in subscribe request: ");
            sb3.append(getInputMessage());
            logger3.fine(sb3.toString());
            return new OutgoingSubscribeResponseMessage(Status.BAD_REQUEST);
        } else if (incomingSubscribeRequestMessage.getSubscriptionId() != null) {
            return processRenewal((LocalService) serviceEventSubscriptionResource.getModel(), incomingSubscribeRequestMessage);
        } else {
            if (incomingSubscribeRequestMessage.hasNotificationHeader() && incomingSubscribeRequestMessage.getCallbackURLs() != null) {
                return processNewSubscription((LocalService) serviceEventSubscriptionResource.getModel(), incomingSubscribeRequestMessage);
            }
            Logger logger4 = log;
            StringBuilder sb4 = new StringBuilder();
            sb4.append("No subscription ID, no NT or Callback, neither subscription or renewal: ");
            sb4.append(getInputMessage());
            logger4.fine(sb4.toString());
            return new OutgoingSubscribeResponseMessage(Status.PRECONDITION_FAILED);
        }
    }

    /* access modifiers changed from: protected */
    public OutgoingSubscribeResponseMessage processRenewal(LocalService localService, IncomingSubscribeRequestMessage incomingSubscribeRequestMessage) {
        this.subscription = getUpnpService().getRegistry().getLocalSubscription(incomingSubscribeRequestMessage.getSubscriptionId());
        if (this.subscription == null) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Invalid subscription ID for renewal request: ");
            sb.append(getInputMessage());
            logger.fine(sb.toString());
            return new OutgoingSubscribeResponseMessage(Status.PRECONDITION_FAILED);
        }
        Logger logger2 = log;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Renewing subscription: ");
        sb2.append(this.subscription);
        logger2.fine(sb2.toString());
        this.subscription.setSubscriptionDuration(incomingSubscribeRequestMessage.getRequestedTimeoutSeconds());
        if (getUpnpService().getRegistry().updateLocalSubscription(this.subscription)) {
            return new OutgoingSubscribeResponseMessage(this.subscription);
        }
        Logger logger3 = log;
        StringBuilder sb3 = new StringBuilder();
        sb3.append("Subscription went away before it could be renewed: ");
        sb3.append(getInputMessage());
        logger3.fine(sb3.toString());
        return new OutgoingSubscribeResponseMessage(Status.PRECONDITION_FAILED);
    }

    /* access modifiers changed from: protected */
    public OutgoingSubscribeResponseMessage processNewSubscription(LocalService localService, IncomingSubscribeRequestMessage incomingSubscribeRequestMessage) {
        Integer num;
        List callbackURLs = incomingSubscribeRequestMessage.getCallbackURLs();
        if (callbackURLs == null || callbackURLs.size() == 0) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Missing or invalid Callback URLs in subscribe request: ");
            sb.append(getInputMessage());
            logger.fine(sb.toString());
            return new OutgoingSubscribeResponseMessage(Status.PRECONDITION_FAILED);
        } else if (!incomingSubscribeRequestMessage.hasNotificationHeader()) {
            Logger logger2 = log;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Missing or invalid NT header in subscribe request: ");
            sb2.append(getInputMessage());
            logger2.fine(sb2.toString());
            return new OutgoingSubscribeResponseMessage(Status.PRECONDITION_FAILED);
        } else {
            if (getUpnpService().getConfiguration().isReceivedSubscriptionTimeoutIgnored()) {
                num = null;
            } else {
                num = incomingSubscribeRequestMessage.getRequestedTimeoutSeconds();
            }
            try {
                this.subscription = new LocalGENASubscription(localService, num, callbackURLs) {
                    public void ended(CancelReason cancelReason) {
                    }

                    public void established() {
                    }

                    public void eventReceived() {
                        ReceivingSubscribe.this.getUpnpService().getConfiguration().getSyncProtocolExecutorService().execute(ReceivingSubscribe.this.getUpnpService().getProtocolFactory().createSendingEvent(this));
                    }
                };
                Logger logger3 = log;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Adding subscription to registry: ");
                sb3.append(this.subscription);
                logger3.fine(sb3.toString());
                getUpnpService().getRegistry().addLocalSubscription(this.subscription);
                log.fine("Returning subscription response, waiting to send initial event");
                return new OutgoingSubscribeResponseMessage(this.subscription);
            } catch (Exception e) {
                Logger logger4 = log;
                StringBuilder sb4 = new StringBuilder();
                sb4.append("Couldn't create local subscription to service: ");
                sb4.append(Exceptions.unwrap(e));
                logger4.warning(sb4.toString());
                return new OutgoingSubscribeResponseMessage(Status.INTERNAL_SERVER_ERROR);
            }
        }
    }

    public void responseSent(StreamResponseMessage streamResponseMessage) {
        if (this.subscription != null) {
            if (streamResponseMessage != null && !((UpnpResponse) streamResponseMessage.getOperation()).isFailed() && this.subscription.getCurrentSequence().getValue().longValue() == 0) {
                log.fine("Establishing subscription");
                this.subscription.registerOnService();
                this.subscription.establish();
                log.fine("Response to subscription sent successfully, now sending initial event asynchronously");
                getUpnpService().getConfiguration().getAsyncProtocolExecutor().execute(getUpnpService().getProtocolFactory().createSendingEvent(this.subscription));
            } else if (this.subscription.getCurrentSequence().getValue().longValue() == 0) {
                log.fine("Subscription request's response aborted, not sending initial event");
                if (streamResponseMessage == null) {
                    log.fine("Reason: No response at all from subscriber");
                } else {
                    Logger logger = log;
                    StringBuilder sb = new StringBuilder();
                    sb.append("Reason: ");
                    sb.append(streamResponseMessage.getOperation());
                    logger.fine(sb.toString());
                }
                Logger logger2 = log;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Removing subscription from registry: ");
                sb2.append(this.subscription);
                logger2.fine(sb2.toString());
                getUpnpService().getRegistry().removeLocalSubscription(this.subscription);
            }
        }
    }

    public void responseException(Throwable th) {
        if (this.subscription != null) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Response could not be send to subscriber, removing local GENA subscription: ");
            sb.append(this.subscription);
            logger.fine(sb.toString());
            getUpnpService().getRegistry().removeLocalSubscription(this.subscription);
        }
    }
}
