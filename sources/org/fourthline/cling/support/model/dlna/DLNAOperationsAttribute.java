package org.fourthline.cling.support.model.dlna;

import java.util.EnumSet;
import java.util.Iterator;
import java.util.Locale;

public class DLNAOperationsAttribute extends DLNAAttribute<EnumSet<DLNAOperations>> {
    public DLNAOperationsAttribute() {
        setValue(EnumSet.of(DLNAOperations.NONE));
    }

    public DLNAOperationsAttribute(DLNAOperations... dLNAOperationsArr) {
        if (dLNAOperationsArr != null && dLNAOperationsArr.length > 0) {
            DLNAOperations dLNAOperations = dLNAOperationsArr[0];
            if (dLNAOperationsArr.length > 1) {
                System.arraycopy(dLNAOperationsArr, 1, dLNAOperationsArr, 0, dLNAOperationsArr.length - 1);
                setValue(EnumSet.of(dLNAOperations, dLNAOperationsArr));
                return;
            }
            setValue(EnumSet.of(dLNAOperations));
        }
    }

    public void setString(String str, String str2) throws InvalidDLNAProtocolAttributeException {
        DLNAOperations[] values;
        EnumSet noneOf = EnumSet.noneOf(DLNAOperations.class);
        try {
            int parseInt = Integer.parseInt(str, 16);
            for (DLNAOperations dLNAOperations : DLNAOperations.values()) {
                int code = dLNAOperations.getCode() & parseInt;
                if (dLNAOperations != DLNAOperations.NONE && dLNAOperations.getCode() == code) {
                    noneOf.add(dLNAOperations);
                }
            }
        } catch (NumberFormatException unused) {
        }
        if (!noneOf.isEmpty()) {
            setValue(noneOf);
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Can't parse DLNA operations integer from: ");
        sb.append(str);
        throw new InvalidDLNAProtocolAttributeException(sb.toString());
    }

    public String getString() {
        int code = DLNAOperations.NONE.getCode();
        Iterator it = ((EnumSet) getValue()).iterator();
        while (it.hasNext()) {
            code |= ((DLNAOperations) it.next()).getCode();
        }
        return String.format(Locale.ROOT, "%02x", new Object[]{Integer.valueOf(code)});
    }
}
