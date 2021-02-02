package org.fourthline.cling.support.lastchange;

import java.beans.PropertyChangeSupport;
import java.util.ArrayList;
import org.fourthline.cling.model.types.UnsignedIntegerFourBytes;

public class LastChange {
    private final Event event;
    private final LastChangeParser parser;
    private String previousValue;

    public LastChange(String str) {
        throw new UnsupportedOperationException("This constructor is only for service binding detection");
    }

    public LastChange(LastChangeParser lastChangeParser, Event event2) {
        this.parser = lastChangeParser;
        this.event = event2;
    }

    public LastChange(LastChangeParser lastChangeParser) {
        this(lastChangeParser, new Event());
    }

    public LastChange(LastChangeParser lastChangeParser, String str) throws Exception {
        if (str == null || str.length() <= 0) {
            this.event = new Event();
        } else {
            this.event = lastChangeParser.parse(str);
        }
        this.parser = lastChangeParser;
    }

    public synchronized void reset() {
        this.previousValue = toString();
        this.event.clear();
    }

    public synchronized void setEventedValue(int i, EventedValue... eventedValueArr) {
        setEventedValue(new UnsignedIntegerFourBytes((long) i), eventedValueArr);
    }

    public synchronized void setEventedValue(UnsignedIntegerFourBytes unsignedIntegerFourBytes, EventedValue... eventedValueArr) {
        for (EventedValue eventedValue : eventedValueArr) {
            if (eventedValue != null) {
                this.event.setEventedValue(unsignedIntegerFourBytes, eventedValue);
            }
        }
    }

    public synchronized UnsignedIntegerFourBytes[] getInstanceIDs() {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (InstanceID id : this.event.getInstanceIDs()) {
            arrayList.add(id.getId());
        }
        return (UnsignedIntegerFourBytes[]) arrayList.toArray(new UnsignedIntegerFourBytes[arrayList.size()]);
    }

    /* access modifiers changed from: 0000 */
    public synchronized EventedValue[] getEventedValues(UnsignedIntegerFourBytes unsignedIntegerFourBytes) {
        InstanceID instanceID;
        instanceID = this.event.getInstanceID(unsignedIntegerFourBytes);
        return instanceID != null ? (EventedValue[]) instanceID.getValues().toArray(new EventedValue[instanceID.getValues().size()]) : null;
    }

    public synchronized <EV extends EventedValue> EV getEventedValue(int i, Class<EV> cls) {
        return getEventedValue(new UnsignedIntegerFourBytes((long) i), cls);
    }

    public synchronized <EV extends EventedValue> EV getEventedValue(UnsignedIntegerFourBytes unsignedIntegerFourBytes, Class<EV> cls) {
        return this.event.getEventedValue(unsignedIntegerFourBytes, cls);
    }

    public synchronized void fire(PropertyChangeSupport propertyChangeSupport) {
        String lastChange = toString();
        if (lastChange != null && lastChange.length() > 0) {
            propertyChangeSupport.firePropertyChange("LastChange", this.previousValue, lastChange);
            reset();
        }
    }

    public synchronized String toString() {
        if (!this.event.hasChanges()) {
            return "";
        }
        try {
            return this.parser.generate(this.event);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
