package org.fourthline.cling.support.shared;

import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public abstract class AbstractMap<K, V> implements Map<K, V> {
    Set<K> keySet;
    Collection<V> valuesCollection;

    public static class SimpleEntry<K, V> implements Entry<K, V>, Serializable {
        private static final long serialVersionUID = -8499721149061103585L;
        private final K key;
        private V value;

        public SimpleEntry(K k, V v) {
            this.key = k;
            this.value = v;
        }

        public SimpleEntry(Entry<? extends K, ? extends V> entry) {
            this.key = entry.getKey();
            this.value = entry.getValue();
        }

        public K getKey() {
            return this.key;
        }

        public V getValue() {
            return this.value;
        }

        public V setValue(V v) {
            V v2 = this.value;
            this.value = v;
            return v2;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Entry)) {
                return false;
            }
            Entry entry = (Entry) obj;
            K k = this.key;
            if (k != null ? k.equals(entry.getKey()) : entry.getKey() == null) {
                V v = this.value;
                if (v != null) {
                }
            }
            z = false;
            return z;
        }

        public int hashCode() {
            K k = this.key;
            int i = 0;
            int hashCode = k == null ? 0 : k.hashCode();
            V v = this.value;
            if (v != null) {
                i = v.hashCode();
            }
            return hashCode ^ i;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.key);
            sb.append("=");
            sb.append(this.value);
            return sb.toString();
        }
    }

    public static class SimpleImmutableEntry<K, V> implements Entry<K, V>, Serializable {
        private static final long serialVersionUID = 7138329143949025153L;
        private final K key;
        private final V value;

        public SimpleImmutableEntry(K k, V v) {
            this.key = k;
            this.value = v;
        }

        public SimpleImmutableEntry(Entry<? extends K, ? extends V> entry) {
            this.key = entry.getKey();
            this.value = entry.getValue();
        }

        public K getKey() {
            return this.key;
        }

        public V getValue() {
            return this.value;
        }

        public V setValue(V v) {
            throw new UnsupportedOperationException();
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Entry)) {
                return false;
            }
            Entry entry = (Entry) obj;
            K k = this.key;
            if (k != null ? k.equals(entry.getKey()) : entry.getKey() == null) {
                V v = this.value;
                if (v != null) {
                }
            }
            z = false;
            return z;
        }

        public int hashCode() {
            K k = this.key;
            int i = 0;
            int hashCode = k == null ? 0 : k.hashCode();
            V v = this.value;
            if (v != null) {
                i = v.hashCode();
            }
            return hashCode ^ i;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.key);
            sb.append("=");
            sb.append(this.value);
            return sb.toString();
        }
    }

    public abstract Set<Entry<K, V>> entrySet();

    protected AbstractMap() {
    }

    public void clear() {
        entrySet().clear();
    }

    public boolean containsKey(Object obj) {
        Iterator it = entrySet().iterator();
        if (obj != null) {
            while (it.hasNext()) {
                if (obj.equals(((Entry) it.next()).getKey())) {
                    return true;
                }
            }
        } else {
            while (it.hasNext()) {
                if (((Entry) it.next()).getKey() == null) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean containsValue(Object obj) {
        Iterator it = entrySet().iterator();
        if (obj != null) {
            while (it.hasNext()) {
                if (obj.equals(((Entry) it.next()).getValue())) {
                    return true;
                }
            }
        } else {
            while (it.hasNext()) {
                if (((Entry) it.next()).getValue() == null) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (size() != map.size()) {
                return false;
            }
            try {
                for (Entry entry : entrySet()) {
                    Object key = entry.getKey();
                    Object value = entry.getValue();
                    Object obj2 = map.get(key);
                    if (value == null) {
                        if (obj2 != null || !map.containsKey(key)) {
                            return false;
                        }
                    } else if (!value.equals(obj2)) {
                        return false;
                    }
                }
                return true;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    public V get(Object obj) {
        Iterator it = entrySet().iterator();
        if (obj != null) {
            while (it.hasNext()) {
                Entry entry = (Entry) it.next();
                if (obj.equals(entry.getKey())) {
                    return entry.getValue();
                }
            }
        } else {
            while (it.hasNext()) {
                Entry entry2 = (Entry) it.next();
                if (entry2.getKey() == null) {
                    return entry2.getValue();
                }
            }
        }
        return null;
    }

    public int hashCode() {
        int i = 0;
        for (Entry hashCode : entrySet()) {
            i += hashCode.hashCode();
        }
        return i;
    }

    public boolean isEmpty() {
        return size() == 0;
    }

    public Set<K> keySet() {
        if (this.keySet == null) {
            this.keySet = new AbstractSet<K>() {
                public boolean contains(Object obj) {
                    return AbstractMap.this.containsKey(obj);
                }

                public int size() {
                    return AbstractMap.this.size();
                }

                public Iterator<K> iterator() {
                    return new Iterator<K>() {
                        Iterator<Entry<K, V>> setIterator = AbstractMap.this.entrySet().iterator();

                        public boolean hasNext() {
                            return this.setIterator.hasNext();
                        }

                        public K next() {
                            return ((Entry) this.setIterator.next()).getKey();
                        }

                        public void remove() {
                            this.setIterator.remove();
                        }
                    };
                }
            };
        }
        return this.keySet;
    }

    public V put(K k, V v) {
        throw new UnsupportedOperationException();
    }

    public void putAll(Map<? extends K, ? extends V> map) {
        for (Entry entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    public V remove(Object obj) {
        Iterator it = entrySet().iterator();
        if (obj != null) {
            while (it.hasNext()) {
                Entry entry = (Entry) it.next();
                if (obj.equals(entry.getKey())) {
                    it.remove();
                    return entry.getValue();
                }
            }
        } else {
            while (it.hasNext()) {
                Entry entry2 = (Entry) it.next();
                if (entry2.getKey() == null) {
                    it.remove();
                    return entry2.getValue();
                }
            }
        }
        return null;
    }

    public int size() {
        return entrySet().size();
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(size() * 28);
        sb.append('{');
        Iterator it = entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            Object key = entry.getKey();
            String str = "(this Map)";
            if (key != this) {
                sb.append(key);
            } else {
                sb.append(str);
            }
            sb.append('=');
            Object value = entry.getValue();
            if (value != this) {
                sb.append(value);
            } else {
                sb.append(str);
            }
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public Collection<V> values() {
        if (this.valuesCollection == null) {
            this.valuesCollection = new AbstractCollection<V>() {
                public int size() {
                    return AbstractMap.this.size();
                }

                public boolean contains(Object obj) {
                    return AbstractMap.this.containsValue(obj);
                }

                public Iterator<V> iterator() {
                    return new Iterator<V>() {
                        Iterator<Entry<K, V>> setIterator = AbstractMap.this.entrySet().iterator();

                        public boolean hasNext() {
                            return this.setIterator.hasNext();
                        }

                        public V next() {
                            return ((Entry) this.setIterator.next()).getValue();
                        }

                        public void remove() {
                            this.setIterator.remove();
                        }
                    };
                }
            };
        }
        return this.valuesCollection;
    }

    /* access modifiers changed from: protected */
    public Object clone() throws CloneNotSupportedException {
        AbstractMap abstractMap = (AbstractMap) super.clone();
        abstractMap.keySet = null;
        abstractMap.valuesCollection = null;
        return abstractMap;
    }
}
