package org.seamless.util;

import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.TreeMap;

public class MimeType {
    public static final String WILDCARD = "*";
    private Map<String, String> parameters;
    private String subtype;
    private String type;

    public MimeType() {
        String str = "*";
        this(str, str);
    }

    public MimeType(String str, String str2, Map<String, String> map) {
        String str3 = "*";
        if (str == null) {
            str = str3;
        }
        this.type = str;
        if (str2 == null) {
            str2 = str3;
        }
        this.subtype = str2;
        if (map == null) {
            this.parameters = Collections.EMPTY_MAP;
            return;
        }
        TreeMap treeMap = new TreeMap(new Comparator<String>() {
            public int compare(String str, String str2) {
                return str.compareToIgnoreCase(str2);
            }
        });
        for (Entry entry : map.entrySet()) {
            treeMap.put(entry.getKey(), entry.getValue());
        }
        this.parameters = Collections.unmodifiableMap(treeMap);
    }

    public MimeType(String str, String str2) {
        this(str, str2, Collections.EMPTY_MAP);
    }

    public String getType() {
        return this.type;
    }

    public boolean isWildcardType() {
        return getType().equals("*");
    }

    public String getSubtype() {
        return this.subtype;
    }

    public boolean isWildcardSubtype() {
        return getSubtype().equals("*");
    }

    public Map<String, String> getParameters() {
        return this.parameters;
    }

    public boolean isCompatible(MimeType mimeType) {
        boolean z = false;
        if (mimeType == null) {
            return false;
        }
        String str = "*";
        if (this.type.equals(str) || mimeType.type.equals(str)) {
            return true;
        }
        if (this.type.equalsIgnoreCase(mimeType.type) && (this.subtype.equals(str) || mimeType.subtype.equals(str))) {
            return true;
        }
        if (this.type.equalsIgnoreCase(mimeType.type) && this.subtype.equalsIgnoreCase(mimeType.subtype)) {
            z = true;
        }
        return z;
    }

    public static MimeType valueOf(String str) throws IllegalArgumentException {
        String str2;
        String str3;
        if (str != null) {
            int indexOf = str.indexOf(";");
            String str4 = null;
            if (indexOf > -1) {
                str2 = str.substring(indexOf + 1).trim();
                str = str.substring(0, indexOf);
            } else {
                str2 = null;
            }
            String[] split = str.split("/");
            String str5 = "*";
            if (split.length < 2 && str.equals(str5)) {
                str3 = str5;
                str4 = str3;
            } else if (split.length == 2) {
                str4 = split[0].trim();
                str3 = split[1].trim();
            } else if (split.length == 2) {
                str3 = null;
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append("Error parsing string: ");
                sb.append(str);
                throw new IllegalArgumentException(sb.toString());
            }
            if (str2 == null || str2.length() <= 0) {
                return new MimeType(str4, str3);
            }
            HashMap hashMap = new HashMap();
            for (int i = 0; i < str2.length(); i = readParamsIntoMap(hashMap, str2, i)) {
            }
            return new MimeType(str4, str3, hashMap);
        }
        throw new IllegalArgumentException("String value is null");
    }

    public static int readParamsIntoMap(Map<String, String> map, String str, int i) {
        int end = getEnd(str, i);
        String trim = str.substring(i, end).trim();
        if (end < str.length() && str.charAt(end) == '=') {
            end++;
        }
        StringBuilder sb = new StringBuilder(str.length() - end);
        boolean z = false;
        boolean z2 = false;
        while (end < str.length()) {
            char charAt = str.charAt(end);
            if (charAt != '\"') {
                if (charAt != ';') {
                    if (charAt != '\\') {
                        sb.append(charAt);
                    } else if (z) {
                        sb.append(charAt);
                    } else {
                        z = true;
                    }
                } else if (!z2) {
                    map.put(trim, sb.toString().trim());
                    return end + 1;
                } else {
                    sb.append(charAt);
                }
                end++;
            } else if (z) {
                sb.append(charAt);
            } else {
                z2 = !z2;
                end++;
            }
            z = false;
            end++;
        }
        map.put(trim, sb.toString().trim());
        return end;
    }

    protected static int getEnd(String str, int i) {
        int indexOf = str.indexOf(61, i);
        int indexOf2 = str.indexOf(59, i);
        if (indexOf == -1 && indexOf2 == -1) {
            return str.length();
        }
        if (indexOf == -1) {
            return indexOf2;
        }
        if (indexOf2 == -1) {
            return indexOf;
        }
        if (indexOf < indexOf2) {
            indexOf2 = indexOf;
        }
        return indexOf2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        MimeType mimeType = (MimeType) obj;
        Map<String, String> map = this.parameters;
        if (map == null ? mimeType.parameters == null : map.equals(mimeType.parameters)) {
            return this.subtype.equalsIgnoreCase(mimeType.subtype) && this.type.equalsIgnoreCase(mimeType.type);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((this.type.toLowerCase().hashCode() * 31) + this.subtype.toLowerCase().hashCode()) * 31;
        Map<String, String> map = this.parameters;
        return hashCode + (map != null ? map.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(toStringNoParameters());
        if (getParameters() != null || getParameters().size() > 0) {
            for (String str : getParameters().keySet()) {
                sb.append(";");
                sb.append(str);
                sb.append("=\"");
                sb.append((String) getParameters().get(str));
                sb.append("\"");
            }
        }
        return sb.toString();
    }

    public String toStringNoParameters() {
        StringBuilder sb = new StringBuilder();
        sb.append(getType());
        sb.append("/");
        sb.append(getSubtype());
        return sb.toString();
    }
}
