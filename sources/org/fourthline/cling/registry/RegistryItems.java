package org.fourthline.cling.registry;

import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import org.fourthline.cling.model.ValidationException;
import org.fourthline.cling.model.gena.GENASubscription;
import org.fourthline.cling.model.meta.Device;
import org.fourthline.cling.model.resource.Resource;
import org.fourthline.cling.model.types.DeviceType;
import org.fourthline.cling.model.types.ServiceType;
import org.fourthline.cling.model.types.UDN;

abstract class RegistryItems<D extends Device, S extends GENASubscription> {
    protected final Set<RegistryItem<UDN, D>> deviceItems = new HashSet();
    protected final RegistryImpl registry;
    protected final Set<RegistryItem<String, S>> subscriptionItems = new HashSet();

    /* access modifiers changed from: 0000 */
    public abstract void add(D d);

    /* access modifiers changed from: 0000 */
    public abstract void maintain();

    /* access modifiers changed from: 0000 */
    public abstract boolean remove(D d);

    /* access modifiers changed from: 0000 */
    public abstract void removeAll();

    /* access modifiers changed from: 0000 */
    public abstract void shutdown();

    RegistryItems(RegistryImpl registryImpl) {
        this.registry = registryImpl;
    }

    /* access modifiers changed from: 0000 */
    public Set<RegistryItem<UDN, D>> getDeviceItems() {
        return this.deviceItems;
    }

    /* access modifiers changed from: 0000 */
    public Set<RegistryItem<String, S>> getSubscriptionItems() {
        return this.subscriptionItems;
    }

    /* access modifiers changed from: 0000 */
    public D get(UDN udn, boolean z) {
        for (RegistryItem registryItem : this.deviceItems) {
            D d = (Device) registryItem.getItem();
            if (d.getIdentity().getUdn().equals(udn)) {
                return d;
            }
            if (!z) {
                D findDevice = ((Device) registryItem.getItem()).findDevice(udn);
                if (findDevice != null) {
                    return findDevice;
                }
            }
        }
        return null;
    }

    /* access modifiers changed from: 0000 */
    public Collection<D> get(DeviceType deviceType) {
        HashSet hashSet = new HashSet();
        for (RegistryItem item : this.deviceItems) {
            Device[] findDevices = ((Device) item.getItem()).findDevices(deviceType);
            if (findDevices != null) {
                hashSet.addAll(Arrays.asList(findDevices));
            }
        }
        return hashSet;
    }

    /* access modifiers changed from: 0000 */
    public Collection<D> get(ServiceType serviceType) {
        HashSet hashSet = new HashSet();
        for (RegistryItem item : this.deviceItems) {
            Device[] findDevices = ((Device) item.getItem()).findDevices(serviceType);
            if (findDevices != null) {
                hashSet.addAll(Arrays.asList(findDevices));
            }
        }
        return hashSet;
    }

    /* access modifiers changed from: 0000 */
    public Collection<D> get() {
        HashSet hashSet = new HashSet();
        for (RegistryItem item : this.deviceItems) {
            hashSet.add(item.getItem());
        }
        return hashSet;
    }

    /* access modifiers changed from: 0000 */
    public boolean contains(D d) {
        return contains(d.getIdentity().getUdn());
    }

    /* access modifiers changed from: 0000 */
    public boolean contains(UDN udn) {
        return this.deviceItems.contains(new RegistryItem(udn));
    }

    /* access modifiers changed from: 0000 */
    public void addSubscription(S s) {
        this.subscriptionItems.add(new RegistryItem(s.getSubscriptionId(), s, s.getActualDurationSeconds()));
    }

    /* access modifiers changed from: 0000 */
    public boolean updateSubscription(S s) {
        if (!removeSubscription(s)) {
            return false;
        }
        addSubscription(s);
        return true;
    }

    /* access modifiers changed from: 0000 */
    public boolean removeSubscription(S s) {
        return this.subscriptionItems.remove(new RegistryItem(s.getSubscriptionId()));
    }

    /* access modifiers changed from: 0000 */
    public S getSubscription(String str) {
        for (RegistryItem registryItem : this.subscriptionItems) {
            if (((String) registryItem.getKey()).equals(str)) {
                return (GENASubscription) registryItem.getItem();
            }
        }
        return null;
    }

    /* access modifiers changed from: 0000 */
    public Resource[] getResources(Device device) throws RegistrationException {
        try {
            return this.registry.getConfiguration().getNamespace().getResources(device);
        } catch (ValidationException e) {
            StringBuilder sb = new StringBuilder();
            sb.append("Resource discover error: ");
            sb.append(e.toString());
            throw new RegistrationException(sb.toString(), (Throwable) e);
        }
    }
}
