package org.fourthline.cling.model.types;

public class ShortDatatype extends AbstractDatatype<Short> {
    public boolean isHandlingJavaType(Class cls) {
        return cls == Short.TYPE || Short.class.isAssignableFrom(cls);
    }

    public Short valueOf(String str) throws InvalidValueException {
        if (str.equals("")) {
            return null;
        }
        try {
            Short valueOf = Short.valueOf(Short.parseShort(str.trim()));
            if (isValid(valueOf)) {
                return valueOf;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Not a valid short: ");
            sb.append(str);
            throw new InvalidValueException(sb.toString());
        } catch (NumberFormatException e) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Can't convert string to number: ");
            sb2.append(str);
            throw new InvalidValueException(sb2.toString(), e);
        }
    }
}
