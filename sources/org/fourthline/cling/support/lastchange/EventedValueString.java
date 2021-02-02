package org.fourthline.cling.support.lastchange;

import java.util.Map.Entry;
import org.fourthline.cling.model.types.Datatype;
import org.fourthline.cling.model.types.Datatype.Builtin;

public class EventedValueString extends EventedValue<String> {
    public EventedValueString(String str) {
        super(str);
    }

    public EventedValueString(Entry<String, String>[] entryArr) {
        super(entryArr);
    }

    /* access modifiers changed from: protected */
    public Datatype getDatatype() {
        return Builtin.STRING.getDatatype();
    }
}
