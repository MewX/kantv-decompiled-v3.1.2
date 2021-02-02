package org.fourthline.cling.support.model.container;

import org.fourthline.cling.support.model.DIDLObject.Class;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.STORAGE_FREE;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.STORAGE_MEDIUM;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.STORAGE_TOTAL;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.STORAGE_USED;
import org.fourthline.cling.support.model.StorageMedium;

public class StorageVolume extends Container {
    public static final Class CLASS = new Class("object.container.storageVolume");

    public StorageVolume() {
        setClazz(CLASS);
    }

    public StorageVolume(Container container) {
        super(container);
    }

    public StorageVolume(String str, Container container, String str2, String str3, Integer num, Long l, Long l2, Long l3, StorageMedium storageMedium) {
        this(str, container.getId(), str2, str3, num, l, l2, l3, storageMedium);
    }

    public StorageVolume(String str, String str2, String str3, String str4, Integer num, Long l, Long l2, Long l3, StorageMedium storageMedium) {
        Long l4 = l;
        Long l5 = l2;
        Long l6 = l3;
        StorageMedium storageMedium2 = storageMedium;
        super(str, str2, str3, str4, CLASS, num);
        if (l4 != null) {
            setStorageTotal(l4);
        }
        if (l5 != null) {
            setStorageUsed(l5);
        }
        if (l6 != null) {
            setStorageFree(l6);
        }
        if (storageMedium2 != null) {
            setStorageMedium(storageMedium2);
        }
    }

    public Long getStorageTotal() {
        return (Long) getFirstPropertyValue(STORAGE_TOTAL.class);
    }

    public StorageVolume setStorageTotal(Long l) {
        replaceFirstProperty(new STORAGE_TOTAL(l));
        return this;
    }

    public Long getStorageUsed() {
        return (Long) getFirstPropertyValue(STORAGE_USED.class);
    }

    public StorageVolume setStorageUsed(Long l) {
        replaceFirstProperty(new STORAGE_USED(l));
        return this;
    }

    public Long getStorageFree() {
        return (Long) getFirstPropertyValue(STORAGE_FREE.class);
    }

    public StorageVolume setStorageFree(Long l) {
        replaceFirstProperty(new STORAGE_FREE(l));
        return this;
    }

    public StorageMedium getStorageMedium() {
        return (StorageMedium) getFirstPropertyValue(STORAGE_MEDIUM.class);
    }

    public StorageVolume setStorageMedium(StorageMedium storageMedium) {
        replaceFirstProperty(new STORAGE_MEDIUM(storageMedium));
        return this;
    }
}
