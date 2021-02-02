package org.fourthline.cling.model.meta;

import java.net.URI;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.fourthline.cling.model.Namespace;
import org.fourthline.cling.model.Validatable;
import org.fourthline.cling.model.ValidationError;
import org.fourthline.cling.model.ValidationException;
import org.fourthline.cling.model.meta.Device;
import org.fourthline.cling.model.meta.DeviceIdentity;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.model.profile.RemoteClientInfo;
import org.fourthline.cling.model.resource.Resource;
import org.fourthline.cling.model.types.DeviceType;
import org.fourthline.cling.model.types.ServiceId;
import org.fourthline.cling.model.types.ServiceType;
import org.fourthline.cling.model.types.UDN;

public abstract class Device<DI extends DeviceIdentity, D extends Device, S extends Service> implements Validatable {
    private static final Logger log = Logger.getLogger(Device.class.getName());
    private final DeviceDetails details;
    protected final D[] embeddedDevices;
    private final Icon[] icons;
    private final DI identity;
    private D parentDevice;
    protected final S[] services;
    private final DeviceType type;
    private final UDAVersion version;

    public abstract Resource[] discoverResources(Namespace namespace);

    public abstract D findDevice(UDN udn);

    public abstract D[] getEmbeddedDevices();

    public abstract D getRoot();

    public abstract S[] getServices();

    public abstract D newInstance(UDN udn, UDAVersion uDAVersion, DeviceType deviceType, DeviceDetails deviceDetails, Icon[] iconArr, S[] sArr, List<D> list) throws ValidationException;

    public abstract S newInstance(ServiceType serviceType, ServiceId serviceId, URI uri, URI uri2, URI uri3, Action<S>[] actionArr, StateVariable<S>[] stateVariableArr) throws ValidationException;

    public abstract S[] newServiceArray(int i);

    public abstract D[] toDeviceArray(Collection<D> collection);

    public abstract S[] toServiceArray(Collection<S> collection);

    public Device(DI di) throws ValidationException {
        this(di, null, null, null, null, null);
    }

    public Device(DI di, DeviceType deviceType, DeviceDetails deviceDetails, Icon[] iconArr, S[] sArr) throws ValidationException {
        this(di, null, deviceType, deviceDetails, iconArr, sArr, null);
    }

    public Device(DI di, DeviceType deviceType, DeviceDetails deviceDetails, Icon[] iconArr, S[] sArr, D[] dArr) throws ValidationException {
        this(di, null, deviceType, deviceDetails, iconArr, sArr, dArr);
    }

    public Device(DI di, UDAVersion uDAVersion, DeviceType deviceType, DeviceDetails deviceDetails, Icon[] iconArr, S[] sArr, D[] dArr) throws ValidationException {
        boolean z;
        this.identity = di;
        if (uDAVersion == null) {
            uDAVersion = new UDAVersion();
        }
        this.version = uDAVersion;
        this.type = deviceType;
        this.details = deviceDetails;
        ArrayList arrayList = new ArrayList();
        if (iconArr != null) {
            for (Icon icon : iconArr) {
                if (icon != null) {
                    icon.setDevice(this);
                    List validate = icon.validate();
                    if (validate.isEmpty()) {
                        arrayList.add(icon);
                    } else {
                        Logger logger = log;
                        StringBuilder sb = new StringBuilder();
                        sb.append("Discarding invalid '");
                        sb.append(icon);
                        sb.append("': ");
                        sb.append(validate);
                        logger.warning(sb.toString());
                    }
                }
            }
        }
        this.icons = (Icon[]) arrayList.toArray(new Icon[arrayList.size()]);
        boolean z2 = true;
        if (sArr != null) {
            z = true;
            for (S s : sArr) {
                if (s != null) {
                    s.setDevice(this);
                    z = false;
                }
            }
        } else {
            z = true;
        }
        D[] dArr2 = null;
        if (sArr == null || z) {
            sArr = null;
        }
        this.services = sArr;
        if (dArr != null) {
            boolean z3 = true;
            for (D d : dArr) {
                if (d != null) {
                    d.setParentDevice(this);
                    z3 = false;
                }
            }
            z2 = z3;
        }
        if (dArr != null && !z2) {
            dArr2 = dArr;
        }
        this.embeddedDevices = dArr2;
        List<ValidationError> validate2 = validate();
        if (validate2.size() > 0) {
            if (log.isLoggable(Level.FINEST)) {
                for (ValidationError validationError : validate2) {
                    log.finest(validationError.toString());
                }
            }
            throw new ValidationException("Validation of device graph failed, call getErrors() on exception", validate2);
        }
    }

    public DI getIdentity() {
        return this.identity;
    }

    public UDAVersion getVersion() {
        return this.version;
    }

    public DeviceType getType() {
        return this.type;
    }

    public DeviceDetails getDetails() {
        return this.details;
    }

    public DeviceDetails getDetails(RemoteClientInfo remoteClientInfo) {
        return getDetails();
    }

    public Icon[] getIcons() {
        return this.icons;
    }

    public boolean hasIcons() {
        return getIcons() != null && getIcons().length > 0;
    }

    public boolean hasServices() {
        return getServices() != null && getServices().length > 0;
    }

    public boolean hasEmbeddedDevices() {
        return getEmbeddedDevices() != null && getEmbeddedDevices().length > 0;
    }

    public D getParentDevice() {
        return this.parentDevice;
    }

    /* access modifiers changed from: 0000 */
    public void setParentDevice(D d) {
        if (this.parentDevice == null) {
            this.parentDevice = d;
            return;
        }
        throw new IllegalStateException("Final value has been set already, model is immutable");
    }

    public boolean isRoot() {
        return getParentDevice() == null;
    }

    public D[] findEmbeddedDevices() {
        return toDeviceArray(findEmbeddedDevices(this));
    }

    public D[] findDevices(DeviceType deviceType) {
        return toDeviceArray(find(deviceType, (D) this));
    }

    public D[] findDevices(ServiceType serviceType) {
        return toDeviceArray(find(serviceType, (D) this));
    }

    public Icon[] findIcons() {
        Device[] findEmbeddedDevices;
        ArrayList arrayList = new ArrayList();
        if (hasIcons()) {
            arrayList.addAll(Arrays.asList(getIcons()));
        }
        for (Device device : findEmbeddedDevices()) {
            if (device.hasIcons()) {
                arrayList.addAll(Arrays.asList(device.getIcons()));
            }
        }
        return (Icon[]) arrayList.toArray(new Icon[arrayList.size()]);
    }

    public S[] findServices() {
        return toServiceArray(findServices(null, null, this));
    }

    public S[] findServices(ServiceType serviceType) {
        return toServiceArray(findServices(serviceType, null, this));
    }

    /* access modifiers changed from: protected */
    public D find(UDN udn, D d) {
        if (d.getIdentity() != null && d.getIdentity().getUdn() != null && d.getIdentity().getUdn().equals(udn)) {
            return d;
        }
        if (d.hasEmbeddedDevices()) {
            for (Device find : d.getEmbeddedDevices()) {
                D find2 = find(udn, (D) find);
                if (find2 != null) {
                    return find2;
                }
            }
        }
        return null;
    }

    /* access modifiers changed from: protected */
    public Collection<D> findEmbeddedDevices(D d) {
        HashSet hashSet = new HashSet();
        if (!d.isRoot() && d.getIdentity().getUdn() != null) {
            hashSet.add(d);
        }
        if (d.hasEmbeddedDevices()) {
            for (Device findEmbeddedDevices : d.getEmbeddedDevices()) {
                hashSet.addAll(findEmbeddedDevices(findEmbeddedDevices));
            }
        }
        return hashSet;
    }

    /* access modifiers changed from: protected */
    public Collection<D> find(DeviceType deviceType, D d) {
        HashSet hashSet = new HashSet();
        if (d.getType() != null && d.getType().implementsVersion(deviceType)) {
            hashSet.add(d);
        }
        if (d.hasEmbeddedDevices()) {
            for (Device find : d.getEmbeddedDevices()) {
                hashSet.addAll(find(deviceType, (D) find));
            }
        }
        return hashSet;
    }

    /* access modifiers changed from: protected */
    public Collection<D> find(ServiceType serviceType, D d) {
        Collection<Service> findServices = findServices(serviceType, null, d);
        HashSet hashSet = new HashSet();
        for (Service device : findServices) {
            hashSet.add(device.getDevice());
        }
        return hashSet;
    }

    /* access modifiers changed from: protected */
    public Collection<S> findServices(ServiceType serviceType, ServiceId serviceId, D d) {
        Service[] services2;
        Service[] services3;
        HashSet hashSet = new HashSet();
        if (d.hasServices()) {
            for (Service service : d.getServices()) {
                if (isMatch(service, serviceType, serviceId)) {
                    hashSet.add(service);
                }
            }
        }
        Collection<Device> findEmbeddedDevices = findEmbeddedDevices(d);
        if (findEmbeddedDevices != null) {
            for (Device device : findEmbeddedDevices) {
                if (device.hasServices()) {
                    for (Service service2 : device.getServices()) {
                        if (isMatch(service2, serviceType, serviceId)) {
                            hashSet.add(service2);
                        }
                    }
                }
            }
        }
        return hashSet;
    }

    public S findService(ServiceId serviceId) {
        Collection findServices = findServices(null, serviceId, this);
        if (findServices.size() == 1) {
            return (Service) findServices.iterator().next();
        }
        return null;
    }

    public S findService(ServiceType serviceType) {
        Collection findServices = findServices(serviceType, null, this);
        if (findServices.size() > 0) {
            return (Service) findServices.iterator().next();
        }
        return null;
    }

    public ServiceType[] findServiceTypes() {
        Collection<Service> findServices = findServices(null, null, this);
        HashSet hashSet = new HashSet();
        for (Service serviceType : findServices) {
            hashSet.add(serviceType.getServiceType());
        }
        return (ServiceType[]) hashSet.toArray(new ServiceType[hashSet.size()]);
    }

    private boolean isMatch(Service service, ServiceType serviceType, ServiceId serviceId) {
        boolean z = serviceType == null || service.getServiceType().implementsVersion(serviceType);
        boolean z2 = serviceId == null || service.getServiceId().equals(serviceId);
        if (!z || !z2) {
            return false;
        }
        return true;
    }

    public boolean isFullyHydrated() {
        for (Service hasStateVariables : findServices()) {
            if (hasStateVariables.hasStateVariables()) {
                return true;
            }
        }
        return false;
    }

    public String getDisplayString() {
        String str;
        String str2;
        String str3 = null;
        String str4 = "";
        if (getDetails() == null || getDetails().getModelDetails() == null) {
            str = null;
        } else {
            ModelDetails modelDetails = getDetails().getModelDetails();
            if (modelDetails.getModelName() != null) {
                if (modelDetails.getModelNumber() == null || !modelDetails.getModelName().endsWith(modelDetails.getModelNumber())) {
                    str3 = modelDetails.getModelName();
                } else {
                    str3 = modelDetails.getModelName().substring(0, modelDetails.getModelName().length() - modelDetails.getModelNumber().length());
                }
            }
            str = str3 != null ? (modelDetails.getModelNumber() == null || str3.startsWith(modelDetails.getModelNumber())) ? str4 : modelDetails.getModelNumber() : modelDetails.getModelNumber();
        }
        StringBuilder sb = new StringBuilder();
        if (!(getDetails() == null || getDetails().getManufacturerDetails() == null)) {
            if (!(str3 == null || getDetails().getManufacturerDetails().getManufacturer() == null)) {
                if (str3.startsWith(getDetails().getManufacturerDetails().getManufacturer())) {
                    str3 = str3.substring(getDetails().getManufacturerDetails().getManufacturer().length()).trim();
                } else {
                    str3 = str3.trim();
                }
            }
            if (getDetails().getManufacturerDetails().getManufacturer() != null) {
                sb.append(getDetails().getManufacturerDetails().getManufacturer());
            }
        }
        String str5 = " ";
        if (str3 == null || str3.length() <= 0) {
            str2 = str4;
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str5);
            sb2.append(str3);
            str2 = sb2.toString();
        }
        sb.append(str2);
        if (str != null && str.length() > 0) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(str5);
            sb3.append(str.trim());
            str4 = sb3.toString();
        }
        sb.append(str4);
        return sb.toString();
    }

    public List<ValidationError> validate() {
        Device[] embeddedDevices2;
        Service[] services2;
        ArrayList arrayList = new ArrayList();
        if (getType() != null) {
            arrayList.addAll(getVersion().validate());
            if (getIdentity() != null) {
                arrayList.addAll(getIdentity().validate());
            }
            if (getDetails() != null) {
                arrayList.addAll(getDetails().validate());
            }
            if (hasServices()) {
                for (Service service : getServices()) {
                    if (service != null) {
                        arrayList.addAll(service.validate());
                    }
                }
            }
            if (hasEmbeddedDevices()) {
                for (Device device : getEmbeddedDevices()) {
                    if (device != null) {
                        arrayList.addAll(device.validate());
                    }
                }
            }
        }
        return arrayList;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.identity.equals(((Device) obj).identity);
    }

    public int hashCode() {
        return this.identity.hashCode();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        sb.append(getClass().getSimpleName());
        sb.append(") Identity: ");
        sb.append(getIdentity().toString());
        sb.append(", Root: ");
        sb.append(isRoot());
        return sb.toString();
    }
}
