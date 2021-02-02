package org.fourthline.cling.support.igd.callback;

import org.fourthline.cling.controlpoint.ActionCallback;
import org.fourthline.cling.model.action.ActionException;
import org.fourthline.cling.model.action.ActionInvocation;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.model.types.ErrorCode;
import org.fourthline.cling.model.types.UnsignedIntegerFourBytes;
import org.fourthline.cling.support.model.Connection.Error;
import org.fourthline.cling.support.model.Connection.Status;
import org.fourthline.cling.support.model.Connection.StatusInfo;

public abstract class GetStatusInfo extends ActionCallback {
    /* access modifiers changed from: protected */
    public abstract void success(StatusInfo statusInfo);

    public GetStatusInfo(Service service) {
        super(new ActionInvocation(service.getAction("GetStatusInfo")));
    }

    public void success(ActionInvocation actionInvocation) {
        try {
            success(new StatusInfo(Status.valueOf(actionInvocation.getOutput("NewConnectionStatus").getValue().toString()), (UnsignedIntegerFourBytes) actionInvocation.getOutput("NewUptime").getValue(), Error.valueOf(actionInvocation.getOutput("NewLastConnectionError").getValue().toString())));
        } catch (Exception e) {
            ErrorCode errorCode = ErrorCode.ARGUMENT_VALUE_INVALID;
            StringBuilder sb = new StringBuilder();
            sb.append("Invalid status or last error string: ");
            sb.append(e);
            actionInvocation.setFailure(new ActionException(errorCode, sb.toString(), (Throwable) e));
            failure(actionInvocation, null);
        }
    }
}
