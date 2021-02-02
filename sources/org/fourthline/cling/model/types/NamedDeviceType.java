package org.fourthline.cling.model.types;

public class NamedDeviceType {
    private DeviceType deviceType;
    private UDN udn;

    public NamedDeviceType(UDN udn2, DeviceType deviceType2) {
        this.udn = udn2;
        this.deviceType = deviceType2;
    }

    public UDN getUdn() {
        return this.udn;
    }

    public DeviceType getDeviceType() {
        return this.deviceType;
    }

    public static NamedDeviceType valueOf(String str) throws InvalidValueException {
        String[] split = str.split("::");
        if (split.length == 2) {
            try {
                return new NamedDeviceType(UDN.valueOf(split[0]), DeviceType.valueOf(split[1]));
            } catch (Exception unused) {
                StringBuilder sb = new StringBuilder();
                sb.append("Can't parse UDN: ");
                sb.append(split[0]);
                throw new InvalidValueException(sb.toString());
            }
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Can't parse UDN::DeviceType from: ");
            sb2.append(str);
            throw new InvalidValueException(sb2.toString());
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getUdn().toString());
        sb.append("::");
        sb.append(getDeviceType().toString());
        return sb.toString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof NamedDeviceType)) {
            return false;
        }
        NamedDeviceType namedDeviceType = (NamedDeviceType) obj;
        return this.deviceType.equals(namedDeviceType.deviceType) && this.udn.equals(namedDeviceType.udn);
    }

    public int hashCode() {
        return (this.udn.hashCode() * 31) + this.deviceType.hashCode();
    }
}
