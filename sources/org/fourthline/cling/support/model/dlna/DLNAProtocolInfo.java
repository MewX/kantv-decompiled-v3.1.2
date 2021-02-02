package org.fourthline.cling.support.model.dlna;

import java.util.EnumMap;
import java.util.Map;
import org.fourthline.cling.model.types.InvalidValueException;
import org.fourthline.cling.support.model.Protocol;
import org.fourthline.cling.support.model.ProtocolInfo;
import org.fourthline.cling.support.model.dlna.DLNAAttribute.Type;
import org.seamless.util.MimeType;

public class DLNAProtocolInfo extends ProtocolInfo {
    protected final Map<Type, DLNAAttribute> attributes;

    public DLNAProtocolInfo(String str) throws InvalidValueException {
        super(str);
        this.attributes = new EnumMap(Type.class);
        parseAdditionalInfo();
    }

    public DLNAProtocolInfo(MimeType mimeType) {
        super(mimeType);
        this.attributes = new EnumMap(Type.class);
    }

    public DLNAProtocolInfo(DLNAProfiles dLNAProfiles) {
        super(MimeType.valueOf(dLNAProfiles.getContentFormat()));
        this.attributes = new EnumMap(Type.class);
        this.attributes.put(Type.DLNA_ORG_PN, new DLNAProfileAttribute(dLNAProfiles));
        this.additionalInfo = getAttributesString();
    }

    public DLNAProtocolInfo(DLNAProfiles dLNAProfiles, EnumMap<Type, DLNAAttribute> enumMap) {
        super(MimeType.valueOf(dLNAProfiles.getContentFormat()));
        this.attributes = new EnumMap(Type.class);
        this.attributes.putAll(enumMap);
        this.attributes.put(Type.DLNA_ORG_PN, new DLNAProfileAttribute(dLNAProfiles));
        this.additionalInfo = getAttributesString();
    }

    public DLNAProtocolInfo(Protocol protocol, String str, String str2, String str3) {
        super(protocol, str, str2, str3);
        this.attributes = new EnumMap(Type.class);
        parseAdditionalInfo();
    }

    public DLNAProtocolInfo(Protocol protocol, String str, String str2, EnumMap<Type, DLNAAttribute> enumMap) {
        super(protocol, str, str2, "");
        this.attributes = new EnumMap(Type.class);
        this.attributes.putAll(enumMap);
        this.additionalInfo = getAttributesString();
    }

    public DLNAProtocolInfo(ProtocolInfo protocolInfo) {
        this(protocolInfo.getProtocol(), protocolInfo.getNetwork(), protocolInfo.getContentFormat(), protocolInfo.getAdditionalInfo());
    }

    public boolean contains(Type type) {
        return this.attributes.containsKey(type);
    }

    public DLNAAttribute getAttribute(Type type) {
        return (DLNAAttribute) this.attributes.get(type);
    }

    public Map<Type, DLNAAttribute> getAttributes() {
        return this.attributes;
    }

    /* access modifiers changed from: protected */
    public String getAttributesString() {
        Type[] values;
        String str = "";
        String str2 = str;
        for (Type type : Type.values()) {
            String string = this.attributes.containsKey(type) ? ((DLNAAttribute) this.attributes.get(type)).getString() : null;
            if (!(string == null || string.length() == 0)) {
                StringBuilder sb = new StringBuilder();
                sb.append(str2);
                sb.append(str2.length() == 0 ? str : ";");
                sb.append(type.getAttributeName());
                sb.append("=");
                sb.append(string);
                str2 = sb.toString();
            }
        }
        return str2;
    }

    /* access modifiers changed from: protected */
    public void parseAdditionalInfo() {
        if (this.additionalInfo != null) {
            for (String split : this.additionalInfo.split(";")) {
                String[] split2 = split.split("=");
                if (split2.length == 2) {
                    Type valueOfAttributeName = Type.valueOfAttributeName(split2[0]);
                    if (valueOfAttributeName != null) {
                        this.attributes.put(valueOfAttributeName, DLNAAttribute.newInstance(valueOfAttributeName, split2[1], getContentFormat()));
                    }
                }
            }
        }
    }
}
