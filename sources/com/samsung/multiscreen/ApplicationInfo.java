package com.samsung.multiscreen;

import java.util.Map;
import lombok.NonNull;

public class ApplicationInfo {
    private static final String PROPERTY_ID = "id";
    private static final String PROPERTY_NAME = "name";
    private static final String PROPERTY_STATE = "running";
    private static final String PROPERTY_VERSION = "version";
    @NonNull
    private final String id;
    @NonNull
    private final String name;
    private final boolean running;
    @NonNull
    private final String version;

    /* access modifiers changed from: protected */
    public boolean canEqual(Object obj) {
        return obj instanceof ApplicationInfo;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ApplicationInfo)) {
            return false;
        }
        ApplicationInfo applicationInfo = (ApplicationInfo) obj;
        if (!applicationInfo.canEqual(this)) {
            return false;
        }
        String id2 = getId();
        String id3 = applicationInfo.getId();
        if (id2 != null ? !id2.equals(id3) : id3 != null) {
            return false;
        }
        if (isRunning() != applicationInfo.isRunning()) {
            return false;
        }
        String name2 = getName();
        String name3 = applicationInfo.getName();
        if (name2 != null ? !name2.equals(name3) : name3 != null) {
            return false;
        }
        String version2 = getVersion();
        String version3 = applicationInfo.getVersion();
        return version2 != null ? version2.equals(version3) : version3 == null;
    }

    public int hashCode() {
        String id2 = getId();
        int i = 43;
        int hashCode = (((id2 == null ? 43 : id2.hashCode()) + 59) * 59) + (isRunning() ? 79 : 97);
        String name2 = getName();
        int hashCode2 = (hashCode * 59) + (name2 == null ? 43 : name2.hashCode());
        String version2 = getVersion();
        int i2 = hashCode2 * 59;
        if (version2 != null) {
            i = version2.hashCode();
        }
        return i2 + i;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ApplicationInfo(id=");
        sb.append(getId());
        sb.append(", running=");
        sb.append(isRunning());
        sb.append(", name=");
        sb.append(getName());
        sb.append(", version=");
        sb.append(getVersion());
        sb.append(")");
        return sb.toString();
    }

    private ApplicationInfo(@NonNull String str, boolean z, @NonNull String str2, @NonNull String str3) {
        if (str == null) {
            throw new NullPointerException("id");
        } else if (str2 == null) {
            throw new NullPointerException("name");
        } else if (str3 != null) {
            this.id = str;
            this.running = z;
            this.name = str2;
            this.version = str3;
        } else {
            throw new NullPointerException(PROPERTY_VERSION);
        }
    }

    @NonNull
    public String getId() {
        return this.id;
    }

    public boolean isRunning() {
        return this.running;
    }

    @NonNull
    public String getName() {
        return this.name;
    }

    @NonNull
    public String getVersion() {
        return this.version;
    }

    static ApplicationInfo create(@NonNull Map<String, Object> map) {
        if (map != null) {
            return new ApplicationInfo((String) map.get("id"), ((Boolean) map.get(PROPERTY_STATE)).booleanValue(), (String) map.get("name"), (String) map.get(PROPERTY_VERSION));
        }
        throw new NullPointerException("info");
    }
}
