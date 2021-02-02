package org.fourthline.cling.protocol.async;

import com.avos.avoscloud.Messages.OpType;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;
import org.fourthline.cling.UpnpService;
import org.fourthline.cling.model.Location;
import org.fourthline.cling.model.NetworkAddress;
import org.fourthline.cling.model.message.OutgoingDatagramMessage;
import org.fourthline.cling.model.message.discovery.OutgoingNotificationRequest;
import org.fourthline.cling.model.message.discovery.OutgoingNotificationRequestDeviceType;
import org.fourthline.cling.model.message.discovery.OutgoingNotificationRequestRootDevice;
import org.fourthline.cling.model.message.discovery.OutgoingNotificationRequestServiceType;
import org.fourthline.cling.model.message.discovery.OutgoingNotificationRequestUDN;
import org.fourthline.cling.model.meta.LocalDevice;
import org.fourthline.cling.model.types.NotificationSubtype;
import org.fourthline.cling.model.types.ServiceType;
import org.fourthline.cling.protocol.SendingAsync;
import org.fourthline.cling.transport.RouterException;

public abstract class SendingNotification extends SendingAsync {
    private static final Logger log = Logger.getLogger(SendingNotification.class.getName());
    private LocalDevice device;

    /* access modifiers changed from: protected */
    public int getBulkIntervalMilliseconds() {
        return OpType.modify_VALUE;
    }

    /* access modifiers changed from: protected */
    public int getBulkRepeat() {
        return 3;
    }

    /* access modifiers changed from: protected */
    public abstract NotificationSubtype getNotificationSubtype();

    public SendingNotification(UpnpService upnpService, LocalDevice localDevice) {
        super(upnpService);
        this.device = localDevice;
    }

    public LocalDevice getDevice() {
        return this.device;
    }

    /* access modifiers changed from: protected */
    public void execute() throws RouterException {
        List<NetworkAddress> activeStreamServers = getUpnpService().getRouter().getActiveStreamServers(null);
        if (activeStreamServers.size() == 0) {
            log.fine("Aborting notifications, no active stream servers found (network disabled?)");
            return;
        }
        ArrayList<Location> arrayList = new ArrayList<>();
        for (NetworkAddress location : activeStreamServers) {
            arrayList.add(new Location(location, getUpnpService().getConfiguration().getNamespace().getDescriptorPathString(getDevice())));
        }
        for (int i = 0; i < getBulkRepeat(); i++) {
            try {
                for (Location sendMessages : arrayList) {
                    sendMessages(sendMessages);
                }
                Logger logger = log;
                StringBuilder sb = new StringBuilder();
                sb.append("Sleeping ");
                sb.append(getBulkIntervalMilliseconds());
                sb.append(" milliseconds");
                logger.finer(sb.toString());
                Thread.sleep((long) getBulkIntervalMilliseconds());
            } catch (InterruptedException e) {
                Logger logger2 = log;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Advertisement thread was interrupted: ");
                sb2.append(e);
                logger2.warning(sb2.toString());
            }
        }
    }

    public void sendMessages(Location location) throws RouterException {
        LocalDevice[] localDeviceArr;
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Sending root device messages: ");
        sb.append(getDevice());
        logger.finer(sb.toString());
        for (OutgoingNotificationRequest send : createDeviceMessages(getDevice(), location)) {
            getUpnpService().getRouter().send((OutgoingDatagramMessage) send);
        }
        if (getDevice().hasEmbeddedDevices()) {
            for (LocalDevice localDevice : (LocalDevice[]) getDevice().findEmbeddedDevices()) {
                Logger logger2 = log;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Sending embedded device messages: ");
                sb2.append(localDevice);
                logger2.finer(sb2.toString());
                for (OutgoingNotificationRequest send2 : createDeviceMessages(localDevice, location)) {
                    getUpnpService().getRouter().send((OutgoingDatagramMessage) send2);
                }
            }
        }
        List<OutgoingNotificationRequest> createServiceTypeMessages = createServiceTypeMessages(getDevice(), location);
        if (createServiceTypeMessages.size() > 0) {
            log.finer("Sending service type messages");
            for (OutgoingNotificationRequest send3 : createServiceTypeMessages) {
                getUpnpService().getRouter().send((OutgoingDatagramMessage) send3);
            }
        }
    }

    /* access modifiers changed from: protected */
    public List<OutgoingNotificationRequest> createDeviceMessages(LocalDevice localDevice, Location location) {
        ArrayList arrayList = new ArrayList();
        if (localDevice.isRoot()) {
            arrayList.add(new OutgoingNotificationRequestRootDevice(location, localDevice, getNotificationSubtype()));
        }
        arrayList.add(new OutgoingNotificationRequestUDN(location, localDevice, getNotificationSubtype()));
        arrayList.add(new OutgoingNotificationRequestDeviceType(location, localDevice, getNotificationSubtype()));
        return arrayList;
    }

    /* access modifiers changed from: protected */
    public List<OutgoingNotificationRequest> createServiceTypeMessages(LocalDevice localDevice, Location location) {
        ArrayList arrayList = new ArrayList();
        for (ServiceType outgoingNotificationRequestServiceType : localDevice.findServiceTypes()) {
            arrayList.add(new OutgoingNotificationRequestServiceType(location, localDevice, getNotificationSubtype(), outgoingNotificationRequestServiceType));
        }
        return arrayList;
    }
}
