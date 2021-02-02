package com.koushikdutta.async.util;

import java.util.Hashtable;

public class UntypedHashtable {
    private Hashtable<String, Object> hash = new Hashtable<>();

    public void put(String str, Object obj) {
        this.hash.put(str, obj);
    }

    public void remove(String str) {
        this.hash.remove(str);
    }

    public <T> T get(String str, T t) {
        T t2 = get(str);
        return t2 == null ? t : t2;
    }

    public <T> T get(String str) {
        return this.hash.get(str);
    }
}
