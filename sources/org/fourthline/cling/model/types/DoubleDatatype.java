package org.fourthline.cling.model.types;

public class DoubleDatatype extends AbstractDatatype<Double> {
    public boolean isHandlingJavaType(Class cls) {
        return cls == Double.TYPE || Double.class.isAssignableFrom(cls);
    }

    public Double valueOf(String str) throws InvalidValueException {
        if (str.equals("")) {
            return null;
        }
        try {
            return Double.valueOf(Double.parseDouble(str));
        } catch (NumberFormatException e) {
            StringBuilder sb = new StringBuilder();
            sb.append("Can't convert string to number: ");
            sb.append(str);
            throw new InvalidValueException(sb.toString(), e);
        }
    }
}
