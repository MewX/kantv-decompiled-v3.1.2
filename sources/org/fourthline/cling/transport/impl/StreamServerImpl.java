package org.fourthline.cling.transport.impl;

import com.sun.net.httpserver.HttpExchange;
import com.sun.net.httpserver.HttpHandler;
import com.sun.net.httpserver.HttpServer;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.util.logging.Logger;
import org.fourthline.cling.model.message.Connection;
import org.fourthline.cling.transport.Router;
import org.fourthline.cling.transport.spi.InitializationException;
import org.fourthline.cling.transport.spi.StreamServer;
import org.fourthline.cling.transport.spi.UpnpStream;

public class StreamServerImpl implements StreamServer<StreamServerConfigurationImpl> {
    /* access modifiers changed from: private */
    public static Logger log = Logger.getLogger(StreamServer.class.getName());
    protected final StreamServerConfigurationImpl configuration;
    protected HttpServer server;

    protected class HttpServerConnection implements Connection {
        protected HttpExchange exchange;

        public HttpServerConnection(HttpExchange httpExchange) {
            this.exchange = httpExchange;
        }

        public boolean isOpen() {
            return StreamServerImpl.this.isConnectionOpen(this.exchange);
        }

        public InetAddress getRemoteAddress() {
            if (this.exchange.getRemoteAddress() != null) {
                return this.exchange.getRemoteAddress().getAddress();
            }
            return null;
        }

        public InetAddress getLocalAddress() {
            if (this.exchange.getLocalAddress() != null) {
                return this.exchange.getLocalAddress().getAddress();
            }
            return null;
        }
    }

    protected class RequestHttpHandler implements HttpHandler {
        private final Router router;

        public RequestHttpHandler(Router router2) {
            this.router = router2;
        }

        public void handle(final HttpExchange httpExchange) throws IOException {
            Logger access$000 = StreamServerImpl.log;
            StringBuilder sb = new StringBuilder();
            sb.append("Received HTTP exchange: ");
            sb.append(httpExchange.getRequestMethod());
            sb.append(" ");
            sb.append(httpExchange.getRequestURI());
            access$000.fine(sb.toString());
            Router router2 = this.router;
            router2.received((UpnpStream) new HttpExchangeUpnpStream(router2.getProtocolFactory(), httpExchange) {
                /* access modifiers changed from: protected */
                public Connection createConnection() {
                    return new HttpServerConnection(httpExchange);
                }
            });
        }
    }

    public StreamServerImpl(StreamServerConfigurationImpl streamServerConfigurationImpl) {
        this.configuration = streamServerConfigurationImpl;
    }

    public synchronized void init(InetAddress inetAddress, Router router) throws InitializationException {
        try {
            this.server = HttpServer.create(new InetSocketAddress(inetAddress, this.configuration.getListenPort()), this.configuration.getTcpConnectionBacklog());
            this.server.createContext("/", new RequestHttpHandler(router));
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Created server (for receiving TCP streams) on: ");
            sb.append(this.server.getAddress());
            logger.info(sb.toString());
        } catch (Exception e) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Could not initialize ");
            sb2.append(getClass().getSimpleName());
            sb2.append(": ");
            sb2.append(e.toString());
            throw new InitializationException(sb2.toString(), e);
        }
    }

    public synchronized int getPort() {
        return this.server.getAddress().getPort();
    }

    public StreamServerConfigurationImpl getConfiguration() {
        return this.configuration;
    }

    public synchronized void run() {
        log.fine("Starting StreamServer...");
        this.server.start();
    }

    public synchronized void stop() {
        log.fine("Stopping StreamServer...");
        if (this.server != null) {
            this.server.stop(1);
        }
    }

    /* access modifiers changed from: protected */
    public boolean isConnectionOpen(HttpExchange httpExchange) {
        log.warning("Can't check client connection, socket access impossible on JDK webserver!");
        return true;
    }
}
