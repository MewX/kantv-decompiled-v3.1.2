package org.fourthline.cling.model.types;

import org.fourthline.cling.model.types.UnsignedVariableInteger.Bits;

public final class UnsignedIntegerFourBytes extends UnsignedVariableInteger {
    public UnsignedIntegerFourBytes(long j) throws NumberFormatException {
        super(j);
    }

    public UnsignedIntegerFourBytes(String str) throws NumberFormatException {
        super(str);
    }

    public Bits getBits() {
        return Bits.THIRTYTWO;
    }
}
