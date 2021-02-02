package org.fourthline.cling.transport.impl;

import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InterfaceAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.fourthline.cling.model.Constants;
import org.fourthline.cling.transport.spi.InitializationException;
import org.fourthline.cling.transport.spi.NetworkAddressFactory;
import org.fourthline.cling.transport.spi.NoNetworkException;
import org.seamless.util.Iterators.Synchronized;

public class NetworkAddressFactoryImpl implements NetworkAddressFactory {
    public static final int DEFAULT_TCP_HTTP_LISTEN_PORT = 0;
    private static Logger log = Logger.getLogger(NetworkAddressFactoryImpl.class.getName());
    protected final List<InetAddress> bindAddresses;
    protected final List<NetworkInterface> networkInterfaces;
    protected int streamListenPort;
    protected final Set<String> useAddresses;
    protected final Set<String> useInterfaces;

    public int getMulticastPort() {
        return 1900;
    }

    /* access modifiers changed from: protected */
    public boolean requiresNetworkInterface() {
        return true;
    }

    public NetworkAddressFactoryImpl() throws InitializationException {
        this(0);
    }

    public NetworkAddressFactoryImpl(int i) throws InitializationException {
        this.useInterfaces = new HashSet();
        this.useAddresses = new HashSet();
        this.networkInterfaces = new ArrayList();
        this.bindAddresses = new ArrayList();
        System.setProperty("java.net.preferIPv4Stack", "true");
        String property = System.getProperty(NetworkAddressFactory.SYSTEM_PROPERTY_NET_IFACES);
        String str = ",";
        if (property != null) {
            this.useInterfaces.addAll(Arrays.asList(property.split(str)));
        }
        String property2 = System.getProperty(NetworkAddressFactory.SYSTEM_PROPERTY_NET_ADDRESSES);
        if (property2 != null) {
            this.useAddresses.addAll(Arrays.asList(property2.split(str)));
        }
        discoverNetworkInterfaces();
        discoverBindAddresses();
        if (this.networkInterfaces.size() == 0 || this.bindAddresses.size() == 0) {
            log.warning("No usable network interface or addresses found");
            if (requiresNetworkInterface()) {
                throw new NoNetworkException("Could not discover any usable network interfaces and/or addresses");
            }
        }
        this.streamListenPort = i;
    }

    public void logInterfaceInformation() {
        synchronized (this.networkInterfaces) {
            if (this.networkInterfaces.isEmpty()) {
                log.info("No network interface to display!");
                return;
            }
            for (NetworkInterface logInterfaceInformation : this.networkInterfaces) {
                try {
                    logInterfaceInformation(logInterfaceInformation);
                } catch (SocketException e) {
                    log.log(Level.WARNING, "Exception while logging network interface information", e);
                }
            }
        }
    }

    public InetAddress getMulticastGroup() {
        try {
            return InetAddress.getByName(Constants.IPV4_UPNP_MULTICAST_GROUP);
        } catch (UnknownHostException e) {
            throw new RuntimeException(e);
        }
    }

    public int getStreamListenPort() {
        return this.streamListenPort;
    }

    public Iterator<NetworkInterface> getNetworkInterfaces() {
        return new Synchronized<NetworkInterface>(this.networkInterfaces) {
            /* access modifiers changed from: protected */
            public void synchronizedRemove(int i) {
                synchronized (NetworkAddressFactoryImpl.this.networkInterfaces) {
                    NetworkAddressFactoryImpl.this.networkInterfaces.remove(i);
                }
            }
        };
    }

    public Iterator<InetAddress> getBindAddresses() {
        return new Synchronized<InetAddress>(this.bindAddresses) {
            /* access modifiers changed from: protected */
            public void synchronizedRemove(int i) {
                synchronized (NetworkAddressFactoryImpl.this.bindAddresses) {
                    NetworkAddressFactoryImpl.this.bindAddresses.remove(i);
                }
            }
        };
    }

    public boolean hasUsableNetwork() {
        return this.networkInterfaces.size() > 0 && this.bindAddresses.size() > 0;
    }

    public byte[] getHardwareAddress(InetAddress inetAddress) {
        byte[] bArr = null;
        try {
            NetworkInterface byInetAddress = NetworkInterface.getByInetAddress(inetAddress);
            if (byInetAddress != null) {
                bArr = byInetAddress.getHardwareAddress();
            }
            return bArr;
        } catch (Throwable th) {
            Logger logger = log;
            Level level = Level.WARNING;
            StringBuilder sb = new StringBuilder();
            sb.append("Cannot get hardware address for: ");
            sb.append(inetAddress);
            logger.log(level, sb.toString(), th);
            return null;
        }
    }

    public InetAddress getBroadcastAddress(InetAddress inetAddress) {
        synchronized (this.networkInterfaces) {
            for (NetworkInterface interfaceAddresses : this.networkInterfaces) {
                Iterator it = getInterfaceAddresses(interfaceAddresses).iterator();
                while (true) {
                    if (it.hasNext()) {
                        InterfaceAddress interfaceAddress = (InterfaceAddress) it.next();
                        if (interfaceAddress != null && interfaceAddress.getAddress().equals(inetAddress)) {
                            InetAddress broadcast = interfaceAddress.getBroadcast();
                            return broadcast;
                        }
                    }
                }
            }
            return null;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0047, code lost:
        return null;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Short getAddressNetworkPrefixLength(java.net.InetAddress r7) {
        /*
            r6 = this;
            java.util.List<java.net.NetworkInterface> r0 = r6.networkInterfaces
            monitor-enter(r0)
            java.util.List<java.net.NetworkInterface> r1 = r6.networkInterfaces     // Catch:{ all -> 0x004a }
            java.util.Iterator r1 = r1.iterator()     // Catch:{ all -> 0x004a }
        L_0x0009:
            boolean r2 = r1.hasNext()     // Catch:{ all -> 0x004a }
            r3 = 0
            if (r2 == 0) goto L_0x0048
            java.lang.Object r2 = r1.next()     // Catch:{ all -> 0x004a }
            java.net.NetworkInterface r2 = (java.net.NetworkInterface) r2     // Catch:{ all -> 0x004a }
            java.util.List r2 = r6.getInterfaceAddresses(r2)     // Catch:{ all -> 0x004a }
            java.util.Iterator r2 = r2.iterator()     // Catch:{ all -> 0x004a }
        L_0x001e:
            boolean r4 = r2.hasNext()     // Catch:{ all -> 0x004a }
            if (r4 == 0) goto L_0x0009
            java.lang.Object r4 = r2.next()     // Catch:{ all -> 0x004a }
            java.net.InterfaceAddress r4 = (java.net.InterfaceAddress) r4     // Catch:{ all -> 0x004a }
            if (r4 == 0) goto L_0x001e
            java.net.InetAddress r5 = r4.getAddress()     // Catch:{ all -> 0x004a }
            boolean r5 = r5.equals(r7)     // Catch:{ all -> 0x004a }
            if (r5 == 0) goto L_0x001e
            short r7 = r4.getNetworkPrefixLength()     // Catch:{ all -> 0x004a }
            if (r7 <= 0) goto L_0x0046
            r1 = 32
            if (r7 >= r1) goto L_0x0046
            java.lang.Short r7 = java.lang.Short.valueOf(r7)     // Catch:{ all -> 0x004a }
            monitor-exit(r0)     // Catch:{ all -> 0x004a }
            return r7
        L_0x0046:
            monitor-exit(r0)     // Catch:{ all -> 0x004a }
            return r3
        L_0x0048:
            monitor-exit(r0)     // Catch:{ all -> 0x004a }
            return r3
        L_0x004a:
            r7 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x004a }
            goto L_0x004e
        L_0x004d:
            throw r7
        L_0x004e:
            goto L_0x004d
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fourthline.cling.transport.impl.NetworkAddressFactoryImpl.getAddressNetworkPrefixLength(java.net.InetAddress):java.lang.Short");
    }

    public InetAddress getLocalAddress(NetworkInterface networkInterface, boolean z, InetAddress inetAddress) {
        InetAddress bindAddressInSubnetOf = getBindAddressInSubnetOf(inetAddress);
        if (bindAddressInSubnetOf != null) {
            return bindAddressInSubnetOf;
        }
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Could not find local bind address in same subnet as: ");
        sb.append(inetAddress.getHostAddress());
        logger.finer(sb.toString());
        for (InetAddress inetAddress2 : getInetAddresses(networkInterface)) {
            if (z && (inetAddress2 instanceof Inet6Address)) {
                return inetAddress2;
            }
            if (!z && (inetAddress2 instanceof Inet4Address)) {
                return inetAddress2;
            }
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Can't find any IPv4 or IPv6 address on interface: ");
        sb2.append(networkInterface.getDisplayName());
        throw new IllegalStateException(sb2.toString());
    }

    /* access modifiers changed from: protected */
    public List<InterfaceAddress> getInterfaceAddresses(NetworkInterface networkInterface) {
        return networkInterface.getInterfaceAddresses();
    }

    /* access modifiers changed from: protected */
    public List<InetAddress> getInetAddresses(NetworkInterface networkInterface) {
        return Collections.list(networkInterface.getInetAddresses());
    }

    /* access modifiers changed from: protected */
    public InetAddress getBindAddressInSubnetOf(InetAddress inetAddress) {
        synchronized (this.networkInterfaces) {
            loop0:
            for (NetworkInterface interfaceAddresses : this.networkInterfaces) {
                Iterator it = getInterfaceAddresses(interfaceAddresses).iterator();
                while (true) {
                    if (it.hasNext()) {
                        InterfaceAddress interfaceAddress = (InterfaceAddress) it.next();
                        synchronized (this.bindAddresses) {
                            if (interfaceAddress != null) {
                                if (this.bindAddresses.contains(interfaceAddress.getAddress())) {
                                    if (isInSubnet(inetAddress.getAddress(), interfaceAddress.getAddress().getAddress(), interfaceAddress.getNetworkPrefixLength())) {
                                        InetAddress address = interfaceAddress.getAddress();
                                        return address;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return null;
        }
    }

    /* access modifiers changed from: protected */
    public boolean isInSubnet(byte[] bArr, byte[] bArr2, short s) {
        boolean z = false;
        if (bArr.length != bArr2.length || s / 8 > bArr.length) {
            return false;
        }
        int i = 0;
        while (s >= 8 && i < bArr.length) {
            if (bArr[i] != bArr2[i]) {
                return false;
            }
            i++;
            s = (short) (s - 8);
        }
        if (i == bArr.length) {
            return true;
        }
        byte b = (byte) (((1 << (8 - s)) - 1) ^ -1);
        if ((bArr[i] & b) == (bArr2[i] & b)) {
            z = true;
        }
        return z;
    }

    /* access modifiers changed from: protected */
    public void discoverNetworkInterfaces() throws InitializationException {
        try {
            Iterator it = Collections.list(NetworkInterface.getNetworkInterfaces()).iterator();
            while (it.hasNext()) {
                NetworkInterface networkInterface = (NetworkInterface) it.next();
                Logger logger = log;
                StringBuilder sb = new StringBuilder();
                sb.append("Analyzing network interface: ");
                sb.append(networkInterface.getDisplayName());
                logger.finer(sb.toString());
                if (isUsableNetworkInterface(networkInterface)) {
                    Logger logger2 = log;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Discovered usable network interface: ");
                    sb2.append(networkInterface.getDisplayName());
                    logger2.fine(sb2.toString());
                    synchronized (this.networkInterfaces) {
                        this.networkInterfaces.add(networkInterface);
                    }
                } else {
                    Logger logger3 = log;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Ignoring non-usable network interface: ");
                    sb3.append(networkInterface.getDisplayName());
                    logger3.finer(sb3.toString());
                }
            }
        } catch (Exception e) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append("Could not not analyze local network interfaces: ");
            sb4.append(e);
            throw new InitializationException(sb4.toString(), e);
        }
    }

    /* access modifiers changed from: protected */
    public boolean isUsableNetworkInterface(NetworkInterface networkInterface) throws Exception {
        if (!networkInterface.isUp()) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Skipping network interface (down): ");
            sb.append(networkInterface.getDisplayName());
            logger.finer(sb.toString());
            return false;
        } else if (getInetAddresses(networkInterface).size() == 0) {
            Logger logger2 = log;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Skipping network interface without bound IP addresses: ");
            sb2.append(networkInterface.getDisplayName());
            logger2.finer(sb2.toString());
            return false;
        } else {
            String str = "vmnet";
            if (networkInterface.getName().toLowerCase(Locale.ROOT).startsWith(str) || (networkInterface.getDisplayName() != null && networkInterface.getDisplayName().toLowerCase(Locale.ROOT).contains(str))) {
                Logger logger3 = log;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Skipping network interface (VMWare): ");
                sb3.append(networkInterface.getDisplayName());
                logger3.finer(sb3.toString());
                return false;
            } else if (networkInterface.getName().toLowerCase(Locale.ROOT).startsWith("vnic")) {
                Logger logger4 = log;
                StringBuilder sb4 = new StringBuilder();
                sb4.append("Skipping network interface (Parallels): ");
                sb4.append(networkInterface.getDisplayName());
                logger4.finer(sb4.toString());
                return false;
            } else if (networkInterface.getName().toLowerCase(Locale.ROOT).startsWith("vboxnet")) {
                Logger logger5 = log;
                StringBuilder sb5 = new StringBuilder();
                sb5.append("Skipping network interface (Virtual Box): ");
                sb5.append(networkInterface.getDisplayName());
                logger5.finer(sb5.toString());
                return false;
            } else if (networkInterface.getName().toLowerCase(Locale.ROOT).contains("virtual")) {
                Logger logger6 = log;
                StringBuilder sb6 = new StringBuilder();
                sb6.append("Skipping network interface (named '*virtual*'): ");
                sb6.append(networkInterface.getDisplayName());
                logger6.finer(sb6.toString());
                return false;
            } else if (networkInterface.getName().toLowerCase(Locale.ROOT).startsWith("ppp")) {
                Logger logger7 = log;
                StringBuilder sb7 = new StringBuilder();
                sb7.append("Skipping network interface (PPP): ");
                sb7.append(networkInterface.getDisplayName());
                logger7.finer(sb7.toString());
                return false;
            } else if (networkInterface.isLoopback()) {
                Logger logger8 = log;
                StringBuilder sb8 = new StringBuilder();
                sb8.append("Skipping network interface (ignoring loopback): ");
                sb8.append(networkInterface.getDisplayName());
                logger8.finer(sb8.toString());
                return false;
            } else if (this.useInterfaces.size() <= 0 || this.useInterfaces.contains(networkInterface.getName())) {
                if (!networkInterface.supportsMulticast()) {
                    Logger logger9 = log;
                    StringBuilder sb9 = new StringBuilder();
                    sb9.append("Network interface may not be multicast capable: ");
                    sb9.append(networkInterface.getDisplayName());
                    logger9.warning(sb9.toString());
                }
                return true;
            } else {
                Logger logger10 = log;
                StringBuilder sb10 = new StringBuilder();
                sb10.append("Skipping unwanted network interface (-Dorg.fourthline.cling.network.useInterfaces): ");
                sb10.append(networkInterface.getName());
                logger10.finer(sb10.toString());
                return false;
            }
        }
    }

    /* access modifiers changed from: protected */
    public void discoverBindAddresses() throws InitializationException {
        try {
            synchronized (this.networkInterfaces) {
                Iterator it = this.networkInterfaces.iterator();
                while (it.hasNext()) {
                    NetworkInterface networkInterface = (NetworkInterface) it.next();
                    Logger logger = log;
                    StringBuilder sb = new StringBuilder();
                    sb.append("Discovering addresses of interface: ");
                    sb.append(networkInterface.getDisplayName());
                    logger.finer(sb.toString());
                    int i = 0;
                    for (InetAddress inetAddress : getInetAddresses(networkInterface)) {
                        if (inetAddress == null) {
                            Logger logger2 = log;
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("Network has a null address: ");
                            sb2.append(networkInterface.getDisplayName());
                            logger2.warning(sb2.toString());
                        } else if (isUsableAddress(networkInterface, inetAddress)) {
                            Logger logger3 = log;
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("Discovered usable network interface address: ");
                            sb3.append(inetAddress.getHostAddress());
                            logger3.fine(sb3.toString());
                            i++;
                            synchronized (this.bindAddresses) {
                                this.bindAddresses.add(inetAddress);
                            }
                        } else {
                            Logger logger4 = log;
                            StringBuilder sb4 = new StringBuilder();
                            sb4.append("Ignoring non-usable network interface address: ");
                            sb4.append(inetAddress.getHostAddress());
                            logger4.finer(sb4.toString());
                        }
                    }
                    if (i == 0) {
                        Logger logger5 = log;
                        StringBuilder sb5 = new StringBuilder();
                        sb5.append("Network interface has no usable addresses, removing: ");
                        sb5.append(networkInterface.getDisplayName());
                        logger5.finer(sb5.toString());
                        it.remove();
                    }
                }
            }
        } catch (Exception e) {
            StringBuilder sb6 = new StringBuilder();
            sb6.append("Could not not analyze local network interfaces: ");
            sb6.append(e);
            throw new InitializationException(sb6.toString(), e);
        }
    }

    /* access modifiers changed from: protected */
    public boolean isUsableAddress(NetworkInterface networkInterface, InetAddress inetAddress) {
        if (!(inetAddress instanceof Inet4Address)) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Skipping unsupported non-IPv4 address: ");
            sb.append(inetAddress);
            logger.finer(sb.toString());
            return false;
        } else if (inetAddress.isLoopbackAddress()) {
            Logger logger2 = log;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Skipping loopback address: ");
            sb2.append(inetAddress);
            logger2.finer(sb2.toString());
            return false;
        } else if (this.useAddresses.size() <= 0 || this.useAddresses.contains(inetAddress.getHostAddress())) {
            return true;
        } else {
            Logger logger3 = log;
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Skipping unwanted address: ");
            sb3.append(inetAddress);
            logger3.finer(sb3.toString());
            return false;
        }
    }

    /* access modifiers changed from: protected */
    public void logInterfaceInformation(NetworkInterface networkInterface) throws SocketException {
        log.info("---------------------------------------------------------------------------------");
        log.info(String.format("Interface display name: %s", new Object[]{networkInterface.getDisplayName()}));
        if (networkInterface.getParent() != null) {
            log.info(String.format("Parent Info: %s", new Object[]{networkInterface.getParent()}));
        }
        log.info(String.format("Name: %s", new Object[]{networkInterface.getName()}));
        Iterator it = Collections.list(networkInterface.getInetAddresses()).iterator();
        while (it.hasNext()) {
            InetAddress inetAddress = (InetAddress) it.next();
            log.info(String.format("InetAddress: %s", new Object[]{inetAddress}));
        }
        for (InterfaceAddress interfaceAddress : networkInterface.getInterfaceAddresses()) {
            if (interfaceAddress == null) {
                log.warning("Skipping null InterfaceAddress!");
            } else {
                log.info(" Interface Address");
                Logger logger = log;
                StringBuilder sb = new StringBuilder();
                sb.append("  Address: ");
                sb.append(interfaceAddress.getAddress());
                logger.info(sb.toString());
                Logger logger2 = log;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("  Broadcast: ");
                sb2.append(interfaceAddress.getBroadcast());
                logger2.info(sb2.toString());
                Logger logger3 = log;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("  Prefix length: ");
                sb3.append(interfaceAddress.getNetworkPrefixLength());
                logger3.info(sb3.toString());
            }
        }
        Iterator it2 = Collections.list(networkInterface.getSubInterfaces()).iterator();
        while (it2.hasNext()) {
            NetworkInterface networkInterface2 = (NetworkInterface) it2.next();
            if (networkInterface2 == null) {
                log.warning("Skipping null NetworkInterface sub-interface");
            } else {
                log.info(String.format("\tSub Interface Display name: %s", new Object[]{networkInterface2.getDisplayName()}));
                log.info(String.format("\tSub Interface Name: %s", new Object[]{networkInterface2.getName()}));
            }
        }
        log.info(String.format("Up? %s", new Object[]{Boolean.valueOf(networkInterface.isUp())}));
        log.info(String.format("Loopback? %s", new Object[]{Boolean.valueOf(networkInterface.isLoopback())}));
        log.info(String.format("PointToPoint? %s", new Object[]{Boolean.valueOf(networkInterface.isPointToPoint())}));
        log.info(String.format("Supports multicast? %s", new Object[]{Boolean.valueOf(networkInterface.supportsMulticast())}));
        log.info(String.format("Virtual? %s", new Object[]{Boolean.valueOf(networkInterface.isVirtual())}));
        log.info(String.format("Hardware address: %s", new Object[]{Arrays.toString(networkInterface.getHardwareAddress())}));
        log.info(String.format("MTU: %s", new Object[]{Integer.valueOf(networkInterface.getMTU())}));
    }
}
