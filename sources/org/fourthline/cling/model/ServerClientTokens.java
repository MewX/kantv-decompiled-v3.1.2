package org.fourthline.cling.model;

import io.fabric.sdk.android.services.events.EventsFilesManager;

public class ServerClientTokens {
    public static final String UNKNOWN_PLACEHOLDER = "UNKNOWN";
    private int majorVersion = 1;
    private int minorVersion = 0;
    private String osName;
    private String osVersion;
    private String productName;
    private String productVersion;

    public ServerClientTokens() {
        String str = "";
        String str2 = "[^a-zA-Z0-9\\.\\-_]";
        this.osName = System.getProperty("os.name").replaceAll(str2, str);
        this.osVersion = System.getProperty("os.version").replaceAll(str2, str);
        this.productName = UserConstants.PRODUCT_TOKEN_NAME;
        this.productVersion = UserConstants.PRODUCT_TOKEN_VERSION;
    }

    public ServerClientTokens(int i, int i2) {
        String str = "";
        String str2 = "[^a-zA-Z0-9\\.\\-_]";
        this.osName = System.getProperty("os.name").replaceAll(str2, str);
        this.osVersion = System.getProperty("os.version").replaceAll(str2, str);
        this.productName = UserConstants.PRODUCT_TOKEN_NAME;
        this.productVersion = UserConstants.PRODUCT_TOKEN_VERSION;
        this.majorVersion = i;
        this.minorVersion = i2;
    }

    public ServerClientTokens(String str, String str2) {
        String str3 = "";
        String str4 = "[^a-zA-Z0-9\\.\\-_]";
        this.osName = System.getProperty("os.name").replaceAll(str4, str3);
        this.osVersion = System.getProperty("os.version").replaceAll(str4, str3);
        this.productName = UserConstants.PRODUCT_TOKEN_NAME;
        this.productVersion = UserConstants.PRODUCT_TOKEN_VERSION;
        this.productName = str;
        this.productVersion = str2;
    }

    public ServerClientTokens(int i, int i2, String str, String str2, String str3, String str4) {
        String str5 = "";
        String str6 = "[^a-zA-Z0-9\\.\\-_]";
        this.osName = System.getProperty("os.name").replaceAll(str6, str5);
        this.osVersion = System.getProperty("os.version").replaceAll(str6, str5);
        this.productName = UserConstants.PRODUCT_TOKEN_NAME;
        this.productVersion = UserConstants.PRODUCT_TOKEN_VERSION;
        this.majorVersion = i;
        this.minorVersion = i2;
        this.osName = str;
        this.osVersion = str2;
        this.productName = str3;
        this.productVersion = str4;
    }

    public int getMajorVersion() {
        return this.majorVersion;
    }

    public void setMajorVersion(int i) {
        this.majorVersion = i;
    }

    public int getMinorVersion() {
        return this.minorVersion;
    }

    public void setMinorVersion(int i) {
        this.minorVersion = i;
    }

    public String getOsName() {
        return this.osName;
    }

    public void setOsName(String str) {
        this.osName = str;
    }

    public String getOsVersion() {
        return this.osVersion;
    }

    public void setOsVersion(String str) {
        this.osVersion = str;
    }

    public String getProductName() {
        return this.productName;
    }

    public void setProductName(String str) {
        this.productName = str;
    }

    public String getProductVersion() {
        return this.productVersion;
    }

    public void setProductVersion(String str) {
        this.productVersion = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getOsName());
        String str = "/";
        sb.append(str);
        sb.append(getOsVersion());
        sb.append(" UPnP/");
        sb.append(getMajorVersion());
        sb.append(".");
        sb.append(getMinorVersion());
        sb.append(" ");
        sb.append(getProductName());
        sb.append(str);
        sb.append(getProductVersion());
        return sb.toString();
    }

    public String getHttpToken() {
        StringBuilder sb = new StringBuilder(256);
        sb.append(this.osName.indexOf(32) != -1 ? this.osName.replace(' ', '_') : this.osName);
        sb.append('/');
        sb.append(this.osVersion.indexOf(32) != -1 ? this.osVersion.replace(' ', '_') : this.osVersion);
        sb.append(" UPnP/");
        sb.append(this.majorVersion);
        sb.append('.');
        sb.append(this.minorVersion);
        sb.append(' ');
        sb.append(this.productName.indexOf(32) != -1 ? this.productName.replace(' ', '_') : this.productName);
        sb.append('/');
        sb.append(this.productVersion.indexOf(32) != -1 ? this.productVersion.replace(' ', '_') : this.productVersion);
        return sb.toString();
    }

    public String getOsToken() {
        StringBuilder sb = new StringBuilder();
        String osName2 = getOsName();
        String str = EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR;
        String str2 = " ";
        sb.append(osName2.replaceAll(str2, str));
        sb.append("/");
        sb.append(getOsVersion().replaceAll(str2, str));
        return sb.toString();
    }

    public String getProductToken() {
        StringBuilder sb = new StringBuilder();
        String productName2 = getProductName();
        String str = EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR;
        String str2 = " ";
        sb.append(productName2.replaceAll(str2, str));
        sb.append("/");
        sb.append(getProductVersion().replaceAll(str2, str));
        return sb.toString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ServerClientTokens serverClientTokens = (ServerClientTokens) obj;
        return this.majorVersion == serverClientTokens.majorVersion && this.minorVersion == serverClientTokens.minorVersion && this.osName.equals(serverClientTokens.osName) && this.osVersion.equals(serverClientTokens.osVersion) && this.productName.equals(serverClientTokens.productName) && this.productVersion.equals(serverClientTokens.productVersion);
    }

    public int hashCode() {
        return (((((((((this.majorVersion * 31) + this.minorVersion) * 31) + this.osName.hashCode()) * 31) + this.osVersion.hashCode()) * 31) + this.productName.hashCode()) * 31) + this.productVersion.hashCode();
    }
}
