package org.fourthline.cling.model.meta;

import java.net.URI;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import org.fourthline.cling.model.Namespace;
import org.fourthline.cling.model.ValidationError;
import org.fourthline.cling.model.ValidationException;
import org.fourthline.cling.model.profile.DeviceDetailsProvider;
import org.fourthline.cling.model.profile.RemoteClientInfo;
import org.fourthline.cling.model.resource.DeviceDescriptorResource;
import org.fourthline.cling.model.resource.IconResource;
import org.fourthline.cling.model.resource.Resource;
import org.fourthline.cling.model.resource.ServiceControlResource;
import org.fourthline.cling.model.resource.ServiceDescriptorResource;
import org.fourthline.cling.model.resource.ServiceEventSubscriptionResource;
import org.fourthline.cling.model.types.DeviceType;
import org.fourthline.cling.model.types.ServiceId;
import org.fourthline.cling.model.types.ServiceType;
import org.fourthline.cling.model.types.UDN;

public class LocalDevice extends Device<DeviceIdentity, LocalDevice, LocalService> {
    private final DeviceDetailsProvider deviceDetailsProvider;

    public LocalDevice(DeviceIdentity deviceIdentity) throws ValidationException {
        super(deviceIdentity);
        this.deviceDetailsProvider = null;
    }

    public LocalDevice(DeviceIdentity deviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, LocalService localService) throws ValidationException {
        super(deviceIdentity, deviceType, deviceDetails, null, new LocalService[]{localService});
        this.deviceDetailsProvider = null;
    }

    public LocalDevice(DeviceIdentity deviceIdentity, DeviceType deviceType, DeviceDetailsProvider deviceDetailsProvider2, LocalService localService) throws ValidationException {
        super(deviceIdentity, deviceType, null, null, new LocalService[]{localService});
        this.deviceDetailsProvider = deviceDetailsProvider2;
    }

    public LocalDevice(DeviceIdentity deviceIdentity, DeviceType deviceType, DeviceDetailsProvider deviceDetailsProvider2, LocalService localService, LocalDevice localDevice) throws ValidationException {
        super(deviceIdentity, deviceType, null, null, new LocalService[]{localService}, new LocalDevice[]{localDevice});
        this.deviceDetailsProvider = deviceDetailsProvider2;
    }

    public LocalDevice(DeviceIdentity deviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, LocalService localService, LocalDevice localDevice) throws ValidationException {
        super(deviceIdentity, deviceType, deviceDetails, null, new LocalService[]{localService}, new LocalDevice[]{localDevice});
        this.deviceDetailsProvider = null;
    }

    public LocalDevice(DeviceIdentity deviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, LocalService[] localServiceArr) throws ValidationException {
        super(deviceIdentity, deviceType, deviceDetails, null, localServiceArr);
        this.deviceDetailsProvider = null;
    }

    public LocalDevice(DeviceIdentity deviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, LocalService[] localServiceArr, LocalDevice[] localDeviceArr) throws ValidationException {
        super(deviceIdentity, deviceType, deviceDetails, null, localServiceArr, localDeviceArr);
        this.deviceDetailsProvider = null;
    }

    public LocalDevice(DeviceIdentity deviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, Icon icon, LocalService localService) throws ValidationException {
        super(deviceIdentity, deviceType, deviceDetails, new Icon[]{icon}, new LocalService[]{localService});
        this.deviceDetailsProvider = null;
    }

    public LocalDevice(DeviceIdentity deviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, Icon icon, LocalService localService, LocalDevice localDevice) throws ValidationException {
        super(deviceIdentity, deviceType, deviceDetails, new Icon[]{icon}, new LocalService[]{localService}, new LocalDevice[]{localDevice});
        this.deviceDetailsProvider = null;
    }

    public LocalDevice(DeviceIdentity deviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, Icon icon, LocalService[] localServiceArr) throws ValidationException {
        super(deviceIdentity, deviceType, deviceDetails, new Icon[]{icon}, localServiceArr);
        this.deviceDetailsProvider = null;
    }

    public LocalDevice(DeviceIdentity deviceIdentity, DeviceType deviceType, DeviceDetailsProvider deviceDetailsProvider2, Icon icon, LocalService[] localServiceArr) throws ValidationException {
        super(deviceIdentity, deviceType, null, new Icon[]{icon}, localServiceArr);
        this.deviceDetailsProvider = deviceDetailsProvider2;
    }

    public LocalDevice(DeviceIdentity deviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, Icon icon, LocalService[] localServiceArr, LocalDevice[] localDeviceArr) throws ValidationException {
        super(deviceIdentity, deviceType, deviceDetails, new Icon[]{icon}, localServiceArr, localDeviceArr);
        this.deviceDetailsProvider = null;
    }

    public LocalDevice(DeviceIdentity deviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, Icon[] iconArr, LocalService localService) throws ValidationException {
        super(deviceIdentity, deviceType, deviceDetails, iconArr, new LocalService[]{localService});
        this.deviceDetailsProvider = null;
    }

    public LocalDevice(DeviceIdentity deviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, Icon[] iconArr, LocalService localService, LocalDevice localDevice) throws ValidationException {
        super(deviceIdentity, deviceType, deviceDetails, iconArr, new LocalService[]{localService}, new LocalDevice[]{localDevice});
        this.deviceDetailsProvider = null;
    }

    public LocalDevice(DeviceIdentity deviceIdentity, DeviceType deviceType, DeviceDetailsProvider deviceDetailsProvider2, Icon[] iconArr, LocalService localService, LocalDevice localDevice) throws ValidationException {
        super(deviceIdentity, deviceType, null, iconArr, new LocalService[]{localService}, new LocalDevice[]{localDevice});
        this.deviceDetailsProvider = deviceDetailsProvider2;
    }

    public LocalDevice(DeviceIdentity deviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, Icon[] iconArr, LocalService[] localServiceArr) throws ValidationException {
        super(deviceIdentity, deviceType, deviceDetails, iconArr, localServiceArr);
        this.deviceDetailsProvider = null;
    }

    public LocalDevice(DeviceIdentity deviceIdentity, DeviceType deviceType, DeviceDetails deviceDetails, Icon[] iconArr, LocalService[] localServiceArr, LocalDevice[] localDeviceArr) throws ValidationException {
        super(deviceIdentity, deviceType, deviceDetails, iconArr, localServiceArr, localDeviceArr);
        this.deviceDetailsProvider = null;
    }

    public LocalDevice(DeviceIdentity deviceIdentity, UDAVersion uDAVersion, DeviceType deviceType, DeviceDetails deviceDetails, Icon[] iconArr, LocalService[] localServiceArr, LocalDevice[] localDeviceArr) throws ValidationException {
        super(deviceIdentity, uDAVersion, deviceType, deviceDetails, iconArr, localServiceArr, localDeviceArr);
        this.deviceDetailsProvider = null;
    }

    public LocalDevice(DeviceIdentity deviceIdentity, UDAVersion uDAVersion, DeviceType deviceType, DeviceDetailsProvider deviceDetailsProvider2, Icon[] iconArr, LocalService[] localServiceArr, LocalDevice[] localDeviceArr) throws ValidationException {
        super(deviceIdentity, uDAVersion, deviceType, null, iconArr, localServiceArr, localDeviceArr);
        this.deviceDetailsProvider = deviceDetailsProvider2;
    }

    public DeviceDetailsProvider getDeviceDetailsProvider() {
        return this.deviceDetailsProvider;
    }

    public DeviceDetails getDetails(RemoteClientInfo remoteClientInfo) {
        if (getDeviceDetailsProvider() != null) {
            return getDeviceDetailsProvider().provide(remoteClientInfo);
        }
        return getDetails();
    }

    public LocalService[] getServices() {
        return this.services != null ? (LocalService[]) this.services : new LocalService[0];
    }

    public LocalDevice[] getEmbeddedDevices() {
        return this.embeddedDevices != null ? (LocalDevice[]) this.embeddedDevices : new LocalDevice[0];
    }

    public LocalDevice newInstance(UDN udn, UDAVersion uDAVersion, DeviceType deviceType, DeviceDetails deviceDetails, Icon[] iconArr, LocalService[] localServiceArr, List<LocalDevice> list) throws ValidationException {
        LocalDevice[] localDeviceArr;
        UDN udn2 = udn;
        DeviceIdentity deviceIdentity = new DeviceIdentity(udn, getIdentity().getMaxAgeSeconds());
        if (list.size() > 0) {
            localDeviceArr = (LocalDevice[]) list.toArray(new LocalDevice[list.size()]);
        } else {
            localDeviceArr = null;
        }
        LocalDevice localDevice = new LocalDevice(deviceIdentity, uDAVersion, deviceType, deviceDetails, iconArr, localServiceArr, localDeviceArr);
        return localDevice;
    }

    public LocalService newInstance(ServiceType serviceType, ServiceId serviceId, URI uri, URI uri2, URI uri3, Action<LocalService>[] actionArr, StateVariable<LocalService>[] stateVariableArr) throws ValidationException {
        return new LocalService(serviceType, serviceId, actionArr, stateVariableArr);
    }

    public LocalDevice[] toDeviceArray(Collection<LocalDevice> collection) {
        return (LocalDevice[]) collection.toArray(new LocalDevice[collection.size()]);
    }

    public LocalService[] newServiceArray(int i) {
        return new LocalService[i];
    }

    public LocalService[] toServiceArray(Collection<LocalService> collection) {
        return (LocalService[]) collection.toArray(new LocalService[collection.size()]);
    }

    public List<ValidationError> validate() {
        Icon[] icons;
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(super.validate());
        if (hasIcons()) {
            for (Icon icon : getIcons()) {
                String str = "icons";
                if (icon.getUri().isAbsolute()) {
                    Class cls = getClass();
                    StringBuilder sb = new StringBuilder();
                    sb.append("Local icon URI can not be absolute: ");
                    sb.append(icon.getUri());
                    arrayList.add(new ValidationError(cls, str, sb.toString()));
                }
                if (icon.getUri().toString().contains("../")) {
                    Class cls2 = getClass();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Local icon URI must not contain '../': ");
                    sb2.append(icon.getUri());
                    arrayList.add(new ValidationError(cls2, str, sb2.toString()));
                }
                if (icon.getUri().toString().startsWith("/")) {
                    Class cls3 = getClass();
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Local icon URI must not start with '/': ");
                    sb3.append(icon.getUri());
                    arrayList.add(new ValidationError(cls3, str, sb3.toString()));
                }
            }
        }
        return arrayList;
    }

    public Resource[] discoverResources(Namespace namespace) {
        LocalService[] services;
        Icon[] icons;
        ArrayList arrayList = new ArrayList();
        if (isRoot()) {
            arrayList.add(new DeviceDescriptorResource(namespace.getDescriptorPath((Device) this), this));
        }
        for (LocalService localService : getServices()) {
            arrayList.add(new ServiceDescriptorResource(namespace.getDescriptorPath((Service) localService), localService));
            arrayList.add(new ServiceControlResource(namespace.getControlPath(localService), localService));
            arrayList.add(new ServiceEventSubscriptionResource(namespace.getEventSubscriptionPath(localService), localService));
        }
        for (Icon icon : getIcons()) {
            arrayList.add(new IconResource(namespace.prefixIfRelative(this, icon.getUri()), icon));
        }
        if (hasEmbeddedDevices()) {
            for (LocalDevice discoverResources : getEmbeddedDevices()) {
                arrayList.addAll(Arrays.asList(discoverResources.discoverResources(namespace)));
            }
        }
        return (Resource[]) arrayList.toArray(new Resource[arrayList.size()]);
    }

    public LocalDevice getRoot() {
        if (isRoot()) {
            return this;
        }
        LocalDevice localDevice = this;
        while (localDevice.getParentDevice() != null) {
            localDevice = (LocalDevice) localDevice.getParentDevice();
        }
        return localDevice;
    }

    public LocalDevice findDevice(UDN udn) {
        return (LocalDevice) find(udn, this);
    }
}
