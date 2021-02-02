package org.fourthline.cling.controlpoint;

import org.fourthline.cling.model.action.ActionException;
import org.fourthline.cling.model.action.ActionInvocation;
import org.fourthline.cling.model.message.UpnpResponse;
import org.fourthline.cling.model.message.control.IncomingActionResponseMessage;
import org.fourthline.cling.model.meta.LocalService;
import org.fourthline.cling.model.meta.RemoteDevice;
import org.fourthline.cling.model.meta.RemoteService;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.protocol.sync.SendingAction;

public abstract class ActionCallback implements Runnable {
    protected final ActionInvocation actionInvocation;
    protected ControlPoint controlPoint;

    public static final class Default extends ActionCallback {
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
        }

        public void success(ActionInvocation actionInvocation) {
        }

        public Default(ActionInvocation actionInvocation, ControlPoint controlPoint) {
            super(actionInvocation, controlPoint);
        }
    }

    public abstract void failure(ActionInvocation actionInvocation2, UpnpResponse upnpResponse, String str);

    public abstract void success(ActionInvocation actionInvocation2);

    protected ActionCallback(ActionInvocation actionInvocation2, ControlPoint controlPoint2) {
        this.actionInvocation = actionInvocation2;
        this.controlPoint = controlPoint2;
    }

    protected ActionCallback(ActionInvocation actionInvocation2) {
        this.actionInvocation = actionInvocation2;
    }

    public ActionInvocation getActionInvocation() {
        return this.actionInvocation;
    }

    public synchronized ControlPoint getControlPoint() {
        return this.controlPoint;
    }

    public synchronized ActionCallback setControlPoint(ControlPoint controlPoint2) {
        this.controlPoint = controlPoint2;
        return this;
    }

    public void run() {
        Service service = this.actionInvocation.getAction().getService();
        if (service instanceof LocalService) {
            ((LocalService) service).getExecutor(this.actionInvocation.getAction()).execute(this.actionInvocation);
            if (this.actionInvocation.getFailure() != null) {
                failure(this.actionInvocation, null);
            } else {
                success(this.actionInvocation);
            }
        } else if (service instanceof RemoteService) {
            if (getControlPoint() != null) {
                RemoteService remoteService = (RemoteService) service;
                try {
                    SendingAction createSendingAction = getControlPoint().getProtocolFactory().createSendingAction(this.actionInvocation, ((RemoteDevice) remoteService.getDevice()).normalizeURI(remoteService.getControlURI()));
                    createSendingAction.run();
                    IncomingActionResponseMessage incomingActionResponseMessage = (IncomingActionResponseMessage) createSendingAction.getOutputMessage();
                    if (incomingActionResponseMessage == null) {
                        failure(this.actionInvocation, null);
                    } else if (((UpnpResponse) incomingActionResponseMessage.getOperation()).isFailed()) {
                        failure(this.actionInvocation, (UpnpResponse) incomingActionResponseMessage.getOperation());
                    } else {
                        success(this.actionInvocation);
                    }
                } catch (IllegalArgumentException unused) {
                    ActionInvocation actionInvocation2 = this.actionInvocation;
                    StringBuilder sb = new StringBuilder();
                    sb.append("bad control URL: ");
                    sb.append(remoteService.getControlURI());
                    failure(actionInvocation2, null, sb.toString());
                }
            } else {
                throw new IllegalStateException("Callback must be executed through ControlPoint");
            }
        }
    }

    /* access modifiers changed from: protected */
    public String createDefaultFailureMessage(ActionInvocation actionInvocation2, UpnpResponse upnpResponse) {
        ActionException failure = actionInvocation2.getFailure();
        String str = "Error: ";
        if (failure != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(failure.getMessage());
            str = sb.toString();
        }
        if (upnpResponse == null) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(" (HTTP response was: ");
        sb2.append(upnpResponse.getResponseDetails());
        sb2.append(")");
        return sb2.toString();
    }

    /* access modifiers changed from: protected */
    public void failure(ActionInvocation actionInvocation2, UpnpResponse upnpResponse) {
        failure(actionInvocation2, upnpResponse, createDefaultFailureMessage(actionInvocation2, upnpResponse));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("(ActionCallback) ");
        sb.append(this.actionInvocation);
        return sb.toString();
    }
}
