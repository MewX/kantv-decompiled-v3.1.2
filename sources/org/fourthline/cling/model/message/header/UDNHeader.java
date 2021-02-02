package org.fourthline.cling.model.message.header;

import org.fourthline.cling.model.types.UDN;

public class UDNHeader extends UpnpHeader<UDN> {
    public UDNHeader() {
    }

    public UDNHeader(UDN udn) {
        setValue(udn);
    }

    public void setString(String str) throws InvalidHeaderException {
        if (!str.startsWith("uuid:")) {
            StringBuilder sb = new StringBuilder();
            sb.append("Invalid UDA header value, must start with 'uuid:': ");
            sb.append(str);
            throw new InvalidHeaderException(sb.toString());
        } else if (!str.contains("::urn")) {
            setValue(new UDN(str.substring(5)));
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Invalid UDA header value, must not contain '::urn': ");
            sb2.append(str);
            throw new InvalidHeaderException(sb2.toString());
        }
    }

    public String getString() {
        return ((UDN) getValue()).toString();
    }
}
