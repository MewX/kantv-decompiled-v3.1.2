package com.avos.avoscloud;

import com.avos.avoscloud.java_websocket.drafts.Draft_75;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import okio.Buffer;

public class AVRequestParams {
    private static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    static final String QUERY_COMPONENT_ENCODE_SET = " \"':;<=>@[]^`{}|/\\?#&!$(),~";
    HashMap<String, ParameterValuePair> params;

    private static class ParameterValuePair {
        String encodedParam;
        String param;

        private ParameterValuePair() {
        }

        public String getEncodedParam() {
            return this.encodedParam;
        }

        public String getParam() {
            return this.param;
        }

        public static ParameterValuePair getParameterValuePair(String str, String str2) {
            ParameterValuePair parameterValuePair = new ParameterValuePair();
            parameterValuePair.encodedParam = str2;
            parameterValuePair.param = str;
            return parameterValuePair;
        }

        public static ParameterValuePair getParameterValuePair(String str) {
            ParameterValuePair parameterValuePair = new ParameterValuePair();
            parameterValuePair.encodedParam = AVRequestParams.canonicalize(str, AVRequestParams.QUERY_COMPONENT_ENCODE_SET, false, true);
            parameterValuePair.param = str;
            return parameterValuePair;
        }
    }

    public AVRequestParams() {
        this.params = new HashMap<>();
    }

    public AVRequestParams(Map<String, String> map) {
        this();
        if (map != null) {
            for (Entry entry : map.entrySet()) {
                put((String) entry.getKey(), entry.getValue());
            }
        }
    }

    public void put(String str, Object obj) {
        this.params.put(canonicalize(str, QUERY_COMPONENT_ENCODE_SET, false, true), ParameterValuePair.getParameterValuePair(obj.toString()));
    }

    public String getQueryString() {
        if (this.params.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int i = 0;
        for (Entry entry : this.params.entrySet()) {
            if (i > 0) {
                sb.append('&');
            }
            sb.append((String) entry.getKey());
            sb.append('=');
            sb.append(((ParameterValuePair) entry.getValue()).encodedParam);
            i++;
        }
        return sb.toString();
    }

    public String getWholeUrl(String str) {
        if (this.params.isEmpty()) {
            return str;
        }
        StringBuilder sb = new StringBuilder(str);
        sb.append('?');
        int i = 0;
        for (Entry entry : this.params.entrySet()) {
            if (i > 0) {
                sb.append('&');
            }
            sb.append((String) entry.getKey());
            sb.append('=');
            sb.append(((ParameterValuePair) entry.getValue()).encodedParam);
            i++;
        }
        return sb.toString();
    }

    public boolean isEmpty() {
        HashMap<String, ParameterValuePair> hashMap = this.params;
        return hashMap == null || hashMap.isEmpty();
    }

    /* access modifiers changed from: protected */
    public String getDumpQueryString() {
        if (this.params.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int i = 0;
        for (Entry entry : this.params.entrySet()) {
            if (i > 0) {
                sb.append('&');
            }
            sb.append((String) entry.getKey());
            sb.append('=');
            sb.append(((ParameterValuePair) entry.getValue()).getParam());
            i++;
        }
        return sb.toString();
    }

    static String canonicalize(String str, int i, int i2, String str2, boolean z, boolean z2) {
        int i3 = i;
        while (i3 < i2) {
            int codePointAt = str.codePointAt(i3);
            if (codePointAt < 32 || codePointAt >= 127 || str2.indexOf(codePointAt) != -1 || ((codePointAt == 37 && !z) || (z2 && codePointAt == 43))) {
                Buffer buffer = new Buffer();
                buffer.writeUtf8(str, i, i3);
                canonicalize(buffer, str, i3, i2, str2, z, z2);
                return buffer.readUtf8();
            }
            i3 += Character.charCount(codePointAt);
        }
        return str.substring(i, i2);
    }

    static void canonicalize(Buffer buffer, String str, int i, int i2, String str2, boolean z, boolean z2) {
        Buffer buffer2 = null;
        while (i < i2) {
            int codePointAt = str.codePointAt(i);
            if (!z || !(codePointAt == 9 || codePointAt == 10 || codePointAt == 12 || codePointAt == 13)) {
                if (z2 && codePointAt == 43) {
                    buffer.writeUtf8(z ? "%20" : "%2B");
                } else if (codePointAt < 32 || codePointAt >= 127 || str2.indexOf(codePointAt) != -1 || (codePointAt == 37 && !z)) {
                    if (buffer2 == null) {
                        buffer2 = new Buffer();
                    }
                    buffer2.writeUtf8CodePoint(codePointAt);
                    while (!buffer2.exhausted()) {
                        byte readByte = buffer2.readByte() & Draft_75.END_OF_FRAME;
                        buffer.writeByte(37);
                        buffer.writeByte((int) HEX_DIGITS[(readByte >> 4) & 15]);
                        buffer.writeByte((int) HEX_DIGITS[readByte & 15]);
                    }
                } else {
                    buffer.writeUtf8CodePoint(codePointAt);
                }
            }
            i += Character.charCount(codePointAt);
        }
    }

    static String canonicalize(String str, String str2, boolean z, boolean z2) {
        return canonicalize(str, 0, str.length(), str2, z, z2);
    }
}
