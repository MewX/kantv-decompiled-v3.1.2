package org.fourthline.cling.support.connectionmanager.callback;

import org.fourthline.cling.controlpoint.ActionCallback;
import org.fourthline.cling.controlpoint.ControlPoint;
import org.fourthline.cling.model.ServiceReference;
import org.fourthline.cling.model.action.ActionException;
import org.fourthline.cling.model.action.ActionInvocation;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.model.types.ErrorCode;
import org.fourthline.cling.support.model.ConnectionInfo;
import org.fourthline.cling.support.model.ConnectionInfo.Direction;
import org.fourthline.cling.support.model.ConnectionInfo.Status;
import org.fourthline.cling.support.model.ProtocolInfo;

public abstract class GetCurrentConnectionInfo extends ActionCallback {
    public abstract void received(ActionInvocation actionInvocation, ConnectionInfo connectionInfo);

    public GetCurrentConnectionInfo(Service service, int i) {
        this(service, null, i);
    }

    protected GetCurrentConnectionInfo(Service service, ControlPoint controlPoint, int i) {
        super(new ActionInvocation(service.getAction("GetCurrentConnectionInfo")), controlPoint);
        getActionInvocation().setInput("ConnectionID", Integer.valueOf(i));
    }

    public void success(ActionInvocation actionInvocation) {
        try {
            ConnectionInfo connectionInfo = new ConnectionInfo(((Integer) actionInvocation.getInput("ConnectionID").getValue()).intValue(), ((Integer) actionInvocation.getOutput("RcsID").getValue()).intValue(), ((Integer) actionInvocation.getOutput("AVTransportID").getValue()).intValue(), new ProtocolInfo(actionInvocation.getOutput("ProtocolInfo").toString()), new ServiceReference(actionInvocation.getOutput("PeerConnectionManager").toString()), ((Integer) actionInvocation.getOutput("PeerConnectionID").getValue()).intValue(), Direction.valueOf(actionInvocation.getOutput("Direction").toString()), Status.valueOf(actionInvocation.getOutput("Status").toString()));
            received(actionInvocation, connectionInfo);
        } catch (Exception e) {
            ErrorCode errorCode = ErrorCode.ACTION_FAILED;
            StringBuilder sb = new StringBuilder();
            sb.append("Can't parse ConnectionInfo response: ");
            sb.append(e);
            actionInvocation.setFailure(new ActionException(errorCode, sb.toString(), (Throwable) e));
            failure(actionInvocation, null);
        }
    }
}
