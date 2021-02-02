package org.seamless.http;

import com.avos.avoscloud.AVStatus;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.jetty.http.HttpHeaderValues;

public class CacheControl {
    private Map<String, String> cacheExtensions = new HashMap();
    private int maxAge = -1;
    private boolean mustRevalidate = false;
    private boolean noCache = false;
    private List<String> noCacheFields = new ArrayList();
    private boolean noStore = false;
    private boolean noTransform = true;
    private List<String> privateFields = new ArrayList();
    private boolean privateFlag = false;
    private boolean proxyRevalidate = false;
    private int sharedMaxAge = -1;

    public int getMaxAge() {
        return this.maxAge;
    }

    public void setMaxAge(int i) {
        this.maxAge = i;
    }

    public int getSharedMaxAge() {
        return this.sharedMaxAge;
    }

    public void setSharedMaxAge(int i) {
        this.sharedMaxAge = i;
    }

    public boolean isNoCache() {
        return this.noCache;
    }

    public void setNoCache(boolean z) {
        this.noCache = z;
    }

    public List<String> getNoCacheFields() {
        return this.noCacheFields;
    }

    public void setNoCacheFields(List<String> list) {
        this.noCacheFields = list;
    }

    public boolean isPrivateFlag() {
        return this.privateFlag;
    }

    public void setPrivateFlag(boolean z) {
        this.privateFlag = z;
    }

    public List<String> getPrivateFields() {
        return this.privateFields;
    }

    public void setPrivateFields(List<String> list) {
        this.privateFields = list;
    }

    public boolean isNoStore() {
        return this.noStore;
    }

    public void setNoStore(boolean z) {
        this.noStore = z;
    }

    public boolean isNoTransform() {
        return this.noTransform;
    }

    public void setNoTransform(boolean z) {
        this.noTransform = z;
    }

    public boolean isMustRevalidate() {
        return this.mustRevalidate;
    }

    public void setMustRevalidate(boolean z) {
        this.mustRevalidate = z;
    }

    public boolean isProxyRevalidate() {
        return this.proxyRevalidate;
    }

    public void setProxyRevalidate(boolean z) {
        this.proxyRevalidate = z;
    }

    public Map<String, String> getCacheExtensions() {
        return this.cacheExtensions;
    }

    public void setCacheExtensions(Map<String, String> map) {
        this.cacheExtensions = map;
    }

    public static CacheControl valueOf(String str) throws IllegalArgumentException {
        String str2;
        if (str == null) {
            return null;
        }
        CacheControl cacheControl = new CacheControl();
        for (String trim : str.split(",")) {
            String[] split = trim.trim().split("=");
            String trim2 = split[0].trim();
            if (split.length > 1) {
                str2 = split[1].trim();
                String str3 = "\"";
                if (str2.startsWith(str3)) {
                    str2 = str2.substring(1);
                }
                if (str2.endsWith(str3)) {
                    str2 = str2.substring(0, str2.length() - 1);
                }
            } else {
                str2 = null;
            }
            String lowerCase = trim2.toLowerCase();
            String str4 = "";
            if (HttpHeaderValues.NO_CACHE.equals(lowerCase)) {
                cacheControl.setNoCache(true);
                if (str2 != null && !str4.equals(str2)) {
                    cacheControl.getNoCacheFields().add(str2);
                }
            } else if (AVStatus.INBOX_PRIVATE.equals(lowerCase)) {
                cacheControl.setPrivateFlag(true);
                if (str2 != null && !str4.equals(str2)) {
                    cacheControl.getPrivateFields().add(str2);
                }
            } else if ("no-store".equals(lowerCase)) {
                cacheControl.setNoStore(true);
            } else if ("max-age".equals(lowerCase)) {
                if (str2 != null) {
                    cacheControl.setMaxAge(Integer.valueOf(str2).intValue());
                } else {
                    StringBuilder sb = new StringBuilder();
                    sb.append("CacheControl max-age header does not have a value: ");
                    sb.append(str2);
                    throw new IllegalArgumentException(sb.toString());
                }
            } else if ("s-maxage".equals(lowerCase)) {
                if (str2 != null) {
                    cacheControl.setSharedMaxAge(Integer.valueOf(str2).intValue());
                } else {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("CacheControl s-maxage header does not have a value: ");
                    sb2.append(str2);
                    throw new IllegalArgumentException(sb2.toString());
                }
            } else if ("no-transform".equals(lowerCase)) {
                cacheControl.setNoTransform(true);
            } else if ("must-revalidate".equals(lowerCase)) {
                cacheControl.setMustRevalidate(true);
            } else if ("proxy-revalidate".equals(lowerCase)) {
                cacheControl.setProxyRevalidate(true);
            } else if (!"public".equals(lowerCase)) {
                if (str2 == null) {
                    str2 = str4;
                }
                cacheControl.getCacheExtensions().put(trim2, str2);
            }
        }
        return cacheControl;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (!isPrivateFlag()) {
            sb.append("public");
        }
        if (isMustRevalidate()) {
            append("must-revalidate", sb);
        }
        if (isNoTransform()) {
            append("no-transform", sb);
        }
        if (isNoStore()) {
            append("no-store", sb);
        }
        if (isProxyRevalidate()) {
            append("proxy-revalidate", sb);
        }
        String str = "=";
        if (getSharedMaxAge() > -1) {
            StringBuilder append = append("s-maxage", sb);
            append.append(str);
            append.append(getSharedMaxAge());
        }
        if (getMaxAge() > -1) {
            StringBuilder append2 = append("max-age", sb);
            append2.append(str);
            append2.append(getMaxAge());
        }
        String str2 = "\"";
        String str3 = "=\"";
        if (isNoCache()) {
            int size = getNoCacheFields().size();
            String str4 = HttpHeaderValues.NO_CACHE;
            if (size < 1) {
                append(str4, sb);
            } else {
                for (String str5 : getNoCacheFields()) {
                    StringBuilder append3 = append(str4, sb);
                    append3.append(str3);
                    append3.append(str5);
                    append3.append(str2);
                }
            }
        }
        if (isPrivateFlag()) {
            int size2 = getPrivateFields().size();
            String str6 = AVStatus.INBOX_PRIVATE;
            if (size2 < 1) {
                append(str6, sb);
            } else {
                for (String str7 : getPrivateFields()) {
                    StringBuilder append4 = append(str6, sb);
                    append4.append(str3);
                    append4.append(str7);
                    append4.append(str2);
                }
            }
        }
        for (String str8 : getCacheExtensions().keySet()) {
            String str9 = (String) getCacheExtensions().get(str8);
            append(str8, sb);
            if (str9 != null && !"".equals(str9)) {
                sb.append(str3);
                sb.append(str9);
                sb.append(str2);
            }
        }
        return sb.toString();
    }

    private StringBuilder append(String str, StringBuilder sb) {
        if (sb.length() > 0) {
            sb.append(", ");
        }
        sb.append(str);
        return sb;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CacheControl cacheControl = (CacheControl) obj;
        return this.maxAge == cacheControl.maxAge && this.mustRevalidate == cacheControl.mustRevalidate && this.noCache == cacheControl.noCache && this.noStore == cacheControl.noStore && this.noTransform == cacheControl.noTransform && this.privateFlag == cacheControl.privateFlag && this.proxyRevalidate == cacheControl.proxyRevalidate && this.sharedMaxAge == cacheControl.sharedMaxAge && this.cacheExtensions.equals(cacheControl.cacheExtensions) && this.noCacheFields.equals(cacheControl.noCacheFields) && this.privateFields.equals(cacheControl.privateFields);
    }

    public int hashCode() {
        return (((((((((((((((((((this.maxAge * 31) + this.sharedMaxAge) * 31) + (this.noCache ? 1 : 0)) * 31) + this.noCacheFields.hashCode()) * 31) + (this.privateFlag ? 1 : 0)) * 31) + this.privateFields.hashCode()) * 31) + (this.noStore ? 1 : 0)) * 31) + (this.noTransform ? 1 : 0)) * 31) + (this.mustRevalidate ? 1 : 0)) * 31) + (this.proxyRevalidate ? 1 : 0)) * 31) + this.cacheExtensions.hashCode();
    }
}
