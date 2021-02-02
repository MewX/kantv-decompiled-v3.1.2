package org.fourthline.cling.support.lastchange;

import java.net.URI;
import java.util.Map.Entry;
import java.util.logging.Logger;
import org.fourthline.cling.model.types.Datatype;
import org.fourthline.cling.model.types.Datatype.Builtin;
import org.fourthline.cling.model.types.InvalidValueException;
import org.seamless.util.Exceptions;

public class EventedValueURI extends EventedValue<URI> {
    private static final Logger log = Logger.getLogger(EventedValueURI.class.getName());

    public EventedValueURI(URI uri) {
        super(uri);
    }

    public EventedValueURI(Entry<String, String>[] entryArr) {
        super(entryArr);
    }

    /* access modifiers changed from: protected */
    public URI valueOf(String str) throws InvalidValueException {
        try {
            return (URI) super.valueOf(str);
        } catch (InvalidValueException e) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Ignoring invalid URI in evented value '");
            sb.append(str);
            sb.append("': ");
            sb.append(Exceptions.unwrap(e));
            logger.info(sb.toString());
            return null;
        }
    }

    /* access modifiers changed from: protected */
    public Datatype getDatatype() {
        return Builtin.URI.getDatatype();
    }
}
