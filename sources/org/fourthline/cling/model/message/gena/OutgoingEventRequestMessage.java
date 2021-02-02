package org.fourthline.cling.model.message.gena;

import java.net.URL;
import java.util.Collection;
import org.fourthline.cling.model.gena.GENASubscription;
import org.fourthline.cling.model.message.StreamRequestMessage;
import org.fourthline.cling.model.message.UpnpRequest;
import org.fourthline.cling.model.message.UpnpRequest.Method;
import org.fourthline.cling.model.message.header.ContentTypeHeader;
import org.fourthline.cling.model.message.header.EventSequenceHeader;
import org.fourthline.cling.model.message.header.NTEventHeader;
import org.fourthline.cling.model.message.header.NTSHeader;
import org.fourthline.cling.model.message.header.SubscriptionIdHeader;
import org.fourthline.cling.model.message.header.UpnpHeader;
import org.fourthline.cling.model.message.header.UpnpHeader.Type;
import org.fourthline.cling.model.state.StateVariableValue;
import org.fourthline.cling.model.types.NotificationSubtype;
import org.fourthline.cling.model.types.UnsignedIntegerFourBytes;

public class OutgoingEventRequestMessage extends StreamRequestMessage {
    private final Collection<StateVariableValue> stateVariableValues;

    public OutgoingEventRequestMessage(GENASubscription gENASubscription, URL url, UnsignedIntegerFourBytes unsignedIntegerFourBytes, Collection<StateVariableValue> collection) {
        super(new UpnpRequest(Method.NOTIFY, url));
        getHeaders().add(Type.CONTENT_TYPE, (UpnpHeader) new ContentTypeHeader());
        getHeaders().add(Type.NT, (UpnpHeader) new NTEventHeader());
        getHeaders().add(Type.NTS, (UpnpHeader) new NTSHeader(NotificationSubtype.PROPCHANGE));
        getHeaders().add(Type.SID, (UpnpHeader) new SubscriptionIdHeader(gENASubscription.getSubscriptionId()));
        getHeaders().add(Type.SEQ, (UpnpHeader) new EventSequenceHeader(unsignedIntegerFourBytes.getValue().longValue()));
        this.stateVariableValues = collection;
    }

    public OutgoingEventRequestMessage(GENASubscription gENASubscription, URL url) {
        this(gENASubscription, url, gENASubscription.getCurrentSequence(), gENASubscription.getCurrentValues().values());
    }

    public Collection<StateVariableValue> getStateVariableValues() {
        return this.stateVariableValues;
    }
}
