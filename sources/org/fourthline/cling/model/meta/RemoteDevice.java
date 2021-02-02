package org.fourthline.cling.model.meta;

import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import org.fourthline.cling.model.Namespace;
import org.fourthline.cling.model.ValidationException;
import org.fourthline.cling.model.resource.Resource;
import org.fourthline.cling.model.resource.ServiceEventCallbackResource;
import org.fourthline.cling.model.types.DeviceType;
import org.fourthline.cling.model.types.ServiceId;
import org.fourthline.cling.model.types.ServiceType;
import org.fourthline.cling.model.types.UDN;
import org.seamless.util.URIUtil;

public class RemoteDevice extends Device<RemoteDeviceIdentity, RemoteDevice, RemoteService> {
    public RemoteDevice(RemoteDeviceIdentity remoteDeviceIdentity) throws ValidationException {
        super(remoteDeviceIdentity);
    }

    public RemoteDevice(RemoteDeviceIdentity remoteDeviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, RemoteService remoteService) throws ValidationException {
        super(remoteDeviceIdentity, deviceType, deviceDetails, null, new RemoteService[]{remoteService});
    }

    public RemoteDevice(RemoteDeviceIdentity remoteDeviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, RemoteService remoteService, RemoteDevice remoteDevice) throws ValidationException {
        super(remoteDeviceIdentity, deviceType, deviceDetails, null, new RemoteService[]{remoteService}, new RemoteDevice[]{remoteDevice});
    }

    public RemoteDevice(RemoteDeviceIdentity remoteDeviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, RemoteService[] remoteServiceArr) throws ValidationException {
        super(remoteDeviceIdentity, deviceType, deviceDetails, null, remoteServiceArr);
    }

    public RemoteDevice(RemoteDeviceIdentity remoteDeviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, RemoteService[] remoteServiceArr, RemoteDevice[] remoteDeviceArr) throws ValidationException {
        super(remoteDeviceIdentity, deviceType, deviceDetails, null, remoteServiceArr, remoteDeviceArr);
    }

    public RemoteDevice(RemoteDeviceIdentity remoteDeviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, Icon icon, RemoteService remoteService) throws ValidationException {
        super(remoteDeviceIdentity, deviceType, deviceDetails, new Icon[]{icon}, new RemoteService[]{remoteService});
    }

    public RemoteDevice(RemoteDeviceIdentity remoteDeviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, Icon icon, RemoteService remoteService, RemoteDevice remoteDevice) throws ValidationException {
        super(remoteDeviceIdentity, deviceType, deviceDetails, new Icon[]{icon}, new RemoteService[]{remoteService}, new RemoteDevice[]{remoteDevice});
    }

    public RemoteDevice(RemoteDeviceIdentity remoteDeviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, Icon icon, RemoteService[] remoteServiceArr) throws ValidationException {
        super(remoteDeviceIdentity, deviceType, deviceDetails, new Icon[]{icon}, remoteServiceArr);
    }

    public RemoteDevice(RemoteDeviceIdentity remoteDeviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, Icon icon, RemoteService[] remoteServiceArr, RemoteDevice[] remoteDeviceArr) throws ValidationException {
        super(remoteDeviceIdentity, deviceType, deviceDetails, new Icon[]{icon}, remoteServiceArr, remoteDeviceArr);
    }

    public RemoteDevice(RemoteDeviceIdentity remoteDeviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, Icon[] iconArr, RemoteService remoteService) throws ValidationException {
        super(remoteDeviceIdentity, deviceType, deviceDetails, iconArr, new RemoteService[]{remoteService});
    }

    public RemoteDevice(RemoteDeviceIdentity remoteDeviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, Icon[] iconArr, RemoteService remoteService, RemoteDevice remoteDevice) throws ValidationException {
        super(remoteDeviceIdentity, deviceType, deviceDetails, iconArr, new RemoteService[]{remoteService}, new RemoteDevice[]{remoteDevice});
    }

    public RemoteDevice(RemoteDeviceIdentity remoteDeviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, Icon[] iconArr, RemoteService[] remoteServiceArr) throws ValidationException {
        super(remoteDeviceIdentity, deviceType, deviceDetails, iconArr, remoteServiceArr);
    }

    public RemoteDevice(RemoteDeviceIdentity remoteDeviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, Icon[] iconArr, RemoteService[] remoteServiceArr, RemoteDevice[] remoteDeviceArr) throws ValidationException {
        super(remoteDeviceIdentity, deviceType, deviceDetails, iconArr, remoteServiceArr, remoteDeviceArr);
    }

    public RemoteDevice(RemoteDeviceIdentity remoteDeviceIdentity, UDAVersion uDAVersion, DeviceType deviceType, DeviceDetails deviceDetails, Icon[] iconArr, RemoteService[] remoteServiceArr, RemoteDevice[] remoteDeviceArr) throws ValidationException {
        super(remoteDeviceIdentity, uDAVersion, deviceType, deviceDetails, iconArr, remoteServiceArr, remoteDeviceArr);
    }

    public RemoteService[] getServices() {
        return this.services != null ? (RemoteService[]) this.services : new RemoteService[0];
    }

    public RemoteDevice[] getEmbeddedDevices() {
        return this.embeddedDevices != null ? (RemoteDevice[]) this.embeddedDevices : new RemoteDevice[0];
    }

    public URL normalizeURI(URI uri) {
        if (getDetails() == null || getDetails().getBaseURL() == null) {
            return URIUtil.createAbsoluteURL(((RemoteDeviceIdentity) getIdentity()).getDescriptorURL(), uri);
        }
        return URIUtil.createAbsoluteURL(getDetails().getBaseURL(), uri);
    }

    public RemoteDevice newInstance(UDN udn, UDAVersion uDAVersion, DeviceType deviceType, DeviceDetails deviceDetails, Icon[] iconArr, RemoteService[] remoteServiceArr, List<RemoteDevice> list) throws ValidationException {
        RemoteDevice[] remoteDeviceArr;
        UDN udn2 = udn;
        RemoteDeviceIdentity remoteDeviceIdentity = new RemoteDeviceIdentity(udn, (RemoteDeviceIdentity) getIdentity());
        if (list.size() > 0) {
            remoteDeviceArr = (RemoteDevice[]) list.toArray(new RemoteDevice[list.size()]);
        } else {
            remoteDeviceArr = null;
        }
        RemoteDevice remoteDevice = new RemoteDevice(remoteDeviceIdentity, uDAVersion, deviceType, deviceDetails, iconArr, remoteServiceArr, remoteDeviceArr);
        return remoteDevice;
    }

    public RemoteService newInstance(ServiceType serviceType, ServiceId serviceId, URI uri, URI uri2, URI uri3, Action<RemoteService>[] actionArr, StateVariable<RemoteService>[] stateVariableArr) throws ValidationException {
        RemoteService remoteService = new RemoteService(serviceType, serviceId, uri, uri2, uri3, actionArr, stateVariableArr);
        return remoteService;
    }

    public RemoteDevice[] toDeviceArray(Collection<RemoteDevice> collection) {
        return (RemoteDevice[]) collection.toArray(new RemoteDevice[collection.size()]);
    }

    public RemoteService[] newServiceArray(int i) {
        return new RemoteService[i];
    }

    public RemoteService[] toServiceArray(Collection<RemoteService> collection) {
        return (RemoteService[]) collection.toArray(new RemoteService[collection.size()]);
    }

    public Resource[] discoverResources(Namespace namespace) {
        RemoteService[] services;
        RemoteDevice[] embeddedDevices;
        ArrayList arrayList = new ArrayList();
        for (RemoteService remoteService : getServices()) {
            if (remoteService != null) {
                arrayList.add(new ServiceEventCallbackResource(namespace.getEventCallbackPath(remoteService), remoteService));
            }
        }
        if (hasEmbeddedDevices()) {
            for (RemoteDevice remoteDevice : getEmbeddedDevices()) {
                if (remoteDevice != null) {
                    arrayList.addAll(Arrays.asList(remoteDevice.discoverResources(namespace)));
                }
            }
        }
        return (Resource[]) arrayList.toArray(new Resource[arrayList.size()]);
    }

    public RemoteDevice getRoot() {
        if (isRoot()) {
            return this;
        }
        RemoteDevice remoteDevice = this;
        while (remoteDevice.getParentDevice() != null) {
            remoteDevice = (RemoteDevice) remoteDevice.getParentDevice();
        }
        return remoteDevice;
    }

    public RemoteDevice findDevice(UDN udn) {
        return (RemoteDevice) find(udn, this);
    }
}
