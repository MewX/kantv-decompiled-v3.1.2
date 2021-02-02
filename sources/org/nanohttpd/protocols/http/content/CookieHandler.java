package org.nanohttpd.protocols.http.content;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.nanohttpd.protocols.http.response.Response;

public class CookieHandler implements Iterable<String> {
    private final HashMap<String, String> cookies = new HashMap<>();
    private final ArrayList<Cookie> queue = new ArrayList<>();

    public CookieHandler(Map<String, String> map) {
        String str = (String) map.get("cookie");
        if (str != null) {
            for (String trim : str.split(";")) {
                String[] split = trim.trim().split("=");
                if (split.length == 2) {
                    this.cookies.put(split[0], split[1]);
                }
            }
        }
    }

    public void delete(String str) {
        set(str, "-delete-", -30);
    }

    public Iterator<String> iterator() {
        return this.cookies.keySet().iterator();
    }

    public String read(String str) {
        return (String) this.cookies.get(str);
    }

    public void set(Cookie cookie) {
        this.queue.add(cookie);
    }

    public void set(String str, String str2, int i) {
        this.queue.add(new Cookie(str, str2, Cookie.getHTTPTime(i)));
    }

    public void unloadQueue(Response response) {
        Iterator it = this.queue.iterator();
        while (it.hasNext()) {
            response.addCookieHeader(((Cookie) it.next()).getHTTPHeader());
        }
    }
}
