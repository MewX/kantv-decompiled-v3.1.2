package io.flutter.plugins.connectivity;

import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build.VERSION;
import com.kantv.ui.config.Definition.UserPreference;
import io.reactivex.annotations.SchedulerSupport;

class Connectivity {
    private ConnectivityManager connectivityManager;
    private WifiManager wifiManager;

    Connectivity(ConnectivityManager connectivityManager2, WifiManager wifiManager2) {
        this.connectivityManager = connectivityManager2;
        this.wifiManager = wifiManager2;
    }

    /* access modifiers changed from: 0000 */
    public String getNetworkType() {
        if (VERSION.SDK_INT >= 23) {
            NetworkCapabilities networkCapabilities = this.connectivityManager.getNetworkCapabilities(this.connectivityManager.getActiveNetwork());
            if (networkCapabilities == null) {
                return SchedulerSupport.NONE;
            }
            if (networkCapabilities.hasTransport(1) || networkCapabilities.hasTransport(3)) {
                return "wifi";
            }
            if (networkCapabilities.hasTransport(0)) {
                return UserPreference.MOBILE;
            }
        }
        return getNetworkTypeLegacy();
    }

    /* access modifiers changed from: 0000 */
    public String getWifiName() {
        WifiInfo wifiInfo = getWifiInfo();
        String ssid = wifiInfo != null ? wifiInfo.getSSID() : null;
        return ssid != null ? ssid.replaceAll("\"", "") : ssid;
    }

    /* access modifiers changed from: 0000 */
    public String getWifiBSSID() {
        WifiInfo wifiInfo = getWifiInfo();
        if (wifiInfo != null) {
            return wifiInfo.getBSSID();
        }
        return null;
    }

    /* access modifiers changed from: 0000 */
    public String getWifiIPAddress() {
        WifiManager wifiManager2 = this.wifiManager;
        WifiInfo connectionInfo = wifiManager2 != null ? wifiManager2.getConnectionInfo() : null;
        int ipAddress = connectionInfo != null ? connectionInfo.getIpAddress() : 0;
        if (ipAddress == 0) {
            return null;
        }
        return String.format("%d.%d.%d.%d", new Object[]{Integer.valueOf(ipAddress & 255), Integer.valueOf((ipAddress >> 8) & 255), Integer.valueOf((ipAddress >> 16) & 255), Integer.valueOf((ipAddress >> 24) & 255)});
    }

    private WifiInfo getWifiInfo() {
        WifiManager wifiManager2 = this.wifiManager;
        if (wifiManager2 == null) {
            return null;
        }
        return wifiManager2.getConnectionInfo();
    }

    private String getNetworkTypeLegacy() {
        NetworkInfo activeNetworkInfo = this.connectivityManager.getActiveNetworkInfo();
        String str = SchedulerSupport.NONE;
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return str;
        }
        int type = activeNetworkInfo.getType();
        if (type != 0) {
            if (type != 1) {
                if (!(type == 4 || type == 5)) {
                    if (!(type == 6 || type == 9)) {
                        return str;
                    }
                }
            }
            return "wifi";
        }
        return UserPreference.MOBILE;
    }
}
