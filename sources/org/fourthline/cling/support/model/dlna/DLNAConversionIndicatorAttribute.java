package org.fourthline.cling.support.model.dlna;

public class DLNAConversionIndicatorAttribute extends DLNAAttribute<DLNAConversionIndicator> {
    public DLNAConversionIndicatorAttribute() {
        setValue(DLNAConversionIndicator.NONE);
    }

    public DLNAConversionIndicatorAttribute(DLNAConversionIndicator dLNAConversionIndicator) {
        setValue(dLNAConversionIndicator);
    }

    public void setString(String str, String str2) throws InvalidDLNAProtocolAttributeException {
        DLNAConversionIndicator dLNAConversionIndicator;
        try {
            dLNAConversionIndicator = DLNAConversionIndicator.valueOf(Integer.parseInt(str));
        } catch (NumberFormatException unused) {
            dLNAConversionIndicator = null;
        }
        if (dLNAConversionIndicator != null) {
            setValue(dLNAConversionIndicator);
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Can't parse DLNA play speed integer from: ");
        sb.append(str);
        throw new InvalidDLNAProtocolAttributeException(sb.toString());
    }

    public String getString() {
        return Integer.toString(((DLNAConversionIndicator) getValue()).getCode());
    }
}
