package org.fourthline.cling.support.model;

import java.util.Map;
import org.fourthline.cling.model.action.ActionArgumentValue;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.model.types.UnsignedIntegerFourBytes;
import org.fourthline.cling.model.types.UnsignedIntegerTwoBytes;

public class PortMapping {
    private String description;
    private boolean enabled;
    private UnsignedIntegerTwoBytes externalPort;
    private String internalClient;
    private UnsignedIntegerTwoBytes internalPort;
    private UnsignedIntegerFourBytes leaseDurationSeconds;
    private Protocol protocol;
    private String remoteHost;

    public enum Protocol {
        UDP,
        TCP
    }

    public PortMapping() {
    }

    public PortMapping(Map<String, ActionArgumentValue<Service>> map) {
        this(((Boolean) ((ActionArgumentValue) map.get("NewEnabled")).getValue()).booleanValue(), (UnsignedIntegerFourBytes) ((ActionArgumentValue) map.get("NewLeaseDuration")).getValue(), (String) ((ActionArgumentValue) map.get("NewRemoteHost")).getValue(), (UnsignedIntegerTwoBytes) ((ActionArgumentValue) map.get("NewExternalPort")).getValue(), (UnsignedIntegerTwoBytes) ((ActionArgumentValue) map.get("NewInternalPort")).getValue(), (String) ((ActionArgumentValue) map.get("NewInternalClient")).getValue(), Protocol.valueOf(((ActionArgumentValue) map.get("NewProtocol")).toString()), (String) ((ActionArgumentValue) map.get("NewPortMappingDescription")).getValue());
    }

    public PortMapping(int i, String str, Protocol protocol2) {
        UnsignedIntegerFourBytes unsignedIntegerFourBytes = new UnsignedIntegerFourBytes(0);
        long j = (long) i;
        UnsignedIntegerTwoBytes unsignedIntegerTwoBytes = new UnsignedIntegerTwoBytes(j);
        UnsignedIntegerTwoBytes unsignedIntegerTwoBytes2 = new UnsignedIntegerTwoBytes(j);
        this(true, unsignedIntegerFourBytes, null, unsignedIntegerTwoBytes, unsignedIntegerTwoBytes2, str, protocol2, null);
    }

    public PortMapping(int i, String str, Protocol protocol2, String str2) {
        UnsignedIntegerFourBytes unsignedIntegerFourBytes = new UnsignedIntegerFourBytes(0);
        long j = (long) i;
        UnsignedIntegerTwoBytes unsignedIntegerTwoBytes = new UnsignedIntegerTwoBytes(j);
        UnsignedIntegerTwoBytes unsignedIntegerTwoBytes2 = new UnsignedIntegerTwoBytes(j);
        this(true, unsignedIntegerFourBytes, null, unsignedIntegerTwoBytes, unsignedIntegerTwoBytes2, str, protocol2, str2);
    }

    public PortMapping(String str, UnsignedIntegerTwoBytes unsignedIntegerTwoBytes, Protocol protocol2) {
        this(true, new UnsignedIntegerFourBytes(0), str, unsignedIntegerTwoBytes, null, null, protocol2, null);
    }

    public PortMapping(boolean z, UnsignedIntegerFourBytes unsignedIntegerFourBytes, String str, UnsignedIntegerTwoBytes unsignedIntegerTwoBytes, UnsignedIntegerTwoBytes unsignedIntegerTwoBytes2, String str2, Protocol protocol2, String str3) {
        this.enabled = z;
        this.leaseDurationSeconds = unsignedIntegerFourBytes;
        this.remoteHost = str;
        this.externalPort = unsignedIntegerTwoBytes;
        this.internalPort = unsignedIntegerTwoBytes2;
        this.internalClient = str2;
        this.protocol = protocol2;
        this.description = str3;
    }

    public boolean isEnabled() {
        return this.enabled;
    }

    public void setEnabled(boolean z) {
        this.enabled = z;
    }

    public UnsignedIntegerFourBytes getLeaseDurationSeconds() {
        return this.leaseDurationSeconds;
    }

    public void setLeaseDurationSeconds(UnsignedIntegerFourBytes unsignedIntegerFourBytes) {
        this.leaseDurationSeconds = unsignedIntegerFourBytes;
    }

    public boolean hasRemoteHost() {
        String str = this.remoteHost;
        return str != null && str.length() > 0;
    }

    public String getRemoteHost() {
        String str = this.remoteHost;
        return str == null ? "-" : str;
    }

    public void setRemoteHost(String str) {
        if (str == null || str.equals("-") || str.length() == 0) {
            str = null;
        }
        this.remoteHost = str;
    }

    public UnsignedIntegerTwoBytes getExternalPort() {
        return this.externalPort;
    }

    public void setExternalPort(UnsignedIntegerTwoBytes unsignedIntegerTwoBytes) {
        this.externalPort = unsignedIntegerTwoBytes;
    }

    public UnsignedIntegerTwoBytes getInternalPort() {
        return this.internalPort;
    }

    public void setInternalPort(UnsignedIntegerTwoBytes unsignedIntegerTwoBytes) {
        this.internalPort = unsignedIntegerTwoBytes;
    }

    public String getInternalClient() {
        return this.internalClient;
    }

    public void setInternalClient(String str) {
        this.internalClient = str;
    }

    public Protocol getProtocol() {
        return this.protocol;
    }

    public void setProtocol(Protocol protocol2) {
        this.protocol = protocol2;
    }

    public boolean hasDescription() {
        return this.description != null;
    }

    public String getDescription() {
        String str = this.description;
        return str == null ? "-" : str;
    }

    public void setDescription(String str) {
        if (str == null || str.equals("-") || str.length() == 0) {
            str = null;
        }
        this.description = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        sb.append(getClass().getSimpleName());
        sb.append(") Protocol: ");
        sb.append(getProtocol());
        sb.append(", ");
        sb.append(getExternalPort());
        sb.append(" => ");
        sb.append(getInternalClient());
        return sb.toString();
    }
}
