package org.seamless.http;

import java.io.ByteArrayInputStream;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class Headers implements Map<String, List<String>> {
    static final byte CR = 13;
    static final byte LF = 10;
    final Map<String, List<String>> map = new HashMap(32);
    private boolean normalizeHeaders = true;

    public Headers() {
    }

    public Headers(Map<String, List<String>> map2) {
        putAll(map2);
    }

    public Headers(ByteArrayInputStream byteArrayInputStream) {
        StringBuilder sb = new StringBuilder(256);
        Headers headers = new Headers();
        String readLine = readLine(sb, byteArrayInputStream);
        if (readLine.length() != 0) {
            String str = null;
            do {
                char charAt = readLine.charAt(0);
                if (str == null || !(charAt == ' ' || charAt == 9)) {
                    String[] splitHeader = splitHeader(readLine);
                    headers.add(splitHeader[0], splitHeader[1]);
                    str = splitHeader[0];
                } else {
                    List list = headers.get((Object) str);
                    int size = list.size() - 1;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append((String) list.get(size));
                    sb2.append(readLine.trim());
                    list.set(size, sb2.toString());
                }
                sb.delete(0, sb.length());
                readLine = readLine(sb, byteArrayInputStream);
            } while (readLine.length() != 0);
        }
        putAll(headers);
    }

    public Headers(boolean z) {
        this.normalizeHeaders = z;
    }

    public int size() {
        return this.map.size();
    }

    public boolean isEmpty() {
        return this.map.isEmpty();
    }

    public boolean containsKey(Object obj) {
        return obj != null && (obj instanceof String) && this.map.containsKey(normalize((String) obj));
    }

    public boolean containsValue(Object obj) {
        return this.map.containsValue(obj);
    }

    public List<String> get(Object obj) {
        return (List) this.map.get(normalize((String) obj));
    }

    public List<String> put(String str, List<String> list) {
        return (List) this.map.put(normalize(str), list);
    }

    public List<String> remove(Object obj) {
        return (List) this.map.remove(normalize((String) obj));
    }

    public void putAll(Map<? extends String, ? extends List<String>> map2) {
        for (Entry entry : map2.entrySet()) {
            put((String) entry.getKey(), (List) entry.getValue());
        }
    }

    public void clear() {
        this.map.clear();
    }

    public Set<String> keySet() {
        return this.map.keySet();
    }

    public Collection<List<String>> values() {
        return this.map.values();
    }

    public Set<Entry<String, List<String>>> entrySet() {
        return this.map.entrySet();
    }

    public boolean equals(Object obj) {
        return this.map.equals(obj);
    }

    public int hashCode() {
        return this.map.hashCode();
    }

    public String getFirstHeader(String str) {
        List list = (List) this.map.get(normalize(str));
        if (list == null || list.size() <= 0) {
            return null;
        }
        return (String) list.get(0);
    }

    public void add(String str, String str2) {
        String normalize = normalize(str);
        List list = (List) this.map.get(normalize);
        if (list == null) {
            list = new LinkedList();
            this.map.put(normalize, list);
        }
        list.add(str2);
    }

    public void set(String str, String str2) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(str2);
        put(str, (List<String>) linkedList);
    }

    private String normalize(String str) {
        if (this.normalizeHeaders) {
            if (str == null) {
                return null;
            }
            if (str.length() == 0) {
                return str;
            }
            char[] charArray = str.toCharArray();
            if (charArray[0] >= 'a' && charArray[0] <= 'z') {
                charArray[0] = (char) (charArray[0] - ' ');
            }
            int length = str.length();
            for (int i = 1; i < length; i++) {
                if (charArray[i] >= 'A' && charArray[i] <= 'Z') {
                    charArray[i] = (char) (charArray[i] + ' ');
                }
            }
            str = new String(charArray);
        }
        return str;
    }

    public static String readLine(ByteArrayInputStream byteArrayInputStream) {
        return readLine(new StringBuilder(256), byteArrayInputStream);
    }

    public static String readLine(StringBuilder sb, ByteArrayInputStream byteArrayInputStream) {
        while (true) {
            int read = byteArrayInputStream.read();
            if (read == -1) {
                break;
            }
            char c = (char) read;
            if (c == 13) {
                if (((char) byteArrayInputStream.read()) == 10) {
                    break;
                }
            } else if (c == 10) {
                break;
            }
            sb.append(c);
        }
        return sb.toString();
    }

    /* access modifiers changed from: protected */
    public String[] splitHeader(String str) {
        int findNonWhitespace = findNonWhitespace(str, 0);
        int i = findNonWhitespace;
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt == ':' || Character.isWhitespace(charAt)) {
                break;
            }
            i++;
        }
        int i2 = i;
        while (true) {
            if (i2 >= str.length()) {
                break;
            } else if (str.charAt(i2) == ':') {
                i2++;
                break;
            } else {
                i2++;
            }
        }
        int findNonWhitespace2 = findNonWhitespace(str, i2);
        int findEndOfString = findEndOfString(str);
        String[] strArr = new String[2];
        strArr[0] = str.substring(findNonWhitespace, i);
        strArr[1] = (str.length() < findNonWhitespace2 || str.length() < findEndOfString || findNonWhitespace2 >= findEndOfString) ? null : str.substring(findNonWhitespace2, findEndOfString);
        return strArr;
    }

    /* access modifiers changed from: protected */
    public int findNonWhitespace(String str, int i) {
        while (i < str.length() && Character.isWhitespace(str.charAt(i))) {
            i++;
        }
        return i;
    }

    /* access modifiers changed from: protected */
    public int findEndOfString(String str) {
        int length = str.length();
        while (length > 0 && Character.isWhitespace(str.charAt(length - 1))) {
            length--;
        }
        return length;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(512);
        for (Entry entry : entrySet()) {
            sb.append((String) entry.getKey());
            sb.append(": ");
            for (String append : (List) entry.getValue()) {
                sb.append(append);
                sb.append(",");
            }
            sb.delete(sb.length() - 1, sb.length());
            sb.append("\r\n");
        }
        return sb.toString();
    }
}
