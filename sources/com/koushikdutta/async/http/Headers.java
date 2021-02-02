package com.koushikdutta.async.http;

import android.text.TextUtils;
import com.koushikdutta.async.util.TaggedList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public class Headers {
    final Multimap map = new Multimap() {
        /* access modifiers changed from: protected */
        public List<String> newList() {
            return new TaggedList();
        }
    };

    public Headers() {
    }

    public Headers(Map<String, List<String>> map2) {
        this.map.putAll(map2);
    }

    public Multimap getMultiMap() {
        return this.map;
    }

    public List<String> getAll(String str) {
        return (List) this.map.get(str.toLowerCase(Locale.US));
    }

    public String get(String str) {
        return this.map.getString(str.toLowerCase(Locale.US));
    }

    public Headers set(String str, String str2) {
        if (str2 == null || (!str2.contains("\n") && !str2.contains("\r"))) {
            String lowerCase = str.toLowerCase(Locale.US);
            this.map.put(lowerCase, str2);
            ((TaggedList) this.map.get(lowerCase)).tagNull(str);
            return this;
        }
        throw new IllegalArgumentException("value must not contain a new line or line feed");
    }

    public Headers add(String str, String str2) {
        String lowerCase = str.toLowerCase(Locale.US);
        this.map.add(lowerCase, str2);
        ((TaggedList) this.map.get(lowerCase)).tagNull(str);
        return this;
    }

    public Headers addLine(String str) {
        if (str != null) {
            String[] split = str.trim().split(":", 2);
            if (split.length == 2) {
                add(split[0].trim(), split[1].trim());
            } else {
                add(split[0].trim(), "");
            }
        }
        return this;
    }

    public Headers addAll(String str, List<String> list) {
        for (String add : list) {
            add(str, add);
        }
        return this;
    }

    public Headers addAll(Map<String, List<String>> map2) {
        for (String str : map2.keySet()) {
            for (String add : (List) map2.get(str)) {
                add(str, add);
            }
        }
        return this;
    }

    public Headers addAll(Headers headers) {
        this.map.putAll(headers.map);
        return this;
    }

    public List<String> removeAll(String str) {
        return (List) this.map.remove(str.toLowerCase(Locale.US));
    }

    public String remove(String str) {
        List removeAll = removeAll(str.toLowerCase(Locale.US));
        if (removeAll == null || removeAll.size() == 0) {
            return null;
        }
        return (String) removeAll.get(0);
    }

    public Headers removeAll(Collection<String> collection) {
        for (String remove : collection) {
            remove(remove);
        }
        return this;
    }

    public StringBuilder toStringBuilder() {
        StringBuilder sb = new StringBuilder(256);
        Iterator it = this.map.keySet().iterator();
        while (true) {
            String str = "\r\n";
            if (it.hasNext()) {
                TaggedList taggedList = (TaggedList) this.map.get((String) it.next());
                Iterator it2 = taggedList.iterator();
                while (it2.hasNext()) {
                    String str2 = (String) it2.next();
                    sb.append((String) taggedList.tag());
                    sb.append(": ");
                    sb.append(str2);
                    sb.append(str);
                }
            } else {
                sb.append(str);
                return sb;
            }
        }
    }

    public String toString() {
        return toStringBuilder().toString();
    }

    public String toPrefixString(String str) {
        StringBuilder stringBuilder = toStringBuilder();
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("\r\n");
        return stringBuilder.insert(0, sb.toString()).toString();
    }

    public static Headers parse(String str) {
        String[] split = str.split("\n");
        Headers headers = new Headers();
        for (String trim : split) {
            String trim2 = trim.trim();
            if (!TextUtils.isEmpty(trim2)) {
                headers.addLine(trim2);
            }
        }
        return headers;
    }
}
