package org.fourthline.cling.registry;

import org.fourthline.cling.model.ExpirationDetails;

class RegistryItem<K, I> {
    private ExpirationDetails expirationDetails = new ExpirationDetails();
    private I item;
    private K key;

    RegistryItem(K k) {
        this.key = k;
    }

    RegistryItem(K k, I i, int i2) {
        this.key = k;
        this.item = i;
        this.expirationDetails = new ExpirationDetails(i2);
    }

    public K getKey() {
        return this.key;
    }

    public I getItem() {
        return this.item;
    }

    public ExpirationDetails getExpirationDetails() {
        return this.expirationDetails;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.key.equals(((RegistryItem) obj).key);
    }

    public int hashCode() {
        return this.key.hashCode();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        sb.append(getClass().getSimpleName());
        sb.append(") ");
        sb.append(getExpirationDetails());
        sb.append(" KEY: ");
        sb.append(getKey());
        sb.append(" ITEM: ");
        sb.append(getItem());
        return sb.toString();
    }
}
