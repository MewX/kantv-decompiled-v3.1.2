package org.fourthline.cling.model.meta;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;
import org.fourthline.cling.model.Validatable;
import org.fourthline.cling.model.ValidationError;

public class StateVariableAllowedValueRange implements Validatable {
    private static final Logger log = Logger.getLogger(StateVariableAllowedValueRange.class.getName());
    private final long maximum;
    private final long minimum;
    private final long step;

    public StateVariableAllowedValueRange(long j, long j2) {
        this(j, j2, 1);
    }

    public StateVariableAllowedValueRange(long j, long j2, long j3) {
        if (j > j2) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("UPnP specification violation, allowed value range minimum '");
            sb.append(j);
            sb.append("' is greater than maximum '");
            sb.append(j2);
            sb.append("', switching values.");
            logger.warning(sb.toString());
            this.minimum = j2;
            this.maximum = j;
        } else {
            this.minimum = j;
            this.maximum = j2;
        }
        this.step = j3;
    }

    public long getMinimum() {
        return this.minimum;
    }

    public long getMaximum() {
        return this.maximum;
    }

    public long getStep() {
        return this.step;
    }

    public boolean isInRange(long j) {
        return j >= getMinimum() && j <= getMaximum() && j % this.step == 0;
    }

    public List<ValidationError> validate() {
        return new ArrayList();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Range Min: ");
        sb.append(getMinimum());
        sb.append(" Max: ");
        sb.append(getMaximum());
        sb.append(" Step: ");
        sb.append(getStep());
        return sb.toString();
    }
}
