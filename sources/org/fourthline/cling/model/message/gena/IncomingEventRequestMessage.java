package org.fourthline.cling.model.message.gena;

import java.util.ArrayList;
import java.util.List;
import org.fourthline.cling.model.message.StreamRequestMessage;
import org.fourthline.cling.model.message.header.EventSequenceHeader;
import org.fourthline.cling.model.message.header.NTEventHeader;
import org.fourthline.cling.model.message.header.NTSHeader;
import org.fourthline.cling.model.message.header.SubscriptionIdHeader;
import org.fourthline.cling.model.message.header.UpnpHeader;
import org.fourthline.cling.model.message.header.UpnpHeader.Type;
import org.fourthline.cling.model.meta.RemoteService;
import org.fourthline.cling.model.state.StateVariableValue;
import org.fourthline.cling.model.types.NotificationSubtype;
import org.fourthline.cling.model.types.UnsignedIntegerFourBytes;

public class IncomingEventRequestMessage extends StreamRequestMessage {
    private final RemoteService service;
    private final List<StateVariableValue> stateVariableValues = new ArrayList();

    public IncomingEventRequestMessage(StreamRequestMessage streamRequestMessage, RemoteService remoteService) {
        super(streamRequestMessage);
        this.service = remoteService;
    }

    public RemoteService getService() {
        return this.service;
    }

    public List<StateVariableValue> getStateVariableValues() {
        return this.stateVariableValues;
    }

    public String getSubscrptionId() {
        SubscriptionIdHeader subscriptionIdHeader = (SubscriptionIdHeader) getHeaders().getFirstHeader(Type.SID, SubscriptionIdHeader.class);
        if (subscriptionIdHeader != null) {
            return (String) subscriptionIdHeader.getValue();
        }
        return null;
    }

    public UnsignedIntegerFourBytes getSequence() {
        EventSequenceHeader eventSequenceHeader = (EventSequenceHeader) getHeaders().getFirstHeader(Type.SEQ, EventSequenceHeader.class);
        if (eventSequenceHeader != null) {
            return (UnsignedIntegerFourBytes) eventSequenceHeader.getValue();
        }
        return null;
    }

    public boolean hasNotificationHeaders() {
        UpnpHeader firstHeader = getHeaders().getFirstHeader(Type.NT);
        UpnpHeader firstHeader2 = getHeaders().getFirstHeader(Type.NTS);
        return (firstHeader == null || firstHeader.getValue() == null || firstHeader2 == null || firstHeader2.getValue() == null) ? false : true;
    }

    public boolean hasValidNotificationHeaders() {
        NTEventHeader nTEventHeader = (NTEventHeader) getHeaders().getFirstHeader(Type.NT, NTEventHeader.class);
        NTSHeader nTSHeader = (NTSHeader) getHeaders().getFirstHeader(Type.NTS, NTSHeader.class);
        return (nTEventHeader == null || nTEventHeader.getValue() == null || nTSHeader == null || !((NotificationSubtype) nTSHeader.getValue()).equals(NotificationSubtype.PROPCHANGE)) ? false : true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append(" SEQUENCE: ");
        sb.append(getSequence().getValue());
        return sb.toString();
    }
}
