package org.fourthline.cling.support.avtransport.impl.state;

import java.net.URI;
import java.util.logging.Logger;
import org.fourthline.cling.support.avtransport.lastchange.AVTransportVariable;
import org.fourthline.cling.support.avtransport.lastchange.AVTransportVariable.CurrentTransportActions;
import org.fourthline.cling.support.model.AVTransport;
import org.fourthline.cling.support.model.TransportAction;
import org.fourthline.cling.support.model.TransportInfo;
import org.fourthline.cling.support.model.TransportState;

public abstract class NoMediaPresent<T extends AVTransport> extends AbstractState<T> {
    private static final Logger log = Logger.getLogger(Stopped.class.getName());

    public abstract Class<? extends AbstractState> setTransportURI(URI uri, String str);

    public NoMediaPresent(T t) {
        super(t);
    }

    public void onEntry() {
        log.fine("Setting transport state to NO_MEDIA_PRESENT");
        getTransport().setTransportInfo(new TransportInfo(TransportState.NO_MEDIA_PRESENT, getTransport().getTransportInfo().getCurrentTransportStatus(), getTransport().getTransportInfo().getCurrentSpeed()));
        getTransport().getLastChange().setEventedValue(getTransport().getInstanceId(), new AVTransportVariable.TransportState(TransportState.NO_MEDIA_PRESENT), new CurrentTransportActions(getCurrentTransportActions()));
    }

    public TransportAction[] getCurrentTransportActions() {
        return new TransportAction[]{TransportAction.Stop};
    }
}
