package org.fourthline.cling.registry;

import java.net.URI;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import org.fourthline.cling.UpnpService;
import org.fourthline.cling.UpnpServiceConfiguration;
import org.fourthline.cling.model.DiscoveryOptions;
import org.fourthline.cling.model.ServiceReference;
import org.fourthline.cling.model.gena.LocalGENASubscription;
import org.fourthline.cling.model.gena.RemoteGENASubscription;
import org.fourthline.cling.model.meta.Device;
import org.fourthline.cling.model.meta.LocalDevice;
import org.fourthline.cling.model.meta.RemoteDevice;
import org.fourthline.cling.model.meta.RemoteDeviceIdentity;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.model.resource.Resource;
import org.fourthline.cling.model.types.DeviceType;
import org.fourthline.cling.model.types.ServiceType;
import org.fourthline.cling.model.types.UDN;
import org.fourthline.cling.protocol.ProtocolFactory;

@ApplicationScoped
public class RegistryImpl implements Registry {
    private static Logger log = Logger.getLogger(Registry.class.getName());
    protected final LocalItems localItems = new LocalItems(this);
    protected final List<Runnable> pendingExecutions = new ArrayList();
    protected final Set<RemoteGENASubscription> pendingSubscriptionsLock = new HashSet();
    protected final Set<RegistryListener> registryListeners = new HashSet();
    protected RegistryMaintainer registryMaintainer;
    protected final RemoteItems remoteItems = new RemoteItems(this);
    protected final Set<RegistryItem<URI, Resource>> resourceItems = new HashSet();
    protected UpnpService upnpService;

    public RegistryImpl() {
    }

    @Inject
    public RegistryImpl(UpnpService upnpService2) {
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Creating Registry: ");
        sb.append(getClass().getName());
        logger.fine(sb.toString());
        this.upnpService = upnpService2;
        log.fine("Starting registry background maintenance...");
        this.registryMaintainer = createRegistryMaintainer();
        if (this.registryMaintainer != null) {
            getConfiguration().getRegistryMaintainerExecutor().execute(this.registryMaintainer);
        }
    }

    public UpnpService getUpnpService() {
        return this.upnpService;
    }

    public UpnpServiceConfiguration getConfiguration() {
        return getUpnpService().getConfiguration();
    }

    public ProtocolFactory getProtocolFactory() {
        return getUpnpService().getProtocolFactory();
    }

    /* access modifiers changed from: protected */
    public RegistryMaintainer createRegistryMaintainer() {
        return new RegistryMaintainer(this, getConfiguration().getRegistryMaintenanceIntervalMillis());
    }

    public synchronized void addListener(RegistryListener registryListener) {
        this.registryListeners.add(registryListener);
    }

    public synchronized void removeListener(RegistryListener registryListener) {
        this.registryListeners.remove(registryListener);
    }

    public synchronized Collection<RegistryListener> getListeners() {
        return Collections.unmodifiableCollection(this.registryListeners);
    }

    public synchronized boolean notifyDiscoveryStart(final RemoteDevice remoteDevice) {
        if (getUpnpService().getRegistry().getRemoteDevice(((RemoteDeviceIdentity) remoteDevice.getIdentity()).getUdn(), true) != null) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Not notifying listeners, already registered: ");
            sb.append(remoteDevice);
            logger.finer(sb.toString());
            return false;
        }
        for (final RegistryListener registryListener : getListeners()) {
            getConfiguration().getRegistryListenerExecutor().execute(new Runnable() {
                public void run() {
                    registryListener.remoteDeviceDiscoveryStarted(RegistryImpl.this, remoteDevice);
                }
            });
        }
        return true;
    }

    public synchronized void notifyDiscoveryFailure(final RemoteDevice remoteDevice, final Exception exc) {
        for (final RegistryListener registryListener : getListeners()) {
            getConfiguration().getRegistryListenerExecutor().execute(new Runnable() {
                public void run() {
                    registryListener.remoteDeviceDiscoveryFailed(RegistryImpl.this, remoteDevice, exc);
                }
            });
        }
    }

    public synchronized void addDevice(LocalDevice localDevice) {
        this.localItems.add(localDevice);
    }

    public synchronized void addDevice(LocalDevice localDevice, DiscoveryOptions discoveryOptions) {
        this.localItems.add(localDevice, discoveryOptions);
    }

    public synchronized void setDiscoveryOptions(UDN udn, DiscoveryOptions discoveryOptions) {
        this.localItems.setDiscoveryOptions(udn, discoveryOptions);
    }

    public synchronized DiscoveryOptions getDiscoveryOptions(UDN udn) {
        return this.localItems.getDiscoveryOptions(udn);
    }

    public synchronized void addDevice(RemoteDevice remoteDevice) {
        this.remoteItems.add(remoteDevice);
    }

    public synchronized boolean update(RemoteDeviceIdentity remoteDeviceIdentity) {
        return this.remoteItems.update(remoteDeviceIdentity);
    }

    public synchronized boolean removeDevice(LocalDevice localDevice) {
        return this.localItems.remove(localDevice);
    }

    public synchronized boolean removeDevice(RemoteDevice remoteDevice) {
        return this.remoteItems.remove(remoteDevice);
    }

    public synchronized void removeAllLocalDevices() {
        this.localItems.removeAll();
    }

    public synchronized void removeAllRemoteDevices() {
        this.remoteItems.removeAll();
    }

    public synchronized boolean removeDevice(UDN udn) {
        Device device = getDevice(udn, true);
        if (device == null || !(device instanceof LocalDevice)) {
            if (device != null) {
                if (device instanceof RemoteDevice) {
                    return removeDevice((RemoteDevice) device);
                }
            }
            return false;
        }
        return removeDevice((LocalDevice) device);
    }

    public synchronized Device getDevice(UDN udn, boolean z) {
        Device device = this.localItems.get(udn, z);
        if (device != null) {
            return device;
        }
        Device device2 = this.remoteItems.get(udn, z);
        if (device2 != null) {
            return device2;
        }
        return null;
    }

    public synchronized LocalDevice getLocalDevice(UDN udn, boolean z) {
        return (LocalDevice) this.localItems.get(udn, z);
    }

    public synchronized RemoteDevice getRemoteDevice(UDN udn, boolean z) {
        return (RemoteDevice) this.remoteItems.get(udn, z);
    }

    public synchronized Collection<LocalDevice> getLocalDevices() {
        return Collections.unmodifiableCollection(this.localItems.get());
    }

    public synchronized Collection<RemoteDevice> getRemoteDevices() {
        return Collections.unmodifiableCollection(this.remoteItems.get());
    }

    public synchronized Collection<Device> getDevices() {
        HashSet hashSet;
        hashSet = new HashSet();
        hashSet.addAll(this.localItems.get());
        hashSet.addAll(this.remoteItems.get());
        return Collections.unmodifiableCollection(hashSet);
    }

    public synchronized Collection<Device> getDevices(DeviceType deviceType) {
        HashSet hashSet;
        hashSet = new HashSet();
        hashSet.addAll(this.localItems.get(deviceType));
        hashSet.addAll(this.remoteItems.get(deviceType));
        return Collections.unmodifiableCollection(hashSet);
    }

    public synchronized Collection<Device> getDevices(ServiceType serviceType) {
        HashSet hashSet;
        hashSet = new HashSet();
        hashSet.addAll(this.localItems.get(serviceType));
        hashSet.addAll(this.remoteItems.get(serviceType));
        return Collections.unmodifiableCollection(hashSet);
    }

    public synchronized Service getService(ServiceReference serviceReference) {
        Device device = getDevice(serviceReference.getUdn(), false);
        if (device == null) {
            return null;
        }
        return device.findService(serviceReference.getServiceId());
    }

    public synchronized Resource getResource(URI uri) throws IllegalArgumentException {
        if (!uri.isAbsolute()) {
            for (RegistryItem item : this.resourceItems) {
                Resource resource = (Resource) item.getItem();
                if (resource.matches(uri)) {
                    return resource;
                }
            }
            if (uri.getPath().endsWith("/")) {
                URI create = URI.create(uri.toString().substring(0, uri.toString().length() - 1));
                for (RegistryItem item2 : this.resourceItems) {
                    Resource resource2 = (Resource) item2.getItem();
                    if (resource2.matches(create)) {
                        return resource2;
                    }
                }
            }
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Resource URI can not be absolute, only path and query:");
        sb.append(uri);
        throw new IllegalArgumentException(sb.toString());
    }

    public synchronized <T extends Resource> T getResource(Class<T> cls, URI uri) throws IllegalArgumentException {
        T resource = getResource(uri);
        if (resource == null || !cls.isAssignableFrom(resource.getClass())) {
            return null;
        }
        return resource;
    }

    public synchronized Collection<Resource> getResources() {
        HashSet hashSet;
        hashSet = new HashSet();
        for (RegistryItem item : this.resourceItems) {
            hashSet.add(item.getItem());
        }
        return hashSet;
    }

    public synchronized <T extends Resource> Collection<T> getResources(Class<T> cls) {
        HashSet hashSet;
        hashSet = new HashSet();
        for (RegistryItem registryItem : this.resourceItems) {
            if (cls.isAssignableFrom(((Resource) registryItem.getItem()).getClass())) {
                hashSet.add((Resource) registryItem.getItem());
            }
        }
        return hashSet;
    }

    public synchronized void addResource(Resource resource) {
        addResource(resource, 0);
    }

    public synchronized void addResource(Resource resource, int i) {
        RegistryItem registryItem = new RegistryItem(resource.getPathQuery(), resource, i);
        this.resourceItems.remove(registryItem);
        this.resourceItems.add(registryItem);
    }

    public synchronized boolean removeResource(Resource resource) {
        return this.resourceItems.remove(new RegistryItem(resource.getPathQuery()));
    }

    public synchronized void addLocalSubscription(LocalGENASubscription localGENASubscription) {
        this.localItems.addSubscription(localGENASubscription);
    }

    public synchronized LocalGENASubscription getLocalSubscription(String str) {
        return (LocalGENASubscription) this.localItems.getSubscription(str);
    }

    public synchronized boolean updateLocalSubscription(LocalGENASubscription localGENASubscription) {
        return this.localItems.updateSubscription(localGENASubscription);
    }

    public synchronized boolean removeLocalSubscription(LocalGENASubscription localGENASubscription) {
        return this.localItems.removeSubscription(localGENASubscription);
    }

    public synchronized void addRemoteSubscription(RemoteGENASubscription remoteGENASubscription) {
        this.remoteItems.addSubscription(remoteGENASubscription);
    }

    public synchronized RemoteGENASubscription getRemoteSubscription(String str) {
        return (RemoteGENASubscription) this.remoteItems.getSubscription(str);
    }

    public synchronized void updateRemoteSubscription(RemoteGENASubscription remoteGENASubscription) {
        this.remoteItems.updateSubscription(remoteGENASubscription);
    }

    public synchronized void removeRemoteSubscription(RemoteGENASubscription remoteGENASubscription) {
        this.remoteItems.removeSubscription(remoteGENASubscription);
    }

    public synchronized void advertiseLocalDevices() {
        this.localItems.advertiseLocalDevices();
    }

    public synchronized void shutdown() {
        log.fine("Shutting down registry...");
        if (this.registryMaintainer != null) {
            this.registryMaintainer.stop();
        }
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Executing final pending operations on shutdown: ");
        sb.append(this.pendingExecutions.size());
        logger.finest(sb.toString());
        runPendingExecutions(false);
        for (RegistryListener beforeShutdown : this.registryListeners) {
            beforeShutdown.beforeShutdown(this);
        }
        for (RegistryItem item : (RegistryItem[]) this.resourceItems.toArray(new RegistryItem[this.resourceItems.size()])) {
            ((Resource) item.getItem()).shutdown();
        }
        this.remoteItems.shutdown();
        this.localItems.shutdown();
        for (RegistryListener afterShutdown : this.registryListeners) {
            afterShutdown.afterShutdown();
        }
    }

    public synchronized void pause() {
        if (this.registryMaintainer != null) {
            log.fine("Pausing registry maintenance");
            runPendingExecutions(true);
            this.registryMaintainer.stop();
            this.registryMaintainer = null;
        }
    }

    public synchronized void resume() {
        if (this.registryMaintainer == null) {
            log.fine("Resuming registry maintenance");
            this.remoteItems.resume();
            this.registryMaintainer = createRegistryMaintainer();
            if (this.registryMaintainer != null) {
                getConfiguration().getRegistryMaintainerExecutor().execute(this.registryMaintainer);
            }
        }
    }

    public synchronized boolean isPaused() {
        return this.registryMaintainer == null;
    }

    /* access modifiers changed from: 0000 */
    public synchronized void maintain() {
        if (log.isLoggable(Level.FINEST)) {
            log.finest("Maintaining registry...");
        }
        Iterator it = this.resourceItems.iterator();
        while (it.hasNext()) {
            RegistryItem registryItem = (RegistryItem) it.next();
            if (registryItem.getExpirationDetails().hasExpired()) {
                if (log.isLoggable(Level.FINER)) {
                    Logger logger = log;
                    StringBuilder sb = new StringBuilder();
                    sb.append("Removing expired resource: ");
                    sb.append(registryItem);
                    logger.finer(sb.toString());
                }
                it.remove();
            }
        }
        for (RegistryItem registryItem2 : this.resourceItems) {
            ((Resource) registryItem2.getItem()).maintain(this.pendingExecutions, registryItem2.getExpirationDetails());
        }
        this.remoteItems.maintain();
        this.localItems.maintain();
        runPendingExecutions(true);
    }

    /* access modifiers changed from: 0000 */
    public synchronized void executeAsyncProtocol(Runnable runnable) {
        this.pendingExecutions.add(runnable);
    }

    /* access modifiers changed from: 0000 */
    public synchronized void runPendingExecutions(boolean z) {
        if (log.isLoggable(Level.FINEST)) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Executing pending operations: ");
            sb.append(this.pendingExecutions.size());
            logger.finest(sb.toString());
        }
        for (Runnable runnable : this.pendingExecutions) {
            if (z) {
                getConfiguration().getAsyncProtocolExecutor().execute(runnable);
            } else {
                runnable.run();
            }
        }
        if (this.pendingExecutions.size() > 0) {
            this.pendingExecutions.clear();
        }
    }

    public void printDebugLog() {
        if (log.isLoggable(Level.FINE)) {
            log.fine("====================================    REMOTE   ================================================");
            for (RemoteDevice remoteDevice : this.remoteItems.get()) {
                log.fine(remoteDevice.toString());
            }
            log.fine("====================================    LOCAL    ================================================");
            for (LocalDevice localDevice : this.localItems.get()) {
                log.fine(localDevice.toString());
            }
            log.fine("====================================  RESOURCES  ================================================");
            for (RegistryItem registryItem : this.resourceItems) {
                log.fine(registryItem.toString());
            }
            log.fine("=================================================================================================");
        }
    }

    public void registerPendingRemoteSubscription(RemoteGENASubscription remoteGENASubscription) {
        synchronized (this.pendingSubscriptionsLock) {
            this.pendingSubscriptionsLock.add(remoteGENASubscription);
        }
    }

    public void unregisterPendingRemoteSubscription(RemoteGENASubscription remoteGENASubscription) {
        synchronized (this.pendingSubscriptionsLock) {
            if (this.pendingSubscriptionsLock.remove(remoteGENASubscription)) {
                this.pendingSubscriptionsLock.notifyAll();
            }
        }
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(4:7|8|9|10) */
    /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x001d */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public org.fourthline.cling.model.gena.RemoteGENASubscription getWaitRemoteSubscription(java.lang.String r4) {
        /*
            r3 = this;
            java.util.Set<org.fourthline.cling.model.gena.RemoteGENASubscription> r0 = r3.pendingSubscriptionsLock
            monitor-enter(r0)
            org.fourthline.cling.model.gena.RemoteGENASubscription r1 = r3.getRemoteSubscription(r4)     // Catch:{ all -> 0x0024 }
        L_0x0007:
            if (r1 != 0) goto L_0x0022
            java.util.Set<org.fourthline.cling.model.gena.RemoteGENASubscription> r2 = r3.pendingSubscriptionsLock     // Catch:{ all -> 0x0024 }
            boolean r2 = r2.isEmpty()     // Catch:{ all -> 0x0024 }
            if (r2 != 0) goto L_0x0022
            java.util.logging.Logger r1 = log     // Catch:{ InterruptedException -> 0x001d }
            java.lang.String r2 = "Subscription not found, waiting for pending subscription procedure to terminate."
            r1.finest(r2)     // Catch:{ InterruptedException -> 0x001d }
            java.util.Set<org.fourthline.cling.model.gena.RemoteGENASubscription> r1 = r3.pendingSubscriptionsLock     // Catch:{ InterruptedException -> 0x001d }
            r1.wait()     // Catch:{ InterruptedException -> 0x001d }
        L_0x001d:
            org.fourthline.cling.model.gena.RemoteGENASubscription r1 = r3.getRemoteSubscription(r4)     // Catch:{ all -> 0x0024 }
            goto L_0x0007
        L_0x0022:
            monitor-exit(r0)     // Catch:{ all -> 0x0024 }
            return r1
        L_0x0024:
            r4 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x0024 }
            goto L_0x0028
        L_0x0027:
            throw r4
        L_0x0028:
            goto L_0x0027
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fourthline.cling.registry.RegistryImpl.getWaitRemoteSubscription(java.lang.String):org.fourthline.cling.model.gena.RemoteGENASubscription");
    }
}
