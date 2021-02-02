package org.fourthline.cling.support.avtransport.callback;

import java.util.logging.Logger;
import org.fourthline.cling.controlpoint.ActionCallback;
import org.fourthline.cling.controlpoint.ControlPoint;
import org.fourthline.cling.model.action.ActionInvocation;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.model.types.UnsignedIntegerFourBytes;

public abstract class Previous extends ActionCallback {
    private static Logger log = Logger.getLogger(Previous.class.getName());

    protected Previous(ActionInvocation actionInvocation, ControlPoint controlPoint) {
        super(actionInvocation, controlPoint);
    }

    protected Previous(ActionInvocation actionInvocation) {
        super(actionInvocation);
    }

    public Previous(Service service) {
        this(new UnsignedIntegerFourBytes(0), service);
    }

    public Previous(UnsignedIntegerFourBytes unsignedIntegerFourBytes, Service service) {
        super(new ActionInvocation(service.getAction("Previous")));
        getActionInvocation().setInput("InstanceID", unsignedIntegerFourBytes);
    }

    public void success(ActionInvocation actionInvocation) {
        log.fine("Execution successful");
    }
}
