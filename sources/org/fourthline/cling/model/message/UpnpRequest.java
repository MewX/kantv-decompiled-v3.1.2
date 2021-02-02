package org.fourthline.cling.model.message;

import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public class UpnpRequest extends UpnpOperation {
    private Method method;
    private URI uri;

    public enum Method {
        GET(r2),
        POST(r3),
        NOTIFY(r4),
        MSEARCH("M-SEARCH"),
        SUBSCRIBE(r6),
        UNSUBSCRIBE(r7),
        UNKNOWN(r8);
        
        private static Map<String, Method> byName;
        private String httpName;

        static {
            byName = new HashMap<String, Method>() {
                {
                    Method[] values;
                    for (Method method : Method.values()) {
                        put(method.getHttpName(), method);
                    }
                }
            };
        }

        private Method(String str) {
            this.httpName = str;
        }

        public String getHttpName() {
            return this.httpName;
        }

        public static Method getByHttpName(String str) {
            if (str == null) {
                return UNKNOWN;
            }
            Method method = (Method) byName.get(str.toUpperCase(Locale.ROOT));
            if (method == null) {
                method = UNKNOWN;
            }
            return method;
        }
    }

    public UpnpRequest(Method method2) {
        this.method = method2;
    }

    public UpnpRequest(Method method2, URI uri2) {
        this.method = method2;
        this.uri = uri2;
    }

    public UpnpRequest(Method method2, URL url) {
        this.method = method2;
        if (url != null) {
            try {
                this.uri = url.toURI();
            } catch (URISyntaxException e) {
                throw new IllegalArgumentException(e);
            }
        }
    }

    public Method getMethod() {
        return this.method;
    }

    public String getHttpMethodName() {
        return this.method.getHttpName();
    }

    public URI getURI() {
        return this.uri;
    }

    public void setUri(URI uri2) {
        this.uri = uri2;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(getHttpMethodName());
        if (getURI() != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(" ");
            sb2.append(getURI());
            str = sb2.toString();
        } else {
            str = "";
        }
        sb.append(str);
        return sb.toString();
    }
}
