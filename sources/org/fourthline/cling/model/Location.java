package org.fourthline.cling.model;

import java.net.InetAddress;
import java.net.URL;

public class Location {
    protected final NetworkAddress networkAddress;
    protected final String path;
    protected final URL url;

    public Location(NetworkAddress networkAddress2, String str) {
        this.networkAddress = networkAddress2;
        this.path = str;
        this.url = createAbsoluteURL(networkAddress2.getAddress(), networkAddress2.getPort(), str);
    }

    public NetworkAddress getNetworkAddress() {
        return this.networkAddress;
    }

    public String getPath() {
        return this.path;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Location location = (Location) obj;
        return this.networkAddress.equals(location.networkAddress) && this.path.equals(location.path);
    }

    public int hashCode() {
        return (this.networkAddress.hashCode() * 31) + this.path.hashCode();
    }

    public URL getURL() {
        return this.url;
    }

    private static URL createAbsoluteURL(InetAddress inetAddress, int i, String str) {
        try {
            return new URL("http", inetAddress.getHostAddress(), i, str);
        } catch (Exception e) {
            throw new IllegalArgumentException("Address, port, and URI can not be converted to URL", e);
        }
    }
}
