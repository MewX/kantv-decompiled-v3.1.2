package org.fourthline.cling.model.profile;

import org.fourthline.cling.model.message.UpnpHeaders;
import org.fourthline.cling.model.message.header.UpnpHeader;
import org.fourthline.cling.model.message.header.UpnpHeader.Type;
import org.fourthline.cling.model.message.header.UserAgentHeader;

public class ClientInfo {
    protected final UpnpHeaders requestHeaders;

    public ClientInfo() {
        this(new UpnpHeaders());
    }

    public ClientInfo(UpnpHeaders upnpHeaders) {
        this.requestHeaders = upnpHeaders;
    }

    public UpnpHeaders getRequestHeaders() {
        return this.requestHeaders;
    }

    public String getRequestUserAgent() {
        return getRequestHeaders().getFirstHeaderString(Type.USER_AGENT);
    }

    public void setRequestUserAgent(String str) {
        getRequestHeaders().add(Type.USER_AGENT, (UpnpHeader) new UserAgentHeader(str));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        sb.append(getClass().getSimpleName());
        sb.append(") User-Agent: ");
        sb.append(getRequestUserAgent());
        return sb.toString();
    }
}
