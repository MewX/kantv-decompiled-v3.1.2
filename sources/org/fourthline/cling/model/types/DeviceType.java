package org.fourthline.cling.model.types;

import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.fourthline.cling.model.Constants;

public class DeviceType {
    public static final Pattern PATTERN = Pattern.compile("urn:([a-zA-Z0-9\\-\\.]+):device:([a-zA-Z_0-9\\-]{1,64}):([0-9]+).*");
    public static final String UNKNOWN = "UNKNOWN";
    private static final Logger log = Logger.getLogger(DeviceType.class.getName());
    private String namespace;
    private String type;
    private int version;

    public DeviceType(String str, String str2) {
        this(str, str2, 1);
    }

    public DeviceType(String str, String str2, int i) {
        this.version = 1;
        if (str == null || str.matches(Constants.REGEX_NAMESPACE)) {
            this.namespace = str;
            if (str2 == null || str2.matches(Constants.REGEX_TYPE)) {
                this.type = str2;
                this.version = i;
                return;
            }
            throw new IllegalArgumentException("Device type suffix too long (64) or contains illegal characters");
        }
        throw new IllegalArgumentException("Device type namespace contains illegal characters");
    }

    public String getNamespace() {
        return this.namespace;
    }

    public String getType() {
        return this.type;
    }

    public int getVersion() {
        return this.version;
    }

    public static DeviceType valueOf(String str) throws InvalidValueException {
        UDADeviceType uDADeviceType;
        String replaceAll = str.replaceAll("\\s", "");
        try {
            uDADeviceType = UDADeviceType.valueOf(replaceAll);
        } catch (Exception unused) {
            uDADeviceType = null;
        }
        if (uDADeviceType != null) {
            return uDADeviceType;
        }
        try {
            Matcher matcher = PATTERN.matcher(replaceAll);
            if (matcher.matches()) {
                return new DeviceType(matcher.group(1), matcher.group(2), Integer.valueOf(matcher.group(3)).intValue());
            }
            Matcher matcher2 = Pattern.compile("urn:([a-zA-Z0-9\\-\\.]+):device::([0-9]+).*").matcher(replaceAll);
            if (!matcher2.matches() || matcher2.groupCount() < 2) {
                Matcher matcher3 = Pattern.compile("urn:([a-zA-Z0-9\\-\\.]+):device:(.+?):([0-9]+).*").matcher(replaceAll);
                if (!matcher3.matches() || matcher3.groupCount() < 3) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Can't parse device type string (namespace/type/version): ");
                    sb.append(replaceAll);
                    throw new InvalidValueException(sb.toString());
                }
                String replaceAll2 = matcher3.group(2).replaceAll("[^a-zA-Z_0-9\\-]", "-");
                Logger logger = log;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("UPnP specification violation, replacing invalid device type token '");
                sb2.append(matcher3.group(2));
                sb2.append("' with: ");
                sb2.append(replaceAll2);
                logger.warning(sb2.toString());
                return new DeviceType(matcher3.group(1), replaceAll2, Integer.valueOf(matcher3.group(3)).intValue());
            }
            Logger logger2 = log;
            StringBuilder sb3 = new StringBuilder();
            sb3.append("UPnP specification violation, no device type token, defaulting to UNKNOWN: ");
            sb3.append(replaceAll);
            logger2.warning(sb3.toString());
            return new DeviceType(matcher2.group(1), "UNKNOWN", Integer.valueOf(matcher2.group(2)).intValue());
        } catch (RuntimeException e) {
            throw new InvalidValueException(String.format("Can't parse device type string (namespace/type/version) '%s': %s", new Object[]{replaceAll, e.toString()}));
        }
    }

    public boolean implementsVersion(DeviceType deviceType) {
        if (this.namespace.equals(deviceType.namespace) && this.type.equals(deviceType.type) && this.version >= deviceType.version) {
            return true;
        }
        return false;
    }

    public String getDisplayString() {
        return getType();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("urn:");
        sb.append(getNamespace());
        sb.append(":device:");
        sb.append(getType());
        sb.append(":");
        sb.append(getVersion());
        return sb.toString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof DeviceType)) {
            return false;
        }
        DeviceType deviceType = (DeviceType) obj;
        return this.version == deviceType.version && this.namespace.equals(deviceType.namespace) && this.type.equals(deviceType.type);
    }

    public int hashCode() {
        return (((this.namespace.hashCode() * 31) + this.type.hashCode()) * 31) + this.version;
    }
}
