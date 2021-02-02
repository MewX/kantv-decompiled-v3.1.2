package com.koushikdutta.urlimageviewhelper;

import java.lang.ref.SoftReference;
import java.util.Hashtable;

public class SoftReferenceHashTable<K, V> {
    Hashtable<K, SoftReference<V>> mTable = new Hashtable<>();

    public V put(K k, V v) {
        SoftReference softReference = (SoftReference) this.mTable.put(k, new SoftReference(v));
        if (softReference == null) {
            return null;
        }
        return softReference.get();
    }

    public V get(K k) {
        SoftReference softReference = (SoftReference) this.mTable.get(k);
        if (softReference == null) {
            return null;
        }
        V v = softReference.get();
        if (v == null) {
            this.mTable.remove(k);
        }
        return v;
    }

    public V remove(K k) {
        SoftReference softReference = (SoftReference) this.mTable.remove(k);
        if (softReference == null) {
            return null;
        }
        return softReference.get();
    }
}
