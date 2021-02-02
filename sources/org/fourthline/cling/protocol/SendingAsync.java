package org.fourthline.cling.protocol;

import java.util.logging.Level;
import java.util.logging.Logger;
import org.fourthline.cling.UpnpService;
import org.fourthline.cling.transport.RouterException;
import org.seamless.util.Exceptions;

public abstract class SendingAsync implements Runnable {
    private static final Logger log = Logger.getLogger(UpnpService.class.getName());
    private final UpnpService upnpService;

    /* access modifiers changed from: protected */
    public abstract void execute() throws RouterException;

    protected SendingAsync(UpnpService upnpService2) {
        this.upnpService = upnpService2;
    }

    public UpnpService getUpnpService() {
        return this.upnpService;
    }

    public void run() {
        try {
            execute();
        } catch (Exception e) {
            Throwable unwrap = Exceptions.unwrap(e);
            String str = "': ";
            if (unwrap instanceof InterruptedException) {
                Logger logger = log;
                Level level = Level.INFO;
                StringBuilder sb = new StringBuilder();
                sb.append("Interrupted protocol '");
                sb.append(getClass().getSimpleName());
                sb.append(str);
                sb.append(e);
                logger.log(level, sb.toString(), unwrap);
                return;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Fatal error while executing protocol '");
            sb2.append(getClass().getSimpleName());
            sb2.append(str);
            sb2.append(e);
            throw new RuntimeException(sb2.toString(), e);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        sb.append(getClass().getSimpleName());
        sb.append(")");
        return sb.toString();
    }
}
