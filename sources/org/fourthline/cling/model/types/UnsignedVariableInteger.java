package org.fourthline.cling.model.types;

import java.util.logging.Logger;

public abstract class UnsignedVariableInteger {
    private static final Logger log = Logger.getLogger(UnsignedVariableInteger.class.getName());
    protected long value;

    public enum Bits {
        EIGHT(255),
        SIXTEEN(65535),
        TWENTYFOUR(16777215),
        THIRTYTWO(4294967295L);
        
        private long maxValue;

        private Bits(long j) {
            this.maxValue = j;
        }

        public long getMaxValue() {
            return this.maxValue;
        }
    }

    public abstract Bits getBits();

    public int getMinValue() {
        return 0;
    }

    protected UnsignedVariableInteger() {
    }

    public UnsignedVariableInteger(long j) throws NumberFormatException {
        setValue(j);
    }

    public UnsignedVariableInteger(String str) throws NumberFormatException {
        if (str.startsWith("-")) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Invalid negative integer value '");
            sb.append(str);
            sb.append("', assuming value 0!");
            logger.warning(sb.toString());
            str = "0";
        }
        setValue(Long.parseLong(str.trim()));
    }

    /* access modifiers changed from: protected */
    public UnsignedVariableInteger setValue(long j) {
        isInRange(j);
        this.value = j;
        return this;
    }

    public Long getValue() {
        return Long.valueOf(this.value);
    }

    public void isInRange(long j) throws NumberFormatException {
        if (j < ((long) getMinValue()) || j > getBits().getMaxValue()) {
            StringBuilder sb = new StringBuilder();
            sb.append("Value must be between ");
            sb.append(getMinValue());
            sb.append(" and ");
            sb.append(getBits().getMaxValue());
            sb.append(": ");
            sb.append(j);
            throw new NumberFormatException(sb.toString());
        }
    }

    public UnsignedVariableInteger increment(boolean z) {
        long j = 1;
        if (this.value + 1 > getBits().getMaxValue()) {
            if (!z) {
                j = 0;
            }
            this.value = j;
        } else {
            this.value++;
        }
        return this;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.value == ((UnsignedVariableInteger) obj).value;
    }

    public int hashCode() {
        long j = this.value;
        return (int) (j ^ (j >>> 32));
    }

    public String toString() {
        return Long.toString(this.value);
    }
}
