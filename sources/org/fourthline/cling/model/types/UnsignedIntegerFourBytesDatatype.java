package org.fourthline.cling.model.types;

public class UnsignedIntegerFourBytesDatatype extends AbstractDatatype<UnsignedIntegerFourBytes> {
    public UnsignedIntegerFourBytes valueOf(String str) throws InvalidValueException {
        if (str.equals("")) {
            return null;
        }
        try {
            return new UnsignedIntegerFourBytes(str);
        } catch (NumberFormatException e) {
            StringBuilder sb = new StringBuilder();
            sb.append("Can't convert string to number or not in range: ");
            sb.append(str);
            throw new InvalidValueException(sb.toString(), e);
        }
    }
}
