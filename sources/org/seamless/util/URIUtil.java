package org.seamless.util;

import com.avos.avoscloud.java_websocket.drafts.Draft_75;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.BitSet;

public class URIUtil {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final BitSet ALLOWED = new BitSet() {
        {
            for (int i = 97; i <= 122; i++) {
                set(i);
            }
            for (int i2 = 65; i2 <= 90; i2++) {
                set(i2);
            }
            for (int i3 = 48; i3 <= 57; i3++) {
                set(i3);
            }
            set(33);
            set(36);
            set(38);
            set(39);
            set(40);
            set(41);
            set(42);
            set(43);
            set(44);
            set(59);
            set(61);
            set(45);
            set(46);
            set(95);
            set(126);
            set(58);
            set(64);
        }
    };
    public static final BitSet FRAGMENT = new BitSet() {
        {
            or(URIUtil.ALLOWED);
            set(47);
            set(63);
        }
    };
    public static final BitSet PATH_PARAM_NAME = new BitSet() {
        {
            or(URIUtil.ALLOWED);
            clear(59);
            clear(61);
        }
    };
    public static final BitSet PATH_PARAM_VALUE = new BitSet() {
        {
            or(URIUtil.ALLOWED);
            clear(59);
        }
    };
    public static final BitSet PATH_SEGMENT = new BitSet() {
        {
            or(URIUtil.ALLOWED);
            clear(59);
        }
    };
    public static final BitSet QUERY = new BitSet() {
        {
            or(URIUtil.ALLOWED);
            set(47);
            set(63);
            clear(61);
            clear(38);
            clear(43);
        }
    };

    public static URI createAbsoluteURI(URI uri, String str) throws IllegalArgumentException {
        return createAbsoluteURI(uri, URI.create(str));
    }

    public static URI createAbsoluteURI(URI uri, URI uri2) throws IllegalArgumentException {
        if (uri == null && !uri2.isAbsolute()) {
            throw new IllegalArgumentException("Base URI is null and given URI is not absolute");
        } else if (uri == null && uri2.isAbsolute()) {
            return uri2;
        } else {
            if (uri.getPath().length() == 0) {
                try {
                    URI uri3 = new URI(uri.getScheme(), uri.getAuthority(), "/", uri.getQuery(), uri.getFragment());
                    uri = uri3;
                } catch (Exception e) {
                    throw new IllegalArgumentException(e);
                }
            }
            return uri.resolve(uri2);
        }
    }

    public static URL createAbsoluteURL(URL url, String str) throws IllegalArgumentException {
        return createAbsoluteURL(url, URI.create(str));
    }

    public static URL createAbsoluteURL(URL url, URI uri) throws IllegalArgumentException {
        if (url == null && !uri.isAbsolute()) {
            throw new IllegalArgumentException("Base URL is null and given URI is not absolute");
        } else if (url != null || !uri.isAbsolute()) {
            try {
                return createAbsoluteURI(url.toURI(), uri).toURL();
            } catch (Exception e) {
                throw new IllegalArgumentException("Base URL is not an URI, or can't create absolute URI (null?), or absolute URI can not be converted to URL", e);
            }
        } else {
            try {
                return uri.toURL();
            } catch (Exception unused) {
                throw new IllegalArgumentException("Base URL was null and given URI can't be converted to URL");
            }
        }
    }

    public static URL createAbsoluteURL(URI uri, URI uri2) throws IllegalArgumentException {
        try {
            return createAbsoluteURI(uri, uri2).toURL();
        } catch (Exception e) {
            throw new IllegalArgumentException("Absolute URI can not be converted to URL", e);
        }
    }

    public static URL createAbsoluteURL(InetAddress inetAddress, int i, URI uri) throws IllegalArgumentException {
        try {
            if (inetAddress instanceof Inet6Address) {
                StringBuilder sb = new StringBuilder();
                sb.append("http://[");
                sb.append(inetAddress.getHostAddress());
                sb.append("]:");
                sb.append(i);
                return createAbsoluteURL(new URL(sb.toString()), uri);
            } else if (inetAddress instanceof Inet4Address) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("http://");
                sb2.append(inetAddress.getHostAddress());
                sb2.append(":");
                sb2.append(i);
                return createAbsoluteURL(new URL(sb2.toString()), uri);
            } else {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("InetAddress is neither IPv4 nor IPv6: ");
                sb3.append(inetAddress);
                throw new IllegalArgumentException(sb3.toString());
            }
        } catch (Exception e) {
            throw new IllegalArgumentException("Address, port, and URI can not be converted to URL", e);
        }
    }

    public static URI createRelativePathURI(URI uri) {
        assertRelativeURI("Given", uri);
        String uri2 = uri.normalize().toString();
        while (true) {
            int indexOf = uri2.indexOf("../");
            if (indexOf == -1) {
                break;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(uri2.substring(0, indexOf));
            sb.append(uri2.substring(indexOf + 3));
            uri2 = sb.toString();
        }
        while (uri2.startsWith("/")) {
            uri2 = uri2.substring(1);
        }
        return URI.create(uri2);
    }

    public static URI createRelativeURI(URI uri, URI uri2) {
        return uri.relativize(uri2);
    }

    public static URI createRelativeURI(URL url, URL url2) throws IllegalArgumentException {
        try {
            return createRelativeURI(url.toURI(), url2.toURI());
        } catch (Exception e) {
            throw new IllegalArgumentException("Can't convert base or full URL to URI", e);
        }
    }

    public static URI createRelativeURI(URI uri, URL url) throws IllegalArgumentException {
        try {
            return createRelativeURI(uri, url.toURI());
        } catch (Exception e) {
            throw new IllegalArgumentException("Can't convert full URL to URI", e);
        }
    }

    public static URI createRelativeURI(URL url, URI uri) throws IllegalArgumentException {
        try {
            return createRelativeURI(url.toURI(), uri);
        } catch (Exception e) {
            throw new IllegalArgumentException("Can't convert base URL to URI", e);
        }
    }

    public static boolean isAbsoluteURI(String str) {
        return URI.create(str).isAbsolute();
    }

    public static void assertRelativeURI(String str, URI uri) {
        if (uri.isAbsolute()) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(" URI must be relative, without scheme and authority");
            throw new IllegalArgumentException(sb.toString());
        }
    }

    public static URL toURL(URI uri) {
        if (uri == null) {
            return null;
        }
        try {
            return uri.toURL();
        } catch (MalformedURLException e) {
            throw new RuntimeException(e);
        }
    }

    public static URI toURI(URL url) {
        if (url == null) {
            return null;
        }
        try {
            return url.toURI();
        } catch (URISyntaxException e) {
            throw new RuntimeException(e);
        }
    }

    public static String percentEncode(String str) {
        if (str == null) {
            return "";
        }
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static String percentDecode(String str) {
        if (str == null) {
            return "";
        }
        try {
            return URLDecoder.decode(str, "UTF-8");
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static String encodePathSegment(String str) {
        return encode(PATH_SEGMENT, str, "UTF-8");
    }

    public static String encodePathParamName(String str) {
        return encode(PATH_PARAM_NAME, str, "UTF-8");
    }

    public static String encodePathParamValue(String str) {
        return encode(PATH_PARAM_VALUE, str, "UTF-8");
    }

    public static String encodeQueryNameOrValue(String str) {
        return encode(QUERY, str, "UTF-8");
    }

    public static String encodeFragment(String str) {
        return encode(FRAGMENT, str, "UTF-8");
    }

    public static String encode(BitSet bitSet, String str, String str2) {
        char[] charArray;
        if (str == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder(str.length() * 3);
        try {
            for (char c : str.toCharArray()) {
                if (bitSet.get(c)) {
                    sb.append(c);
                } else {
                    for (byte b : String.valueOf(c).getBytes(str2)) {
                        sb.append(String.format("%%%1$02X", new Object[]{Integer.valueOf(b & Draft_75.END_OF_FRAME)}));
                    }
                }
            }
            return sb.toString();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
