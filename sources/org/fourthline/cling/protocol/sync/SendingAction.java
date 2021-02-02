package org.fourthline.cling.protocol.sync;

import java.net.URL;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.fourthline.cling.UpnpService;
import org.fourthline.cling.model.UnsupportedDataException;
import org.fourthline.cling.model.action.ActionCancelledException;
import org.fourthline.cling.model.action.ActionException;
import org.fourthline.cling.model.action.ActionInvocation;
import org.fourthline.cling.model.message.StreamRequestMessage;
import org.fourthline.cling.model.message.StreamResponseMessage;
import org.fourthline.cling.model.message.UpnpResponse;
import org.fourthline.cling.model.message.UpnpResponse.Status;
import org.fourthline.cling.model.message.control.ActionRequestMessage;
import org.fourthline.cling.model.message.control.ActionResponseMessage;
import org.fourthline.cling.model.message.control.IncomingActionResponseMessage;
import org.fourthline.cling.model.message.control.OutgoingActionRequestMessage;
import org.fourthline.cling.model.meta.Device;
import org.fourthline.cling.model.types.ErrorCode;
import org.fourthline.cling.protocol.SendingSync;
import org.fourthline.cling.transport.RouterException;
import org.seamless.util.Exceptions;

public class SendingAction extends SendingSync<OutgoingActionRequestMessage, IncomingActionResponseMessage> {
    private static final Logger log = Logger.getLogger(SendingAction.class.getName());
    protected final ActionInvocation actionInvocation;

    public SendingAction(UpnpService upnpService, ActionInvocation actionInvocation2, URL url) {
        super(upnpService, new OutgoingActionRequestMessage(actionInvocation2, url));
        this.actionInvocation = actionInvocation2;
    }

    /* access modifiers changed from: protected */
    public IncomingActionResponseMessage executeSync() throws RouterException {
        return invokeRemote((OutgoingActionRequestMessage) getInputMessage());
    }

    /* access modifiers changed from: protected */
    public IncomingActionResponseMessage invokeRemote(OutgoingActionRequestMessage outgoingActionRequestMessage) throws RouterException {
        IncomingActionResponseMessage incomingActionResponseMessage;
        Device device = this.actionInvocation.getAction().getService().getDevice();
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Sending outgoing action call '");
        sb.append(this.actionInvocation.getAction().getName());
        sb.append("' to remote service of: ");
        sb.append(device);
        logger.fine(sb.toString());
        try {
            StreamResponseMessage sendRemoteRequest = sendRemoteRequest(outgoingActionRequestMessage);
            if (sendRemoteRequest == null) {
                log.fine("No connection or no no response received, returning null");
                this.actionInvocation.setFailure(new ActionException(ErrorCode.ACTION_FAILED, "Connection error or no response received"));
                return null;
            }
            incomingActionResponseMessage = new IncomingActionResponseMessage(sendRemoteRequest);
            try {
                if (!incomingActionResponseMessage.isFailedNonRecoverable()) {
                    if (incomingActionResponseMessage.isFailedRecoverable()) {
                        handleResponseFailure(incomingActionResponseMessage);
                    } else {
                        handleResponse(incomingActionResponseMessage);
                    }
                    return incomingActionResponseMessage;
                }
                Logger logger2 = log;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Response was a non-recoverable failure: ");
                sb2.append(incomingActionResponseMessage);
                logger2.fine(sb2.toString());
                ErrorCode errorCode = ErrorCode.ACTION_FAILED;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Non-recoverable remote execution failure: ");
                sb3.append(((UpnpResponse) incomingActionResponseMessage.getOperation()).getResponseDetails());
                throw new ActionException(errorCode, sb3.toString());
            } catch (ActionException e) {
                e = e;
                Logger logger3 = log;
                StringBuilder sb4 = new StringBuilder();
                sb4.append("Remote action invocation failed, returning Internal Server Error message: ");
                sb4.append(e.getMessage());
                logger3.fine(sb4.toString());
                this.actionInvocation.setFailure(e);
                if (incomingActionResponseMessage != null) {
                }
                return new IncomingActionResponseMessage(new UpnpResponse(Status.INTERNAL_SERVER_ERROR));
            }
        } catch (ActionException e2) {
            e = e2;
            incomingActionResponseMessage = null;
            Logger logger32 = log;
            StringBuilder sb42 = new StringBuilder();
            sb42.append("Remote action invocation failed, returning Internal Server Error message: ");
            sb42.append(e.getMessage());
            logger32.fine(sb42.toString());
            this.actionInvocation.setFailure(e);
            if (incomingActionResponseMessage != null || !((UpnpResponse) incomingActionResponseMessage.getOperation()).isFailed()) {
                return new IncomingActionResponseMessage(new UpnpResponse(Status.INTERNAL_SERVER_ERROR));
            }
            return incomingActionResponseMessage;
        }
    }

    /* access modifiers changed from: protected */
    public StreamResponseMessage sendRemoteRequest(OutgoingActionRequestMessage outgoingActionRequestMessage) throws ActionException, RouterException {
        try {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Writing SOAP request body of: ");
            sb.append(outgoingActionRequestMessage);
            logger.fine(sb.toString());
            getUpnpService().getConfiguration().getSoapActionProcessor().writeBody((ActionRequestMessage) outgoingActionRequestMessage, this.actionInvocation);
            log.fine("Sending SOAP body of message as stream to remote device");
            return getUpnpService().getRouter().send((StreamRequestMessage) outgoingActionRequestMessage);
        } catch (RouterException e) {
            Throwable unwrap = Exceptions.unwrap(e);
            if (unwrap instanceof InterruptedException) {
                if (log.isLoggable(Level.FINE)) {
                    Logger logger2 = log;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Sending action request message was interrupted: ");
                    sb2.append(unwrap);
                    logger2.fine(sb2.toString());
                }
                throw new ActionCancelledException((InterruptedException) unwrap);
            }
            throw e;
        } catch (UnsupportedDataException e2) {
            if (log.isLoggable(Level.FINE)) {
                Logger logger3 = log;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Error writing SOAP body: ");
                sb3.append(e2);
                logger3.fine(sb3.toString());
                log.log(Level.FINE, "Exception root cause: ", Exceptions.unwrap(e2));
            }
            ErrorCode errorCode = ErrorCode.ACTION_FAILED;
            StringBuilder sb4 = new StringBuilder();
            sb4.append("Error writing request message. ");
            sb4.append(e2.getMessage());
            throw new ActionException(errorCode, sb4.toString());
        }
    }

    /* access modifiers changed from: protected */
    public void handleResponse(IncomingActionResponseMessage incomingActionResponseMessage) throws ActionException {
        try {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Received response for outgoing call, reading SOAP response body: ");
            sb.append(incomingActionResponseMessage);
            logger.fine(sb.toString());
            getUpnpService().getConfiguration().getSoapActionProcessor().readBody((ActionResponseMessage) incomingActionResponseMessage, this.actionInvocation);
        } catch (UnsupportedDataException e) {
            Logger logger2 = log;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Error reading SOAP body: ");
            sb2.append(e);
            logger2.fine(sb2.toString());
            log.log(Level.FINE, "Exception root cause: ", Exceptions.unwrap(e));
            ErrorCode errorCode = ErrorCode.ACTION_FAILED;
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Error reading SOAP response message. ");
            sb3.append(e.getMessage());
            throw new ActionException(errorCode, sb3.toString(), false);
        }
    }

    /* access modifiers changed from: protected */
    public void handleResponseFailure(IncomingActionResponseMessage incomingActionResponseMessage) throws ActionException {
        try {
            log.fine("Received response with Internal Server Error, reading SOAP failure message");
            getUpnpService().getConfiguration().getSoapActionProcessor().readBody((ActionResponseMessage) incomingActionResponseMessage, this.actionInvocation);
        } catch (UnsupportedDataException e) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Error reading SOAP body: ");
            sb.append(e);
            logger.fine(sb.toString());
            log.log(Level.FINE, "Exception root cause: ", Exceptions.unwrap(e));
            ErrorCode errorCode = ErrorCode.ACTION_FAILED;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Error reading SOAP response failure message. ");
            sb2.append(e.getMessage());
            throw new ActionException(errorCode, sb2.toString(), false);
        }
    }
}
