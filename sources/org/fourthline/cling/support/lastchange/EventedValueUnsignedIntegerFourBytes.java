package org.fourthline.cling.support.lastchange;

import java.util.Map.Entry;
import org.fourthline.cling.model.types.Datatype;
import org.fourthline.cling.model.types.Datatype.Builtin;
import org.fourthline.cling.model.types.UnsignedIntegerFourBytes;

public class EventedValueUnsignedIntegerFourBytes extends EventedValue<UnsignedIntegerFourBytes> {
    public EventedValueUnsignedIntegerFourBytes(UnsignedIntegerFourBytes unsignedIntegerFourBytes) {
        super(unsignedIntegerFourBytes);
    }

    public EventedValueUnsignedIntegerFourBytes(Entry<String, String>[] entryArr) {
        super(entryArr);
    }

    /* access modifiers changed from: protected */
    public Datatype getDatatype() {
        return Builtin.UI4.getDatatype();
    }
}
