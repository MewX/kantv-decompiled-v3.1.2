package org.fourthline.cling.model;

import java.util.logging.Logger;
import org.fourthline.cling.model.types.Datatype;
import org.fourthline.cling.model.types.InvalidValueException;

public class VariableValue {
    private static final Logger log = Logger.getLogger(VariableValue.class.getName());
    private final Datatype datatype;
    private final Object value;

    public VariableValue(Datatype datatype2, Object obj) throws InvalidValueException {
        this.datatype = datatype2;
        if (obj instanceof String) {
            obj = datatype2.valueOf((String) obj);
        }
        this.value = obj;
        if (!ModelUtil.ANDROID_RUNTIME) {
            if (getDatatype().isValid(getValue())) {
                logInvalidXML(toString());
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Invalid value for ");
            sb.append(getDatatype());
            sb.append(": ");
            sb.append(getValue());
            throw new InvalidValueException(sb.toString());
        }
    }

    public Datatype getDatatype() {
        return this.datatype;
    }

    public Object getValue() {
        return this.value;
    }

    /* access modifiers changed from: protected */
    public void logInvalidXML(String str) {
        int i = 0;
        while (i < str.length()) {
            int codePointAt = str.codePointAt(i);
            if (!(codePointAt == 9 || codePointAt == 10 || codePointAt == 13 || ((codePointAt >= 32 && codePointAt <= 55295) || ((codePointAt >= 57344 && codePointAt <= 65533) || (codePointAt >= 65536 && codePointAt <= 1114111))))) {
                Logger logger = log;
                StringBuilder sb = new StringBuilder();
                sb.append("Found invalid XML char code: ");
                sb.append(codePointAt);
                logger.warning(sb.toString());
            }
            i += Character.charCount(codePointAt);
        }
    }

    public String toString() {
        return getDatatype().getString(getValue());
    }
}
