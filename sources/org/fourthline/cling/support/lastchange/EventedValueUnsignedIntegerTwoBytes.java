package org.fourthline.cling.support.lastchange;

import java.util.Map.Entry;
import org.fourthline.cling.model.types.Datatype;
import org.fourthline.cling.model.types.Datatype.Builtin;
import org.fourthline.cling.model.types.UnsignedIntegerTwoBytes;

public class EventedValueUnsignedIntegerTwoBytes extends EventedValue<UnsignedIntegerTwoBytes> {
    public EventedValueUnsignedIntegerTwoBytes(UnsignedIntegerTwoBytes unsignedIntegerTwoBytes) {
        super(unsignedIntegerTwoBytes);
    }

    public EventedValueUnsignedIntegerTwoBytes(Entry<String, String>[] entryArr) {
        super(entryArr);
    }

    /* access modifiers changed from: protected */
    public Datatype getDatatype() {
        return Builtin.UI2.getDatatype();
    }
}
