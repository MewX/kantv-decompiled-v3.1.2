package org.fourthline.cling.support.igd.callback;

import org.fourthline.cling.controlpoint.ActionCallback;
import org.fourthline.cling.controlpoint.ControlPoint;
import org.fourthline.cling.model.action.ActionInvocation;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.support.model.PortMapping;

public abstract class PortMappingDelete extends ActionCallback {
    protected final PortMapping portMapping;

    public PortMappingDelete(Service service, PortMapping portMapping2) {
        this(service, null, portMapping2);
    }

    protected PortMappingDelete(Service service, ControlPoint controlPoint, PortMapping portMapping2) {
        super(new ActionInvocation(service.getAction("DeletePortMapping")), controlPoint);
        this.portMapping = portMapping2;
        getActionInvocation().setInput("NewExternalPort", portMapping2.getExternalPort());
        getActionInvocation().setInput("NewProtocol", portMapping2.getProtocol());
        if (portMapping2.hasRemoteHost()) {
            getActionInvocation().setInput("NewRemoteHost", portMapping2.getRemoteHost());
        }
    }
}
