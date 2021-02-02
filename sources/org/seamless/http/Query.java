package org.seamless.http;

import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.TreeMap;

public class Query {
    protected final Map<String, List<String>> parameters;

    public static Query newInstance(Map<String, List<String>> map) {
        Query query = new Query();
        query.parameters.putAll(map);
        return query;
    }

    public Query() {
        this.parameters = new LinkedHashMap();
    }

    public Query(Map<String, String[]> map) {
        this.parameters = new LinkedHashMap();
        for (Entry entry : map.entrySet()) {
            this.parameters.put(entry.getKey(), Arrays.asList(entry.getValue() != null ? (String[]) entry.getValue() : new String[0]));
        }
    }

    public Query(URL url) {
        this(url.getQuery());
    }

    public Query(String str) {
        String[] split;
        String str2;
        String str3 = "UTF-8";
        this.parameters = new LinkedHashMap();
        if (str != null) {
            for (String str4 : str.split("&")) {
                int indexOf = str4.indexOf(61);
                if (indexOf == -1) {
                    str2 = null;
                } else {
                    try {
                        String decode = URLDecoder.decode(str4.substring(0, indexOf), str3);
                        str2 = URLDecoder.decode(str4.substring(indexOf + 1, str4.length()), str3);
                        str4 = decode;
                    } catch (UnsupportedEncodingException unused) {
                        throw new IllegalStateException("Query string is not UTF-8");
                    }
                }
                List list = (List) this.parameters.get(str4);
                if (list == null) {
                    list = new ArrayList();
                    this.parameters.put(str4, list);
                }
                list.add(str2);
            }
        }
    }

    public String get(String str) {
        List list = (List) this.parameters.get(str);
        String str2 = "";
        if (list == null || list.size() == 0) {
            return str2;
        }
        return (String) list.get(0);
    }

    public String[] getValues(String str) {
        List list = (List) this.parameters.get(str);
        if (list == null) {
            return null;
        }
        return (String[]) list.toArray(new String[list.size()]);
    }

    public List<String> getValuesAsList(String str) {
        if (this.parameters.containsKey(str)) {
            return Collections.unmodifiableList((List) this.parameters.get(str));
        }
        return null;
    }

    public Enumeration<String> getNames() {
        return Collections.enumeration(this.parameters.keySet());
    }

    public Map<String, String[]> getMap() {
        String[] strArr;
        TreeMap treeMap = new TreeMap();
        for (Entry entry : this.parameters.entrySet()) {
            List list = (List) entry.getValue();
            if (list == null) {
                strArr = null;
            } else {
                strArr = (String[]) list.toArray(new String[list.size()]);
            }
            treeMap.put(entry.getKey(), strArr);
        }
        return treeMap;
    }

    public Map<String, List<String>> getMapWithLists() {
        return Collections.unmodifiableMap(this.parameters);
    }

    public boolean isEmpty() {
        return this.parameters.size() == 0;
    }

    public Query cloneAndAdd(String str, String... strArr) {
        HashMap hashMap = new HashMap(getMapWithLists());
        List list = (List) hashMap.get(str);
        if (list == null) {
            list = new ArrayList();
            hashMap.put(str, list);
        }
        list.addAll(Arrays.asList(strArr));
        return newInstance(hashMap);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (Entry entry : this.parameters.entrySet()) {
            for (String str : (List) entry.getValue()) {
                if (!(str == null || str.length() == 0)) {
                    if (sb.length() > 0) {
                        sb.append("&");
                    }
                    sb.append((String) entry.getKey());
                    sb.append("=");
                    sb.append(str);
                }
            }
        }
        return sb.toString();
    }
}
