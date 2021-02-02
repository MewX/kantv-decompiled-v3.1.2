package org.fourthline.cling.support.lastchange;

import java.util.Map.Entry;
import org.fourthline.cling.model.types.Datatype;
import org.fourthline.cling.model.types.Datatype.Builtin;

public class EventedValueShort extends EventedValue<Short> {
    public EventedValueShort(Short sh) {
        super(sh);
    }

    public EventedValueShort(Entry<String, String>[] entryArr) {
        super(entryArr);
    }

    /* access modifiers changed from: protected */
    public Datatype getDatatype() {
        return Builtin.I2_SHORT.getDatatype();
    }
}
