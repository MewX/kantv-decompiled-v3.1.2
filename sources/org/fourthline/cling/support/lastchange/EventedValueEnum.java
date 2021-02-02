package org.fourthline.cling.support.lastchange;

import java.lang.Enum;
import java.util.Map.Entry;
import org.fourthline.cling.model.types.Datatype;
import org.fourthline.cling.model.types.InvalidValueException;

public abstract class EventedValueEnum<E extends Enum> extends EventedValue<E> {
    /* access modifiers changed from: protected */
    public abstract E enumValueOf(String str);

    /* access modifiers changed from: protected */
    public Datatype getDatatype() {
        return null;
    }

    public EventedValueEnum(E e) {
        super(e);
    }

    public EventedValueEnum(Entry<String, String>[] entryArr) {
        super(entryArr);
    }

    /* access modifiers changed from: protected */
    public E valueOf(String str) throws InvalidValueException {
        return enumValueOf(str);
    }

    public String toString() {
        return ((Enum) getValue()).name();
    }
}
