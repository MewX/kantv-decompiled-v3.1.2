package org.fourthline.cling.support.model.dlna;

public class DLNAProfileAttribute extends DLNAAttribute<DLNAProfiles> {
    public DLNAProfileAttribute() {
        setValue(DLNAProfiles.NONE);
    }

    public DLNAProfileAttribute(DLNAProfiles dLNAProfiles) {
        setValue(dLNAProfiles);
    }

    public void setString(String str, String str2) throws InvalidDLNAProtocolAttributeException {
        DLNAProfiles valueOf = DLNAProfiles.valueOf(str, str2);
        if (valueOf != null) {
            setValue(valueOf);
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Can't parse DLNA profile from: ");
        sb.append(str);
        throw new InvalidDLNAProtocolAttributeException(sb.toString());
    }

    public String getString() {
        return ((DLNAProfiles) getValue()).getCode();
    }
}
