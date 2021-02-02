package org.fourthline.cling.transport.spi;

import java.net.InetAddress;
import org.fourthline.cling.transport.Router;
import org.fourthline.cling.transport.spi.StreamServerConfiguration;

public interface StreamServer<C extends StreamServerConfiguration> extends Runnable {
    C getConfiguration();

    int getPort();

    void init(InetAddress inetAddress, Router router) throws InitializationException;

    void stop();
}