package org.fourthline.cling.model.types;

import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.fourthline.cling.model.Constants;

public class ServiceType {
    public static final Pattern BROKEN_PATTERN = Pattern.compile("urn:([a-zA-Z0-9\\-\\.]+):serviceId:([a-zA-Z_0-9\\-]{1,64}):([0-9]+).*");
    public static final Pattern PATTERN = Pattern.compile("urn:([a-zA-Z0-9\\-\\.]+):service:([a-zA-Z_0-9\\-]{1,64}):([0-9]+).*");
    private static final Logger log = Logger.getLogger(ServiceType.class.getName());
    private String namespace;
    private String type;
    private int version;

    public ServiceType(String str, String str2) {
        this(str, str2, 1);
    }

    public ServiceType(String str, String str2, int i) {
        this.version = 1;
        if (str == null || str.matches(Constants.REGEX_NAMESPACE)) {
            this.namespace = str;
            if (str2 == null || str2.matches(Constants.REGEX_TYPE)) {
                this.type = str2;
                this.version = i;
                return;
            }
            throw new IllegalArgumentException("Service type suffix too long (64) or contains illegal characters");
        }
        throw new IllegalArgumentException("Service type namespace contains illegal characters");
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

    public static ServiceType valueOf(String str) throws InvalidValueException {
        if (str != null) {
            UDAServiceType uDAServiceType = null;
            String replaceAll = str.replaceAll("\\s", "");
            try {
                uDAServiceType = UDAServiceType.valueOf(replaceAll);
            } catch (Exception unused) {
            }
            if (uDAServiceType != null) {
                return uDAServiceType;
            }
            try {
                Matcher matcher = PATTERN.matcher(replaceAll);
                if (matcher.matches() && matcher.groupCount() >= 3) {
                    return new ServiceType(matcher.group(1), matcher.group(2), Integer.valueOf(matcher.group(3)).intValue());
                }
                Matcher matcher2 = BROKEN_PATTERN.matcher(replaceAll);
                if (matcher2.matches() && matcher2.groupCount() >= 3) {
                    return new ServiceType(matcher2.group(1), matcher2.group(2), Integer.valueOf(matcher2.group(3)).intValue());
                }
                Matcher matcher3 = Pattern.compile("urn:([a-zA-Z0-9\\-\\.]+):service:(.+?):([0-9]+).*").matcher(replaceAll);
                String str2 = "' with: ";
                String str3 = "UPnP specification violation, replacing invalid service type token '";
                String str4 = "-";
                String str5 = "[^a-zA-Z_0-9\\-]";
                if (matcher3.matches()) {
                    if (matcher3.groupCount() >= 3) {
                        String replaceAll2 = matcher3.group(2).replaceAll(str5, str4);
                        Logger logger = log;
                        StringBuilder sb = new StringBuilder();
                        sb.append(str3);
                        sb.append(matcher3.group(2));
                        sb.append(str2);
                        sb.append(replaceAll2);
                        logger.warning(sb.toString());
                        return new ServiceType(matcher3.group(1), replaceAll2, Integer.valueOf(matcher3.group(3)).intValue());
                    }
                }
                Matcher matcher4 = Pattern.compile("urn:([a-zA-Z0-9\\-\\.]+):serviceId:(.+?):([0-9]+).*").matcher(replaceAll);
                if (!matcher4.matches() || matcher4.groupCount() < 3) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Can't parse service type string (namespace/type/version): ");
                    sb2.append(replaceAll);
                    throw new InvalidValueException(sb2.toString());
                }
                String replaceAll3 = matcher4.group(2).replaceAll(str5, str4);
                Logger logger2 = log;
                StringBuilder sb3 = new StringBuilder();
                sb3.append(str3);
                sb3.append(matcher4.group(2));
                sb3.append(str2);
                sb3.append(replaceAll3);
                logger2.warning(sb3.toString());
                return new ServiceType(matcher4.group(1), replaceAll3, Integer.valueOf(matcher4.group(3)).intValue());
            } catch (RuntimeException e) {
                throw new InvalidValueException(String.format("Can't parse service type string (namespace/type/version) '%s': %s", new Object[]{replaceAll, e.toString()}));
            }
        } else {
            throw new InvalidValueException("Can't parse null string");
        }
    }

    public boolean implementsVersion(ServiceType serviceType) {
        if (serviceType != null && this.namespace.equals(serviceType.namespace) && this.type.equals(serviceType.type) && this.version >= serviceType.version) {
            return true;
        }
        return false;
    }

    public String toFriendlyString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getNamespace());
        String str = ":";
        sb.append(str);
        sb.append(getType());
        sb.append(str);
        sb.append(getVersion());
        return sb.toString();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("urn:");
        sb.append(getNamespace());
        sb.append(":service:");
        sb.append(getType());
        sb.append(":");
        sb.append(getVersion());
        return sb.toString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ServiceType)) {
            return false;
        }
        ServiceType serviceType = (ServiceType) obj;
        return this.version == serviceType.version && this.namespace.equals(serviceType.namespace) && this.type.equals(serviceType.type);
    }

    public int hashCode() {
        return (((this.namespace.hashCode() * 31) + this.type.hashCode()) * 31) + this.version;
    }
}
