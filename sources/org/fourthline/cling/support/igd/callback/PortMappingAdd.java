package org.fourthline.cling.support.igd.callback;

import org.fourthline.cling.controlpoint.ActionCallback;
import org.fourthline.cling.controlpoint.ControlPoint;
import org.fourthline.cling.model.action.ActionInvocation;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.support.model.PortMapping;

public abstract class PortMappingAdd extends ActionCallback {
    protected final PortMapping portMapping;

    public PortMappingAdd(Service service, PortMapping portMapping2) {
        this(service, null, portMapping2);
    }

    protected PortMappingAdd(Service service, ControlPoint controlPoint, PortMapping portMapping2) {
        super(new ActionInvocation(service.getAction("AddPortMapping")), controlPoint);
        this.portMapping = portMapping2;
        getActionInvocation().setInput("NewExternalPort", portMapping2.getExternalPort());
        getActionInvocation().setInput("NewProtocol", portMapping2.getProtocol());
        getActionInvocation().setInput("NewInternalClient", portMapping2.getInternalClient());
        getActionInvocation().setInput("NewInternalPort", portMapping2.getInternalPort());
        getActionInvocation().setInput("NewLeaseDuration", portMapping2.getLeaseDurationSeconds());
        getActionInvocation().setInput("NewEnabled", Boolean.valueOf(portMapping2.isEnabled()));
        if (portMapping2.hasRemoteHost()) {
            getActionInvocation().setInput("NewRemoteHost", portMapping2.getRemoteHost());
        }
        if (portMapping2.hasDescription()) {
            getActionInvocation().setInput("NewPortMappingDescription", portMapping2.getDescription());
        }
    }
}
