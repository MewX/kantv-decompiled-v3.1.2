package com.koushikdutta.async.http;

import android.text.TextUtils;

public class BasicNameValuePair implements NameValuePair, Cloneable {
    private final String name;
    private final String value;

    public BasicNameValuePair(String str, String str2) {
        if (str != null) {
            this.name = str;
            this.value = str2;
            return;
        }
        throw new IllegalArgumentException("Name may not be null");
    }

    public String getName() {
        return this.name;
    }

    public String getValue() {
        return this.value;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.name);
        sb.append("=");
        sb.append(this.value);
        return sb.toString();
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof NameValuePair) {
            BasicNameValuePair basicNameValuePair = (BasicNameValuePair) obj;
            if (this.name.equals(basicNameValuePair.name) && TextUtils.equals(this.value, basicNameValuePair.value)) {
                z = true;
            }
        }
        return z;
    }

    public int hashCode() {
        return this.name.hashCode() ^ this.value.hashCode();
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }
}
