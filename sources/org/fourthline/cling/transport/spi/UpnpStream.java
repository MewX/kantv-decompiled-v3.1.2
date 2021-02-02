package org.fourthline.cling.transport.spi;

import java.util.logging.Logger;
import org.fourthline.cling.model.message.StreamRequestMessage;
import org.fourthline.cling.model.message.StreamResponseMessage;
import org.fourthline.cling.model.message.UpnpResponse.Status;
import org.fourthline.cling.protocol.ProtocolCreationException;
import org.fourthline.cling.protocol.ProtocolFactory;
import org.fourthline.cling.protocol.ReceivingSync;
import org.seamless.util.Exceptions;

public abstract class UpnpStream implements Runnable {
    private static Logger log = Logger.getLogger(UpnpStream.class.getName());
    protected final ProtocolFactory protocolFactory;
    protected ReceivingSync syncProtocol;

    protected UpnpStream(ProtocolFactory protocolFactory2) {
        this.protocolFactory = protocolFactory2;
    }

    public ProtocolFactory getProtocolFactory() {
        return this.protocolFactory;
    }

    public StreamResponseMessage process(StreamRequestMessage streamRequestMessage) {
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Processing stream request message: ");
        sb.append(streamRequestMessage);
        logger.fine(sb.toString());
        try {
            this.syncProtocol = getProtocolFactory().createReceivingSync(streamRequestMessage);
            Logger logger2 = log;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Running protocol for synchronous message processing: ");
            sb2.append(this.syncProtocol);
            logger2.fine(sb2.toString());
            this.syncProtocol.run();
            StreamResponseMessage outputMessage = this.syncProtocol.getOutputMessage();
            if (outputMessage == null) {
                log.finer("Protocol did not return any response message");
                return null;
            }
            Logger logger3 = log;
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Protocol returned response: ");
            sb3.append(outputMessage);
            logger3.finer(sb3.toString());
            return outputMessage;
        } catch (ProtocolCreationException e) {
            Logger logger4 = log;
            StringBuilder sb4 = new StringBuilder();
            sb4.append("Processing stream request failed - ");
            sb4.append(Exceptions.unwrap(e).toString());
            logger4.warning(sb4.toString());
            return new StreamResponseMessage(Status.NOT_IMPLEMENTED);
        }
    }

    /* access modifiers changed from: protected */
    public void responseSent(StreamResponseMessage streamResponseMessage) {
        ReceivingSync receivingSync = this.syncProtocol;
        if (receivingSync != null) {
            receivingSync.responseSent(streamResponseMessage);
        }
    }

    /* access modifiers changed from: protected */
    public void responseException(Throwable th) {
        ReceivingSync receivingSync = this.syncProtocol;
        if (receivingSync != null) {
            receivingSync.responseException(th);
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
