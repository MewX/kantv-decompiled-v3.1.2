package org.fourthline.cling.model.types;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class DLNADoc {
    public static final Pattern PATTERN = Pattern.compile("(.+?)[ -]([0-9].[0-9]{2})");
    private final String devClass;
    private final String version;

    public enum Version {
        V1_0("1.00"),
        V1_5("1.50");
        
        String s;

        private Version(String str) {
            this.s = str;
        }

        public String toString() {
            return this.s;
        }
    }

    public DLNADoc(String str, String str2) {
        this.devClass = str;
        this.version = str2;
    }

    public DLNADoc(String str, Version version2) {
        this.devClass = str;
        this.version = version2.s;
    }

    public String getDevClass() {
        return this.devClass;
    }

    public String getVersion() {
        return this.version;
    }

    public static DLNADoc valueOf(String str) throws InvalidValueException {
        Matcher matcher = PATTERN.matcher(str);
        if (matcher.matches()) {
            return new DLNADoc(matcher.group(1), matcher.group(2));
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Can't parse DLNADoc: ");
        sb.append(str);
        throw new InvalidValueException(sb.toString());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        DLNADoc dLNADoc = (DLNADoc) obj;
        return this.devClass.equals(dLNADoc.devClass) && this.version.equals(dLNADoc.version);
    }

    public int hashCode() {
        return (this.devClass.hashCode() * 31) + this.version.hashCode();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getDevClass());
        sb.append("-");
        sb.append(getVersion());
        return sb.toString();
    }
}
