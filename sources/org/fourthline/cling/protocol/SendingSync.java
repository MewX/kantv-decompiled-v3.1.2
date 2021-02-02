package org.fourthline.cling.protocol;

import org.fourthline.cling.UpnpService;
import org.fourthline.cling.model.message.StreamRequestMessage;
import org.fourthline.cling.model.message.StreamResponseMessage;
import org.fourthline.cling.transport.RouterException;

public abstract class SendingSync<IN extends StreamRequestMessage, OUT extends StreamResponseMessage> extends SendingAsync {
    private final IN inputMessage;
    protected OUT outputMessage;

    /* access modifiers changed from: protected */
    public abstract OUT executeSync() throws RouterException;

    protected SendingSync(UpnpService upnpService, IN in) {
        super(upnpService);
        this.inputMessage = in;
    }

    public IN getInputMessage() {
        return this.inputMessage;
    }

    public OUT getOutputMessage() {
        return this.outputMessage;
    }

    /* access modifiers changed from: protected */
    public final void execute() throws RouterException {
        this.outputMessage = executeSync();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        sb.append(getClass().getSimpleName());
        sb.append(")");
        return sb.toString();
    }
}
