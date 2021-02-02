package org.nanohttpd.protocols.http.threading;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.nanohttpd.protocols.http.ClientHandler;

public class DefaultAsyncRunner implements IAsyncRunner {
    protected long requestCount;
    private final List<ClientHandler> running = Collections.synchronizedList(new ArrayList());

    public List<ClientHandler> getRunning() {
        return this.running;
    }

    public void closeAll() {
        Iterator it = new ArrayList(this.running).iterator();
        while (it.hasNext()) {
            ((ClientHandler) it.next()).close();
        }
    }

    public void closed(ClientHandler clientHandler) {
        this.running.remove(clientHandler);
    }

    public void exec(ClientHandler clientHandler) {
        this.requestCount++;
        this.running.add(clientHandler);
        createThread(clientHandler).start();
    }

    /* access modifiers changed from: protected */
    public Thread createThread(ClientHandler clientHandler) {
        Thread thread = new Thread(clientHandler);
        thread.setDaemon(true);
        StringBuilder sb = new StringBuilder();
        sb.append("NanoHttpd Request Processor (#");
        sb.append(this.requestCount);
        sb.append(")");
        thread.setName(sb.toString());
        return thread;
    }
}
