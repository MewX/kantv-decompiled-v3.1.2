package org.fourthline.cling.transport.impl;

import java.net.DatagramPacket;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.logging.Logger;
import org.fourthline.cling.model.UnsupportedDataException;
import org.fourthline.cling.transport.Router;
import org.fourthline.cling.transport.spi.DatagramProcessor;
import org.fourthline.cling.transport.spi.InitializationException;
import org.fourthline.cling.transport.spi.MulticastReceiver;
import org.fourthline.cling.transport.spi.NetworkAddressFactory;

public class MulticastReceiverImpl implements MulticastReceiver<MulticastReceiverConfigurationImpl> {
    private static Logger log = Logger.getLogger(MulticastReceiver.class.getName());
    protected final MulticastReceiverConfigurationImpl configuration;
    protected DatagramProcessor datagramProcessor;
    protected InetSocketAddress multicastAddress;
    protected NetworkInterface multicastInterface;
    protected NetworkAddressFactory networkAddressFactory;
    protected Router router;
    protected MulticastSocket socket;

    public MulticastReceiverImpl(MulticastReceiverConfigurationImpl multicastReceiverConfigurationImpl) {
        this.configuration = multicastReceiverConfigurationImpl;
    }

    public MulticastReceiverConfigurationImpl getConfiguration() {
        return this.configuration;
    }

    public synchronized void init(NetworkInterface networkInterface, Router router2, NetworkAddressFactory networkAddressFactory2, DatagramProcessor datagramProcessor2) throws InitializationException {
        this.router = router2;
        this.networkAddressFactory = networkAddressFactory2;
        this.datagramProcessor = datagramProcessor2;
        this.multicastInterface = networkInterface;
        try {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Creating wildcard socket (for receiving multicast datagrams) on port: ");
            sb.append(this.configuration.getPort());
            logger.info(sb.toString());
            this.multicastAddress = new InetSocketAddress(this.configuration.getGroup(), this.configuration.getPort());
            this.socket = new MulticastSocket(this.configuration.getPort());
            this.socket.setReuseAddress(true);
            this.socket.setReceiveBufferSize(32768);
            Logger logger2 = log;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Joining multicast group: ");
            sb2.append(this.multicastAddress);
            sb2.append(" on network interface: ");
            sb2.append(this.multicastInterface.getDisplayName());
            logger2.info(sb2.toString());
            this.socket.joinGroup(this.multicastAddress, this.multicastInterface);
        } catch (Exception e) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Could not initialize ");
            sb3.append(getClass().getSimpleName());
            sb3.append(": ");
            sb3.append(e);
            throw new InitializationException(sb3.toString());
        }
    }

    public synchronized void stop() {
        if (this.socket != null && !this.socket.isClosed()) {
            try {
                log.fine("Leaving multicast group");
                this.socket.leaveGroup(this.multicastAddress, this.multicastInterface);
            } catch (Exception e) {
                Logger logger = log;
                StringBuilder sb = new StringBuilder();
                sb.append("Could not leave multicast group: ");
                sb.append(e);
                logger.fine(sb.toString());
            }
            this.socket.close();
        }
    }

    public void run() {
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Entering blocking receiving loop, listening for UDP datagrams on: ");
        sb.append(this.socket.getLocalAddress());
        logger.fine(sb.toString());
        while (true) {
            try {
                byte[] bArr = new byte[getConfiguration().getMaxDatagramBytes()];
                DatagramPacket datagramPacket = new DatagramPacket(bArr, bArr.length);
                this.socket.receive(datagramPacket);
                InetAddress localAddress = this.networkAddressFactory.getLocalAddress(this.multicastInterface, this.multicastAddress.getAddress() instanceof Inet6Address, datagramPacket.getAddress());
                Logger logger2 = log;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("UDP datagram received from: ");
                sb2.append(datagramPacket.getAddress().getHostAddress());
                sb2.append(":");
                sb2.append(datagramPacket.getPort());
                sb2.append(" on local interface: ");
                sb2.append(this.multicastInterface.getDisplayName());
                sb2.append(" and address: ");
                sb2.append(localAddress.getHostAddress());
                logger2.fine(sb2.toString());
                this.router.received(this.datagramProcessor.read(localAddress, datagramPacket));
            } catch (SocketException unused) {
                log.fine("Socket closed");
                try {
                    if (!this.socket.isClosed()) {
                        log.fine("Closing multicast socket");
                        this.socket.close();
                        return;
                    }
                    return;
                } catch (Exception e) {
                    throw new RuntimeException(e);
                }
            } catch (UnsupportedDataException e2) {
                Logger logger3 = log;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Could not read datagram: ");
                sb3.append(e2.getMessage());
                logger3.info(sb3.toString());
            } catch (Exception e3) {
                throw new RuntimeException(e3);
            }
        }
    }
}
