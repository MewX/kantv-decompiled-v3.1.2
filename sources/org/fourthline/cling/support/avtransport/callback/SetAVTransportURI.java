package org.fourthline.cling.support.avtransport.callback;

import java.util.logging.Logger;
import org.fourthline.cling.controlpoint.ActionCallback;
import org.fourthline.cling.model.action.ActionInvocation;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.model.types.UnsignedIntegerFourBytes;

public abstract class SetAVTransportURI extends ActionCallback {
    private static Logger log = Logger.getLogger(SetAVTransportURI.class.getName());

    public SetAVTransportURI(Service service, String str) {
        this(new UnsignedIntegerFourBytes(0), service, str, null);
    }

    public SetAVTransportURI(Service service, String str, String str2) {
        this(new UnsignedIntegerFourBytes(0), service, str, str2);
    }

    public SetAVTransportURI(UnsignedIntegerFourBytes unsignedIntegerFourBytes, Service service, String str) {
        this(unsignedIntegerFourBytes, service, str, null);
    }

    public SetAVTransportURI(UnsignedIntegerFourBytes unsignedIntegerFourBytes, Service service, String str, String str2) {
        super(new ActionInvocation(service.getAction("SetAVTransportURI")));
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Creating SetAVTransportURI action for URI: ");
        sb.append(str);
        logger.fine(sb.toString());
        getActionInvocation().setInput("InstanceID", unsignedIntegerFourBytes);
        getActionInvocation().setInput("CurrentURI", str);
        getActionInvocation().setInput("CurrentURIMetaData", str2);
    }

    public void success(ActionInvocation actionInvocation) {
        log.fine("Execution successful");
    }
}
