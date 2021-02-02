package org.fourthline.cling.support.model.container;

import org.fourthline.cling.support.model.DIDLObject.Class;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.STORAGE_FREE;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.STORAGE_MAX_PARTITION;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.STORAGE_MEDIUM;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.STORAGE_TOTAL;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.STORAGE_USED;
import org.fourthline.cling.support.model.StorageMedium;

public class StorageSystem extends Container {
    public static final Class CLASS = new Class("object.container.storageSystem");

    public StorageSystem() {
        setClazz(CLASS);
    }

    public StorageSystem(Container container) {
        super(container);
    }

    public StorageSystem(String str, Container container, String str2, String str3, Integer num, Long l, Long l2, Long l3, Long l4, StorageMedium storageMedium) {
        this(str, container.getId(), str2, str3, num, l, l2, l3, l4, storageMedium);
    }

    public StorageSystem(String str, String str2, String str3, String str4, Integer num, Long l, Long l2, Long l3, Long l4, StorageMedium storageMedium) {
        Long l5 = l;
        Long l6 = l2;
        Long l7 = l3;
        Long l8 = l4;
        StorageMedium storageMedium2 = storageMedium;
        super(str, str2, str3, str4, CLASS, num);
        if (l5 != null) {
            setStorageTotal(l5);
        }
        if (l6 != null) {
            setStorageUsed(l6);
        }
        if (l7 != null) {
            setStorageFree(l7);
        }
        if (l8 != null) {
            setStorageMaxPartition(l8);
        }
        if (storageMedium2 != null) {
            setStorageMedium(storageMedium2);
        }
    }

    public Long getStorageTotal() {
        return (Long) getFirstPropertyValue(STORAGE_TOTAL.class);
    }

    public StorageSystem setStorageTotal(Long l) {
        replaceFirstProperty(new STORAGE_TOTAL(l));
        return this;
    }

    public Long getStorageUsed() {
        return (Long) getFirstPropertyValue(STORAGE_USED.class);
    }

    public StorageSystem setStorageUsed(Long l) {
        replaceFirstProperty(new STORAGE_USED(l));
        return this;
    }

    public Long getStorageFree() {
        return (Long) getFirstPropertyValue(STORAGE_FREE.class);
    }

    public StorageSystem setStorageFree(Long l) {
        replaceFirstProperty(new STORAGE_FREE(l));
        return this;
    }

    public Long getStorageMaxPartition() {
        return (Long) getFirstPropertyValue(STORAGE_MAX_PARTITION.class);
    }

    public StorageSystem setStorageMaxPartition(Long l) {
        replaceFirstProperty(new STORAGE_MAX_PARTITION(l));
        return this;
    }

    public StorageMedium getStorageMedium() {
        return (StorageMedium) getFirstPropertyValue(STORAGE_MEDIUM.class);
    }

    public StorageSystem setStorageMedium(StorageMedium storageMedium) {
        replaceFirstProperty(new STORAGE_MEDIUM(storageMedium));
        return this;
    }
}
