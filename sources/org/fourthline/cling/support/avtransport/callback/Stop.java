package org.fourthline.cling.support.avtransport.callback;

import java.util.logging.Logger;
import org.fourthline.cling.controlpoint.ActionCallback;
import org.fourthline.cling.model.action.ActionInvocation;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.model.types.UnsignedIntegerFourBytes;

public abstract class Stop extends ActionCallback {
    private static Logger log = Logger.getLogger(Stop.class.getName());

    public Stop(Service service) {
        this(new UnsignedIntegerFourBytes(0), service);
    }

    public Stop(UnsignedIntegerFourBytes unsignedIntegerFourBytes, Service service) {
        super(new ActionInvocation(service.getAction("Stop")));
        getActionInvocation().setInput("InstanceID", unsignedIntegerFourBytes);
    }

    public void success(ActionInvocation actionInvocation) {
        log.fine("Execution successful");
    }
}
