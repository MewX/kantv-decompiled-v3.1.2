package org.fourthline.cling.protocol;

import java.util.logging.Level;
import java.util.logging.Logger;
import org.fourthline.cling.UpnpService;
import org.fourthline.cling.model.message.UpnpMessage;
import org.fourthline.cling.model.message.header.UpnpHeader;
import org.fourthline.cling.model.message.header.UpnpHeader.Type;
import org.fourthline.cling.transport.RouterException;
import org.seamless.util.Exceptions;

public abstract class ReceivingAsync<M extends UpnpMessage> implements Runnable {
    private static final Logger log = Logger.getLogger(UpnpService.class.getName());
    private M inputMessage;
    private final UpnpService upnpService;

    /* access modifiers changed from: protected */
    public abstract void execute() throws RouterException;

    /* access modifiers changed from: protected */
    public boolean waitBeforeExecution() throws InterruptedException {
        return true;
    }

    protected ReceivingAsync(UpnpService upnpService2, M m) {
        this.upnpService = upnpService2;
        this.inputMessage = m;
    }

    public UpnpService getUpnpService() {
        return this.upnpService;
    }

    public M getInputMessage() {
        return this.inputMessage;
    }

    public void run() {
        boolean z;
        try {
            z = waitBeforeExecution();
        } catch (InterruptedException unused) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Protocol wait before execution interrupted (on shutdown?): ");
            sb.append(getClass().getSimpleName());
            logger.info(sb.toString());
            z = false;
        }
        if (z) {
            try {
                execute();
            } catch (Exception e) {
                Throwable unwrap = Exceptions.unwrap(e);
                String str = "': ";
                if (unwrap instanceof InterruptedException) {
                    Logger logger2 = log;
                    Level level = Level.INFO;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Interrupted protocol '");
                    sb2.append(getClass().getSimpleName());
                    sb2.append(str);
                    sb2.append(e);
                    logger2.log(level, sb2.toString(), unwrap);
                    return;
                }
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Fatal error while executing protocol '");
                sb3.append(getClass().getSimpleName());
                sb3.append(str);
                sb3.append(e);
                throw new RuntimeException(sb3.toString(), e);
            }
        }
    }

    /* access modifiers changed from: protected */
    public <H extends UpnpHeader> H getFirstHeader(Type type, Class<H> cls) {
        return getInputMessage().getHeaders().getFirstHeader(type, cls);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        sb.append(getClass().getSimpleName());
        sb.append(")");
        return sb.toString();
    }
}
