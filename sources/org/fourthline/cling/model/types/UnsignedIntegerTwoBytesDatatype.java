package org.fourthline.cling.model.types;

public class UnsignedIntegerTwoBytesDatatype extends AbstractDatatype<UnsignedIntegerTwoBytes> {
    public UnsignedIntegerTwoBytes valueOf(String str) throws InvalidValueException {
        if (str.equals("")) {
            return null;
        }
        try {
            return new UnsignedIntegerTwoBytes(str);
        } catch (NumberFormatException e) {
            StringBuilder sb = new StringBuilder();
            sb.append("Can't convert string to number or not in range: ");
            sb.append(str);
            throw new InvalidValueException(sb.toString(), e);
        }
    }
}
