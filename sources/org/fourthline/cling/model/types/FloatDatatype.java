package org.fourthline.cling.model.types;

public class FloatDatatype extends AbstractDatatype<Float> {
    public boolean isHandlingJavaType(Class cls) {
        return cls == Float.TYPE || Float.class.isAssignableFrom(cls);
    }

    public Float valueOf(String str) throws InvalidValueException {
        if (str.equals("")) {
            return null;
        }
        try {
            return Float.valueOf(Float.parseFloat(str.trim()));
        } catch (NumberFormatException e) {
            StringBuilder sb = new StringBuilder();
            sb.append("Can't convert string to number: ");
            sb.append(str);
            throw new InvalidValueException(sb.toString(), e);
        }
    }
}
