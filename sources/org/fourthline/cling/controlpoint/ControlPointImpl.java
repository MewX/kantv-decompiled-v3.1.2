package org.fourthline.cling.controlpoint;

import java.util.concurrent.Future;
import java.util.logging.Logger;
import javax.enterprise.context.ApplicationScoped;
import javax.enterprise.event.Observes;
import javax.inject.Inject;
import org.fourthline.cling.UpnpServiceConfiguration;
import org.fourthline.cling.controlpoint.event.ExecuteAction;
import org.fourthline.cling.controlpoint.event.Search;
import org.fourthline.cling.model.message.header.MXHeader;
import org.fourthline.cling.model.message.header.STAllHeader;
import org.fourthline.cling.model.message.header.UpnpHeader;
import org.fourthline.cling.protocol.ProtocolFactory;
import org.fourthline.cling.registry.Registry;

@ApplicationScoped
public class ControlPointImpl implements ControlPoint {
    private static Logger log = Logger.getLogger(ControlPointImpl.class.getName());
    protected UpnpServiceConfiguration configuration;
    protected ProtocolFactory protocolFactory;
    protected Registry registry;

    protected ControlPointImpl() {
    }

    @Inject
    public ControlPointImpl(UpnpServiceConfiguration upnpServiceConfiguration, ProtocolFactory protocolFactory2, Registry registry2) {
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Creating ControlPoint: ");
        sb.append(getClass().getName());
        logger.fine(sb.toString());
        this.configuration = upnpServiceConfiguration;
        this.protocolFactory = protocolFactory2;
        this.registry = registry2;
    }

    public UpnpServiceConfiguration getConfiguration() {
        return this.configuration;
    }

    public ProtocolFactory getProtocolFactory() {
        return this.protocolFactory;
    }

    public Registry getRegistry() {
        return this.registry;
    }

    public void search(@Observes Search search) {
        search(search.getSearchType(), search.getMxSeconds());
    }

    public void search() {
        search(new STAllHeader(), MXHeader.DEFAULT_VALUE.intValue());
    }

    public void search(UpnpHeader upnpHeader) {
        search(upnpHeader, MXHeader.DEFAULT_VALUE.intValue());
    }

    public void search(int i) {
        search(new STAllHeader(), i);
    }

    public void search(UpnpHeader upnpHeader, int i) {
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Sending asynchronous search for: ");
        sb.append(upnpHeader.getString());
        logger.fine(sb.toString());
        getConfiguration().getAsyncProtocolExecutor().execute(getProtocolFactory().createSendingSearch(upnpHeader, i));
    }

    public void execute(ExecuteAction executeAction) {
        execute(executeAction.getCallback());
    }

    public Future execute(ActionCallback actionCallback) {
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Invoking action in background: ");
        sb.append(actionCallback);
        logger.fine(sb.toString());
        actionCallback.setControlPoint(this);
        return getConfiguration().getSyncProtocolExecutorService().submit(actionCallback);
    }

    public void execute(SubscriptionCallback subscriptionCallback) {
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Invoking subscription in background: ");
        sb.append(subscriptionCallback);
        logger.fine(sb.toString());
        subscriptionCallback.setControlPoint(this);
        getConfiguration().getSyncProtocolExecutorService().execute(subscriptionCallback);
    }
}
