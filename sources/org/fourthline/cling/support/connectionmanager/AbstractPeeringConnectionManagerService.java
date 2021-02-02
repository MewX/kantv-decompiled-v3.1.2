package org.fourthline.cling.support.connectionmanager;

import java.beans.PropertyChangeSupport;
import java.util.logging.Logger;
import org.fourthline.cling.binding.annotations.UpnpAction;
import org.fourthline.cling.binding.annotations.UpnpInputArgument;
import org.fourthline.cling.controlpoint.ControlPoint;
import org.fourthline.cling.model.ServiceReference;
import org.fourthline.cling.model.action.ActionException;
import org.fourthline.cling.model.action.ActionInvocation;
import org.fourthline.cling.model.message.UpnpResponse;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.model.types.csv.CSV;
import org.fourthline.cling.support.connectionmanager.callback.ConnectionComplete;
import org.fourthline.cling.support.connectionmanager.callback.PrepareForConnection;
import org.fourthline.cling.support.model.ConnectionInfo;
import org.fourthline.cling.support.model.ConnectionInfo.Direction;
import org.fourthline.cling.support.model.ConnectionInfo.Status;
import org.fourthline.cling.support.model.ProtocolInfo;
import org.fourthline.cling.support.model.ProtocolInfos;

public abstract class AbstractPeeringConnectionManagerService extends ConnectionManagerService {
    private static final Logger log = Logger.getLogger(AbstractPeeringConnectionManagerService.class.getName());

    /* access modifiers changed from: protected */
    public abstract void closeConnection(ConnectionInfo connectionInfo);

    /* access modifiers changed from: protected */
    public abstract ConnectionInfo createConnection(int i, int i2, ServiceReference serviceReference, Direction direction, ProtocolInfo protocolInfo) throws ActionException;

    /* access modifiers changed from: protected */
    public abstract void peerFailure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str);

    protected AbstractPeeringConnectionManagerService(ConnectionInfo... connectionInfoArr) {
        super(connectionInfoArr);
    }

    protected AbstractPeeringConnectionManagerService(ProtocolInfos protocolInfos, ProtocolInfos protocolInfos2, ConnectionInfo... connectionInfoArr) {
        super(protocolInfos, protocolInfos2, connectionInfoArr);
    }

    protected AbstractPeeringConnectionManagerService(PropertyChangeSupport propertyChangeSupport, ProtocolInfos protocolInfos, ProtocolInfos protocolInfos2, ConnectionInfo... connectionInfoArr) {
        super(propertyChangeSupport, protocolInfos, protocolInfos2, connectionInfoArr);
    }

    /* access modifiers changed from: protected */
    public synchronized int getNewConnectionId() {
        int i;
        i = -1;
        for (Integer num : this.activeConnections.keySet()) {
            if (num.intValue() > i) {
                i = num.intValue();
            }
        }
        return i + 1;
    }

    /* access modifiers changed from: protected */
    public synchronized void storeConnection(ConnectionInfo connectionInfo) {
        CSV currentConnectionIDs = getCurrentConnectionIDs();
        this.activeConnections.put(Integer.valueOf(connectionInfo.getConnectionID()), connectionInfo);
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Connection stored, firing event: ");
        sb.append(connectionInfo.getConnectionID());
        logger.fine(sb.toString());
        getPropertyChangeSupport().firePropertyChange("CurrentConnectionIDs", currentConnectionIDs, getCurrentConnectionIDs());
    }

    /* access modifiers changed from: protected */
    public synchronized void removeConnection(int i) {
        CSV currentConnectionIDs = getCurrentConnectionIDs();
        this.activeConnections.remove(Integer.valueOf(i));
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Connection removed, firing event: ");
        sb.append(i);
        logger.fine(sb.toString());
        getPropertyChangeSupport().firePropertyChange("CurrentConnectionIDs", currentConnectionIDs, getCurrentConnectionIDs());
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(3:9|10|11) */
    /* JADX WARNING: Code restructure failed: missing block: B:10:?, code lost:
        r8 = org.fourthline.cling.model.types.ErrorCode.ARGUMENT_VALUE_INVALID;
        r9 = new java.lang.StringBuilder();
        r9.append("Unsupported direction: ");
        r9.append(r10);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x004c, code lost:
        throw new org.fourthline.cling.support.connectionmanager.ConnectionManagerException(r8, r9.toString());
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x0034 */
    @org.fourthline.cling.binding.annotations.UpnpAction(out = {@org.fourthline.cling.binding.annotations.UpnpOutputArgument(getterName = "getConnectionID", name = "ConnectionID", stateVariable = "A_ARG_TYPE_ConnectionID"), @org.fourthline.cling.binding.annotations.UpnpOutputArgument(getterName = "getAvTransportID", name = "AVTransportID", stateVariable = "A_ARG_TYPE_AVTransportID"), @org.fourthline.cling.binding.annotations.UpnpOutputArgument(getterName = "getRcsID", name = "RcsID", stateVariable = "A_ARG_TYPE_RcsID")})
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized org.fourthline.cling.support.model.ConnectionInfo prepareForConnection(@org.fourthline.cling.binding.annotations.UpnpInputArgument(name = "RemoteProtocolInfo", stateVariable = "A_ARG_TYPE_ProtocolInfo") org.fourthline.cling.support.model.ProtocolInfo r7, @org.fourthline.cling.binding.annotations.UpnpInputArgument(name = "PeerConnectionManager", stateVariable = "A_ARG_TYPE_ConnectionManager") org.fourthline.cling.model.ServiceReference r8, @org.fourthline.cling.binding.annotations.UpnpInputArgument(name = "PeerConnectionID", stateVariable = "A_ARG_TYPE_ConnectionID") int r9, @org.fourthline.cling.binding.annotations.UpnpInputArgument(name = "Direction", stateVariable = "A_ARG_TYPE_Direction") java.lang.String r10) throws org.fourthline.cling.model.action.ActionException {
        /*
            r6 = this;
            monitor-enter(r6)
            int r1 = r6.getNewConnectionId()     // Catch:{ all -> 0x004d }
            org.fourthline.cling.support.model.ConnectionInfo$Direction r4 = org.fourthline.cling.support.model.ConnectionInfo.Direction.valueOf(r10)     // Catch:{ Exception -> 0x0034 }
            java.util.logging.Logger r10 = log     // Catch:{ all -> 0x004d }
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ all -> 0x004d }
            r0.<init>()     // Catch:{ all -> 0x004d }
            java.lang.String r2 = "Preparing for connection with local new ID "
            r0.append(r2)     // Catch:{ all -> 0x004d }
            r0.append(r1)     // Catch:{ all -> 0x004d }
            java.lang.String r2 = " and peer connection ID: "
            r0.append(r2)     // Catch:{ all -> 0x004d }
            r0.append(r9)     // Catch:{ all -> 0x004d }
            java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x004d }
            r10.fine(r0)     // Catch:{ all -> 0x004d }
            r0 = r6
            r2 = r9
            r3 = r8
            r5 = r7
            org.fourthline.cling.support.model.ConnectionInfo r7 = r0.createConnection(r1, r2, r3, r4, r5)     // Catch:{ all -> 0x004d }
            r6.storeConnection(r7)     // Catch:{ all -> 0x004d }
            monitor-exit(r6)
            return r7
        L_0x0034:
            org.fourthline.cling.support.connectionmanager.ConnectionManagerException r7 = new org.fourthline.cling.support.connectionmanager.ConnectionManagerException     // Catch:{ all -> 0x004d }
            org.fourthline.cling.model.types.ErrorCode r8 = org.fourthline.cling.model.types.ErrorCode.ARGUMENT_VALUE_INVALID     // Catch:{ all -> 0x004d }
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch:{ all -> 0x004d }
            r9.<init>()     // Catch:{ all -> 0x004d }
            java.lang.String r0 = "Unsupported direction: "
            r9.append(r0)     // Catch:{ all -> 0x004d }
            r9.append(r10)     // Catch:{ all -> 0x004d }
            java.lang.String r9 = r9.toString()     // Catch:{ all -> 0x004d }
            r7.<init>(r8, r9)     // Catch:{ all -> 0x004d }
            throw r7     // Catch:{ all -> 0x004d }
        L_0x004d:
            r7 = move-exception
            monitor-exit(r6)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fourthline.cling.support.connectionmanager.AbstractPeeringConnectionManagerService.prepareForConnection(org.fourthline.cling.support.model.ProtocolInfo, org.fourthline.cling.model.ServiceReference, int, java.lang.String):org.fourthline.cling.support.model.ConnectionInfo");
    }

    @UpnpAction
    public synchronized void connectionComplete(@UpnpInputArgument(name = "ConnectionID", stateVariable = "A_ARG_TYPE_ConnectionID") int i) throws ActionException {
        ConnectionInfo currentConnectionInfo = getCurrentConnectionInfo(i);
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Closing connection ID ");
        sb.append(i);
        logger.fine(sb.toString());
        closeConnection(currentConnectionInfo);
        removeConnection(i);
    }

    public synchronized int createConnectionWithPeer(ServiceReference serviceReference, ControlPoint controlPoint, Service service, ProtocolInfo protocolInfo, Direction direction) {
        int newConnectionId;
        newConnectionId = getNewConnectionId();
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Creating new connection ID ");
        sb.append(newConnectionId);
        sb.append(" with peer: ");
        sb.append(service);
        logger.fine(sb.toString());
        boolean[] zArr = new boolean[1];
        final int i = newConnectionId;
        final ProtocolInfo protocolInfo2 = protocolInfo;
        final Service service2 = service;
        final Direction direction2 = direction;
        final boolean[] zArr2 = zArr;
        AnonymousClass1 r1 = new PrepareForConnection(this, service, controlPoint, protocolInfo, serviceReference, newConnectionId, direction) {
            final /* synthetic */ AbstractPeeringConnectionManagerService this$0;

            {
                this.this$0 = r9;
            }

            public void received(ActionInvocation actionInvocation, int i, int i2, int i3) {
                ConnectionInfo connectionInfo = new ConnectionInfo(i, i2, i3, protocolInfo2, service2.getReference(), i, direction2.getOpposite(), Status.OK);
                this.this$0.storeConnection(connectionInfo);
            }

            public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
                this.this$0.peerFailure(actionInvocation, upnpResponse, str);
                zArr2[0] = true;
            }
        };
        r1.run();
        if (zArr[0]) {
            newConnectionId = -1;
        }
        return newConnectionId;
    }

    public synchronized void closeConnectionWithPeer(ControlPoint controlPoint, Service service, int i) throws ActionException {
        closeConnectionWithPeer(controlPoint, service, getCurrentConnectionInfo(i));
    }

    public synchronized void closeConnectionWithPeer(ControlPoint controlPoint, Service service, ConnectionInfo connectionInfo) throws ActionException {
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Closing connection ID ");
        sb.append(connectionInfo.getConnectionID());
        sb.append(" with peer: ");
        sb.append(service);
        logger.fine(sb.toString());
        final ConnectionInfo connectionInfo2 = connectionInfo;
        AnonymousClass2 r2 = new ConnectionComplete(service, controlPoint, connectionInfo.getPeerConnectionID()) {
            public void success(ActionInvocation actionInvocation) {
                AbstractPeeringConnectionManagerService.this.removeConnection(connectionInfo2.getConnectionID());
            }

            public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
                AbstractPeeringConnectionManagerService.this.peerFailure(actionInvocation, upnpResponse, str);
            }
        };
        r2.run();
    }
}
