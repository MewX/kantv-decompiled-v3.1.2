package com.koushikdutta.async.http.cache;

final class HeaderParser {

    public interface CacheControlHandler {
        void handle(String str, String str2);
    }

    HeaderParser() {
    }

    public static void parseCacheControl(String str, CacheControlHandler cacheControlHandler) {
        int i;
        String str2;
        if (str != null) {
            int i2 = 0;
            while (i2 < str.length()) {
                int skipUntil = skipUntil(str, i2, "=,");
                String trim = str.substring(i2, skipUntil).trim();
                if (skipUntil == str.length() || str.charAt(skipUntil) == ',') {
                    int i3 = skipUntil + 1;
                    cacheControlHandler.handle(trim, null);
                    i2 = i3;
                } else {
                    int skipWhitespace = skipWhitespace(str, skipUntil + 1);
                    if (skipWhitespace >= str.length() || str.charAt(skipWhitespace) != '\"') {
                        i = skipUntil(str, skipWhitespace, ",");
                        str2 = str.substring(skipWhitespace, i).trim();
                    } else {
                        int i4 = skipWhitespace + 1;
                        int skipUntil2 = skipUntil(str, i4, "\"");
                        str2 = str.substring(i4, skipUntil2);
                        i = skipUntil2 + 1;
                    }
                    cacheControlHandler.handle(trim, str2);
                    i2 = i;
                }
            }
        }
    }

    private static int skipUntil(String str, int i, String str2) {
        while (i < str.length() && str2.indexOf(str.charAt(i)) == -1) {
            i++;
        }
        return i;
    }

    private static int skipWhitespace(String str, int i) {
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt != ' ' && charAt != 9) {
                break;
            }
            i++;
        }
        return i;
    }

    public static int parseSeconds(String str) {
        try {
            long parseLong = Long.parseLong(str);
            if (parseLong > 2147483647L) {
                return Integer.MAX_VALUE;
            }
            if (parseLong < 0) {
                return 0;
            }
            return (int) parseLong;
        } catch (NumberFormatException unused) {
            return -1;
        }
    }
}
