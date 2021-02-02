package org.fourthline.cling.model.types;

import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.UUID;
import java.util.logging.Logger;
import org.fourthline.cling.model.ModelUtil;

public class UDN {
    public static final String PREFIX = "uuid:";
    private static final Logger log = Logger.getLogger(UDN.class.getName());
    private String identifierString;

    public UDN(String str) {
        this.identifierString = str;
    }

    public UDN(UUID uuid) {
        this.identifierString = uuid.toString();
    }

    public boolean isUDA11Compliant() {
        try {
            UUID.fromString(this.identifierString);
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    public String getIdentifierString() {
        return this.identifierString;
    }

    public static UDN valueOf(String str) {
        if (str.startsWith("uuid:")) {
            str = str.substring(5);
        }
        return new UDN(str);
    }

    public static UDN uniqueSystemIdentifier(String str) {
        String str2 = "UTF-8";
        StringBuilder sb = new StringBuilder();
        if (!ModelUtil.ANDROID_RUNTIME) {
            try {
                sb.append(new String(ModelUtil.getFirstNetworkInterfaceHardwareAddress(), str2));
                try {
                    return new UDN(new UUID(new BigInteger(-1, MessageDigest.getInstance("MD5").digest(sb.toString().getBytes(str2))).longValue(), (long) str.hashCode()));
                } catch (Exception e) {
                    throw new RuntimeException(e);
                }
            } catch (UnsupportedEncodingException e2) {
                throw new RuntimeException(e2);
            }
        } else {
            throw new RuntimeException("This method does not create a unique identifier on Android, see the Javadoc and use new UDN(UUID) instead!");
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("uuid:");
        sb.append(getIdentifierString());
        return sb.toString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof UDN)) {
            return false;
        }
        return this.identifierString.equals(((UDN) obj).identifierString);
    }

    public int hashCode() {
        return this.identifierString.hashCode();
    }
}
