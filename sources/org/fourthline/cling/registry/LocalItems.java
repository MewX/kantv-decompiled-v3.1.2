package org.fourthline.cling.registry;

import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;
import java.util.logging.Logger;
import org.fourthline.cling.model.DiscoveryOptions;
import org.fourthline.cling.model.gena.CancelReason;
import org.fourthline.cling.model.gena.GENASubscription;
import org.fourthline.cling.model.gena.LocalGENASubscription;
import org.fourthline.cling.model.meta.LocalDevice;
import org.fourthline.cling.model.meta.LocalService;
import org.fourthline.cling.model.resource.Resource;
import org.fourthline.cling.model.types.UDN;
import org.fourthline.cling.protocol.async.SendingNotificationByebye;

class LocalItems extends RegistryItems<LocalDevice, LocalGENASubscription> {
    /* access modifiers changed from: private */
    public static Logger log = Logger.getLogger(Registry.class.getName());
    protected Map<UDN, DiscoveryOptions> discoveryOptions = new HashMap();
    protected long lastAliveIntervalTimestamp = 0;
    protected Random randomGenerator = new Random();

    LocalItems(RegistryImpl registryImpl) {
        super(registryImpl);
    }

    /* access modifiers changed from: protected */
    public void setDiscoveryOptions(UDN udn, DiscoveryOptions discoveryOptions2) {
        if (discoveryOptions2 != null) {
            this.discoveryOptions.put(udn, discoveryOptions2);
        } else {
            this.discoveryOptions.remove(udn);
        }
    }

    /* access modifiers changed from: protected */
    public DiscoveryOptions getDiscoveryOptions(UDN udn) {
        return (DiscoveryOptions) this.discoveryOptions.get(udn);
    }

    /* access modifiers changed from: protected */
    public boolean isAdvertised(UDN udn) {
        return getDiscoveryOptions(udn) == null || getDiscoveryOptions(udn).isAdvertised();
    }

    /* access modifiers changed from: protected */
    public boolean isByeByeBeforeFirstAlive(UDN udn) {
        return getDiscoveryOptions(udn) != null && getDiscoveryOptions(udn).isByeByeBeforeFirstAlive();
    }

    /* access modifiers changed from: 0000 */
    public void add(LocalDevice localDevice) throws RegistrationException {
        add(localDevice, null);
    }

    /* access modifiers changed from: 0000 */
    public void add(final LocalDevice localDevice, DiscoveryOptions discoveryOptions2) throws RegistrationException {
        setDiscoveryOptions(localDevice.getIdentity().getUdn(), discoveryOptions2);
        int i = 0;
        if (this.registry.getDevice(localDevice.getIdentity().getUdn(), false) != null) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Ignoring addition, device already registered: ");
            sb.append(localDevice);
            logger.fine(sb.toString());
            return;
        }
        Logger logger2 = log;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Adding local device to registry: ");
        sb2.append(localDevice);
        logger2.fine(sb2.toString());
        Resource[] resources = getResources(localDevice);
        int length = resources.length;
        while (i < length) {
            Resource resource = resources[i];
            if (this.registry.getResource(resource.getPathQuery()) == null) {
                this.registry.addResource(resource);
                Logger logger3 = log;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Registered resource: ");
                sb3.append(resource);
                logger3.fine(sb3.toString());
                i++;
            } else {
                StringBuilder sb4 = new StringBuilder();
                sb4.append("URI namespace conflict with already registered resource: ");
                sb4.append(resource);
                throw new RegistrationException(sb4.toString());
            }
        }
        Logger logger4 = log;
        StringBuilder sb5 = new StringBuilder();
        sb5.append("Adding item to registry with expiration in seconds: ");
        sb5.append(localDevice.getIdentity().getMaxAgeSeconds());
        logger4.fine(sb5.toString());
        RegistryItem registryItem = new RegistryItem(localDevice.getIdentity().getUdn(), localDevice, localDevice.getIdentity().getMaxAgeSeconds().intValue());
        getDeviceItems().add(registryItem);
        Logger logger5 = log;
        StringBuilder sb6 = new StringBuilder();
        sb6.append("Registered local device: ");
        sb6.append(registryItem);
        logger5.fine(sb6.toString());
        if (isByeByeBeforeFirstAlive((UDN) registryItem.getKey())) {
            advertiseByebye(localDevice, true);
        }
        if (isAdvertised((UDN) registryItem.getKey())) {
            advertiseAlive(localDevice);
        }
        for (final RegistryListener registryListener : this.registry.getListeners()) {
            this.registry.getConfiguration().getRegistryListenerExecutor().execute(new Runnable() {
                public void run() {
                    registryListener.localDeviceAdded(LocalItems.this.registry, localDevice);
                }
            });
        }
    }

    /* access modifiers changed from: 0000 */
    public Collection<LocalDevice> get() {
        HashSet hashSet = new HashSet();
        for (RegistryItem item : getDeviceItems()) {
            hashSet.add(item.getItem());
        }
        return Collections.unmodifiableCollection(hashSet);
    }

    /* access modifiers changed from: 0000 */
    public boolean remove(LocalDevice localDevice) throws RegistrationException {
        return remove(localDevice, false);
    }

    /* access modifiers changed from: 0000 */
    public boolean remove(final LocalDevice localDevice, boolean z) throws RegistrationException {
        Resource[] resources;
        LocalDevice localDevice2 = (LocalDevice) get(localDevice.getIdentity().getUdn(), true);
        if (localDevice2 == null) {
            return false;
        }
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Removing local device from registry: ");
        sb.append(localDevice);
        logger.fine(sb.toString());
        setDiscoveryOptions(localDevice.getIdentity().getUdn(), null);
        getDeviceItems().remove(new RegistryItem(localDevice.getIdentity().getUdn()));
        for (Resource resource : getResources(localDevice)) {
            if (this.registry.removeResource(resource)) {
                Logger logger2 = log;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Unregistered resource: ");
                sb2.append(resource);
                logger2.fine(sb2.toString());
            }
        }
        Iterator it = getSubscriptionItems().iterator();
        while (it.hasNext()) {
            final RegistryItem registryItem = (RegistryItem) it.next();
            if (((LocalService) ((LocalGENASubscription) registryItem.getItem()).getService()).getDevice().getIdentity().getUdn().equals(localDevice2.getIdentity().getUdn())) {
                Logger logger3 = log;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Removing incoming subscription: ");
                sb3.append((String) registryItem.getKey());
                logger3.fine(sb3.toString());
                it.remove();
                if (!z) {
                    this.registry.getConfiguration().getRegistryListenerExecutor().execute(new Runnable() {
                        public void run() {
                            ((LocalGENASubscription) registryItem.getItem()).end(CancelReason.DEVICE_WAS_REMOVED);
                        }
                    });
                }
            }
        }
        if (isAdvertised(localDevice.getIdentity().getUdn())) {
            advertiseByebye(localDevice, !z);
        }
        if (!z) {
            for (final RegistryListener registryListener : this.registry.getListeners()) {
                this.registry.getConfiguration().getRegistryListenerExecutor().execute(new Runnable() {
                    public void run() {
                        registryListener.localDeviceRemoved(LocalItems.this.registry, localDevice);
                    }
                });
            }
        }
        return true;
    }

    /* access modifiers changed from: 0000 */
    public void removeAll() {
        removeAll(false);
    }

    /* access modifiers changed from: 0000 */
    public void removeAll(boolean z) {
        for (LocalDevice remove : (LocalDevice[]) get().toArray(new LocalDevice[get().size()])) {
            remove(remove, z);
        }
    }

    public void advertiseLocalDevices() {
        for (RegistryItem registryItem : this.deviceItems) {
            if (isAdvertised((UDN) registryItem.getKey())) {
                advertiseAlive((LocalDevice) registryItem.getItem());
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void maintain() {
        if (!getDeviceItems().isEmpty()) {
            HashSet<RegistryItem> hashSet = new HashSet<>();
            int aliveIntervalMillis = this.registry.getConfiguration().getAliveIntervalMillis();
            if (aliveIntervalMillis > 0) {
                long currentTimeMillis = System.currentTimeMillis();
                if (currentTimeMillis - this.lastAliveIntervalTimestamp > ((long) aliveIntervalMillis)) {
                    this.lastAliveIntervalTimestamp = currentTimeMillis;
                    for (RegistryItem registryItem : getDeviceItems()) {
                        if (isAdvertised((UDN) registryItem.getKey())) {
                            Logger logger = log;
                            StringBuilder sb = new StringBuilder();
                            sb.append("Flooding advertisement of local item: ");
                            sb.append(registryItem);
                            logger.finer(sb.toString());
                            hashSet.add(registryItem);
                        }
                    }
                }
            } else {
                this.lastAliveIntervalTimestamp = 0;
                for (RegistryItem registryItem2 : getDeviceItems()) {
                    if (isAdvertised((UDN) registryItem2.getKey()) && registryItem2.getExpirationDetails().hasExpired(true)) {
                        Logger logger2 = log;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Local item has expired: ");
                        sb2.append(registryItem2);
                        logger2.finer(sb2.toString());
                        hashSet.add(registryItem2);
                    }
                }
            }
            for (RegistryItem registryItem3 : hashSet) {
                Logger logger3 = log;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Refreshing local device advertisement: ");
                sb3.append(registryItem3.getItem());
                logger3.fine(sb3.toString());
                advertiseAlive((LocalDevice) registryItem3.getItem());
                registryItem3.getExpirationDetails().stampLastRefresh();
            }
            HashSet<RegistryItem> hashSet2 = new HashSet<>();
            for (RegistryItem registryItem4 : getSubscriptionItems()) {
                if (registryItem4.getExpirationDetails().hasExpired(false)) {
                    hashSet2.add(registryItem4);
                }
            }
            for (RegistryItem registryItem5 : hashSet2) {
                Logger logger4 = log;
                StringBuilder sb4 = new StringBuilder();
                sb4.append("Removing expired: ");
                sb4.append(registryItem5);
                logger4.fine(sb4.toString());
                removeSubscription((GENASubscription) registryItem5.getItem());
                ((LocalGENASubscription) registryItem5.getItem()).end(CancelReason.EXPIRED);
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void shutdown() {
        log.fine("Clearing all registered subscriptions to local devices during shutdown");
        getSubscriptionItems().clear();
        log.fine("Removing all local devices from registry during shutdown");
        removeAll(true);
    }

    /* access modifiers changed from: protected */
    public void advertiseAlive(final LocalDevice localDevice) {
        this.registry.executeAsyncProtocol(new Runnable() {
            public void run() {
                try {
                    LocalItems.log.finer("Sleeping some milliseconds to avoid flooding the network with ALIVE msgs");
                    Thread.sleep((long) LocalItems.this.randomGenerator.nextInt(100));
                } catch (InterruptedException e) {
                    Logger access$000 = LocalItems.log;
                    StringBuilder sb = new StringBuilder();
                    sb.append("Background execution interrupted: ");
                    sb.append(e.getMessage());
                    access$000.severe(sb.toString());
                }
                LocalItems.this.registry.getProtocolFactory().createSendingNotificationAlive(localDevice).run();
            }
        });
    }

    /* access modifiers changed from: protected */
    public void advertiseByebye(LocalDevice localDevice, boolean z) {
        SendingNotificationByebye createSendingNotificationByebye = this.registry.getProtocolFactory().createSendingNotificationByebye(localDevice);
        if (z) {
            this.registry.executeAsyncProtocol(createSendingNotificationByebye);
        } else {
            createSendingNotificationByebye.run();
        }
    }
}
