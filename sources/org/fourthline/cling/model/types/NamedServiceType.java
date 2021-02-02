package org.fourthline.cling.model.types;

public class NamedServiceType {
    private ServiceType serviceType;
    private UDN udn;

    public NamedServiceType(UDN udn2, ServiceType serviceType2) {
        this.udn = udn2;
        this.serviceType = serviceType2;
    }

    public UDN getUdn() {
        return this.udn;
    }

    public ServiceType getServiceType() {
        return this.serviceType;
    }

    public static NamedServiceType valueOf(String str) throws InvalidValueException {
        String[] split = str.split("::");
        if (split.length == 2) {
            try {
                return new NamedServiceType(UDN.valueOf(split[0]), ServiceType.valueOf(split[1]));
            } catch (Exception unused) {
                StringBuilder sb = new StringBuilder();
                sb.append("Can't parse UDN: ");
                sb.append(split[0]);
                throw new InvalidValueException(sb.toString());
            }
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Can't parse UDN::ServiceType from: ");
            sb2.append(str);
            throw new InvalidValueException(sb2.toString());
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getUdn().toString());
        sb.append("::");
        sb.append(getServiceType().toString());
        return sb.toString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof NamedServiceType)) {
            return false;
        }
        NamedServiceType namedServiceType = (NamedServiceType) obj;
        return this.serviceType.equals(namedServiceType.serviceType) && this.udn.equals(namedServiceType.udn);
    }

    public int hashCode() {
        return (this.udn.hashCode() * 31) + this.serviceType.hashCode();
    }
}
