package org.fourthline.cling.support.lastchange;

import java.util.Map.Entry;
import org.fourthline.cling.model.types.Datatype;
import org.fourthline.cling.model.types.InvalidValueException;
import org.fourthline.cling.support.shared.AbstractMap.SimpleEntry;

public abstract class EventedValue<V> {
    protected final V value;

    /* access modifiers changed from: protected */
    public abstract Datatype getDatatype();

    public EventedValue(V v) {
        this.value = v;
    }

    public EventedValue(Entry<String, String>[] entryArr) {
        try {
            this.value = valueOf(entryArr);
        } catch (InvalidValueException e) {
            throw new RuntimeException(e);
        }
    }

    public String getName() {
        return getClass().getSimpleName();
    }

    public V getValue() {
        return this.value;
    }

    public Entry<String, String>[] getAttributes() {
        return new Entry[]{new SimpleEntry("val", toString())};
    }

    /* access modifiers changed from: protected */
    public V valueOf(Entry<String, String>[] entryArr) throws InvalidValueException {
        V v = null;
        for (Entry<String, String> entry : entryArr) {
            if (((String) entry.getKey()).equals("val")) {
                v = valueOf((String) entry.getValue());
            }
        }
        return v;
    }

    /* access modifiers changed from: protected */
    public V valueOf(String str) throws InvalidValueException {
        return getDatatype().valueOf(str);
    }

    public String toString() {
        return getDatatype().getString(getValue());
    }
}
