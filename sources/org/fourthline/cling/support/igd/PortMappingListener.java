package org.fourthline.cling.support.igd;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.logging.Logger;
import org.fourthline.cling.model.action.ActionInvocation;
import org.fourthline.cling.model.message.UpnpResponse;
import org.fourthline.cling.model.meta.Device;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.model.types.DeviceType;
import org.fourthline.cling.model.types.ServiceType;
import org.fourthline.cling.model.types.UDADeviceType;
import org.fourthline.cling.model.types.UDAServiceType;
import org.fourthline.cling.registry.DefaultRegistryListener;
import org.fourthline.cling.registry.Registry;
import org.fourthline.cling.support.igd.callback.PortMappingAdd;
import org.fourthline.cling.support.igd.callback.PortMappingDelete;
import org.fourthline.cling.support.model.PortMapping;

public class PortMappingListener extends DefaultRegistryListener {
    public static final DeviceType CONNECTION_DEVICE_TYPE = new UDADeviceType("WANConnectionDevice", 1);
    public static final DeviceType IGD_DEVICE_TYPE = new UDADeviceType("InternetGatewayDevice", 1);
    public static final ServiceType IP_SERVICE_TYPE = new UDAServiceType("WANIPConnection", 1);
    public static final ServiceType PPP_SERVICE_TYPE = new UDAServiceType("WANPPPConnection", 1);
    /* access modifiers changed from: private */
    public static final Logger log = Logger.getLogger(PortMappingListener.class.getName());
    protected Map<Service, List<PortMapping>> activePortMappings;
    protected PortMapping[] portMappings;

    public PortMappingListener(PortMapping portMapping) {
        this(new PortMapping[]{portMapping});
    }

    public PortMappingListener(PortMapping[] portMappingArr) {
        this.activePortMappings = new HashMap();
        this.portMappings = portMappingArr;
    }

    public synchronized void deviceAdded(Registry registry, Device device) {
        PortMapping[] portMappingArr;
        Service discoverConnectionService = discoverConnectionService(device);
        if (discoverConnectionService != null) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Activating port mappings on: ");
            sb.append(discoverConnectionService);
            logger.fine(sb.toString());
            ArrayList arrayList = new ArrayList();
            for (final PortMapping portMapping : this.portMappings) {
                final ArrayList arrayList2 = arrayList;
                AnonymousClass1 r0 = new PortMappingAdd(discoverConnectionService, registry.getUpnpService().getControlPoint(), portMapping) {
                    public void success(ActionInvocation actionInvocation) {
                        Logger access$000 = PortMappingListener.log;
                        StringBuilder sb = new StringBuilder();
                        sb.append("Port mapping added: ");
                        sb.append(portMapping);
                        access$000.fine(sb.toString());
                        arrayList2.add(portMapping);
                    }

                    public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
                        PortMappingListener portMappingListener = PortMappingListener.this;
                        StringBuilder sb = new StringBuilder();
                        sb.append("Failed to add port mapping: ");
                        sb.append(portMapping);
                        portMappingListener.handleFailureMessage(sb.toString());
                        PortMappingListener portMappingListener2 = PortMappingListener.this;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Reason: ");
                        sb2.append(str);
                        portMappingListener2.handleFailureMessage(sb2.toString());
                    }
                };
                r0.run();
            }
            this.activePortMappings.put(discoverConnectionService, arrayList);
        }
    }

    public synchronized void deviceRemoved(Registry registry, Device device) {
        Service[] findServices;
        for (Service service : device.findServices()) {
            Iterator it = this.activePortMappings.entrySet().iterator();
            while (it.hasNext()) {
                Entry entry = (Entry) it.next();
                if (((Service) entry.getKey()).equals(service)) {
                    if (((List) entry.getValue()).size() > 0) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Device disappeared, couldn't delete port mappings: ");
                        sb.append(((List) entry.getValue()).size());
                        handleFailureMessage(sb.toString());
                    }
                    it.remove();
                }
            }
        }
    }

    public synchronized void beforeShutdown(Registry registry) {
        for (Entry entry : this.activePortMappings.entrySet()) {
            Iterator it = ((List) entry.getValue()).iterator();
            while (it.hasNext()) {
                final PortMapping portMapping = (PortMapping) it.next();
                Logger logger = log;
                StringBuilder sb = new StringBuilder();
                sb.append("Trying to delete port mapping on IGD: ");
                sb.append(portMapping);
                logger.fine(sb.toString());
                final Iterator it2 = it;
                AnonymousClass2 r3 = new PortMappingDelete((Service) entry.getKey(), registry.getUpnpService().getControlPoint(), portMapping) {
                    public void success(ActionInvocation actionInvocation) {
                        Logger access$000 = PortMappingListener.log;
                        StringBuilder sb = new StringBuilder();
                        sb.append("Port mapping deleted: ");
                        sb.append(portMapping);
                        access$000.fine(sb.toString());
                        it2.remove();
                    }

                    public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
                        PortMappingListener portMappingListener = PortMappingListener.this;
                        StringBuilder sb = new StringBuilder();
                        sb.append("Failed to delete port mapping: ");
                        sb.append(portMapping);
                        portMappingListener.handleFailureMessage(sb.toString());
                        PortMappingListener portMappingListener2 = PortMappingListener.this;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Reason: ");
                        sb2.append(str);
                        portMappingListener2.handleFailureMessage(sb2.toString());
                    }
                };
                r3.run();
            }
        }
    }

    /* access modifiers changed from: protected */
    public Service discoverConnectionService(Device device) {
        if (!device.getType().equals(IGD_DEVICE_TYPE)) {
            return null;
        }
        Device[] findDevices = device.findDevices(CONNECTION_DEVICE_TYPE);
        if (findDevices.length == 0) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("IGD doesn't support '");
            sb.append(CONNECTION_DEVICE_TYPE);
            sb.append("': ");
            sb.append(device);
            logger.fine(sb.toString());
            return null;
        }
        Device device2 = findDevices[0];
        Logger logger2 = log;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Using first discovered WAN connection device: ");
        sb2.append(device2);
        logger2.fine(sb2.toString());
        Service findService = device2.findService(IP_SERVICE_TYPE);
        Service findService2 = device2.findService(PPP_SERVICE_TYPE);
        if (findService == null && findService2 == null) {
            Logger logger3 = log;
            StringBuilder sb3 = new StringBuilder();
            sb3.append("IGD doesn't support IP or PPP WAN connection service: ");
            sb3.append(device);
            logger3.fine(sb3.toString());
        }
        if (findService != null) {
            findService2 = findService;
        }
        return findService2;
    }

    /* access modifiers changed from: protected */
    public void handleFailureMessage(String str) {
        log.warning(str);
    }
}
