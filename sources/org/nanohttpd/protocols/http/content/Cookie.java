package org.nanohttpd.protocols.http.content;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;

public class Cookie {
    private final String e;
    private final String n;
    private final String v;

    public static String getHTTPTime(int i) {
        Calendar instance = Calendar.getInstance();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss z", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        instance.add(5, i);
        return simpleDateFormat.format(instance.getTime());
    }

    public Cookie(String str, String str2) {
        this(str, str2, 30);
    }

    public Cookie(String str, String str2, int i) {
        this.n = str;
        this.v = str2;
        this.e = getHTTPTime(i);
    }

    public Cookie(String str, String str2, String str3) {
        this.n = str;
        this.v = str2;
        this.e = str3;
    }

    public String getHTTPHeader() {
        return String.format("%s=%s; expires=%s", new Object[]{this.n, this.v, this.e});
    }
}
