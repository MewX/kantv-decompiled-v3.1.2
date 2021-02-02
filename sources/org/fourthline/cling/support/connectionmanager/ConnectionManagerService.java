package org.fourthline.cling.support.connectionmanager;

import java.beans.PropertyChangeSupport;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Logger;
import org.fourthline.cling.binding.annotations.UpnpAction;
import org.fourthline.cling.binding.annotations.UpnpInputArgument;
import org.fourthline.cling.binding.annotations.UpnpOutputArgument;
import org.fourthline.cling.binding.annotations.UpnpService;
import org.fourthline.cling.binding.annotations.UpnpServiceId;
import org.fourthline.cling.binding.annotations.UpnpServiceType;
import org.fourthline.cling.binding.annotations.UpnpStateVariable;
import org.fourthline.cling.binding.annotations.UpnpStateVariables;
import org.fourthline.cling.model.ServiceReference;
import org.fourthline.cling.model.action.ActionException;
import org.fourthline.cling.model.types.UnsignedIntegerFourBytes;
import org.fourthline.cling.model.types.csv.CSV;
import org.fourthline.cling.model.types.csv.CSVUnsignedIntegerFourBytes;
import org.fourthline.cling.support.model.ConnectionInfo;
import org.fourthline.cling.support.model.ConnectionInfo.Direction;
import org.fourthline.cling.support.model.ConnectionInfo.Status;
import org.fourthline.cling.support.model.ProtocolInfo;
import org.fourthline.cling.support.model.ProtocolInfos;

@UpnpStateVariables({@UpnpStateVariable(datatype = "string", name = "SourceProtocolInfo"), @UpnpStateVariable(datatype = "string", name = "SinkProtocolInfo"), @UpnpStateVariable(datatype = "string", name = "CurrentConnectionIDs"), @UpnpStateVariable(allowedValuesEnum = Status.class, name = "A_ARG_TYPE_ConnectionStatus", sendEvents = false), @UpnpStateVariable(datatype = "string", name = "A_ARG_TYPE_ConnectionManager", sendEvents = false), @UpnpStateVariable(allowedValuesEnum = Direction.class, name = "A_ARG_TYPE_Direction", sendEvents = false), @UpnpStateVariable(datatype = "string", name = "A_ARG_TYPE_ProtocolInfo", sendEvents = false), @UpnpStateVariable(datatype = "i4", name = "A_ARG_TYPE_ConnectionID", sendEvents = false), @UpnpStateVariable(datatype = "i4", name = "A_ARG_TYPE_AVTransportID", sendEvents = false), @UpnpStateVariable(datatype = "i4", name = "A_ARG_TYPE_RcsID", sendEvents = false)})
@UpnpService(serviceId = @UpnpServiceId("ConnectionManager"), serviceType = @UpnpServiceType(value = "ConnectionManager", version = 1), stringConvertibleTypes = {ProtocolInfo.class, ProtocolInfos.class, ServiceReference.class})
public class ConnectionManagerService {
    private static final Logger log = Logger.getLogger(ConnectionManagerService.class.getName());
    protected final Map<Integer, ConnectionInfo> activeConnections;
    protected final PropertyChangeSupport propertyChangeSupport;
    protected final ProtocolInfos sinkProtocolInfo;
    protected final ProtocolInfos sourceProtocolInfo;

    public ConnectionManagerService() {
        this(new ConnectionInfo());
    }

    public ConnectionManagerService(ProtocolInfos protocolInfos, ProtocolInfos protocolInfos2) {
        this(protocolInfos, protocolInfos2, new ConnectionInfo());
    }

    public ConnectionManagerService(ConnectionInfo... connectionInfoArr) {
        this(null, new ProtocolInfos(new ProtocolInfo[0]), new ProtocolInfos(new ProtocolInfo[0]), connectionInfoArr);
    }

    public ConnectionManagerService(ProtocolInfos protocolInfos, ProtocolInfos protocolInfos2, ConnectionInfo... connectionInfoArr) {
        this(null, protocolInfos, protocolInfos2, connectionInfoArr);
    }

    public ConnectionManagerService(PropertyChangeSupport propertyChangeSupport2, ProtocolInfos protocolInfos, ProtocolInfos protocolInfos2, ConnectionInfo... connectionInfoArr) {
        this.activeConnections = new ConcurrentHashMap();
        if (propertyChangeSupport2 == null) {
            propertyChangeSupport2 = new PropertyChangeSupport(this);
        }
        this.propertyChangeSupport = propertyChangeSupport2;
        this.sourceProtocolInfo = protocolInfos;
        this.sinkProtocolInfo = protocolInfos2;
        for (ConnectionInfo connectionInfo : connectionInfoArr) {
            this.activeConnections.put(Integer.valueOf(connectionInfo.getConnectionID()), connectionInfo);
        }
    }

    public PropertyChangeSupport getPropertyChangeSupport() {
        return this.propertyChangeSupport;
    }

    @UpnpAction(out = {@UpnpOutputArgument(getterName = "getRcsID", name = "RcsID"), @UpnpOutputArgument(getterName = "getAvTransportID", name = "AVTransportID"), @UpnpOutputArgument(getterName = "getProtocolInfo", name = "ProtocolInfo"), @UpnpOutputArgument(getterName = "getPeerConnectionManager", name = "PeerConnectionManager", stateVariable = "A_ARG_TYPE_ConnectionManager"), @UpnpOutputArgument(getterName = "getPeerConnectionID", name = "PeerConnectionID", stateVariable = "A_ARG_TYPE_ConnectionID"), @UpnpOutputArgument(getterName = "getDirection", name = "Direction"), @UpnpOutputArgument(getterName = "getConnectionStatus", name = "Status", stateVariable = "A_ARG_TYPE_ConnectionStatus")})
    public synchronized ConnectionInfo getCurrentConnectionInfo(@UpnpInputArgument(name = "ConnectionID") int i) throws ActionException {
        ConnectionInfo connectionInfo;
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Getting connection information of connection ID: ");
        sb.append(i);
        logger.fine(sb.toString());
        connectionInfo = (ConnectionInfo) this.activeConnections.get(Integer.valueOf(i));
        if (connectionInfo == null) {
            ConnectionManagerErrorCode connectionManagerErrorCode = ConnectionManagerErrorCode.INVALID_CONNECTION_REFERENCE;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Non-active connection ID: ");
            sb2.append(i);
            throw new ConnectionManagerException(connectionManagerErrorCode, sb2.toString());
        }
        return connectionInfo;
    }

    @UpnpAction(out = {@UpnpOutputArgument(name = "ConnectionIDs")})
    public synchronized CSV<UnsignedIntegerFourBytes> getCurrentConnectionIDs() {
        CSVUnsignedIntegerFourBytes cSVUnsignedIntegerFourBytes;
        cSVUnsignedIntegerFourBytes = new CSVUnsignedIntegerFourBytes();
        for (Integer intValue : this.activeConnections.keySet()) {
            cSVUnsignedIntegerFourBytes.add(new UnsignedIntegerFourBytes((long) intValue.intValue()));
        }
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Returning current connection IDs: ");
        sb.append(cSVUnsignedIntegerFourBytes.size());
        logger.fine(sb.toString());
        return cSVUnsignedIntegerFourBytes;
    }

    @UpnpAction(out = {@UpnpOutputArgument(getterName = "getSourceProtocolInfo", name = "Source", stateVariable = "SourceProtocolInfo"), @UpnpOutputArgument(getterName = "getSinkProtocolInfo", name = "Sink", stateVariable = "SinkProtocolInfo")})
    public synchronized void getProtocolInfo() throws ActionException {
    }

    public synchronized ProtocolInfos getSourceProtocolInfo() {
        return this.sourceProtocolInfo;
    }

    public synchronized ProtocolInfos getSinkProtocolInfo() {
        return this.sinkProtocolInfo;
    }
}
