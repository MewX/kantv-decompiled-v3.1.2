package com.koushikdutta.async.http.cache;

import android.text.TextUtils;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;

final class RawHeaders {
    private static final Comparator<String> FIELD_NAME_COMPARATOR = new Comparator<String>() {
        public int compare(String str, String str2) {
            if (str == str2) {
                return 0;
            }
            if (str == null) {
                return -1;
            }
            if (str2 == null) {
                return 1;
            }
            return String.CASE_INSENSITIVE_ORDER.compare(str, str2);
        }
    };
    private int httpMinorVersion = 1;
    private final List<String> namesAndValues = new ArrayList(20);
    private int responseCode = -1;
    private String responseMessage;
    private String statusLine;

    public RawHeaders() {
    }

    public RawHeaders(RawHeaders rawHeaders) {
        copy(rawHeaders);
    }

    public void copy(RawHeaders rawHeaders) {
        this.namesAndValues.addAll(rawHeaders.namesAndValues);
        this.statusLine = rawHeaders.statusLine;
        this.httpMinorVersion = rawHeaders.httpMinorVersion;
        this.responseCode = rawHeaders.responseCode;
        this.responseMessage = rawHeaders.responseMessage;
    }

    public void setStatusLine(String str) {
        String trim = str.trim();
        this.statusLine = trim;
        if (trim != null && trim.startsWith("HTTP/")) {
            String trim2 = trim.trim();
            int indexOf = trim2.indexOf(" ") + 1;
            if (indexOf != 0) {
                if (trim2.charAt(indexOf - 2) != '1') {
                    this.httpMinorVersion = 0;
                }
                int i = indexOf + 3;
                if (i > trim2.length()) {
                    i = trim2.length();
                }
                this.responseCode = Integer.parseInt(trim2.substring(indexOf, i));
                int i2 = i + 1;
                if (i2 <= trim2.length()) {
                    this.responseMessage = trim2.substring(i2);
                }
            }
        }
    }

    public String getStatusLine() {
        return this.statusLine;
    }

    public int getHttpMinorVersion() {
        int i = this.httpMinorVersion;
        if (i != -1) {
            return i;
        }
        return 1;
    }

    public int getResponseCode() {
        return this.responseCode;
    }

    public String getResponseMessage() {
        return this.responseMessage;
    }

    public void addLine(String str) {
        int indexOf = str.indexOf(":");
        if (indexOf == -1) {
            add("", str);
        } else {
            add(str.substring(0, indexOf), str.substring(indexOf + 1));
        }
    }

    public void add(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("fieldName == null");
        } else if (str2 == null) {
            PrintStream printStream = System.err;
            StringBuilder sb = new StringBuilder();
            sb.append("Ignoring HTTP header field '");
            sb.append(str);
            sb.append("' because its value is null");
            printStream.println(sb.toString());
        } else {
            this.namesAndValues.add(str);
            this.namesAndValues.add(str2.trim());
        }
    }

    public void removeAll(String str) {
        for (int i = 0; i < this.namesAndValues.size(); i += 2) {
            if (str.equalsIgnoreCase((String) this.namesAndValues.get(i))) {
                this.namesAndValues.remove(i);
                this.namesAndValues.remove(i);
            }
        }
    }

    public void addAll(String str, List<String> list) {
        for (String add : list) {
            add(str, add);
        }
    }

    public void set(String str, String str2) {
        removeAll(str);
        add(str, str2);
    }

    public int length() {
        return this.namesAndValues.size() / 2;
    }

    public String getFieldName(int i) {
        int i2 = i * 2;
        if (i2 < 0 || i2 >= this.namesAndValues.size()) {
            return null;
        }
        return (String) this.namesAndValues.get(i2);
    }

    public String getValue(int i) {
        int i2 = (i * 2) + 1;
        if (i2 < 0 || i2 >= this.namesAndValues.size()) {
            return null;
        }
        return (String) this.namesAndValues.get(i2);
    }

    public String get(String str) {
        for (int size = this.namesAndValues.size() - 2; size >= 0; size -= 2) {
            if (str.equalsIgnoreCase((String) this.namesAndValues.get(size))) {
                return (String) this.namesAndValues.get(size + 1);
            }
        }
        return null;
    }

    public RawHeaders getAll(Set<String> set) {
        RawHeaders rawHeaders = new RawHeaders();
        for (int i = 0; i < this.namesAndValues.size(); i += 2) {
            String str = (String) this.namesAndValues.get(i);
            if (set.contains(str)) {
                rawHeaders.add(str, (String) this.namesAndValues.get(i + 1));
            }
        }
        return rawHeaders;
    }

    public String toHeaderString() {
        StringBuilder sb = new StringBuilder(256);
        sb.append(this.statusLine);
        String str = "\r\n";
        sb.append(str);
        for (int i = 0; i < this.namesAndValues.size(); i += 2) {
            sb.append((String) this.namesAndValues.get(i));
            sb.append(": ");
            sb.append((String) this.namesAndValues.get(i + 1));
            sb.append(str);
        }
        sb.append(str);
        return sb.toString();
    }

    public Map<String, List<String>> toMultimap() {
        TreeMap treeMap = new TreeMap(FIELD_NAME_COMPARATOR);
        for (int i = 0; i < this.namesAndValues.size(); i += 2) {
            String str = (String) this.namesAndValues.get(i);
            String str2 = (String) this.namesAndValues.get(i + 1);
            ArrayList arrayList = new ArrayList();
            List list = (List) treeMap.get(str);
            if (list != null) {
                arrayList.addAll(list);
            }
            arrayList.add(str2);
            treeMap.put(str, Collections.unmodifiableList(arrayList));
        }
        String str3 = this.statusLine;
        if (str3 != null) {
            treeMap.put(null, Collections.unmodifiableList(Collections.singletonList(str3)));
        }
        return Collections.unmodifiableMap(treeMap);
    }

    public static RawHeaders fromMultimap(Map<String, List<String>> map) {
        RawHeaders rawHeaders = new RawHeaders();
        for (Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            List list = (List) entry.getValue();
            if (str != null) {
                rawHeaders.addAll(str, list);
            } else if (!list.isEmpty()) {
                rawHeaders.setStatusLine((String) list.get(list.size() - 1));
            }
        }
        return rawHeaders;
    }

    public static RawHeaders parse(String str) {
        String[] split = str.split("\n");
        RawHeaders rawHeaders = new RawHeaders();
        for (String trim : split) {
            String trim2 = trim.trim();
            if (!TextUtils.isEmpty(trim2)) {
                if (rawHeaders.getStatusLine() == null) {
                    rawHeaders.setStatusLine(trim2);
                } else {
                    rawHeaders.addLine(trim2);
                }
            }
        }
        return rawHeaders;
    }
}
