package com.samsung.multiscreen;

import java.util.Map;

public class Device {
    private static final String COUNTRY_CODE_KEY = "countryCode";
    private static final String DESCRIPTION_KEY = "description";
    private static final String DUID_KEY = "duid";
    private static final String FIRMWARE_VERSION_KEY = "firmwareVersion";
    private static final String ID_KEY = "id";
    private static final String IP_KEY = "ip";
    private static final String MODEL_KEY = "model";
    private static final String NAME_KEY = "name";
    private static final String NETWORK_TYPE_KEY = "networkType";
    private static final String PLATFORM_KEY = "OS";
    private static final String RESOLUTION_KEY = "resolution";
    private static final String SSID_KEY = "ssid";
    private static final String UDN_KEY = "udn";
    private static final String WIFIMAC_KEY = "wifiMac";
    private final String countryCode;
    private final String description;
    private final String duid;
    private final String firmwareVersion;
    private final String id;
    private final String ip;
    private final String model;
    private final String name;
    private final String networkType;
    private final String platform;
    private final String resolution;
    private final String ssid;
    private final String udn;
    private final String wifiMac;

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Device(duid=");
        sb.append(getDuid());
        sb.append(", model=");
        sb.append(getModel());
        sb.append(", description=");
        sb.append(getDescription());
        sb.append(", networkType=");
        sb.append(getNetworkType());
        sb.append(", ssid=");
        sb.append(getSsid());
        sb.append(", ip=");
        sb.append(getIp());
        sb.append(", firmwareVersion=");
        sb.append(getFirmwareVersion());
        sb.append(", name=");
        sb.append(getName());
        sb.append(", id=");
        sb.append(getId());
        sb.append(", udn=");
        sb.append(getUdn());
        sb.append(", resolution=");
        sb.append(getResolution());
        sb.append(", countryCode=");
        sb.append(getCountryCode());
        sb.append(", platform=");
        sb.append(getPlatform());
        sb.append(", wifiMac=");
        sb.append(getWifiMac());
        sb.append(")");
        return sb.toString();
    }

    /* access modifiers changed from: protected */
    public boolean canEqual(Object obj) {
        return obj instanceof Device;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Device)) {
            return false;
        }
        Device device = (Device) obj;
        if (!device.canEqual(this)) {
            return false;
        }
        String duid2 = getDuid();
        String duid3 = device.getDuid();
        return duid2 != null ? duid2.equals(duid3) : duid3 == null;
    }

    public int hashCode() {
        String duid2 = getDuid();
        return 59 + (duid2 == null ? 43 : duid2.hashCode());
    }

    public String getDuid() {
        return this.duid;
    }

    public String getModel() {
        return this.model;
    }

    public String getDescription() {
        return this.description;
    }

    public String getNetworkType() {
        return this.networkType;
    }

    public String getSsid() {
        return this.ssid;
    }

    public String getIp() {
        return this.ip;
    }

    public String getFirmwareVersion() {
        return this.firmwareVersion;
    }

    public String getName() {
        return this.name;
    }

    public String getId() {
        return this.id;
    }

    public String getUdn() {
        return this.udn;
    }

    public String getResolution() {
        return this.resolution;
    }

    public String getCountryCode() {
        return this.countryCode;
    }

    public String getPlatform() {
        return this.platform;
    }

    public String getWifiMac() {
        return this.wifiMac;
    }

    private Device(Map<String, Object> map) {
        if (map != null) {
            this.duid = (String) map.get(DUID_KEY);
            this.model = (String) map.get(MODEL_KEY);
            this.description = (String) map.get("description");
            this.networkType = (String) map.get(NETWORK_TYPE_KEY);
            this.ssid = (String) map.get(SSID_KEY);
            this.ip = (String) map.get("ip");
            this.firmwareVersion = (String) map.get(FIRMWARE_VERSION_KEY);
            this.name = (String) map.get("name");
            this.id = (String) map.get("id");
            this.udn = (String) map.get(UDN_KEY);
            this.resolution = (String) map.get(RESOLUTION_KEY);
            this.countryCode = (String) map.get(COUNTRY_CODE_KEY);
            this.platform = (String) map.get(PLATFORM_KEY);
            this.wifiMac = (String) map.get(WIFIMAC_KEY);
            return;
        }
        throw new NullPointerException();
    }

    static Device create(Map<String, Object> map) {
        return new Device(map);
    }
}
