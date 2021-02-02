package org.fourthline.cling.protocol;

import java.util.logging.Logger;
import org.fourthline.cling.UpnpService;
import org.fourthline.cling.model.message.StreamRequestMessage;
import org.fourthline.cling.model.message.StreamResponseMessage;
import org.fourthline.cling.model.profile.RemoteClientInfo;
import org.fourthline.cling.transport.RouterException;

public abstract class ReceivingSync<IN extends StreamRequestMessage, OUT extends StreamResponseMessage> extends ReceivingAsync<IN> {
    private static final Logger log = Logger.getLogger(UpnpService.class.getName());
    protected OUT outputMessage;
    protected final RemoteClientInfo remoteClientInfo;

    /* access modifiers changed from: protected */
    public abstract OUT executeSync() throws RouterException;

    public void responseException(Throwable th) {
    }

    public void responseSent(StreamResponseMessage streamResponseMessage) {
    }

    protected ReceivingSync(UpnpService upnpService, IN in) {
        super(upnpService, in);
        this.remoteClientInfo = new RemoteClientInfo(in);
    }

    public OUT getOutputMessage() {
        return this.outputMessage;
    }

    /* access modifiers changed from: protected */
    public final void execute() throws RouterException {
        this.outputMessage = executeSync();
        if (this.outputMessage != null && getRemoteClientInfo().getExtraResponseHeaders().size() > 0) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Setting extra headers on response message: ");
            sb.append(getRemoteClientInfo().getExtraResponseHeaders().size());
            logger.fine(sb.toString());
            this.outputMessage.getHeaders().putAll(getRemoteClientInfo().getExtraResponseHeaders());
        }
    }

    public RemoteClientInfo getRemoteClientInfo() {
        return this.remoteClientInfo;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        sb.append(getClass().getSimpleName());
        sb.append(")");
        return sb.toString();
    }
}
