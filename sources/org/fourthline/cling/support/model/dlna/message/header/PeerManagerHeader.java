package org.fourthline.cling.support.model.dlna.message.header;

import org.fourthline.cling.model.ServiceReference;
import org.fourthline.cling.model.message.header.InvalidHeaderException;

public class PeerManagerHeader extends DLNAHeader<ServiceReference> {
    public void setString(String str) throws InvalidHeaderException {
        if (str.length() != 0) {
            try {
                ServiceReference serviceReference = new ServiceReference(str);
                if (!(serviceReference.getUdn() == null || serviceReference.getServiceId() == null)) {
                    setValue(serviceReference);
                    return;
                }
            } catch (Exception unused) {
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Invalid PeerManager header value: ");
        sb.append(str);
        throw new InvalidHeaderException(sb.toString());
    }

    public String getString() {
        return ((ServiceReference) getValue()).toString();
    }
}
