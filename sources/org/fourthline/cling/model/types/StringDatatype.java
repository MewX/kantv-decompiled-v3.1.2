package org.fourthline.cling.model.types;

public class StringDatatype extends AbstractDatatype<String> {
    public String valueOf(String str) throws InvalidValueException {
        if (str.equals("")) {
            return null;
        }
        return str;
    }
}
