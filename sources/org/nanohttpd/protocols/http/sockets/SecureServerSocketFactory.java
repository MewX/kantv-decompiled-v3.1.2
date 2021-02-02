package org.nanohttpd.protocols.http.sockets;

import java.io.IOException;
import java.net.ServerSocket;
import javax.net.ssl.SSLServerSocket;
import javax.net.ssl.SSLServerSocketFactory;
import org.nanohttpd.util.IFactoryThrowing;

public class SecureServerSocketFactory implements IFactoryThrowing<ServerSocket, IOException> {
    private String[] sslProtocols;
    private SSLServerSocketFactory sslServerSocketFactory;

    public SecureServerSocketFactory(SSLServerSocketFactory sSLServerSocketFactory, String[] strArr) {
        this.sslServerSocketFactory = sSLServerSocketFactory;
        this.sslProtocols = strArr;
    }

    public ServerSocket create() throws IOException {
        SSLServerSocket sSLServerSocket = (SSLServerSocket) this.sslServerSocketFactory.createServerSocket();
        String[] strArr = this.sslProtocols;
        if (strArr != null) {
            sSLServerSocket.setEnabledProtocols(strArr);
        } else {
            sSLServerSocket.setEnabledProtocols(sSLServerSocket.getSupportedProtocols());
        }
        sSLServerSocket.setUseClientMode(false);
        sSLServerSocket.setWantClientAuth(false);
        sSLServerSocket.setNeedClientAuth(false);
        return sSLServerSocket;
    }
}
