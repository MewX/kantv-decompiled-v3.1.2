package org.nanohttpd.protocols.http;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import org.nanohttpd.protocols.http.tempfiles.ITempFileManager;

public class ClientHandler implements Runnable {
    private final Socket acceptSocket;
    private final NanoHTTPD httpd;
    private final InputStream inputStream;

    public ClientHandler(NanoHTTPD nanoHTTPD, InputStream inputStream2, Socket socket) {
        this.httpd = nanoHTTPD;
        this.inputStream = inputStream2;
        this.acceptSocket = socket;
    }

    public void close() {
        NanoHTTPD.safeClose(this.inputStream);
        NanoHTTPD.safeClose(this.acceptSocket);
    }

    public void run() {
        OutputStream outputStream = null;
        try {
            outputStream = this.acceptSocket.getOutputStream();
            HTTPSession hTTPSession = new HTTPSession(this.httpd, (ITempFileManager) this.httpd.getTempFileManagerFactory().create(), this.inputStream, outputStream, this.acceptSocket.getInetAddress());
            while (!this.acceptSocket.isClosed()) {
                hTTPSession.execute();
            }
        } catch (Exception e) {
            if ((!(e instanceof SocketException) || !"NanoHttpd Shutdown".equals(e.getMessage())) && !(e instanceof SocketTimeoutException)) {
                NanoHTTPD.LOG.log(Level.SEVERE, "Communication with the client broken, or an bug in the handler code", e);
            }
        } catch (Throwable th) {
            NanoHTTPD.safeClose(null);
            NanoHTTPD.safeClose(this.inputStream);
            NanoHTTPD.safeClose(this.acceptSocket);
            this.httpd.asyncRunner.closed(this);
            throw th;
        }
        NanoHTTPD.safeClose(outputStream);
        NanoHTTPD.safeClose(this.inputStream);
        NanoHTTPD.safeClose(this.acceptSocket);
        this.httpd.asyncRunner.closed(this);
    }
}
