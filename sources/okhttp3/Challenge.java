package okhttp3;

import io.fabric.sdk.android.services.network.HttpRequest;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import javax.annotation.Nullable;

public final class Challenge {
    private final Map<String, String> authParams;
    private final String scheme;

    public Challenge(String str, Map<String, String> map) {
        if (str == null) {
            throw new NullPointerException("scheme == null");
        } else if (map != null) {
            this.scheme = str;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Entry entry : map.entrySet()) {
                linkedHashMap.put(entry.getKey() == null ? null : ((String) entry.getKey()).toLowerCase(Locale.US), (String) entry.getValue());
            }
            this.authParams = Collections.unmodifiableMap(linkedHashMap);
        } else {
            throw new NullPointerException("authParams == null");
        }
    }

    public Challenge(String str, String str2) {
        if (str == null) {
            throw new NullPointerException("scheme == null");
        } else if (str2 != null) {
            this.scheme = str;
            this.authParams = Collections.singletonMap("realm", str2);
        } else {
            throw new NullPointerException("realm == null");
        }
    }

    public Challenge withCharset(Charset charset) {
        if (charset != null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap(this.authParams);
            linkedHashMap.put(HttpRequest.PARAM_CHARSET, charset.name());
            return new Challenge(this.scheme, (Map<String, String>) linkedHashMap);
        }
        throw new NullPointerException("charset == null");
    }

    public String scheme() {
        return this.scheme;
    }

    public Map<String, String> authParams() {
        return this.authParams;
    }

    public String realm() {
        return (String) this.authParams.get("realm");
    }

    public Charset charset() {
        String str = (String) this.authParams.get(HttpRequest.PARAM_CHARSET);
        if (str != null) {
            try {
                return Charset.forName(str);
            } catch (Exception unused) {
            }
        }
        return StandardCharsets.ISO_8859_1;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof Challenge) {
            Challenge challenge = (Challenge) obj;
            if (challenge.scheme.equals(this.scheme) && challenge.authParams.equals(this.authParams)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((899 + this.scheme.hashCode()) * 31) + this.authParams.hashCode();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.scheme);
        sb.append(" authParams=");
        sb.append(this.authParams);
        return sb.toString();
    }
}
