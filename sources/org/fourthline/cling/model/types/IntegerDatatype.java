package org.fourthline.cling.model.types;

import com.avos.avoscloud.AVException;
import javax.jmdns.impl.constants.DNSRecordClass;

public class IntegerDatatype extends AbstractDatatype<Integer> {
    private int byteSize;

    public IntegerDatatype(int i) {
        this.byteSize = i;
    }

    public boolean isHandlingJavaType(Class cls) {
        return cls == Integer.TYPE || Integer.class.isAssignableFrom(cls);
    }

    public Integer valueOf(String str) throws InvalidValueException {
        if (str.equals("")) {
            return null;
        }
        try {
            Integer valueOf = Integer.valueOf(Integer.parseInt(str.trim()));
            if (isValid(valueOf)) {
                return valueOf;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Not a ");
            sb.append(getByteSize());
            sb.append(" byte(s) integer: ");
            sb.append(str);
            throw new InvalidValueException(sb.toString());
        } catch (NumberFormatException e) {
            if (str.equals("NOT_IMPLEMENTED")) {
                return Integer.valueOf(getMaxValue());
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Can't convert string to number: ");
            sb2.append(str);
            throw new InvalidValueException(sb2.toString(), e);
        }
    }

    public boolean isValid(Integer num) {
        return num == null || (num.intValue() >= getMinValue() && num.intValue() <= getMaxValue());
    }

    public int getMinValue() {
        int byteSize2 = getByteSize();
        if (byteSize2 == 1) {
            return -128;
        }
        if (byteSize2 == 2) {
            return -32768;
        }
        if (byteSize2 == 4) {
            return Integer.MIN_VALUE;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Invalid integer byte size: ");
        sb.append(getByteSize());
        throw new IllegalArgumentException(sb.toString());
    }

    public int getMaxValue() {
        int byteSize2 = getByteSize();
        if (byteSize2 == 1) {
            return AVException.INVALID_PHONE_NUMBER;
        }
        if (byteSize2 == 2) {
            return DNSRecordClass.CLASS_MASK;
        }
        if (byteSize2 == 4) {
            return Integer.MAX_VALUE;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Invalid integer byte size: ");
        sb.append(getByteSize());
        throw new IllegalArgumentException(sb.toString());
    }

    public int getByteSize() {
        return this.byteSize;
    }
}
