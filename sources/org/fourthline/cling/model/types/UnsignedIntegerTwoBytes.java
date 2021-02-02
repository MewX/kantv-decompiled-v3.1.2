package org.fourthline.cling.model.types;

import org.fourthline.cling.model.types.UnsignedVariableInteger.Bits;

public final class UnsignedIntegerTwoBytes extends UnsignedVariableInteger {
    public UnsignedIntegerTwoBytes(long j) throws NumberFormatException {
        super(j);
    }

    public UnsignedIntegerTwoBytes(String str) throws NumberFormatException {
        super(str);
    }

    public Bits getBits() {
        return Bits.SIXTEEN;
    }
}
