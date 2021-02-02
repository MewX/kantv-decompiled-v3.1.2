package com.kantv.ui.androidupnpdemo.upnp;

import java.io.IOException;
import java.net.Socket;
import java.util.concurrent.ExecutorService;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.Servlet;
import javax.servlet.http.HttpServletRequest;
import org.eclipse.jetty.server.Request;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.server.bio.SocketConnector;
import org.eclipse.jetty.servlet.ServletContextHandler;
import org.eclipse.jetty.servlet.ServletHolder;
import org.eclipse.jetty.util.thread.ExecutorThreadPool;
import org.fourthline.cling.transport.spi.ServletContainerAdapter;

public class AndroidJettyServletContainer implements ServletContainerAdapter {
    public static final AndroidJettyServletContainer INSTANCE = new AndroidJettyServletContainer();
    private static final Logger log = Logger.getLogger(AndroidJettyServletContainer.class.getName());
    protected Server server;

    private AndroidJettyServletContainer() {
        resetServer();
    }

    public synchronized void setExecutorService(ExecutorService executorService) {
        if (INSTANCE.server.getThreadPool() == null) {
            INSTANCE.server.setThreadPool(new ExecutorThreadPool(executorService) {
                /* access modifiers changed from: protected */
                public void doStop() throws Exception {
                }
            });
        }
    }

    public synchronized int addConnector(String str, int i) throws IOException {
        SocketConnector socketConnector;
        socketConnector = new SocketConnector();
        socketConnector.setHost(str);
        socketConnector.setPort(i);
        socketConnector.open();
        this.server.addConnector(socketConnector);
        if (this.server.isStarted()) {
            try {
                socketConnector.start();
            } catch (Exception e) {
                Logger logger = log;
                StringBuilder sb = new StringBuilder();
                sb.append("Couldn't start connector: ");
                sb.append(socketConnector);
                sb.append(" ");
                sb.append(e);
                logger.severe(sb.toString());
                throw new RuntimeException(e);
            }
        }
        return socketConnector.getLocalPort();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0025, code lost:
        if (r3.isStarted() != false) goto L_0x002d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x002b, code lost:
        if (r3.isStarting() == false) goto L_0x0030;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:?, code lost:
        r3.stop();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:?, code lost:
        r5.server.removeConnector(r3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0037, code lost:
        if (r0.length != 1) goto L_0x006c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0039, code lost:
        log.info("No more connectors, stopping Jetty server");
        stopIfRunning();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0044, code lost:
        r6 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0045, code lost:
        r7 = log;
        r0 = new java.lang.StringBuilder();
        r0.append("Couldn't stop connector: ");
        r0.append(r3);
        r0.append(" ");
        r0.append(r6);
        r7.severe(r0.toString());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0068, code lost:
        throw new java.lang.RuntimeException(r6);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x006d, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void removeConnector(java.lang.String r6, int r7) {
        /*
            r5 = this;
            monitor-enter(r5)
            org.eclipse.jetty.server.Server r0 = r5.server     // Catch:{ all -> 0x006e }
            org.eclipse.jetty.server.Connector[] r0 = r0.getConnectors()     // Catch:{ all -> 0x006e }
            if (r0 != 0) goto L_0x000b
            monitor-exit(r5)
            return
        L_0x000b:
            int r1 = r0.length     // Catch:{ all -> 0x006e }
            r2 = 0
        L_0x000d:
            if (r2 >= r1) goto L_0x006c
            r3 = r0[r2]     // Catch:{ all -> 0x006e }
            java.lang.String r4 = r3.getHost()     // Catch:{ all -> 0x006e }
            boolean r4 = r4.equals(r6)     // Catch:{ all -> 0x006e }
            if (r4 == 0) goto L_0x0069
            int r4 = r3.getLocalPort()     // Catch:{ all -> 0x006e }
            if (r4 != r7) goto L_0x0069
            boolean r6 = r3.isStarted()     // Catch:{ all -> 0x006e }
            if (r6 != 0) goto L_0x002d
            boolean r6 = r3.isStarting()     // Catch:{ all -> 0x006e }
            if (r6 == 0) goto L_0x0030
        L_0x002d:
            r3.stop()     // Catch:{ Exception -> 0x0044 }
        L_0x0030:
            org.eclipse.jetty.server.Server r6 = r5.server     // Catch:{ all -> 0x006e }
            r6.removeConnector(r3)     // Catch:{ all -> 0x006e }
            int r6 = r0.length     // Catch:{ all -> 0x006e }
            r7 = 1
            if (r6 != r7) goto L_0x006c
            java.util.logging.Logger r6 = log     // Catch:{ all -> 0x006e }
            java.lang.String r7 = "No more connectors, stopping Jetty server"
            r6.info(r7)     // Catch:{ all -> 0x006e }
            r5.stopIfRunning()     // Catch:{ all -> 0x006e }
            goto L_0x006c
        L_0x0044:
            r6 = move-exception
            java.util.logging.Logger r7 = log     // Catch:{ all -> 0x006e }
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ all -> 0x006e }
            r0.<init>()     // Catch:{ all -> 0x006e }
            java.lang.String r1 = "Couldn't stop connector: "
            r0.append(r1)     // Catch:{ all -> 0x006e }
            r0.append(r3)     // Catch:{ all -> 0x006e }
            java.lang.String r1 = " "
            r0.append(r1)     // Catch:{ all -> 0x006e }
            r0.append(r6)     // Catch:{ all -> 0x006e }
            java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x006e }
            r7.severe(r0)     // Catch:{ all -> 0x006e }
            java.lang.RuntimeException r7 = new java.lang.RuntimeException     // Catch:{ all -> 0x006e }
            r7.<init>(r6)     // Catch:{ all -> 0x006e }
            throw r7     // Catch:{ all -> 0x006e }
        L_0x0069:
            int r2 = r2 + 1
            goto L_0x000d
        L_0x006c:
            monitor-exit(r5)
            return
        L_0x006e:
            r6 = move-exception
            monitor-exit(r5)
            goto L_0x0072
        L_0x0071:
            throw r6
        L_0x0072:
            goto L_0x0071
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kantv.ui.androidupnpdemo.upnp.AndroidJettyServletContainer.removeConnector(java.lang.String, int):void");
    }

    public synchronized void registerServlet(String str, Servlet servlet) {
        if (this.server.getHandler() == null) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Registering UPnP servlet under context path: ");
            sb.append(str);
            logger.info(sb.toString());
            ServletContextHandler servletContextHandler = new ServletContextHandler(0);
            if (str != null && str.length() > 0) {
                servletContextHandler.setContextPath(str);
            }
            servletContextHandler.addServlet(new ServletHolder(servlet), "/*");
            this.server.setHandler(servletContextHandler);
        }
    }

    public synchronized void startIfNotRunning() {
        if (!this.server.isStarted() && !this.server.isStarting()) {
            log.info("Starting Jetty server... ");
            try {
                this.server.start();
            } catch (Exception e) {
                Logger logger = log;
                StringBuilder sb = new StringBuilder();
                sb.append("Couldn't start Jetty server: ");
                sb.append(e);
                logger.severe(sb.toString());
                throw new RuntimeException(e);
            }
        }
    }

    public synchronized void stopIfRunning() {
        if (!this.server.isStopped() && !this.server.isStopping()) {
            log.info("Stopping Jetty server...");
            try {
                this.server.stop();
                resetServer();
            } catch (Exception e) {
                Logger logger = log;
                StringBuilder sb = new StringBuilder();
                sb.append("Couldn't stop Jetty server: ");
                sb.append(e);
                logger.severe(sb.toString());
                throw new RuntimeException(e);
            } catch (Throwable th) {
                resetServer();
                throw th;
            }
        }
    }

    /* access modifiers changed from: protected */
    public void resetServer() {
        this.server = new Server();
        this.server.setGracefulShutdown(1000);
    }

    public static boolean isConnectionOpen(HttpServletRequest httpServletRequest) {
        return isConnectionOpen(httpServletRequest, " ".getBytes());
    }

    public static boolean isConnectionOpen(HttpServletRequest httpServletRequest, byte[] bArr) {
        Socket socket = (Socket) ((Request) httpServletRequest).getConnection().getEndPoint().getTransport();
        if (log.isLoggable(Level.FINE)) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Checking if client connection is still open: ");
            sb.append(socket.getRemoteSocketAddress());
            logger.fine(sb.toString());
        }
        try {
            socket.getOutputStream().write(bArr);
            socket.getOutputStream().flush();
            return true;
        } catch (IOException unused) {
            if (log.isLoggable(Level.FINE)) {
                Logger logger2 = log;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Client connection has been closed: ");
                sb2.append(socket.getRemoteSocketAddress());
                logger2.fine(sb2.toString());
            }
            return false;
        }
    }
}
