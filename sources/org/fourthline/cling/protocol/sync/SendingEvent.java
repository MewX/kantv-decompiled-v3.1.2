package org.fourthline.cling.protocol.sync;

import java.net.URL;
import java.util.logging.Logger;
import org.fourthline.cling.UpnpService;
import org.fourthline.cling.model.gena.LocalGENASubscription;
import org.fourthline.cling.model.message.StreamRequestMessage;
import org.fourthline.cling.model.message.StreamResponseMessage;
import org.fourthline.cling.model.message.gena.OutgoingEventRequestMessage;
import org.fourthline.cling.model.types.UnsignedIntegerFourBytes;
import org.fourthline.cling.protocol.SendingSync;
import org.fourthline.cling.transport.RouterException;

public class SendingEvent extends SendingSync<OutgoingEventRequestMessage, StreamResponseMessage> {
    private static final Logger log = Logger.getLogger(SendingEvent.class.getName());
    protected final UnsignedIntegerFourBytes currentSequence;
    protected final OutgoingEventRequestMessage[] requestMessages;
    protected final String subscriptionId;

    public SendingEvent(UpnpService upnpService, LocalGENASubscription localGENASubscription) {
        super(upnpService, null);
        this.subscriptionId = localGENASubscription.getSubscriptionId();
        this.requestMessages = new OutgoingEventRequestMessage[localGENASubscription.getCallbackURLs().size()];
        int i = 0;
        for (URL outgoingEventRequestMessage : localGENASubscription.getCallbackURLs()) {
            this.requestMessages[i] = new OutgoingEventRequestMessage(localGENASubscription, outgoingEventRequestMessage);
            getUpnpService().getConfiguration().getGenaEventProcessor().writeBody(this.requestMessages[i]);
            i++;
        }
        this.currentSequence = localGENASubscription.getCurrentSequence();
        localGENASubscription.incrementSequence();
    }

    /* access modifiers changed from: protected */
    public StreamResponseMessage executeSync() throws RouterException {
        OutgoingEventRequestMessage[] outgoingEventRequestMessageArr;
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Sending event for subscription: ");
        sb.append(this.subscriptionId);
        logger.fine(sb.toString());
        StreamResponseMessage streamResponseMessage = null;
        for (OutgoingEventRequestMessage outgoingEventRequestMessage : this.requestMessages) {
            if (this.currentSequence.getValue().longValue() == 0) {
                Logger logger2 = log;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Sending initial event message to callback URL: ");
                sb2.append(outgoingEventRequestMessage.getUri());
                logger2.fine(sb2.toString());
            } else {
                Logger logger3 = log;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Sending event message '");
                sb3.append(this.currentSequence);
                sb3.append("' to callback URL: ");
                sb3.append(outgoingEventRequestMessage.getUri());
                logger3.fine(sb3.toString());
            }
            streamResponseMessage = getUpnpService().getRouter().send((StreamRequestMessage) outgoingEventRequestMessage);
            Logger logger4 = log;
            StringBuilder sb4 = new StringBuilder();
            sb4.append("Received event callback response: ");
            sb4.append(streamResponseMessage);
            logger4.fine(sb4.toString());
        }
        return streamResponseMessage;
    }
}
