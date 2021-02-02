package org.fourthline.cling.model.message.header;

import org.fourthline.cling.model.Constants;
import org.fourthline.cling.model.types.HostPort;

public class HostHeader extends UpnpHeader<HostPort> {
    String group = Constants.IPV4_UPNP_MULTICAST_GROUP;
    int port = 1900;

    public HostHeader() {
        setValue(new HostPort(this.group, this.port));
    }

    public HostHeader(int i) {
        setValue(new HostPort(this.group, i));
    }

    public HostHeader(String str, int i) {
        setValue(new HostPort(str, i));
    }

    public void setString(String str) throws InvalidHeaderException {
        String str2 = ":";
        if (str.contains(str2)) {
            try {
                this.port = Integer.valueOf(str.substring(str.indexOf(str2) + 1)).intValue();
                this.group = str.substring(0, str.indexOf(str2));
                setValue(new HostPort(this.group, this.port));
            } catch (NumberFormatException e) {
                StringBuilder sb = new StringBuilder();
                sb.append("Invalid HOST header value, can't parse port: ");
                sb.append(str);
                sb.append(" - ");
                sb.append(e.getMessage());
                throw new InvalidHeaderException(sb.toString());
            }
        } else {
            this.group = str;
            setValue(new HostPort(this.group, this.port));
        }
    }

    public String getString() {
        return ((HostPort) getValue()).toString();
    }
}
