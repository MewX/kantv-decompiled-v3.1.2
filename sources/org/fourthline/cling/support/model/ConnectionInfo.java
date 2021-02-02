package org.fourthline.cling.support.model;

import org.fourthline.cling.model.ServiceReference;

public class ConnectionInfo {
    protected final int avTransportID;
    protected final int connectionID;
    protected Status connectionStatus;
    protected final Direction direction;
    protected final int peerConnectionID;
    protected final ServiceReference peerConnectionManager;
    protected final ProtocolInfo protocolInfo;
    protected final int rcsID;

    public enum Direction {
        Output,
        Input;

        public Direction getOpposite() {
            return equals(Output) ? Input : Output;
        }
    }

    public enum Status {
        OK,
        ContentFormatMismatch,
        InsufficientBandwidth,
        UnreliableChannel,
        Unknown
    }

    public ConnectionInfo() {
        this(0, 0, 0, null, null, -1, Direction.Input, Status.Unknown);
    }

    public ConnectionInfo(int i, int i2, int i3, ProtocolInfo protocolInfo2, ServiceReference serviceReference, int i4, Direction direction2, Status status) {
        this.connectionStatus = Status.Unknown;
        this.connectionID = i;
        this.rcsID = i2;
        this.avTransportID = i3;
        this.protocolInfo = protocolInfo2;
        this.peerConnectionManager = serviceReference;
        this.peerConnectionID = i4;
        this.direction = direction2;
        this.connectionStatus = status;
    }

    public int getConnectionID() {
        return this.connectionID;
    }

    public int getRcsID() {
        return this.rcsID;
    }

    public int getAvTransportID() {
        return this.avTransportID;
    }

    public ProtocolInfo getProtocolInfo() {
        return this.protocolInfo;
    }

    public ServiceReference getPeerConnectionManager() {
        return this.peerConnectionManager;
    }

    public int getPeerConnectionID() {
        return this.peerConnectionID;
    }

    public Direction getDirection() {
        return this.direction;
    }

    public synchronized Status getConnectionStatus() {
        return this.connectionStatus;
    }

    public synchronized void setConnectionStatus(Status status) {
        this.connectionStatus = status;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ConnectionInfo connectionInfo = (ConnectionInfo) obj;
        if (this.avTransportID != connectionInfo.avTransportID || this.connectionID != connectionInfo.connectionID || this.peerConnectionID != connectionInfo.peerConnectionID || this.rcsID != connectionInfo.rcsID || this.connectionStatus != connectionInfo.connectionStatus || this.direction != connectionInfo.direction) {
            return false;
        }
        ServiceReference serviceReference = this.peerConnectionManager;
        if (serviceReference == null ? connectionInfo.peerConnectionManager != null : !serviceReference.equals(connectionInfo.peerConnectionManager)) {
            return false;
        }
        ProtocolInfo protocolInfo2 = this.protocolInfo;
        return protocolInfo2 == null ? connectionInfo.protocolInfo == null : protocolInfo2.equals(connectionInfo.protocolInfo);
    }

    public int hashCode() {
        int i = ((((this.connectionID * 31) + this.rcsID) * 31) + this.avTransportID) * 31;
        ProtocolInfo protocolInfo2 = this.protocolInfo;
        int i2 = 0;
        int hashCode = (i + (protocolInfo2 != null ? protocolInfo2.hashCode() : 0)) * 31;
        ServiceReference serviceReference = this.peerConnectionManager;
        if (serviceReference != null) {
            i2 = serviceReference.hashCode();
        }
        return ((((((hashCode + i2) * 31) + this.peerConnectionID) * 31) + this.direction.hashCode()) * 31) + this.connectionStatus.hashCode();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        sb.append(getClass().getSimpleName());
        sb.append(") ID: ");
        sb.append(getConnectionID());
        sb.append(", Status: ");
        sb.append(getConnectionStatus());
        return sb.toString();
    }
}
