package org.fourthline.cling.protocol.async;

import java.util.logging.Logger;
import org.fourthline.cling.UpnpService;
import org.fourthline.cling.model.ValidationError;
import org.fourthline.cling.model.ValidationException;
import org.fourthline.cling.model.message.IncomingDatagramMessage;
import org.fourthline.cling.model.message.UpnpRequest;
import org.fourthline.cling.model.message.discovery.IncomingNotificationRequest;
import org.fourthline.cling.model.meta.RemoteDevice;
import org.fourthline.cling.model.meta.RemoteDeviceIdentity;
import org.fourthline.cling.model.types.UDN;
import org.fourthline.cling.protocol.ReceivingAsync;
import org.fourthline.cling.protocol.RetrieveRemoteDescriptors;
import org.fourthline.cling.transport.RouterException;

public class ReceivingNotification extends ReceivingAsync<IncomingNotificationRequest> {
    private static final Logger log = Logger.getLogger(ReceivingNotification.class.getName());

    public ReceivingNotification(UpnpService upnpService, IncomingDatagramMessage<UpnpRequest> incomingDatagramMessage) {
        super(upnpService, new IncomingNotificationRequest(incomingDatagramMessage));
    }

    /* access modifiers changed from: protected */
    public void execute() throws RouterException {
        UDN udn = ((IncomingNotificationRequest) getInputMessage()).getUDN();
        if (udn == null) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Ignoring notification message without UDN: ");
            sb.append(getInputMessage());
            logger.fine(sb.toString());
            return;
        }
        RemoteDeviceIdentity remoteDeviceIdentity = new RemoteDeviceIdentity((IncomingNotificationRequest) getInputMessage());
        Logger logger2 = log;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Received device notification: ");
        sb2.append(remoteDeviceIdentity);
        logger2.fine(sb2.toString());
        try {
            RemoteDevice remoteDevice = new RemoteDevice(remoteDeviceIdentity);
            if (((IncomingNotificationRequest) getInputMessage()).isAliveMessage()) {
                Logger logger3 = log;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Received device ALIVE advertisement, descriptor location is: ");
                sb3.append(remoteDeviceIdentity.getDescriptorURL());
                logger3.fine(sb3.toString());
                if (remoteDeviceIdentity.getDescriptorURL() == null) {
                    Logger logger4 = log;
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("Ignoring message without location URL header: ");
                    sb4.append(getInputMessage());
                    logger4.finer(sb4.toString());
                } else if (remoteDeviceIdentity.getMaxAgeSeconds() == null) {
                    Logger logger5 = log;
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append("Ignoring message without max-age header: ");
                    sb5.append(getInputMessage());
                    logger5.finer(sb5.toString());
                } else if (getUpnpService().getRegistry().update(remoteDeviceIdentity)) {
                    Logger logger6 = log;
                    StringBuilder sb6 = new StringBuilder();
                    sb6.append("Remote device was already known: ");
                    sb6.append(udn);
                    logger6.finer(sb6.toString());
                } else {
                    getUpnpService().getConfiguration().getAsyncProtocolExecutor().execute(new RetrieveRemoteDescriptors(getUpnpService(), remoteDevice));
                }
            } else if (((IncomingNotificationRequest) getInputMessage()).isByeByeMessage()) {
                log.fine("Received device BYEBYE advertisement");
                if (getUpnpService().getRegistry().removeDevice(remoteDevice)) {
                    Logger logger7 = log;
                    StringBuilder sb7 = new StringBuilder();
                    sb7.append("Removed remote device from registry: ");
                    sb7.append(remoteDevice);
                    logger7.fine(sb7.toString());
                }
            } else {
                Logger logger8 = log;
                StringBuilder sb8 = new StringBuilder();
                sb8.append("Ignoring unknown notification message: ");
                sb8.append(getInputMessage());
                logger8.finer(sb8.toString());
            }
        } catch (ValidationException e) {
            Logger logger9 = log;
            StringBuilder sb9 = new StringBuilder();
            sb9.append("Validation errors of device during discovery: ");
            sb9.append(remoteDeviceIdentity);
            logger9.warning(sb9.toString());
            for (ValidationError validationError : e.getErrors()) {
                log.warning(validationError.toString());
            }
        }
    }
}
