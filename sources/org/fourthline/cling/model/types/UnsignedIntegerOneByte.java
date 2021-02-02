package org.fourthline.cling.model.types;

import org.fourthline.cling.model.types.UnsignedVariableInteger.Bits;

public final class UnsignedIntegerOneByte extends UnsignedVariableInteger {
    public UnsignedIntegerOneByte(long j) throws NumberFormatException {
        super(j);
    }

    public UnsignedIntegerOneByte(String str) throws NumberFormatException {
        super(str);
    }

    public Bits getBits() {
        return Bits.EIGHT;
    }
}
