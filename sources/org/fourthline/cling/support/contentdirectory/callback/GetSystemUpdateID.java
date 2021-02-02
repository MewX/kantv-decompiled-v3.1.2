package org.fourthline.cling.support.contentdirectory.callback;

import org.fourthline.cling.controlpoint.ActionCallback;
import org.fourthline.cling.model.action.ActionException;
import org.fourthline.cling.model.action.ActionInvocation;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.model.types.ErrorCode;

public abstract class GetSystemUpdateID extends ActionCallback {
    public abstract void received(ActionInvocation actionInvocation, long j);

    public GetSystemUpdateID(Service service) {
        super(new ActionInvocation(service.getAction("GetSystemUpdateID")));
    }

    public void success(ActionInvocation actionInvocation) {
        boolean z;
        long j;
        try {
            j = Long.valueOf(actionInvocation.getOutput("Id").getValue().toString()).longValue();
            z = true;
        } catch (Exception e) {
            ErrorCode errorCode = ErrorCode.ACTION_FAILED;
            StringBuilder sb = new StringBuilder();
            sb.append("Can't parse GetSystemUpdateID response: ");
            sb.append(e);
            actionInvocation.setFailure(new ActionException(errorCode, sb.toString(), (Throwable) e));
            failure(actionInvocation, null);
            z = false;
            j = 0;
        }
        if (z) {
            received(actionInvocation, j);
        }
    }
}
