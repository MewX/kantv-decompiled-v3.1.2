package org.fourthline.cling.transport;

import java.net.BindException;
import java.net.DatagramPacket;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.enterprise.context.ApplicationScoped;
import javax.enterprise.event.Observes;
import javax.enterprise.inject.Default;
import javax.inject.Inject;
import org.fourthline.cling.UpnpServiceConfiguration;
import org.fourthline.cling.model.NetworkAddress;
import org.fourthline.cling.model.message.IncomingDatagramMessage;
import org.fourthline.cling.model.message.OutgoingDatagramMessage;
import org.fourthline.cling.model.message.StreamRequestMessage;
import org.fourthline.cling.model.message.StreamResponseMessage;
import org.fourthline.cling.protocol.ProtocolCreationException;
import org.fourthline.cling.protocol.ProtocolFactory;
import org.fourthline.cling.protocol.ReceivingAsync;
import org.fourthline.cling.transport.spi.DatagramIO;
import org.fourthline.cling.transport.spi.InitializationException;
import org.fourthline.cling.transport.spi.MulticastReceiver;
import org.fourthline.cling.transport.spi.NetworkAddressFactory;
import org.fourthline.cling.transport.spi.NoNetworkException;
import org.fourthline.cling.transport.spi.StreamClient;
import org.fourthline.cling.transport.spi.StreamServer;
import org.fourthline.cling.transport.spi.UpnpStream;
import org.seamless.util.Exceptions;

@ApplicationScoped
public class RouterImpl implements Router {
    private static Logger log = Logger.getLogger(Router.class.getName());
    protected UpnpServiceConfiguration configuration;
    protected final Map<InetAddress, DatagramIO> datagramIOs = new HashMap();
    protected volatile boolean enabled;
    protected final Map<NetworkInterface, MulticastReceiver> multicastReceivers = new HashMap();
    protected NetworkAddressFactory networkAddressFactory;
    protected ProtocolFactory protocolFactory;
    protected Lock readLock = this.routerLock.readLock();
    protected ReentrantReadWriteLock routerLock = new ReentrantReadWriteLock(true);
    protected StreamClient streamClient;
    protected final Map<InetAddress, StreamServer> streamServers = new HashMap();
    protected Lock writeLock = this.routerLock.writeLock();

    /* access modifiers changed from: protected */
    public int getLockTimeoutMillis() {
        return 6000;
    }

    protected RouterImpl() {
    }

    @Inject
    public RouterImpl(UpnpServiceConfiguration upnpServiceConfiguration, ProtocolFactory protocolFactory2) {
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Creating Router: ");
        sb.append(getClass().getName());
        logger.info(sb.toString());
        this.configuration = upnpServiceConfiguration;
        this.protocolFactory = protocolFactory2;
    }

    public boolean enable(@Default @Observes EnableRouter enableRouter) throws RouterException {
        return enable();
    }

    public boolean disable(@Default @Observes DisableRouter disableRouter) throws RouterException {
        return disable();
    }

    public UpnpServiceConfiguration getConfiguration() {
        return this.configuration;
    }

    public ProtocolFactory getProtocolFactory() {
        return this.protocolFactory;
    }

    public boolean enable() throws RouterException {
        boolean z;
        lock(this.writeLock);
        try {
            if (!this.enabled) {
                log.fine("Starting networking services...");
                this.networkAddressFactory = getConfiguration().createNetworkAddressFactory();
                startInterfaceBasedTransports(this.networkAddressFactory.getNetworkInterfaces());
                startAddressBasedTransports(this.networkAddressFactory.getBindAddresses());
                if (this.networkAddressFactory.hasUsableNetwork()) {
                    this.streamClient = getConfiguration().createStreamClient();
                    z = true;
                    this.enabled = true;
                    unlock(this.writeLock);
                    return z;
                }
                throw new NoNetworkException("No usable network interface and/or addresses available, check the log for errors.");
            }
        } catch (InitializationException e) {
            handleStartFailure(e);
        } catch (Throwable th) {
            unlock(this.writeLock);
            throw th;
        }
        z = false;
        unlock(this.writeLock);
        return z;
    }

    public boolean disable() throws RouterException {
        lock(this.writeLock);
        try {
            if (this.enabled) {
                log.fine("Disabling network services...");
                if (this.streamClient != null) {
                    log.fine("Stopping stream client connection management/pool");
                    this.streamClient.stop();
                    this.streamClient = null;
                }
                for (Entry entry : this.streamServers.entrySet()) {
                    Logger logger = log;
                    StringBuilder sb = new StringBuilder();
                    sb.append("Stopping stream server on address: ");
                    sb.append(entry.getKey());
                    logger.fine(sb.toString());
                    ((StreamServer) entry.getValue()).stop();
                }
                this.streamServers.clear();
                for (Entry entry2 : this.multicastReceivers.entrySet()) {
                    Logger logger2 = log;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Stopping multicast receiver on interface: ");
                    sb2.append(((NetworkInterface) entry2.getKey()).getDisplayName());
                    logger2.fine(sb2.toString());
                    ((MulticastReceiver) entry2.getValue()).stop();
                }
                this.multicastReceivers.clear();
                for (Entry entry3 : this.datagramIOs.entrySet()) {
                    Logger logger3 = log;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Stopping datagram I/O on address: ");
                    sb3.append(entry3.getKey());
                    logger3.fine(sb3.toString());
                    ((DatagramIO) entry3.getValue()).stop();
                }
                this.datagramIOs.clear();
                this.networkAddressFactory = null;
                this.enabled = false;
                return true;
            }
            unlock(this.writeLock);
            return false;
        } finally {
            unlock(this.writeLock);
        }
    }

    public void shutdown() throws RouterException {
        disable();
    }

    public boolean isEnabled() {
        return this.enabled;
    }

    public void handleStartFailure(InitializationException initializationException) throws InitializationException {
        if (initializationException instanceof NoNetworkException) {
            log.info("Unable to initialize network router, no network found.");
            return;
        }
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Unable to initialize network router: ");
        sb.append(initializationException);
        logger.severe(sb.toString());
        Logger logger2 = log;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Cause: ");
        sb2.append(Exceptions.unwrap(initializationException));
        logger2.severe(sb2.toString());
    }

    public List<NetworkAddress> getActiveStreamServers(InetAddress inetAddress) throws RouterException {
        lock(this.readLock);
        try {
            if (!this.enabled || this.streamServers.size() <= 0) {
                List<NetworkAddress> list = Collections.EMPTY_LIST;
                unlock(this.readLock);
                return list;
            }
            ArrayList arrayList = new ArrayList();
            if (inetAddress != null) {
                StreamServer streamServer = (StreamServer) this.streamServers.get(inetAddress);
                if (streamServer != null) {
                    arrayList.add(new NetworkAddress(inetAddress, streamServer.getPort(), this.networkAddressFactory.getHardwareAddress(inetAddress)));
                    return arrayList;
                }
            }
            for (Entry entry : this.streamServers.entrySet()) {
                arrayList.add(new NetworkAddress((InetAddress) entry.getKey(), ((StreamServer) entry.getValue()).getPort(), this.networkAddressFactory.getHardwareAddress((InetAddress) entry.getKey())));
            }
            return arrayList;
        } finally {
            unlock(this.readLock);
        }
    }

    public void received(IncomingDatagramMessage incomingDatagramMessage) {
        if (!this.enabled) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Router disabled, ignoring incoming message: ");
            sb.append(incomingDatagramMessage);
            logger.fine(sb.toString());
            return;
        }
        try {
            ReceivingAsync createReceivingAsync = getProtocolFactory().createReceivingAsync(incomingDatagramMessage);
            if (createReceivingAsync == null) {
                if (log.isLoggable(Level.FINEST)) {
                    Logger logger2 = log;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("No protocol, ignoring received message: ");
                    sb2.append(incomingDatagramMessage);
                    logger2.finest(sb2.toString());
                }
                return;
            }
            if (log.isLoggable(Level.FINE)) {
                Logger logger3 = log;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Received asynchronous message: ");
                sb3.append(incomingDatagramMessage);
                logger3.fine(sb3.toString());
            }
            getConfiguration().getAsyncProtocolExecutor().execute(createReceivingAsync);
        } catch (ProtocolCreationException e) {
            Logger logger4 = log;
            StringBuilder sb4 = new StringBuilder();
            sb4.append("Handling received datagram failed - ");
            sb4.append(Exceptions.unwrap(e).toString());
            logger4.warning(sb4.toString());
        }
    }

    public void received(UpnpStream upnpStream) {
        if (!this.enabled) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Router disabled, ignoring incoming: ");
            sb.append(upnpStream);
            logger.fine(sb.toString());
            return;
        }
        Logger logger2 = log;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Received synchronous stream: ");
        sb2.append(upnpStream);
        logger2.fine(sb2.toString());
        getConfiguration().getSyncProtocolExecutorService().execute(upnpStream);
    }

    public void send(OutgoingDatagramMessage outgoingDatagramMessage) throws RouterException {
        lock(this.readLock);
        try {
            if (this.enabled) {
                for (DatagramIO send : this.datagramIOs.values()) {
                    send.send(outgoingDatagramMessage);
                }
            } else {
                Logger logger = log;
                StringBuilder sb = new StringBuilder();
                sb.append("Router disabled, not sending datagram: ");
                sb.append(outgoingDatagramMessage);
                logger.fine(sb.toString());
            }
        } finally {
            unlock(this.readLock);
        }
    }

    public StreamResponseMessage send(StreamRequestMessage streamRequestMessage) throws RouterException {
        lock(this.readLock);
        try {
            if (!this.enabled) {
                Logger logger = log;
                StringBuilder sb = new StringBuilder();
                sb.append("Router disabled, not sending stream request: ");
                sb.append(streamRequestMessage);
                logger.fine(sb.toString());
            } else if (this.streamClient == null) {
                Logger logger2 = log;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("No StreamClient available, not sending: ");
                sb2.append(streamRequestMessage);
                logger2.fine(sb2.toString());
            } else {
                Logger logger3 = log;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Sending via TCP unicast stream: ");
                sb3.append(streamRequestMessage);
                logger3.fine(sb3.toString());
                StreamResponseMessage sendRequest = this.streamClient.sendRequest(streamRequestMessage);
                unlock(this.readLock);
                return sendRequest;
            }
            unlock(this.readLock);
            return null;
        } catch (InterruptedException e) {
            throw new RouterException("Sending stream request was interrupted", e);
        } catch (Throwable th) {
            unlock(this.readLock);
            throw th;
        }
    }

    public void broadcast(byte[] bArr) throws RouterException {
        lock(this.readLock);
        try {
            if (this.enabled) {
                for (Entry entry : this.datagramIOs.entrySet()) {
                    InetAddress broadcastAddress = this.networkAddressFactory.getBroadcastAddress((InetAddress) entry.getKey());
                    if (broadcastAddress != null) {
                        Logger logger = log;
                        StringBuilder sb = new StringBuilder();
                        sb.append("Sending UDP datagram to broadcast address: ");
                        sb.append(broadcastAddress.getHostAddress());
                        logger.fine(sb.toString());
                        ((DatagramIO) entry.getValue()).send(new DatagramPacket(bArr, bArr.length, broadcastAddress, 9));
                    }
                }
            } else {
                Logger logger2 = log;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Router disabled, not broadcasting bytes: ");
                sb2.append(bArr.length);
                logger2.fine(sb2.toString());
            }
        } finally {
            unlock(this.readLock);
        }
    }

    /* access modifiers changed from: protected */
    public void startInterfaceBasedTransports(Iterator<NetworkInterface> it) throws InitializationException {
        while (it.hasNext()) {
            NetworkInterface networkInterface = (NetworkInterface) it.next();
            MulticastReceiver createMulticastReceiver = getConfiguration().createMulticastReceiver(this.networkAddressFactory);
            if (createMulticastReceiver == null) {
                Logger logger = log;
                StringBuilder sb = new StringBuilder();
                sb.append("Configuration did not create a MulticastReceiver for: ");
                sb.append(networkInterface);
                logger.info(sb.toString());
            } else {
                try {
                    if (log.isLoggable(Level.FINE)) {
                        Logger logger2 = log;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Init multicast receiver on interface: ");
                        sb2.append(networkInterface.getDisplayName());
                        logger2.fine(sb2.toString());
                    }
                    createMulticastReceiver.init(networkInterface, this, this.networkAddressFactory, getConfiguration().getDatagramProcessor());
                    this.multicastReceivers.put(networkInterface, createMulticastReceiver);
                } catch (InitializationException e) {
                    throw e;
                }
            }
        }
        for (Entry entry : this.multicastReceivers.entrySet()) {
            if (log.isLoggable(Level.FINE)) {
                Logger logger3 = log;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Starting multicast receiver on interface: ");
                sb3.append(((NetworkInterface) entry.getKey()).getDisplayName());
                logger3.fine(sb3.toString());
            }
            getConfiguration().getMulticastReceiverExecutor().execute((Runnable) entry.getValue());
        }
    }

    /* access modifiers changed from: protected */
    public void startAddressBasedTransports(Iterator<InetAddress> it) throws InitializationException {
        while (it.hasNext()) {
            InetAddress inetAddress = (InetAddress) it.next();
            StreamServer createStreamServer = getConfiguration().createStreamServer(this.networkAddressFactory);
            String str = "Configuration did not create a StreamServer for: ";
            if (createStreamServer == null) {
                Logger logger = log;
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append(inetAddress);
                logger.info(sb.toString());
            } else {
                try {
                    if (log.isLoggable(Level.FINE)) {
                        Logger logger2 = log;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Init stream server on address: ");
                        sb2.append(inetAddress);
                        logger2.fine(sb2.toString());
                    }
                    createStreamServer.init(inetAddress, this);
                    this.streamServers.put(inetAddress, createStreamServer);
                } catch (InitializationException e) {
                    Throwable unwrap = Exceptions.unwrap(e);
                    if (unwrap instanceof BindException) {
                        Logger logger3 = log;
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("Failed to init StreamServer: ");
                        sb3.append(unwrap);
                        logger3.warning(sb3.toString());
                        if (log.isLoggable(Level.FINE)) {
                            log.log(Level.FINE, "Initialization exception root cause", unwrap);
                        }
                        Logger logger4 = log;
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append("Removing unusable address: ");
                        sb4.append(inetAddress);
                        logger4.warning(sb4.toString());
                        it.remove();
                    } else {
                        throw e;
                    }
                }
            }
            DatagramIO createDatagramIO = getConfiguration().createDatagramIO(this.networkAddressFactory);
            if (createDatagramIO == null) {
                Logger logger5 = log;
                StringBuilder sb5 = new StringBuilder();
                sb5.append(str);
                sb5.append(inetAddress);
                logger5.info(sb5.toString());
            } else {
                try {
                    if (log.isLoggable(Level.FINE)) {
                        Logger logger6 = log;
                        StringBuilder sb6 = new StringBuilder();
                        sb6.append("Init datagram I/O on address: ");
                        sb6.append(inetAddress);
                        logger6.fine(sb6.toString());
                    }
                    createDatagramIO.init(inetAddress, this, getConfiguration().getDatagramProcessor());
                    this.datagramIOs.put(inetAddress, createDatagramIO);
                } catch (InitializationException e2) {
                    throw e2;
                }
            }
        }
        for (Entry entry : this.streamServers.entrySet()) {
            if (log.isLoggable(Level.FINE)) {
                Logger logger7 = log;
                StringBuilder sb7 = new StringBuilder();
                sb7.append("Starting stream server on address: ");
                sb7.append(entry.getKey());
                logger7.fine(sb7.toString());
            }
            getConfiguration().getStreamServerExecutorService().execute((Runnable) entry.getValue());
        }
        for (Entry entry2 : this.datagramIOs.entrySet()) {
            if (log.isLoggable(Level.FINE)) {
                Logger logger8 = log;
                StringBuilder sb8 = new StringBuilder();
                sb8.append("Starting datagram I/O on address: ");
                sb8.append(entry2.getKey());
                logger8.fine(sb8.toString());
            }
            getConfiguration().getDatagramIOExecutor().execute((Runnable) entry2.getValue());
        }
    }

    /* access modifiers changed from: protected */
    public void lock(Lock lock, int i) throws RouterException {
        try {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Trying to obtain lock with timeout milliseconds '");
            sb.append(i);
            sb.append("': ");
            sb.append(lock.getClass().getSimpleName());
            logger.finest(sb.toString());
            if (lock.tryLock((long) i, TimeUnit.MILLISECONDS)) {
                Logger logger2 = log;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Acquired router lock: ");
                sb2.append(lock.getClass().getSimpleName());
                logger2.finest(sb2.toString());
                return;
            }
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Router wasn't available exclusively after waiting ");
            sb3.append(i);
            sb3.append("ms, lock failed: ");
            sb3.append(lock.getClass().getSimpleName());
            throw new RouterException(sb3.toString());
        } catch (InterruptedException e) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append("Interruption while waiting for exclusive access: ");
            sb4.append(lock.getClass().getSimpleName());
            throw new RouterException(sb4.toString(), e);
        }
    }

    /* access modifiers changed from: protected */
    public void lock(Lock lock) throws RouterException {
        lock(lock, getLockTimeoutMillis());
    }

    /* access modifiers changed from: protected */
    public void unlock(Lock lock) {
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Releasing router lock: ");
        sb.append(lock.getClass().getSimpleName());
        logger.finest(sb.toString());
        lock.unlock();
    }
}
