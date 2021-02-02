package org.fourthline.cling.model.message.header;

import java.net.URI;
import org.fourthline.cling.model.types.SoapActionType;

public class SoapActionHeader extends UpnpHeader<SoapActionType> {
    public SoapActionHeader() {
    }

    public SoapActionHeader(URI uri) {
        setValue(SoapActionType.valueOf(uri.toString()));
    }

    public SoapActionHeader(SoapActionType soapActionType) {
        setValue(soapActionType);
    }

    public SoapActionHeader(String str) throws InvalidHeaderException {
        setString(str);
    }

    public void setString(String str) throws InvalidHeaderException {
        String str2 = "\"";
        try {
            if (!str.startsWith(str2)) {
                if (str.endsWith(str2)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Invalid SOAP action header, must be enclosed in doublequotes:");
                    sb.append(str);
                    throw new InvalidHeaderException(sb.toString());
                }
            }
            setValue(SoapActionType.valueOf(str.substring(1, str.length() - 1)));
        } catch (RuntimeException e) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Invalid SOAP action header value, ");
            sb2.append(e.getMessage());
            throw new InvalidHeaderException(sb2.toString());
        }
    }

    public String getString() {
        StringBuilder sb = new StringBuilder();
        String str = "\"";
        sb.append(str);
        sb.append(((SoapActionType) getValue()).toString());
        sb.append(str);
        return sb.toString();
    }
}
