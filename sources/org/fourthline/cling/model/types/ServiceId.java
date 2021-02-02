package org.fourthline.cling.model.types;

import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.fourthline.cling.model.Constants;

public class ServiceId {
    public static final Pattern BROKEN_PATTERN = Pattern.compile("urn:([a-zA-Z0-9\\-\\.]+):service:([a-zA-Z_0-9\\-:\\.]{1,64})");
    public static final Pattern PATTERN = Pattern.compile("urn:([a-zA-Z0-9\\-\\.]+):serviceId:([a-zA-Z_0-9\\-:\\.]{1,64})");
    public static final String UNKNOWN = "UNKNOWN";
    private static final Logger log = Logger.getLogger(ServiceId.class.getName());
    private String id;
    private String namespace;

    public ServiceId(String str, String str2) {
        if (str == null || str.matches(Constants.REGEX_NAMESPACE)) {
            this.namespace = str;
            if (str2 == null || str2.matches(Constants.REGEX_ID)) {
                this.id = str2;
                return;
            }
            throw new IllegalArgumentException("Service ID suffix too long (64) or contains illegal characters");
        }
        throw new IllegalArgumentException("Service ID namespace contains illegal characters");
    }

    public String getNamespace() {
        return this.namespace;
    }

    public String getId() {
        return this.id;
    }

    public static ServiceId valueOf(String str) throws InvalidValueException {
        UDAServiceId uDAServiceId;
        try {
            uDAServiceId = UDAServiceId.valueOf(str);
        } catch (Exception unused) {
            uDAServiceId = null;
        }
        if (uDAServiceId != null) {
            return uDAServiceId;
        }
        Matcher matcher = PATTERN.matcher(str);
        if (matcher.matches() && matcher.groupCount() >= 2) {
            return new ServiceId(matcher.group(1), matcher.group(2));
        }
        Matcher matcher2 = BROKEN_PATTERN.matcher(str);
        if (matcher2.matches() && matcher2.groupCount() >= 2) {
            return new ServiceId(matcher2.group(1), matcher2.group(2));
        }
        Matcher matcher3 = Pattern.compile("urn:([a-zA-Z0-9\\-\\.]+):serviceId:").matcher(str);
        if (!matcher3.matches() || matcher3.groupCount() < 1) {
            String[] split = str.split("[:]");
            if (split.length == 4) {
                Logger logger = log;
                StringBuilder sb = new StringBuilder();
                sb.append("UPnP specification violation, trying a simple colon-split of: ");
                sb.append(str);
                logger.warning(sb.toString());
                return new ServiceId(split[1], split[3]);
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Can't parse service ID string (namespace/id): ");
            sb2.append(str);
            throw new InvalidValueException(sb2.toString());
        }
        Logger logger2 = log;
        StringBuilder sb3 = new StringBuilder();
        sb3.append("UPnP specification violation, no service ID token, defaulting to UNKNOWN: ");
        sb3.append(str);
        logger2.warning(sb3.toString());
        return new ServiceId(matcher3.group(1), "UNKNOWN");
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("urn:");
        sb.append(getNamespace());
        sb.append(":serviceId:");
        sb.append(getId());
        return sb.toString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ServiceId)) {
            return false;
        }
        ServiceId serviceId = (ServiceId) obj;
        return this.id.equals(serviceId.id) && this.namespace.equals(serviceId.namespace);
    }

    public int hashCode() {
        return (this.namespace.hashCode() * 31) + this.id.hashCode();
    }
}
