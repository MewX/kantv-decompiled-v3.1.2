package org.fourthline.cling.support.model;

import org.fourthline.cling.model.types.InvalidValueException;
import org.seamless.util.MimeType;

public class ProtocolInfo {
    public static final String WILDCARD = "*";
    protected String additionalInfo;
    protected String contentFormat;
    protected String network;
    protected Protocol protocol = Protocol.ALL;

    public ProtocolInfo(String str) throws InvalidValueException {
        String str2 = "*";
        this.network = str2;
        this.contentFormat = str2;
        this.additionalInfo = str2;
        if (str != null) {
            String trim = str.trim();
            String[] split = trim.split(":");
            if (split.length == 4) {
                this.protocol = Protocol.value(split[0]);
                this.network = split[1];
                this.contentFormat = split[2];
                this.additionalInfo = split[3];
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Can't parse ProtocolInfo string: ");
            sb.append(trim);
            throw new InvalidValueException(sb.toString());
        }
        throw new NullPointerException();
    }

    public ProtocolInfo(MimeType mimeType) {
        String str = "*";
        this.network = str;
        this.contentFormat = str;
        this.additionalInfo = str;
        this.protocol = Protocol.HTTP_GET;
        this.contentFormat = mimeType.toString();
    }

    public ProtocolInfo(Protocol protocol2, String str, String str2, String str3) {
        String str4 = "*";
        this.network = str4;
        this.contentFormat = str4;
        this.additionalInfo = str4;
        this.protocol = protocol2;
        this.network = str;
        this.contentFormat = str2;
        this.additionalInfo = str3;
    }

    public Protocol getProtocol() {
        return this.protocol;
    }

    public String getNetwork() {
        return this.network;
    }

    public String getContentFormat() {
        return this.contentFormat;
    }

    public MimeType getContentFormatMimeType() throws IllegalArgumentException {
        return MimeType.valueOf(this.contentFormat);
    }

    public String getAdditionalInfo() {
        return this.additionalInfo;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ProtocolInfo protocolInfo = (ProtocolInfo) obj;
        return this.additionalInfo.equals(protocolInfo.additionalInfo) && this.contentFormat.equals(protocolInfo.contentFormat) && this.network.equals(protocolInfo.network) && this.protocol == protocolInfo.protocol;
    }

    public int hashCode() {
        return (((((this.protocol.hashCode() * 31) + this.network.hashCode()) * 31) + this.contentFormat.hashCode()) * 31) + this.additionalInfo.hashCode();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.protocol.toString());
        String str = ":";
        sb.append(str);
        sb.append(this.network);
        sb.append(str);
        sb.append(this.contentFormat);
        sb.append(str);
        sb.append(this.additionalInfo);
        return sb.toString();
    }
}
