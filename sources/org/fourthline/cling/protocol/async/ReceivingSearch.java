package org.fourthline.cling.protocol.async;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.fourthline.cling.UpnpService;
import org.fourthline.cling.model.DiscoveryOptions;
import org.fourthline.cling.model.Location;
import org.fourthline.cling.model.NetworkAddress;
import org.fourthline.cling.model.message.IncomingDatagramMessage;
import org.fourthline.cling.model.message.OutgoingDatagramMessage;
import org.fourthline.cling.model.message.UpnpRequest;
import org.fourthline.cling.model.message.discovery.IncomingSearchRequest;
import org.fourthline.cling.model.message.discovery.OutgoingSearchResponse;
import org.fourthline.cling.model.message.discovery.OutgoingSearchResponseDeviceType;
import org.fourthline.cling.model.message.discovery.OutgoingSearchResponseRootDevice;
import org.fourthline.cling.model.message.discovery.OutgoingSearchResponseServiceType;
import org.fourthline.cling.model.message.discovery.OutgoingSearchResponseUDN;
import org.fourthline.cling.model.message.header.DeviceTypeHeader;
import org.fourthline.cling.model.message.header.MXHeader;
import org.fourthline.cling.model.message.header.RootDeviceHeader;
import org.fourthline.cling.model.message.header.STAllHeader;
import org.fourthline.cling.model.message.header.ServiceTypeHeader;
import org.fourthline.cling.model.message.header.UDNHeader;
import org.fourthline.cling.model.message.header.UpnpHeader;
import org.fourthline.cling.model.meta.Device;
import org.fourthline.cling.model.meta.LocalDevice;
import org.fourthline.cling.model.types.DeviceType;
import org.fourthline.cling.model.types.ServiceType;
import org.fourthline.cling.model.types.UDN;
import org.fourthline.cling.protocol.ReceivingAsync;
import org.fourthline.cling.transport.RouterException;

public class ReceivingSearch extends ReceivingAsync<IncomingSearchRequest> {
    private static final boolean LOG_ENABLED = log.isLoggable(Level.FINE);
    private static final Logger log = Logger.getLogger(ReceivingSearch.class.getName());
    protected final Random randomGenerator = new Random();

    /* access modifiers changed from: protected */
    public void prepareOutgoingSearchResponse(OutgoingSearchResponse outgoingSearchResponse) {
    }

    public ReceivingSearch(UpnpService upnpService, IncomingDatagramMessage<UpnpRequest> incomingDatagramMessage) {
        super(upnpService, new IncomingSearchRequest(incomingDatagramMessage));
    }

    /* access modifiers changed from: protected */
    public void execute() throws RouterException {
        if (getUpnpService().getRouter() == null) {
            log.fine("Router hasn't completed initialization, ignoring received search message");
        } else if (!((IncomingSearchRequest) getInputMessage()).isMANSSDPDiscover()) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Invalid search request, no or invalid MAN ssdp:discover header: ");
            sb.append(getInputMessage());
            logger.fine(sb.toString());
        } else {
            UpnpHeader searchTarget = ((IncomingSearchRequest) getInputMessage()).getSearchTarget();
            if (searchTarget == null) {
                Logger logger2 = log;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Invalid search request, did not contain ST header: ");
                sb2.append(getInputMessage());
                logger2.fine(sb2.toString());
                return;
            }
            List<NetworkAddress> activeStreamServers = getUpnpService().getRouter().getActiveStreamServers(((IncomingSearchRequest) getInputMessage()).getLocalAddress());
            if (activeStreamServers.size() == 0) {
                log.fine("Aborting search response, no active stream servers found (network disabled?)");
                return;
            }
            for (NetworkAddress sendResponses : activeStreamServers) {
                sendResponses(searchTarget, sendResponses);
            }
        }
    }

    /* access modifiers changed from: protected */
    public boolean waitBeforeExecution() throws InterruptedException {
        Integer mx = ((IncomingSearchRequest) getInputMessage()).getMX();
        if (mx == null) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Invalid search request, did not contain MX header: ");
            sb.append(getInputMessage());
            logger.fine(sb.toString());
            return false;
        }
        if (mx.intValue() > 120 || mx.intValue() <= 0) {
            mx = MXHeader.DEFAULT_VALUE;
        }
        if (getUpnpService().getRegistry().getLocalDevices().size() > 0) {
            int nextInt = this.randomGenerator.nextInt(mx.intValue() * 1000);
            Logger logger2 = log;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Sleeping ");
            sb2.append(nextInt);
            sb2.append(" milliseconds to avoid flooding with search responses");
            logger2.fine(sb2.toString());
            Thread.sleep((long) nextInt);
        }
        return true;
    }

    /* access modifiers changed from: protected */
    public void sendResponses(UpnpHeader upnpHeader, NetworkAddress networkAddress) throws RouterException {
        if (upnpHeader instanceof STAllHeader) {
            sendSearchResponseAll(networkAddress);
        } else if (upnpHeader instanceof RootDeviceHeader) {
            sendSearchResponseRootDevices(networkAddress);
        } else if (upnpHeader instanceof UDNHeader) {
            sendSearchResponseUDN((UDN) upnpHeader.getValue(), networkAddress);
        } else if (upnpHeader instanceof DeviceTypeHeader) {
            sendSearchResponseDeviceType((DeviceType) upnpHeader.getValue(), networkAddress);
        } else if (upnpHeader instanceof ServiceTypeHeader) {
            sendSearchResponseServiceType((ServiceType) upnpHeader.getValue(), networkAddress);
        } else {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Non-implemented search request target: ");
            sb.append(upnpHeader.getClass());
            logger.warning(sb.toString());
        }
    }

    /* access modifiers changed from: protected */
    public void sendSearchResponseAll(NetworkAddress networkAddress) throws RouterException {
        LocalDevice[] localDeviceArr;
        if (LOG_ENABLED) {
            log.fine("Responding to 'all' search with advertisement messages for all local devices");
        }
        for (LocalDevice localDevice : getUpnpService().getRegistry().getLocalDevices()) {
            if (!isAdvertisementDisabled(localDevice)) {
                if (LOG_ENABLED) {
                    Logger logger = log;
                    StringBuilder sb = new StringBuilder();
                    sb.append("Sending root device messages: ");
                    sb.append(localDevice);
                    logger.finer(sb.toString());
                }
                for (OutgoingSearchResponse send : createDeviceMessages(localDevice, networkAddress)) {
                    getUpnpService().getRouter().send((OutgoingDatagramMessage) send);
                }
                if (localDevice.hasEmbeddedDevices()) {
                    for (LocalDevice localDevice2 : (LocalDevice[]) localDevice.findEmbeddedDevices()) {
                        if (LOG_ENABLED) {
                            Logger logger2 = log;
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("Sending embedded device messages: ");
                            sb2.append(localDevice2);
                            logger2.finer(sb2.toString());
                        }
                        for (OutgoingSearchResponse send2 : createDeviceMessages(localDevice2, networkAddress)) {
                            getUpnpService().getRouter().send((OutgoingDatagramMessage) send2);
                        }
                    }
                }
                List<OutgoingSearchResponse> createServiceTypeMessages = createServiceTypeMessages(localDevice, networkAddress);
                if (createServiceTypeMessages.size() > 0) {
                    if (LOG_ENABLED) {
                        log.finer("Sending service type messages");
                    }
                    for (OutgoingSearchResponse send3 : createServiceTypeMessages) {
                        getUpnpService().getRouter().send((OutgoingDatagramMessage) send3);
                    }
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public List<OutgoingSearchResponse> createDeviceMessages(LocalDevice localDevice, NetworkAddress networkAddress) {
        ArrayList<OutgoingSearchResponse> arrayList = new ArrayList<>();
        if (localDevice.isRoot()) {
            arrayList.add(new OutgoingSearchResponseRootDevice((IncomingDatagramMessage) getInputMessage(), getDescriptorLocation(networkAddress, localDevice), localDevice));
        }
        arrayList.add(new OutgoingSearchResponseUDN((IncomingDatagramMessage) getInputMessage(), getDescriptorLocation(networkAddress, localDevice), localDevice));
        arrayList.add(new OutgoingSearchResponseDeviceType((IncomingDatagramMessage) getInputMessage(), getDescriptorLocation(networkAddress, localDevice), localDevice));
        for (OutgoingSearchResponse prepareOutgoingSearchResponse : arrayList) {
            prepareOutgoingSearchResponse(prepareOutgoingSearchResponse);
        }
        return arrayList;
    }

    /* access modifiers changed from: protected */
    public List<OutgoingSearchResponse> createServiceTypeMessages(LocalDevice localDevice, NetworkAddress networkAddress) {
        ArrayList arrayList = new ArrayList();
        for (ServiceType outgoingSearchResponseServiceType : localDevice.findServiceTypes()) {
            OutgoingSearchResponseServiceType outgoingSearchResponseServiceType2 = new OutgoingSearchResponseServiceType((IncomingDatagramMessage) getInputMessage(), getDescriptorLocation(networkAddress, localDevice), localDevice, outgoingSearchResponseServiceType);
            prepareOutgoingSearchResponse(outgoingSearchResponseServiceType2);
            arrayList.add(outgoingSearchResponseServiceType2);
        }
        return arrayList;
    }

    /* access modifiers changed from: protected */
    public void sendSearchResponseRootDevices(NetworkAddress networkAddress) throws RouterException {
        log.fine("Responding to root device search with advertisement messages for all local root devices");
        for (LocalDevice localDevice : getUpnpService().getRegistry().getLocalDevices()) {
            if (!isAdvertisementDisabled(localDevice)) {
                OutgoingSearchResponseRootDevice outgoingSearchResponseRootDevice = new OutgoingSearchResponseRootDevice((IncomingDatagramMessage) getInputMessage(), getDescriptorLocation(networkAddress, localDevice), localDevice);
                prepareOutgoingSearchResponse(outgoingSearchResponseRootDevice);
                getUpnpService().getRouter().send((OutgoingDatagramMessage) outgoingSearchResponseRootDevice);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void sendSearchResponseUDN(UDN udn, NetworkAddress networkAddress) throws RouterException {
        Device device = getUpnpService().getRegistry().getDevice(udn, false);
        if (device != null && (device instanceof LocalDevice)) {
            LocalDevice localDevice = (LocalDevice) device;
            if (!isAdvertisementDisabled(localDevice)) {
                Logger logger = log;
                StringBuilder sb = new StringBuilder();
                sb.append("Responding to UDN device search: ");
                sb.append(udn);
                logger.fine(sb.toString());
                OutgoingSearchResponseUDN outgoingSearchResponseUDN = new OutgoingSearchResponseUDN((IncomingDatagramMessage) getInputMessage(), getDescriptorLocation(networkAddress, localDevice), localDevice);
                prepareOutgoingSearchResponse(outgoingSearchResponseUDN);
                getUpnpService().getRouter().send((OutgoingDatagramMessage) outgoingSearchResponseUDN);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void sendSearchResponseDeviceType(DeviceType deviceType, NetworkAddress networkAddress) throws RouterException {
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Responding to device type search: ");
        sb.append(deviceType);
        logger.fine(sb.toString());
        for (Device device : getUpnpService().getRegistry().getDevices(deviceType)) {
            if (device instanceof LocalDevice) {
                LocalDevice localDevice = (LocalDevice) device;
                if (!isAdvertisementDisabled(localDevice)) {
                    Logger logger2 = log;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Sending matching device type search result for: ");
                    sb2.append(device);
                    logger2.finer(sb2.toString());
                    OutgoingSearchResponseDeviceType outgoingSearchResponseDeviceType = new OutgoingSearchResponseDeviceType((IncomingDatagramMessage) getInputMessage(), getDescriptorLocation(networkAddress, localDevice), localDevice);
                    prepareOutgoingSearchResponse(outgoingSearchResponseDeviceType);
                    getUpnpService().getRouter().send((OutgoingDatagramMessage) outgoingSearchResponseDeviceType);
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public void sendSearchResponseServiceType(ServiceType serviceType, NetworkAddress networkAddress) throws RouterException {
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Responding to service type search: ");
        sb.append(serviceType);
        logger.fine(sb.toString());
        for (Device device : getUpnpService().getRegistry().getDevices(serviceType)) {
            if (device instanceof LocalDevice) {
                LocalDevice localDevice = (LocalDevice) device;
                if (!isAdvertisementDisabled(localDevice)) {
                    Logger logger2 = log;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Sending matching service type search result: ");
                    sb2.append(device);
                    logger2.finer(sb2.toString());
                    OutgoingSearchResponseServiceType outgoingSearchResponseServiceType = new OutgoingSearchResponseServiceType((IncomingDatagramMessage) getInputMessage(), getDescriptorLocation(networkAddress, localDevice), localDevice, serviceType);
                    prepareOutgoingSearchResponse(outgoingSearchResponseServiceType);
                    getUpnpService().getRouter().send((OutgoingDatagramMessage) outgoingSearchResponseServiceType);
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public Location getDescriptorLocation(NetworkAddress networkAddress, LocalDevice localDevice) {
        return new Location(networkAddress, getUpnpService().getConfiguration().getNamespace().getDescriptorPathString(localDevice));
    }

    /* access modifiers changed from: protected */
    public boolean isAdvertisementDisabled(LocalDevice localDevice) {
        DiscoveryOptions discoveryOptions = getUpnpService().getRegistry().getDiscoveryOptions(localDevice.getIdentity().getUdn());
        return discoveryOptions != null && !discoveryOptions.isAdvertised();
    }
}
