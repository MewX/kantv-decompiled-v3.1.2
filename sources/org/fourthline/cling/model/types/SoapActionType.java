package org.fourthline.cling.model.types;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.fourthline.cling.model.ModelUtil;

public class SoapActionType {
    public static final String MAGIC_CONTROL_NS = "schemas-upnp-org";
    public static final String MAGIC_CONTROL_TYPE = "control-1-0";
    public static final Pattern PATTERN = Pattern.compile("urn:([a-zA-Z0-9\\-\\.]+):service:([a-zA-Z_0-9\\-]{1,64}):([0-9]+)#([a-zA-Z0-9^-_\\p{L}\\p{N}]{1}[a-zA-Z0-9^-_\\.\\\\p{L}\\\\p{N}\\p{Mc}\\p{Sk}]*)");
    public static final Pattern PATTERN_MAGIC_CONTROL = Pattern.compile("urn:schemas-upnp-org:control-1-0#([a-zA-Z0-9^-_\\p{L}\\p{N}]{1}[a-zA-Z0-9^-_\\.\\\\p{L}\\\\p{N}\\p{Mc}\\p{Sk}]*)");
    private String actionName;
    private String namespace;
    private String type;
    private Integer version;

    public SoapActionType(ServiceType serviceType, String str) {
        this(serviceType.getNamespace(), serviceType.getType(), Integer.valueOf(serviceType.getVersion()), str);
    }

    public SoapActionType(String str, String str2, Integer num, String str3) {
        this.namespace = str;
        this.type = str2;
        this.version = num;
        this.actionName = str3;
        if (str3 != null && !ModelUtil.isValidUDAName(str3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Action name contains illegal characters: ");
            sb.append(str3);
            throw new IllegalArgumentException(sb.toString());
        }
    }

    public String getActionName() {
        return this.actionName;
    }

    public String getNamespace() {
        return this.namespace;
    }

    public String getType() {
        return this.type;
    }

    public Integer getVersion() {
        return this.version;
    }

    public static SoapActionType valueOf(String str) throws InvalidValueException {
        Matcher matcher = PATTERN_MAGIC_CONTROL.matcher(str);
        try {
            if (matcher.matches()) {
                return new SoapActionType("schemas-upnp-org", MAGIC_CONTROL_TYPE, null, matcher.group(1));
            }
            Matcher matcher2 = PATTERN.matcher(str);
            if (matcher2.matches()) {
                return new SoapActionType(matcher2.group(1), matcher2.group(2), Integer.valueOf(matcher2.group(3)), matcher2.group(4));
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Can't parse action type string (namespace/type/version#actionName): ");
            sb.append(str);
            throw new InvalidValueException(sb.toString());
        } catch (RuntimeException e) {
            throw new InvalidValueException(String.format("Can't parse action type string (namespace/type/version#actionName) '%s': %s", new Object[]{str, e.toString()}));
        }
    }

    public ServiceType getServiceType() {
        Integer num = this.version;
        if (num == null) {
            return null;
        }
        return new ServiceType(this.namespace, this.type, num.intValue());
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getTypeString());
        sb.append("#");
        sb.append(getActionName());
        return sb.toString();
    }

    public String getTypeString() {
        String str = ":";
        String str2 = "urn:";
        if (this.version == null) {
            StringBuilder sb = new StringBuilder();
            sb.append(str2);
            sb.append(getNamespace());
            sb.append(str);
            sb.append(getType());
            return sb.toString();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str2);
        sb2.append(getNamespace());
        sb2.append(":service:");
        sb2.append(getType());
        sb2.append(str);
        sb2.append(getVersion());
        return sb2.toString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof SoapActionType)) {
            return false;
        }
        SoapActionType soapActionType = (SoapActionType) obj;
        if (!this.actionName.equals(soapActionType.actionName) || !this.namespace.equals(soapActionType.namespace) || !this.type.equals(soapActionType.type)) {
            return false;
        }
        Integer num = this.version;
        return num == null ? soapActionType.version == null : num.equals(soapActionType.version);
    }

    public int hashCode() {
        int hashCode = ((((this.namespace.hashCode() * 31) + this.type.hashCode()) * 31) + this.actionName.hashCode()) * 31;
        Integer num = this.version;
        return hashCode + (num != null ? num.hashCode() : 0);
    }
}
