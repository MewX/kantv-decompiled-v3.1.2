package org.fourthline.cling.transport.impl.jetty;

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

public class JettyServletContainer implements ServletContainerAdapter {
    public static final JettyServletContainer INSTANCE = new JettyServletContainer();
    private static final Logger log = Logger.getLogger(JettyServletContainer.class.getName());
    protected Server server;

    private JettyServletContainer() {
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

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0027, code lost:
        if (r3.isStarting() == false) goto L_0x002c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:?, code lost:
        r3.stop();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:?, code lost:
        r5.server.removeConnector(r3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0033, code lost:
        if (r0.length != 1) goto L_0x0068;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0035, code lost:
        log.info("No more connectors, stopping Jetty server");
        stopIfRunning();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0040, code lost:
        r6 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0041, code lost:
        r7 = log;
        r0 = new java.lang.StringBuilder();
        r0.append("Couldn't stop connector: ");
        r0.append(r3);
        r0.append(" ");
        r0.append(r6);
        r7.severe(r0.toString());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0064, code lost:
        throw new java.lang.RuntimeException(r6);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0021, code lost:
        if (r3.isStarted() != false) goto L_0x0029;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void removeConnector(java.lang.String r6, int r7) {
        /*
            r5 = this;
            monitor-enter(r5)
            org.eclipse.jetty.server.Server r0 = r5.server     // Catch:{ all -> 0x006a }
            org.eclipse.jetty.server.Connector[] r0 = r0.getConnectors()     // Catch:{ all -> 0x006a }
            int r1 = r0.length     // Catch:{ all -> 0x006a }
            r2 = 0
        L_0x0009:
            if (r2 >= r1) goto L_0x0068
            r3 = r0[r2]     // Catch:{ all -> 0x006a }
            java.lang.String r4 = r3.getHost()     // Catch:{ all -> 0x006a }
            boolean r4 = r4.equals(r6)     // Catch:{ all -> 0x006a }
            if (r4 == 0) goto L_0x0065
            int r4 = r3.getLocalPort()     // Catch:{ all -> 0x006a }
            if (r4 != r7) goto L_0x0065
            boolean r6 = r3.isStarted()     // Catch:{ all -> 0x006a }
            if (r6 != 0) goto L_0x0029
            boolean r6 = r3.isStarting()     // Catch:{ all -> 0x006a }
            if (r6 == 0) goto L_0x002c
        L_0x0029:
            r3.stop()     // Catch:{ Exception -> 0x0040 }
        L_0x002c:
            org.eclipse.jetty.server.Server r6 = r5.server     // Catch:{ all -> 0x006a }
            r6.removeConnector(r3)     // Catch:{ all -> 0x006a }
            int r6 = r0.length     // Catch:{ all -> 0x006a }
            r7 = 1
            if (r6 != r7) goto L_0x0068
            java.util.logging.Logger r6 = log     // Catch:{ all -> 0x006a }
            java.lang.String r7 = "No more connectors, stopping Jetty server"
            r6.info(r7)     // Catch:{ all -> 0x006a }
            r5.stopIfRunning()     // Catch:{ all -> 0x006a }
            goto L_0x0068
        L_0x0040:
            r6 = move-exception
            java.util.logging.Logger r7 = log     // Catch:{ all -> 0x006a }
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ all -> 0x006a }
            r0.<init>()     // Catch:{ all -> 0x006a }
            java.lang.String r1 = "Couldn't stop connector: "
            r0.append(r1)     // Catch:{ all -> 0x006a }
            r0.append(r3)     // Catch:{ all -> 0x006a }
            java.lang.String r1 = " "
            r0.append(r1)     // Catch:{ all -> 0x006a }
            r0.append(r6)     // Catch:{ all -> 0x006a }
            java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x006a }
            r7.severe(r0)     // Catch:{ all -> 0x006a }
            java.lang.RuntimeException r7 = new java.lang.RuntimeException     // Catch:{ all -> 0x006a }
            r7.<init>(r6)     // Catch:{ all -> 0x006a }
            throw r7     // Catch:{ all -> 0x006a }
        L_0x0065:
            int r2 = r2 + 1
            goto L_0x0009
        L_0x0068:
            monitor-exit(r5)
            return
        L_0x006a:
            r6 = move-exception
            monitor-exit(r5)
            goto L_0x006e
        L_0x006d:
            throw r6
        L_0x006e:
            goto L_0x006d
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fourthline.cling.transport.impl.jetty.JettyServletContainer.removeConnector(java.lang.String, int):void");
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
