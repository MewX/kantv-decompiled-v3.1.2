package org.fourthline.cling.support.lastchange;

import java.lang.Enum;
import java.util.Map.Entry;
import org.fourthline.cling.model.ModelUtil;
import org.fourthline.cling.model.types.Datatype;
import org.fourthline.cling.model.types.InvalidValueException;

public abstract class EventedValueEnumArray<E extends Enum> extends EventedValue<E[]> {
    /* access modifiers changed from: protected */
    public abstract E[] enumValueOf(String[] strArr);

    /* access modifiers changed from: protected */
    public Datatype getDatatype() {
        return null;
    }

    public EventedValueEnumArray(E[] eArr) {
        super(eArr);
    }

    public EventedValueEnumArray(Entry<String, String>[] entryArr) {
        super(entryArr);
    }

    /* access modifiers changed from: protected */
    public E[] valueOf(String str) throws InvalidValueException {
        return enumValueOf(ModelUtil.fromCommaSeparatedList(str));
    }

    public String toString() {
        return ModelUtil.toCommaSeparatedList((Object[]) getValue());
    }
}
