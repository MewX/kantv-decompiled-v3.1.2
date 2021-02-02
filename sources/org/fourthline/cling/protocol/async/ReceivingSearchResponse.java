package org.fourthline.cling.protocol.async;

import java.util.logging.Logger;
import org.fourthline.cling.UpnpService;
import org.fourthline.cling.model.ValidationError;
import org.fourthline.cling.model.ValidationException;
import org.fourthline.cling.model.message.IncomingDatagramMessage;
import org.fourthline.cling.model.message.UpnpResponse;
import org.fourthline.cling.model.message.discovery.IncomingSearchResponse;
import org.fourthline.cling.model.meta.RemoteDevice;
import org.fourthline.cling.model.meta.RemoteDeviceIdentity;
import org.fourthline.cling.model.types.UDN;
import org.fourthline.cling.protocol.ReceivingAsync;
import org.fourthline.cling.protocol.RetrieveRemoteDescriptors;
import org.fourthline.cling.transport.RouterException;

public class ReceivingSearchResponse extends ReceivingAsync<IncomingSearchResponse> {
    private static final Logger log = Logger.getLogger(ReceivingSearchResponse.class.getName());

    public ReceivingSearchResponse(UpnpService upnpService, IncomingDatagramMessage<UpnpResponse> incomingDatagramMessage) {
        super(upnpService, new IncomingSearchResponse(incomingDatagramMessage));
    }

    /* access modifiers changed from: protected */
    public void execute() throws RouterException {
        if (!((IncomingSearchResponse) getInputMessage()).isSearchResponseMessage()) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Ignoring invalid search response message: ");
            sb.append(getInputMessage());
            logger.fine(sb.toString());
            return;
        }
        UDN rootDeviceUDN = ((IncomingSearchResponse) getInputMessage()).getRootDeviceUDN();
        if (rootDeviceUDN == null) {
            Logger logger2 = log;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Ignoring search response message without UDN: ");
            sb2.append(getInputMessage());
            logger2.fine(sb2.toString());
            return;
        }
        RemoteDeviceIdentity remoteDeviceIdentity = new RemoteDeviceIdentity((IncomingSearchResponse) getInputMessage());
        Logger logger3 = log;
        StringBuilder sb3 = new StringBuilder();
        sb3.append("Received device search response: ");
        sb3.append(remoteDeviceIdentity);
        logger3.fine(sb3.toString());
        if (getUpnpService().getRegistry().update(remoteDeviceIdentity)) {
            Logger logger4 = log;
            StringBuilder sb4 = new StringBuilder();
            sb4.append("Remote device was already known: ");
            sb4.append(rootDeviceUDN);
            logger4.fine(sb4.toString());
            return;
        }
        try {
            RemoteDevice remoteDevice = new RemoteDevice(remoteDeviceIdentity);
            if (remoteDeviceIdentity.getDescriptorURL() == null) {
                Logger logger5 = log;
                StringBuilder sb5 = new StringBuilder();
                sb5.append("Ignoring message without location URL header: ");
                sb5.append(getInputMessage());
                logger5.finer(sb5.toString());
            } else if (remoteDeviceIdentity.getMaxAgeSeconds() == null) {
                Logger logger6 = log;
                StringBuilder sb6 = new StringBuilder();
                sb6.append("Ignoring message without max-age header: ");
                sb6.append(getInputMessage());
                logger6.finer(sb6.toString());
            } else {
                getUpnpService().getConfiguration().getAsyncProtocolExecutor().execute(new RetrieveRemoteDescriptors(getUpnpService(), remoteDevice));
            }
        } catch (ValidationException e) {
            Logger logger7 = log;
            StringBuilder sb7 = new StringBuilder();
            sb7.append("Validation errors of device during discovery: ");
            sb7.append(remoteDeviceIdentity);
            logger7.warning(sb7.toString());
            for (ValidationError validationError : e.getErrors()) {
                log.warning(validationError.toString());
            }
        }
    }
}
