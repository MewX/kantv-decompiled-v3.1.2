package org.fourthline.cling.protocol.async;

import java.util.logging.Logger;
import org.fourthline.cling.UpnpService;
import org.fourthline.cling.model.meta.LocalDevice;
import org.fourthline.cling.model.types.NotificationSubtype;
import org.fourthline.cling.transport.RouterException;

public class SendingNotificationAlive extends SendingNotification {
    private static final Logger log = Logger.getLogger(SendingNotification.class.getName());

    public SendingNotificationAlive(UpnpService upnpService, LocalDevice localDevice) {
        super(upnpService, localDevice);
    }

    /* access modifiers changed from: protected */
    public void execute() throws RouterException {
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Sending alive messages (");
        sb.append(getBulkRepeat());
        sb.append(" times) for: ");
        sb.append(getDevice());
        logger.fine(sb.toString());
        super.execute();
    }

    /* access modifiers changed from: protected */
    public NotificationSubtype getNotificationSubtype() {
        return NotificationSubtype.ALIVE;
    }
}
