package org.fourthline.cling.model.meta;

import java.util.ArrayList;
import java.util.List;
import org.fourthline.cling.model.Validatable;
import org.fourthline.cling.model.ValidationError;
import org.fourthline.cling.model.types.UDN;

public class DeviceIdentity implements Validatable {
    private final Integer maxAgeSeconds;
    private final UDN udn;

    public DeviceIdentity(UDN udn2, DeviceIdentity deviceIdentity) {
        this.udn = udn2;
        this.maxAgeSeconds = deviceIdentity.getMaxAgeSeconds();
    }

    public DeviceIdentity(UDN udn2) {
        this.udn = udn2;
        this.maxAgeSeconds = Integer.valueOf(1800);
    }

    public DeviceIdentity(UDN udn2, Integer num) {
        this.udn = udn2;
        this.maxAgeSeconds = num;
    }

    public UDN getUdn() {
        return this.udn;
    }

    public Integer getMaxAgeSeconds() {
        return this.maxAgeSeconds;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.udn.equals(((DeviceIdentity) obj).udn);
    }

    public int hashCode() {
        return this.udn.hashCode();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        sb.append(getClass().getSimpleName());
        sb.append(") UDN: ");
        sb.append(getUdn());
        return sb.toString();
    }

    public List<ValidationError> validate() {
        ArrayList arrayList = new ArrayList();
        if (getUdn() == null) {
            arrayList.add(new ValidationError(getClass(), "major", "Device has no UDN"));
        }
        return arrayList;
    }
}
