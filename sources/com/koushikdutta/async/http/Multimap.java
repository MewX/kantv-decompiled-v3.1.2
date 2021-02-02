package com.koushikdutta.async.http;

import android.net.Uri;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

public class Multimap extends LinkedHashMap<String, List<String>> implements Iterable<NameValuePair> {
    private static final StringDecoder QUERY_DECODER = new StringDecoder() {
        public String decode(String str) {
            return Uri.decode(str);
        }
    };
    private static final StringDecoder URL_DECODER = new StringDecoder() {
        public String decode(String str) {
            return URLDecoder.decode(str);
        }
    };

    public interface StringDecoder {
        String decode(String str);
    }

    public Multimap() {
    }

    /* access modifiers changed from: protected */
    public List<String> newList() {
        return new ArrayList();
    }

    public String getString(String str) {
        List list = (List) get(str);
        if (list == null || list.size() == 0) {
            return null;
        }
        return (String) list.get(0);
    }

    public void add(String str, String str2) {
        List list = (List) get(str);
        if (list == null) {
            list = newList();
            put(str, list);
        }
        list.add(str2);
    }

    public void put(String str, String str2) {
        List newList = newList();
        newList.add(str2);
        put(str, newList);
    }

    public Multimap(List<NameValuePair> list) {
        for (NameValuePair nameValuePair : list) {
            add(nameValuePair.getName(), nameValuePair.getValue());
        }
    }

    public Multimap(Multimap multimap) {
        putAll(multimap);
    }

    public static Multimap parse(String str, String str2, boolean z, StringDecoder stringDecoder) {
        Multimap multimap = new Multimap();
        if (str == null) {
            return multimap;
        }
        for (String split : str.split(str2)) {
            String[] split2 = split.split("=", 2);
            String trim = split2[0].trim();
            String str3 = null;
            if (split2.length > 1) {
                str3 = split2[1];
            }
            if (z && str3 != null) {
                String str4 = "\"";
                if (str3.endsWith(str4) && str3.startsWith(str4)) {
                    str3 = str3.substring(1, str3.length() - 1);
                }
            }
            if (stringDecoder != null) {
                trim = stringDecoder.decode(trim);
                str3 = stringDecoder.decode(str3);
            }
            multimap.add(trim, str3);
        }
        return multimap;
    }

    public static Multimap parseSemicolonDelimited(String str) {
        return parse(str, ";", true, null);
    }

    public static Multimap parseCommaDelimited(String str) {
        return parse(str, ",", true, null);
    }

    public static Multimap parseQuery(String str) {
        return parse(str, "&", false, QUERY_DECODER);
    }

    public static Multimap parseUrlEncoded(String str) {
        return parse(str, "&", false, URL_DECODER);
    }

    public Iterator<NameValuePair> iterator() {
        ArrayList arrayList = new ArrayList();
        for (String str : keySet()) {
            for (String basicNameValuePair : (List) get(str)) {
                arrayList.add(new BasicNameValuePair(str, basicNameValuePair));
            }
        }
        return arrayList.iterator();
    }
}
