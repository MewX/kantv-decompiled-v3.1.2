package com.samsung.multiscreen;

import com.koushikdutta.async.http.AsyncHttpResponse;
import java.util.Map;

public class Error {
    private final long code;
    private final String message;
    private final String name;

    /* access modifiers changed from: protected */
    public boolean canEqual(Object obj) {
        return obj instanceof Error;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Error)) {
            return false;
        }
        Error error = (Error) obj;
        if (!error.canEqual(this) || getCode() != error.getCode()) {
            return false;
        }
        String name2 = getName();
        String name3 = error.getName();
        if (name2 != null ? !name2.equals(name3) : name3 != null) {
            return false;
        }
        String message2 = getMessage();
        String message3 = error.getMessage();
        return message2 != null ? message2.equals(message3) : message3 == null;
    }

    public int hashCode() {
        long code2 = getCode();
        int i = ((int) (code2 ^ (code2 >>> 32))) + 59;
        String name2 = getName();
        int i2 = 43;
        int hashCode = (i * 59) + (name2 == null ? 43 : name2.hashCode());
        String message2 = getMessage();
        int i3 = hashCode * 59;
        if (message2 != null) {
            i2 = message2.hashCode();
        }
        return i3 + i2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Error(code=");
        sb.append(getCode());
        sb.append(", name=");
        sb.append(getName());
        sb.append(", message=");
        sb.append(getMessage());
        sb.append(")");
        return sb.toString();
    }

    private Error(long j, String str, String str2) {
        this.code = j;
        this.name = str;
        this.message = str2;
    }

    public long getCode() {
        return this.code;
    }

    public String getName() {
        return this.name;
    }

    public String getMessage() {
        return this.message;
    }

    static Error create(AsyncHttpResponse asyncHttpResponse) {
        if (asyncHttpResponse != null) {
            return new Error((long) asyncHttpResponse.code(), "http error", asyncHttpResponse.message());
        }
        throw new NullPointerException();
    }

    static Error create(String str) {
        return create(-1, "error", str);
    }

    static Error create(Exception exc) {
        if (exc != null) {
            return new Error(-1, "error", exc.getMessage());
        }
        throw new NullPointerException();
    }

    static Error create(long j, Map<String, Object> map) {
        if (map != null) {
            String str = (String) map.get("name");
            if (str == null) {
                str = "error";
            }
            return new Error(j, str, (String) map.get("message"));
        }
        throw new NullPointerException();
    }

    static Error create(long j, String str, String str2) {
        if (str != null && str2 != null) {
            return new Error(j, str, str2);
        }
        throw new NullPointerException();
    }
}
