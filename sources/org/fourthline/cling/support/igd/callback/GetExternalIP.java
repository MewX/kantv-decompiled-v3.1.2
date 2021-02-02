package org.fourthline.cling.support.igd.callback;

import org.fourthline.cling.controlpoint.ActionCallback;
import org.fourthline.cling.model.action.ActionInvocation;
import org.fourthline.cling.model.meta.Service;

public abstract class GetExternalIP extends ActionCallback {
    /* access modifiers changed from: protected */
    public abstract void success(String str);

    public GetExternalIP(Service service) {
        super(new ActionInvocation(service.getAction("GetExternalIPAddress")));
    }

    public void success(ActionInvocation actionInvocation) {
        success((String) actionInvocation.getOutput("NewExternalIPAddress").getValue());
    }
}
