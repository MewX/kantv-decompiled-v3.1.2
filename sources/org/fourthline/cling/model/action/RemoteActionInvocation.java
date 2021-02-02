package org.fourthline.cling.model.action;

import org.fourthline.cling.model.meta.Action;
import org.fourthline.cling.model.profile.RemoteClientInfo;

public class RemoteActionInvocation extends ActionInvocation {
    protected final RemoteClientInfo remoteClientInfo;

    public RemoteActionInvocation(Action action, ActionArgumentValue[] actionArgumentValueArr, ActionArgumentValue[] actionArgumentValueArr2, RemoteClientInfo remoteClientInfo2) {
        super(action, actionArgumentValueArr, actionArgumentValueArr2, null);
        this.remoteClientInfo = remoteClientInfo2;
    }

    public RemoteActionInvocation(Action action, RemoteClientInfo remoteClientInfo2) {
        super(action);
        this.remoteClientInfo = remoteClientInfo2;
    }

    public RemoteActionInvocation(ActionException actionException, RemoteClientInfo remoteClientInfo2) {
        super(actionException);
        this.remoteClientInfo = remoteClientInfo2;
    }

    public RemoteClientInfo getRemoteClientInfo() {
        return this.remoteClientInfo;
    }
}
