package org.fourthline.cling.registry;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.fourthline.cling.model.gena.CancelReason;
import org.fourthline.cling.model.gena.RemoteGENASubscription;
import org.fourthline.cling.model.meta.LocalDevice;
import org.fourthline.cling.model.meta.RemoteDevice;
import org.fourthline.cling.model.meta.RemoteDeviceIdentity;
import org.fourthline.cling.model.meta.RemoteService;
import org.fourthline.cling.model.resource.Resource;
import org.fourthline.cling.model.types.UDN;

class RemoteItems extends RegistryItems<RemoteDevice, RemoteGENASubscription> {
    private static Logger log = Logger.getLogger(Registry.class.getName());

    /* access modifiers changed from: 0000 */
    public void start() {
    }

    RemoteItems(RegistryImpl registryImpl) {
        super(registryImpl);
    }

    /* access modifiers changed from: 0000 */
    public void add(final RemoteDevice remoteDevice) {
        Integer num;
        if (update((RemoteDeviceIdentity) remoteDevice.getIdentity())) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Ignoring addition, device already registered: ");
            sb.append(remoteDevice);
            logger.fine(sb.toString());
            return;
        }
        Resource[] resources = getResources(remoteDevice);
        int length = resources.length;
        int i = 0;
        while (i < length) {
            Resource resource = resources[i];
            Logger logger2 = log;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Validating remote device resource; ");
            sb2.append(resource);
            logger2.fine(sb2.toString());
            if (this.registry.getResource(resource.getPathQuery()) == null) {
                i++;
            } else {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("URI namespace conflict with already registered resource: ");
                sb3.append(resource);
                throw new RegistrationException(sb3.toString());
            }
        }
        for (Resource resource2 : resources) {
            this.registry.addResource(resource2);
            Logger logger3 = log;
            StringBuilder sb4 = new StringBuilder();
            sb4.append("Added remote device resource: ");
            sb4.append(resource2);
            logger3.fine(sb4.toString());
        }
        UDN udn = ((RemoteDeviceIdentity) remoteDevice.getIdentity()).getUdn();
        if (this.registry.getConfiguration().getRemoteDeviceMaxAgeSeconds() != null) {
            num = this.registry.getConfiguration().getRemoteDeviceMaxAgeSeconds();
        } else {
            num = ((RemoteDeviceIdentity) remoteDevice.getIdentity()).getMaxAgeSeconds();
        }
        RegistryItem registryItem = new RegistryItem(udn, remoteDevice, num.intValue());
        Logger logger4 = log;
        StringBuilder sb5 = new StringBuilder();
        sb5.append("Adding hydrated remote device to registry with ");
        sb5.append(registryItem.getExpirationDetails().getMaxAgeSeconds());
        sb5.append(" seconds expiration: ");
        sb5.append(remoteDevice);
        logger4.fine(sb5.toString());
        getDeviceItems().add(registryItem);
        if (log.isLoggable(Level.FINEST)) {
            StringBuilder sb6 = new StringBuilder();
            String str = "\n";
            sb6.append(str);
            sb6.append("-------------------------- START Registry Namespace -----------------------------------\n");
            for (Resource append : this.registry.getResources()) {
                sb6.append(append);
                sb6.append(str);
            }
            sb6.append("-------------------------- END Registry Namespace -----------------------------------");
            log.finest(sb6.toString());
        }
        Logger logger5 = log;
        StringBuilder sb7 = new StringBuilder();
        sb7.append("Completely hydrated remote device graph available, calling listeners: ");
        sb7.append(remoteDevice);
        logger5.fine(sb7.toString());
        for (final RegistryListener registryListener : this.registry.getListeners()) {
            this.registry.getConfiguration().getRegistryListenerExecutor().execute(new Runnable() {
                public void run() {
                    registryListener.remoteDeviceAdded(RemoteItems.this.registry, remoteDevice);
                }
            });
        }
    }

    /* access modifiers changed from: 0000 */
    public boolean update(RemoteDeviceIdentity remoteDeviceIdentity) {
        Integer num;
        for (LocalDevice findDevice : this.registry.getLocalDevices()) {
            if (findDevice.findDevice(remoteDeviceIdentity.getUdn()) != null) {
                log.fine("Ignoring update, a local device graph contains UDN");
                return true;
            }
        }
        RemoteDevice remoteDevice = (RemoteDevice) get(remoteDeviceIdentity.getUdn(), false);
        if (remoteDevice == null) {
            return false;
        }
        if (!remoteDevice.isRoot()) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Updating root device of embedded: ");
            sb.append(remoteDevice);
            logger.fine(sb.toString());
            remoteDevice = remoteDevice.getRoot();
        }
        UDN udn = ((RemoteDeviceIdentity) remoteDevice.getIdentity()).getUdn();
        if (this.registry.getConfiguration().getRemoteDeviceMaxAgeSeconds() != null) {
            num = this.registry.getConfiguration().getRemoteDeviceMaxAgeSeconds();
        } else {
            num = remoteDeviceIdentity.getMaxAgeSeconds();
        }
        final RegistryItem registryItem = new RegistryItem(udn, remoteDevice, num.intValue());
        Logger logger2 = log;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Updating expiration of: ");
        sb2.append(remoteDevice);
        logger2.fine(sb2.toString());
        getDeviceItems().remove(registryItem);
        getDeviceItems().add(registryItem);
        Logger logger3 = log;
        StringBuilder sb3 = new StringBuilder();
        sb3.append("Remote device updated, calling listeners: ");
        sb3.append(remoteDevice);
        logger3.fine(sb3.toString());
        for (final RegistryListener registryListener : this.registry.getListeners()) {
            this.registry.getConfiguration().getRegistryListenerExecutor().execute(new Runnable() {
                public void run() {
                    registryListener.remoteDeviceUpdated(RemoteItems.this.registry, (RemoteDevice) registryItem.getItem());
                }
            });
        }
        return true;
    }

    /* access modifiers changed from: 0000 */
    public boolean remove(RemoteDevice remoteDevice) {
        return remove(remoteDevice, false);
    }

    /* access modifiers changed from: 0000 */
    public boolean remove(RemoteDevice remoteDevice, boolean z) throws RegistrationException {
        Resource[] resources;
        final RemoteDevice remoteDevice2 = (RemoteDevice) get(((RemoteDeviceIdentity) remoteDevice.getIdentity()).getUdn(), true);
        if (remoteDevice2 == null) {
            return false;
        }
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Removing remote device from registry: ");
        sb.append(remoteDevice);
        logger.fine(sb.toString());
        for (Resource resource : getResources(remoteDevice2)) {
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
            if (((RemoteDeviceIdentity) ((RemoteDevice) ((RemoteService) ((RemoteGENASubscription) registryItem.getItem()).getService()).getDevice()).getIdentity()).getUdn().equals(((RemoteDeviceIdentity) remoteDevice2.getIdentity()).getUdn())) {
                Logger logger3 = log;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Removing outgoing subscription: ");
                sb3.append((String) registryItem.getKey());
                logger3.fine(sb3.toString());
                it.remove();
                if (!z) {
                    this.registry.getConfiguration().getRegistryListenerExecutor().execute(new Runnable() {
                        public void run() {
                            ((RemoteGENASubscription) registryItem.getItem()).end(CancelReason.DEVICE_WAS_REMOVED, null);
                        }
                    });
                }
            }
        }
        if (!z) {
            for (final RegistryListener registryListener : this.registry.getListeners()) {
                this.registry.getConfiguration().getRegistryListenerExecutor().execute(new Runnable() {
                    public void run() {
                        registryListener.remoteDeviceRemoved(RemoteItems.this.registry, remoteDevice2);
                    }
                });
            }
        }
        getDeviceItems().remove(new RegistryItem(((RemoteDeviceIdentity) remoteDevice2.getIdentity()).getUdn()));
        return true;
    }

    /* access modifiers changed from: 0000 */
    public void removeAll() {
        removeAll(false);
    }

    /* access modifiers changed from: 0000 */
    public void removeAll(boolean z) {
        for (RemoteDevice remove : (RemoteDevice[]) get().toArray(new RemoteDevice[get().size()])) {
            remove(remove, z);
        }
    }

    /* access modifiers changed from: 0000 */
    public void maintain() {
        if (!getDeviceItems().isEmpty()) {
            HashMap hashMap = new HashMap();
            for (RegistryItem registryItem : getDeviceItems()) {
                if (log.isLoggable(Level.FINEST)) {
                    Logger logger = log;
                    StringBuilder sb = new StringBuilder();
                    sb.append("Device '");
                    sb.append(registryItem.getItem());
                    sb.append("' expires in seconds: ");
                    sb.append(registryItem.getExpirationDetails().getSecondsUntilExpiration());
                    logger.finest(sb.toString());
                }
                if (registryItem.getExpirationDetails().hasExpired(false)) {
                    hashMap.put(registryItem.getKey(), registryItem.getItem());
                }
            }
            for (RemoteDevice remoteDevice : hashMap.values()) {
                if (log.isLoggable(Level.FINE)) {
                    Logger logger2 = log;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Removing expired: ");
                    sb2.append(remoteDevice);
                    logger2.fine(sb2.toString());
                }
                remove(remoteDevice);
            }
            HashSet<RemoteGENASubscription> hashSet = new HashSet<>();
            for (RegistryItem registryItem2 : getSubscriptionItems()) {
                if (registryItem2.getExpirationDetails().hasExpired(true)) {
                    hashSet.add(registryItem2.getItem());
                }
            }
            for (RemoteGENASubscription remoteGENASubscription : hashSet) {
                if (log.isLoggable(Level.FINEST)) {
                    Logger logger3 = log;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Renewing outgoing subscription: ");
                    sb3.append(remoteGENASubscription);
                    logger3.fine(sb3.toString());
                }
                renewOutgoingSubscription(remoteGENASubscription);
            }
        }
    }

    public void resume() {
        log.fine("Updating remote device expiration timestamps on resume");
        ArrayList<RemoteDeviceIdentity> arrayList = new ArrayList<>();
        for (RegistryItem item : getDeviceItems()) {
            arrayList.add(((RemoteDevice) item.getItem()).getIdentity());
        }
        for (RemoteDeviceIdentity update : arrayList) {
            update(update);
        }
    }

    /* access modifiers changed from: 0000 */
    public void shutdown() {
        log.fine("Cancelling all outgoing subscriptions to remote devices during shutdown");
        ArrayList<RemoteGENASubscription> arrayList = new ArrayList<>();
        for (RegistryItem item : getSubscriptionItems()) {
            arrayList.add(item.getItem());
        }
        for (RemoteGENASubscription createSendingUnsubscribe : arrayList) {
            this.registry.getProtocolFactory().createSendingUnsubscribe(createSendingUnsubscribe).run();
        }
        log.fine("Removing all remote devices from registry during shutdown");
        removeAll(true);
    }

    /* access modifiers changed from: protected */
    public void renewOutgoingSubscription(RemoteGENASubscription remoteGENASubscription) {
        this.registry.executeAsyncProtocol(this.registry.getProtocolFactory().createSendingRenewal(remoteGENASubscription));
    }
}
