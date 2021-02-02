package org.fourthline.cling.transport.impl;

import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.AsyncContext;
import javax.servlet.AsyncEvent;
import javax.servlet.AsyncListener;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.fourthline.cling.model.message.Connection;
import org.fourthline.cling.transport.Router;
import org.fourthline.cling.transport.spi.InitializationException;
import org.fourthline.cling.transport.spi.StreamServer;
import org.fourthline.cling.transport.spi.UpnpStream;

public class AsyncServletStreamServerImpl implements StreamServer<AsyncServletStreamServerConfigurationImpl> {
    /* access modifiers changed from: private */
    public static final Logger log = Logger.getLogger(StreamServer.class.getName());
    protected final AsyncServletStreamServerConfigurationImpl configuration;
    protected String hostAddress;
    protected int localPort;
    /* access modifiers changed from: private */
    public int mCounter = 0;

    protected class AsyncServletConnection implements Connection {
        protected HttpServletRequest request;

        public AsyncServletConnection(HttpServletRequest httpServletRequest) {
            this.request = httpServletRequest;
        }

        public HttpServletRequest getRequest() {
            return this.request;
        }

        public boolean isOpen() {
            return AsyncServletStreamServerImpl.this.isConnectionOpen(getRequest());
        }

        public InetAddress getRemoteAddress() {
            try {
                return InetAddress.getByName(getRequest().getRemoteAddr());
            } catch (UnknownHostException e) {
                throw new RuntimeException(e);
            }
        }

        public InetAddress getLocalAddress() {
            try {
                return InetAddress.getByName(getRequest().getLocalAddr());
            } catch (UnknownHostException e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* access modifiers changed from: protected */
    public boolean isConnectionOpen(HttpServletRequest httpServletRequest) {
        return true;
    }

    public AsyncServletStreamServerImpl(AsyncServletStreamServerConfigurationImpl asyncServletStreamServerConfigurationImpl) {
        this.configuration = asyncServletStreamServerConfigurationImpl;
    }

    public AsyncServletStreamServerConfigurationImpl getConfiguration() {
        return this.configuration;
    }

    public synchronized void init(InetAddress inetAddress, Router router) throws InitializationException {
        try {
            if (log.isLoggable(Level.FINE)) {
                log.fine("Setting executor service on servlet container adapter");
            }
            getConfiguration().getServletContainerAdapter().setExecutorService(router.getConfiguration().getStreamServerExecutorService());
            if (log.isLoggable(Level.FINE)) {
                Logger logger = log;
                StringBuilder sb = new StringBuilder();
                sb.append("Adding connector: ");
                sb.append(inetAddress);
                sb.append(":");
                sb.append(getConfiguration().getListenPort());
                logger.fine(sb.toString());
            }
            this.hostAddress = inetAddress.getHostAddress();
            this.localPort = getConfiguration().getServletContainerAdapter().addConnector(this.hostAddress, getConfiguration().getListenPort());
            getConfiguration().getServletContainerAdapter().registerServlet(router.getConfiguration().getNamespace().getBasePath().getPath(), createServlet(router));
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
        return this.localPort;
    }

    public synchronized void stop() {
        getConfiguration().getServletContainerAdapter().removeConnector(this.hostAddress, this.localPort);
    }

    public void run() {
        getConfiguration().getServletContainerAdapter().startIfNotRunning();
    }

    /* access modifiers changed from: protected */
    public Servlet createServlet(final Router router) {
        return new HttpServlet() {
            /* access modifiers changed from: protected */
            public void service(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
                final long currentTimeMillis = System.currentTimeMillis();
                final int access$008 = AsyncServletStreamServerImpl.this.mCounter = AsyncServletStreamServerImpl.this.mCounter + 1;
                if (AsyncServletStreamServerImpl.log.isLoggable(Level.FINE)) {
                    AsyncServletStreamServerImpl.log.fine(String.format("HttpServlet.service(): id: %3d, request URI: %s", new Object[]{Integer.valueOf(access$008), httpServletRequest.getRequestURI()}));
                }
                AsyncContext startAsync = httpServletRequest.startAsync();
                startAsync.setTimeout((long) (AsyncServletStreamServerImpl.this.getConfiguration().getAsyncTimeoutSeconds() * 1000));
                startAsync.addListener(new AsyncListener() {
                    public void onTimeout(AsyncEvent asyncEvent) throws IOException {
                        long currentTimeMillis = System.currentTimeMillis() - currentTimeMillis;
                        if (AsyncServletStreamServerImpl.log.isLoggable(Level.FINE)) {
                            AsyncServletStreamServerImpl.log.fine(String.format("AsyncListener.onTimeout(): id: %3d, duration: %,4d, request: %s", new Object[]{Integer.valueOf(access$008), Long.valueOf(currentTimeMillis), asyncEvent.getSuppliedRequest()}));
                        }
                    }

                    public void onStartAsync(AsyncEvent asyncEvent) throws IOException {
                        if (AsyncServletStreamServerImpl.log.isLoggable(Level.FINE)) {
                            AsyncServletStreamServerImpl.log.fine(String.format("AsyncListener.onStartAsync(): id: %3d, request: %s", new Object[]{Integer.valueOf(access$008), asyncEvent.getSuppliedRequest()}));
                        }
                    }

                    public void onError(AsyncEvent asyncEvent) throws IOException {
                        long currentTimeMillis = System.currentTimeMillis() - currentTimeMillis;
                        if (AsyncServletStreamServerImpl.log.isLoggable(Level.FINE)) {
                            AsyncServletStreamServerImpl.log.fine(String.format("AsyncListener.onError(): id: %3d, duration: %,4d, response: %s", new Object[]{Integer.valueOf(access$008), Long.valueOf(currentTimeMillis), asyncEvent.getSuppliedResponse()}));
                        }
                    }

                    public void onComplete(AsyncEvent asyncEvent) throws IOException {
                        long currentTimeMillis = System.currentTimeMillis() - currentTimeMillis;
                        if (AsyncServletStreamServerImpl.log.isLoggable(Level.FINE)) {
                            AsyncServletStreamServerImpl.log.fine(String.format("AsyncListener.onComplete(): id: %3d, duration: %,4d, response: %s", new Object[]{Integer.valueOf(access$008), Long.valueOf(currentTimeMillis), asyncEvent.getSuppliedResponse()}));
                        }
                    }
                });
                router.received((UpnpStream) new AsyncServletUpnpStream(router.getProtocolFactory(), startAsync, httpServletRequest) {
                    /* access modifiers changed from: protected */
                    public Connection createConnection() {
                        return new AsyncServletConnection(getRequest());
                    }
                });
            }
        };
    }
}
