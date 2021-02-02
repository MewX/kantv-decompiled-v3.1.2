package org.nanohttpd.protocols.http;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.logging.Level;

public class ServerRunnable implements Runnable {
    private IOException bindException;
    private boolean hasBinded = false;
    private NanoHTTPD httpd;
    private final int timeout;

    public ServerRunnable(NanoHTTPD nanoHTTPD, int i) {
        this.httpd = nanoHTTPD;
        this.timeout = i;
    }

    public void run() {
        try {
            this.httpd.getMyServerSocket().bind(this.httpd.hostname != null ? new InetSocketAddress(this.httpd.hostname, this.httpd.myPort) : new InetSocketAddress(this.httpd.myPort));
            this.hasBinded = true;
            do {
                try {
                    Socket accept = this.httpd.getMyServerSocket().accept();
                    if (this.timeout > 0) {
                        accept.setSoTimeout(this.timeout);
                    }
                    this.httpd.asyncRunner.exec(this.httpd.createClientHandler(accept, accept.getInputStream()));
                } catch (IOException e) {
                    NanoHTTPD.LOG.log(Level.FINE, "Communication with the client broken", e);
                }
            } while (!this.httpd.getMyServerSocket().isClosed());
        } catch (IOException e2) {
            this.bindException = e2;
        }
    }

    public IOException getBindException() {
        return this.bindException;
    }

    public boolean hasBinded() {
        return this.hasBinded;
    }
}
