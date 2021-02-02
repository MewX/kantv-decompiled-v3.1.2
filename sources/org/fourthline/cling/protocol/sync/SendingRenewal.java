package org.fourthline.cling.protocol.sync;

import java.util.logging.Logger;
import org.fourthline.cling.UpnpService;
import org.fourthline.cling.model.gena.CancelReason;
import org.fourthline.cling.model.gena.RemoteGENASubscription;
import org.fourthline.cling.model.message.StreamResponseMessage;
import org.fourthline.cling.model.message.UpnpResponse;
import org.fourthline.cling.model.message.gena.IncomingSubscribeResponseMessage;
import org.fourthline.cling.model.message.gena.OutgoingRenewalRequestMessage;
import org.fourthline.cling.model.meta.RemoteService;
import org.fourthline.cling.protocol.SendingSync;
import org.fourthline.cling.transport.RouterException;

public class SendingRenewal extends SendingSync<OutgoingRenewalRequestMessage, IncomingSubscribeResponseMessage> {
    private static final Logger log = Logger.getLogger(SendingRenewal.class.getName());
    protected final RemoteGENASubscription subscription;

    public SendingRenewal(UpnpService upnpService, RemoteGENASubscription remoteGENASubscription) {
        super(upnpService, new OutgoingRenewalRequestMessage(remoteGENASubscription, upnpService.getConfiguration().getEventSubscriptionHeaders((RemoteService) remoteGENASubscription.getService())));
        this.subscription = remoteGENASubscription;
    }

    /* access modifiers changed from: protected */
    public IncomingSubscribeResponseMessage executeSync() throws RouterException {
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Sending subscription renewal request: ");
        sb.append(getInputMessage());
        logger.fine(sb.toString());
        try {
            StreamResponseMessage send = getUpnpService().getRouter().send(getInputMessage());
            if (send == null) {
                onRenewalFailure();
                return null;
            }
            final IncomingSubscribeResponseMessage incomingSubscribeResponseMessage = new IncomingSubscribeResponseMessage(send);
            if (((UpnpResponse) send.getOperation()).isFailed()) {
                Logger logger2 = log;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Subscription renewal failed, response was: ");
                sb2.append(send);
                logger2.fine(sb2.toString());
                getUpnpService().getRegistry().removeRemoteSubscription(this.subscription);
                getUpnpService().getConfiguration().getRegistryListenerExecutor().execute(new Runnable() {
                    public void run() {
                        SendingRenewal.this.subscription.end(CancelReason.RENEWAL_FAILED, (UpnpResponse) incomingSubscribeResponseMessage.getOperation());
                    }
                });
            } else if (!incomingSubscribeResponseMessage.isValidHeaders()) {
                log.severe("Subscription renewal failed, invalid or missing (SID, Timeout) response headers");
                getUpnpService().getConfiguration().getRegistryListenerExecutor().execute(new Runnable() {
                    public void run() {
                        SendingRenewal.this.subscription.end(CancelReason.RENEWAL_FAILED, (UpnpResponse) incomingSubscribeResponseMessage.getOperation());
                    }
                });
            } else {
                Logger logger3 = log;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Subscription renewed, updating in registry, response was: ");
                sb3.append(send);
                logger3.fine(sb3.toString());
                this.subscription.setActualSubscriptionDurationSeconds(incomingSubscribeResponseMessage.getSubscriptionDurationSeconds());
                getUpnpService().getRegistry().updateRemoteSubscription(this.subscription);
            }
            return incomingSubscribeResponseMessage;
        } catch (RouterException e) {
            onRenewalFailure();
            throw e;
        }
    }

    /* access modifiers changed from: protected */
    public void onRenewalFailure() {
        log.fine("Subscription renewal failed, removing subscription from registry");
        getUpnpService().getRegistry().removeRemoteSubscription(this.subscription);
        getUpnpService().getConfiguration().getRegistryListenerExecutor().execute(new Runnable() {
            public void run() {
                SendingRenewal.this.subscription.end(CancelReason.RENEWAL_FAILED, null);
            }
        });
    }
}
