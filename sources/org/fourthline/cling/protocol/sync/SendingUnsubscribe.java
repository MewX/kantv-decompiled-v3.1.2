package org.fourthline.cling.protocol.sync;

import java.util.logging.Logger;
import org.fourthline.cling.UpnpService;
import org.fourthline.cling.model.gena.CancelReason;
import org.fourthline.cling.model.gena.RemoteGENASubscription;
import org.fourthline.cling.model.message.StreamResponseMessage;
import org.fourthline.cling.model.message.UpnpResponse;
import org.fourthline.cling.model.message.gena.OutgoingUnsubscribeRequestMessage;
import org.fourthline.cling.model.meta.RemoteService;
import org.fourthline.cling.protocol.SendingSync;
import org.fourthline.cling.transport.RouterException;

public class SendingUnsubscribe extends SendingSync<OutgoingUnsubscribeRequestMessage, StreamResponseMessage> {
    /* access modifiers changed from: private */
    public static final Logger log = Logger.getLogger(SendingUnsubscribe.class.getName());
    protected final RemoteGENASubscription subscription;

    public SendingUnsubscribe(UpnpService upnpService, RemoteGENASubscription remoteGENASubscription) {
        super(upnpService, new OutgoingUnsubscribeRequestMessage(remoteGENASubscription, upnpService.getConfiguration().getEventSubscriptionHeaders((RemoteService) remoteGENASubscription.getService())));
        this.subscription = remoteGENASubscription;
    }

    /* access modifiers changed from: protected */
    public StreamResponseMessage executeSync() throws RouterException {
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Sending unsubscribe request: ");
        sb.append(getInputMessage());
        logger.fine(sb.toString());
        try {
            StreamResponseMessage send = getUpnpService().getRouter().send(getInputMessage());
            onUnsubscribe(send);
            return send;
        } catch (Throwable th) {
            onUnsubscribe(null);
            throw th;
        }
    }

    /* access modifiers changed from: protected */
    public void onUnsubscribe(final StreamResponseMessage streamResponseMessage) {
        getUpnpService().getRegistry().removeRemoteSubscription(this.subscription);
        getUpnpService().getConfiguration().getRegistryListenerExecutor().execute(new Runnable() {
            public void run() {
                StreamResponseMessage streamResponseMessage = streamResponseMessage;
                if (streamResponseMessage == null) {
                    SendingUnsubscribe.log.fine("Unsubscribe failed, no response received");
                    SendingUnsubscribe.this.subscription.end(CancelReason.UNSUBSCRIBE_FAILED, null);
                } else if (((UpnpResponse) streamResponseMessage.getOperation()).isFailed()) {
                    Logger access$000 = SendingUnsubscribe.log;
                    StringBuilder sb = new StringBuilder();
                    sb.append("Unsubscribe failed, response was: ");
                    sb.append(streamResponseMessage);
                    access$000.fine(sb.toString());
                    SendingUnsubscribe.this.subscription.end(CancelReason.UNSUBSCRIBE_FAILED, (UpnpResponse) streamResponseMessage.getOperation());
                } else {
                    Logger access$0002 = SendingUnsubscribe.log;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Unsubscribe successful, response was: ");
                    sb2.append(streamResponseMessage);
                    access$0002.fine(sb2.toString());
                    SendingUnsubscribe.this.subscription.end(null, (UpnpResponse) streamResponseMessage.getOperation());
                }
            }
        });
    }
}
