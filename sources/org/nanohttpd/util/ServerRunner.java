package org.nanohttpd.util;

import java.io.IOException;
import java.io.PrintStream;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.nanohttpd.protocols.http.NanoHTTPD;

public class ServerRunner {
    private static final Logger LOG = Logger.getLogger(ServerRunner.class.getName());

    public static void executeInstance(NanoHTTPD nanoHTTPD) {
        try {
            nanoHTTPD.start(5000, false);
        } catch (IOException e) {
            PrintStream printStream = System.err;
            StringBuilder sb = new StringBuilder();
            sb.append("Couldn't start server:\n");
            sb.append(e);
            printStream.println(sb.toString());
            System.exit(-1);
        }
        System.out.println("Server started, Hit Enter to stop.\n");
        try {
            System.in.read();
        } catch (Throwable unused) {
        }
        nanoHTTPD.stop();
        System.out.println("Server stopped.\n");
    }

    public static <T extends NanoHTTPD> void run(Class<T> cls) {
        try {
            executeInstance((NanoHTTPD) cls.newInstance());
        } catch (Exception e) {
            LOG.log(Level.SEVERE, "Could not create server", e);
        }
    }
}
