package org.fourthline.cling.transport.impl;

import java.net.DatagramPacket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.SocketException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.fourthline.cling.model.UnsupportedDataException;
import org.fourthline.cling.model.message.OutgoingDatagramMessage;
import org.fourthline.cling.transport.Router;
import org.fourthline.cling.transport.spi.DatagramIO;
import org.fourthline.cling.transport.spi.DatagramProcessor;
import org.fourthline.cling.transport.spi.InitializationException;

public class DatagramIOImpl implements DatagramIO<DatagramIOConfigurationImpl> {
    private static Logger log = Logger.getLogger(DatagramIO.class.getName());
    protected final DatagramIOConfigurationImpl configuration;
    protected DatagramProcessor datagramProcessor;
    protected InetSocketAddress localAddress;
    protected Router router;
    protected MulticastSocket socket;

    public DatagramIOImpl(DatagramIOConfigurationImpl datagramIOConfigurationImpl) {
        this.configuration = datagramIOConfigurationImpl;
    }

    public DatagramIOConfigurationImpl getConfiguration() {
        return this.configuration;
    }

    public synchronized void init(InetAddress inetAddress, Router router2, DatagramProcessor datagramProcessor2) throws InitializationException {
        this.router = router2;
        this.datagramProcessor = datagramProcessor2;
        try {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Creating bound socket (for datagram input/output) on: ");
            sb.append(inetAddress);
            logger.info(sb.toString());
            this.localAddress = new InetSocketAddress(inetAddress, 0);
            this.socket = new MulticastSocket(this.localAddress);
            this.socket.setTimeToLive(this.configuration.getTimeToLive());
            this.socket.setReceiveBufferSize(262144);
        } catch (Exception e) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Could not initialize ");
            sb2.append(getClass().getSimpleName());
            sb2.append(": ");
            sb2.append(e);
            throw new InitializationException(sb2.toString());
        }
    }

    public synchronized void stop() {
        if (this.socket != null && !this.socket.isClosed()) {
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
                Logger logger2 = log;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("UDP datagram received from: ");
                sb2.append(datagramPacket.getAddress().getHostAddress());
                sb2.append(":");
                sb2.append(datagramPacket.getPort());
                sb2.append(" on: ");
                sb2.append(this.localAddress);
                logger2.fine(sb2.toString());
                this.router.received(this.datagramProcessor.read(this.localAddress.getAddress(), datagramPacket));
            } catch (SocketException unused) {
                log.fine("Socket closed");
                try {
                    if (!this.socket.isClosed()) {
                        log.fine("Closing unicast socket");
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

    public synchronized void send(OutgoingDatagramMessage outgoingDatagramMessage) {
        if (log.isLoggable(Level.FINE)) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Sending message from address: ");
            sb.append(this.localAddress);
            logger.fine(sb.toString());
        }
        DatagramPacket write = this.datagramProcessor.write(outgoingDatagramMessage);
        if (log.isLoggable(Level.FINE)) {
            Logger logger2 = log;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Sending UDP datagram packet to: ");
            sb2.append(outgoingDatagramMessage.getDestinationAddress());
            sb2.append(":");
            sb2.append(outgoingDatagramMessage.getDestinationPort());
            logger2.fine(sb2.toString());
        }
        send(write);
    }

    public synchronized void send(DatagramPacket datagramPacket) {
        if (log.isLoggable(Level.FINE)) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Sending message from address: ");
            sb.append(this.localAddress);
            logger.fine(sb.toString());
        }
        try {
            this.socket.send(datagramPacket);
        } catch (SocketException unused) {
            Logger logger2 = log;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Socket closed, aborting datagram send to: ");
            sb2.append(datagramPacket.getAddress());
            logger2.fine(sb2.toString());
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            Logger logger3 = log;
            Level level = Level.SEVERE;
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Exception sending datagram to: ");
            sb3.append(datagramPacket.getAddress());
            sb3.append(": ");
            sb3.append(e2);
            logger3.log(level, sb3.toString(), e2);
        }
    }
}
