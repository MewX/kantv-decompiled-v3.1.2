package org.fourthline.cling.support.model.dlna;

import java.util.EnumSet;
import java.util.Iterator;
import java.util.Locale;

public class DLNAFlagsAttribute extends DLNAAttribute<EnumSet<DLNAFlags>> {
    public DLNAFlagsAttribute() {
        setValue(EnumSet.noneOf(DLNAFlags.class));
    }

    public DLNAFlagsAttribute(DLNAFlags... dLNAFlagsArr) {
        if (dLNAFlagsArr != null && dLNAFlagsArr.length > 0) {
            DLNAFlags dLNAFlags = dLNAFlagsArr[0];
            if (dLNAFlagsArr.length > 1) {
                System.arraycopy(dLNAFlagsArr, 1, dLNAFlagsArr, 0, dLNAFlagsArr.length - 1);
                setValue(EnumSet.of(dLNAFlags, dLNAFlagsArr));
                return;
            }
            setValue(EnumSet.of(dLNAFlags));
        }
    }

    public void setString(String str, String str2) throws InvalidDLNAProtocolAttributeException {
        DLNAFlags[] values;
        EnumSet noneOf = EnumSet.noneOf(DLNAFlags.class);
        try {
            int parseInt = Integer.parseInt(str.substring(0, str.length() - 24), 16);
            for (DLNAFlags dLNAFlags : DLNAFlags.values()) {
                if (dLNAFlags.getCode() == (dLNAFlags.getCode() & parseInt)) {
                    noneOf.add(dLNAFlags);
                }
            }
        } catch (Exception unused) {
        }
        if (!noneOf.isEmpty()) {
            setValue(noneOf);
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Can't parse DLNA flags integer from: ");
        sb.append(str);
        throw new InvalidDLNAProtocolAttributeException(sb.toString());
    }

    public String getString() {
        Iterator it = ((EnumSet) getValue()).iterator();
        int i = 0;
        while (it.hasNext()) {
            i |= ((DLNAFlags) it.next()).getCode();
        }
        return String.format(Locale.ROOT, "%08x%024x", new Object[]{Integer.valueOf(i), Integer.valueOf(0)});
    }
}
