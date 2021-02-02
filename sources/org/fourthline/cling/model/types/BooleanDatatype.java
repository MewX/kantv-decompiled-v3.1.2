package org.fourthline.cling.model.types;

import java.util.Locale;

public class BooleanDatatype extends AbstractDatatype<Boolean> {
    public boolean isHandlingJavaType(Class cls) {
        return cls == Boolean.TYPE || Boolean.class.isAssignableFrom(cls);
    }

    public Boolean valueOf(String str) throws InvalidValueException {
        if (str.equals("")) {
            return null;
        }
        if (str.equals("1") || str.toUpperCase(Locale.ROOT).equals("YES") || str.toUpperCase(Locale.ROOT).equals("TRUE")) {
            return Boolean.valueOf(true);
        }
        if (str.equals("0") || str.toUpperCase(Locale.ROOT).equals("NO") || str.toUpperCase(Locale.ROOT).equals("FALSE")) {
            return Boolean.valueOf(false);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Invalid boolean value string: ");
        sb.append(str);
        throw new InvalidValueException(sb.toString());
    }

    public String getString(Boolean bool) throws InvalidValueException {
        if (bool == null) {
            return "";
        }
        return bool.booleanValue() ? "1" : "0";
    }
}
