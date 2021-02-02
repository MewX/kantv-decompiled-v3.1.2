package com.samsung.multiscreen;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.ConnectivityManager;
import android.net.ConnectivityManager.NetworkCallback;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.NetworkRequest.Builder;
import android.net.wifi.WifiManager;
import android.os.Build.VERSION;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONArray;
import org.json.JSONObject;

class StandbyDeviceList {
    private static final String DEVICE_LIST_FILE_NAME = "com.samsung.smartviewSDK.standbydevices";
    private static final String KEY_STANDBYLIST = "STANDBYLIST_KEY";
    private static final int SUPPORTED_TV_MODEL_YEAR = 16;
    private static final String TAG = "StndbyDLHndlr";
    private static final int TIMEOUT = 7000;
    private static final String VALUE_BSSID = "ssid";
    private static final String VALUE_DUID = "id";
    private static final String VALUE_MAC = "mac";
    private static final String VALUE_NAME = "name";
    private static final String VALUE_URI = "uri";
    private static StandbyDeviceList mInstance;
    /* access modifiers changed from: private */
    public List<StandbyDevice> mList;
    private SharedPreferences mLocalStorage;
    /* access modifiers changed from: private */
    public NetworkMonitor mNetworkMonitor;
    /* access modifiers changed from: private */
    public SearchListener mSearchListener;
    /* access modifiers changed from: private */
    public Boolean mShowStandbyDevicesTimerExpired;

    private class NetworkMonitor {
        /* access modifiers changed from: private */
        public final ConnectivityManager mConnectivityManager;
        /* access modifiers changed from: private */
        public String mCurrentBSSID;
        /* access modifiers changed from: private */
        public NetworkCallback mNetworkCallback;
        /* access modifiers changed from: private */
        public NetworkInfo mNetworkInfo = this.mConnectivityManager.getActiveNetworkInfo();

        NetworkMonitor(Context context, SearchListener searchListener) {
            StandbyDeviceList.this.mSearchListener = searchListener;
            this.mConnectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            NetworkInfo networkInfo = this.mNetworkInfo;
            if (networkInfo == null || !networkInfo.isConnected()) {
                this.mCurrentBSSID = "";
            } else {
                this.mCurrentBSSID = ((WifiManager) context.getApplicationContext().getSystemService("wifi")).getConnectionInfo().getBSSID();
            }
            registerNetworkChangeCallback(context);
        }

        /* access modifiers changed from: 0000 */
        public String getCurrentBSSID() {
            return this.mCurrentBSSID;
        }

        private void registerNetworkChangeCallback(final Context context) {
            new Thread(new Runnable() {
                public void run() {
                    if (VERSION.SDK_INT >= 21) {
                        NetworkMonitor.this.mNetworkCallback = new NetworkCallback() {
                            public void onAvailable(Network network) {
                                super.onAvailable(network);
                                NetworkMonitor.this.mNetworkInfo = NetworkMonitor.this.mConnectivityManager.getActiveNetworkInfo();
                                if (NetworkMonitor.this.mNetworkInfo == null || !NetworkMonitor.this.mNetworkInfo.isConnected()) {
                                    NetworkMonitor.this.mCurrentBSSID = "";
                                    return;
                                }
                                NetworkMonitor.this.mCurrentBSSID = ((WifiManager) context.getApplicationContext().getSystemService("wifi")).getConnectionInfo().getBSSID();
                                if (StandbyDeviceList.this.mShowStandbyDevicesTimerExpired.booleanValue()) {
                                    List access$600 = StandbyDeviceList.this.get();
                                    for (int i = 0; i < access$600.size(); i++) {
                                        StandbyDeviceList.this.mSearchListener.onFound((Service) access$600.get(i));
                                    }
                                }
                            }

                            public void onLost(Network network) {
                                super.onLost(network);
                                List access$600 = StandbyDeviceList.this.get();
                                for (int i = 0; i < access$600.size(); i++) {
                                    StandbyDeviceList.this.mSearchListener.onLost((Service) access$600.get(i));
                                }
                                NetworkMonitor.this.mCurrentBSSID = "";
                            }
                        };
                        NetworkMonitor.this.mConnectivityManager.registerNetworkCallback(new Builder().build(), NetworkMonitor.this.mNetworkCallback);
                    }
                }
            }).run();
        }

        /* access modifiers changed from: 0000 */
        public void stopNetworkMonitoring() {
            if (this.mNetworkCallback != null) {
                this.mNetworkCallback = null;
            }
        }
    }

    private class StandbyDevice {
        String bssid;
        String duid;
        String ip;
        Boolean isActive;
        String mac;
        String name;

        StandbyDevice(String str, String str2, String str3, String str4, String str5, Boolean bool) {
            this.duid = str;
            this.bssid = str2;
            this.mac = str3;
            this.ip = str4;
            this.name = str5;
            this.isActive = bool;
        }
    }

    static StandbyDeviceList create(Context context, SearchListener searchListener) {
        if (mInstance == null) {
            mInstance = new StandbyDeviceList(context, searchListener);
        }
        return mInstance;
    }

    /* access modifiers changed from: 0000 */
    public void destruct() {
        if (mInstance != null) {
            mInstance = null;
            this.mList.clear();
            this.mNetworkMonitor.stopNetworkMonitoring();
            this.mLocalStorage = null;
            this.mSearchListener = null;
        }
    }

    static StandbyDeviceList getInstance() {
        return mInstance;
    }

    /* access modifiers changed from: 0000 */
    public void start() {
        new Timer("showStandbyTVTimer", true).schedule(new TimerTask() {
            public void run() {
                StandbyDeviceList.this.mShowStandbyDevicesTimerExpired = Boolean.valueOf(true);
                List access$600 = StandbyDeviceList.this.get();
                for (int i = 0; i < access$600.size(); i++) {
                    Service service = (Service) access$600.get(i);
                    if (service != null) {
                        StandbyDeviceList.this.mSearchListener.onFound(service);
                    }
                }
            }
        }, 7000);
    }

    /* access modifiers changed from: 0000 */
    public void stop() {
        Boolean valueOf = Boolean.valueOf(false);
        this.mShowStandbyDevicesTimerExpired = valueOf;
        for (int i = 0; i < this.mList.size(); i++) {
            ((StandbyDevice) this.mList.get(i)).isActive = valueOf;
        }
    }

    /* access modifiers changed from: 0000 */
    public Service get(String str) {
        int i = 0;
        while (i < this.mList.size()) {
            try {
                StandbyDevice standbyDevice = (StandbyDevice) this.mList.get(i);
                if (standbyDevice.duid.trim().equals(str.trim())) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("id", standbyDevice.duid);
                    jSONObject.put(VALUE_URI, standbyDevice.ip);
                    jSONObject.put("name", standbyDevice.name);
                    return Service.create(jSONObject);
                }
                i++;
            } catch (Exception e) {
                StringBuilder sb = new StringBuilder();
                sb.append("get(Duid): Error: ");
                sb.append(e.getMessage());
                Log.e(TAG, sb.toString());
            }
        }
        return null;
    }

    /* access modifiers changed from: 0000 */
    public void update(final Service service, final Boolean bool) {
        if (service.getType().trim().equals(Service.TYPE_SMART_TV)) {
            service.getDeviceInfo(new Result<Device>() {
                public void onSuccess(Device device) {
                    StandbyDeviceList.this.remove(service.getId());
                    int i = 0;
                    try {
                        i = Integer.parseInt(device.getModel().substring(0, 2));
                    } catch (NumberFormatException unused) {
                    }
                    if (i >= 16) {
                        StandbyDevice standbyDevice = new StandbyDevice(service.getId(), StandbyDeviceList.this.mNetworkMonitor.getCurrentBSSID(), device.getWifiMac(), service.getUri().toString(), device.getName(), bool);
                        StandbyDeviceList.this.mList.add(standbyDevice);
                        StandbyDeviceList.this.commit();
                    }
                }

                public void onError(Error error) {
                    for (int i = 0; i < StandbyDeviceList.this.mList.size(); i++) {
                        if (((StandbyDevice) StandbyDeviceList.this.mList.get(i)).duid.trim().equals(service.getId().trim())) {
                            ((StandbyDevice) StandbyDeviceList.this.mList.get(i)).isActive = Boolean.valueOf(false);
                            return;
                        }
                    }
                }
            });
        }
    }

    /* access modifiers changed from: 0000 */
    public void remove(Service service) {
        if (service.isStandbyService.booleanValue() && remove(service.getId()).booleanValue()) {
            this.mSearchListener.onLost(service);
            commit();
        }
    }

    /* access modifiers changed from: 0000 */
    public void clear() {
        new Runnable() {
            public void run() {
                if (StandbyDeviceList.this.mList != null && StandbyDeviceList.this.mList.size() > 0) {
                    int i = 0;
                    while (i < StandbyDeviceList.this.mList.size()) {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("id", ((StandbyDevice) StandbyDeviceList.this.mList.get(i)).duid);
                            jSONObject.put(StandbyDeviceList.VALUE_BSSID, ((StandbyDevice) StandbyDeviceList.this.mList.get(i)).bssid);
                            jSONObject.put(StandbyDeviceList.VALUE_MAC, ((StandbyDevice) StandbyDeviceList.this.mList.get(i)).mac);
                            jSONObject.put(StandbyDeviceList.VALUE_URI, ((StandbyDevice) StandbyDeviceList.this.mList.get(i)).ip);
                            jSONObject.put("name", ((StandbyDevice) StandbyDeviceList.this.mList.get(i)).name);
                            StandbyDeviceList.this.mSearchListener.onLost(Service.create(jSONObject));
                            StandbyDeviceList.this.mList.remove(i);
                            i++;
                        } catch (Exception e) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("clear() Unsuccessful: error : ");
                            sb.append(e.getMessage());
                            Log.e(StandbyDeviceList.TAG, sb.toString());
                            return;
                        }
                    }
                    StandbyDeviceList.this.commit();
                }
            }
        }.run();
    }

    /* access modifiers changed from: 0000 */
    public Service getLostStandbyService(Service service) {
        if (!service.isStandbyService.booleanValue() && isStandbyDevice(service.getId()).booleanValue()) {
            update(service, Boolean.valueOf(true));
            if (this.mShowStandbyDevicesTimerExpired.booleanValue()) {
                return get(service.getId());
            }
        }
        return null;
    }

    /* access modifiers changed from: 0000 */
    public Service getFoundStandbyService(Service service) {
        if (service.isStandbyService.booleanValue() || !isStandbyDevice(service.getId()).booleanValue()) {
            return null;
        }
        update(service, Boolean.valueOf(false));
        return get(service.getId());
    }

    /* access modifiers changed from: 0000 */
    public String getMac(Service service) {
        for (int i = 0; i < this.mList.size(); i++) {
            if (service.getId().trim().equals(((StandbyDevice) this.mList.get(i)).duid.trim())) {
                return ((StandbyDevice) this.mList.get(i)).mac;
            }
        }
        return null;
    }

    private StandbyDeviceList(Context context, SearchListener searchListener) {
        JSONArray jSONArray;
        Context context2 = context;
        Boolean valueOf = Boolean.valueOf(false);
        this.mLocalStorage = context2.getSharedPreferences(DEVICE_LIST_FILE_NAME, 0);
        this.mShowStandbyDevicesTimerExpired = valueOf;
        this.mList = new ArrayList();
        String string = this.mLocalStorage.getString(KEY_STANDBYLIST, null);
        String str = "StandbyDeviceListHandler: Error: ";
        String str2 = TAG;
        if (string == null || string.equals("[]")) {
            jSONArray = new JSONArray();
        } else {
            try {
                jSONArray = new JSONArray(string);
            } catch (Exception e) {
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append(e.getMessage());
                Log.e(str2, sb.toString());
                return;
            }
        }
        JSONArray jSONArray2 = jSONArray;
        try {
            if (jSONArray2.length() > 0) {
                for (int i = 0; i < jSONArray2.length(); i++) {
                    JSONObject jSONObject = (JSONObject) jSONArray2.get(i);
                    StandbyDevice standbyDevice = new StandbyDevice(jSONObject.getString("id"), jSONObject.getString(VALUE_BSSID), jSONObject.getString(VALUE_MAC), jSONObject.getString(VALUE_URI), jSONObject.getString("name"), valueOf);
                    this.mList.add(standbyDevice);
                }
            }
            this.mNetworkMonitor = new NetworkMonitor(context2, searchListener);
        } catch (Exception e2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            sb2.append(e2.getMessage());
            Log.e(str2, sb2.toString());
        }
    }

    private StandbyDeviceList() {
    }

    /* access modifiers changed from: private */
    public synchronized void commit() {
        synchronized (this) {
            JSONArray jSONArray = new JSONArray();
            int i = 0;
            while (i < this.mList.size()) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("id", ((StandbyDevice) this.mList.get(i)).duid);
                    jSONObject.put(VALUE_BSSID, ((StandbyDevice) this.mList.get(i)).bssid);
                    jSONObject.put(VALUE_MAC, ((StandbyDevice) this.mList.get(i)).mac);
                    jSONObject.put(VALUE_URI, ((StandbyDevice) this.mList.get(i)).ip);
                    jSONObject.put("name", ((StandbyDevice) this.mList.get(i)).name);
                    jSONArray.put(jSONObject);
                    Editor edit = this.mLocalStorage.edit();
                    edit.putString(KEY_STANDBYLIST, jSONArray.toString());
                    edit.apply();
                    i++;
                } catch (Exception e) {
                    String str = TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("close(): Error: ");
                    sb.append(e.getMessage());
                    Log.e(str, sb.toString());
                    return;
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public Boolean remove(String str) {
        for (int i = 0; i < this.mList.size(); i++) {
            if (((StandbyDevice) this.mList.get(i)).duid.trim().equals(str.trim())) {
                this.mList.remove(i);
                return Boolean.valueOf(true);
            }
        }
        return Boolean.valueOf(false);
    }

    /* access modifiers changed from: private */
    public List<Service> get() {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i < this.mList.size()) {
            try {
                StandbyDevice standbyDevice = (StandbyDevice) this.mList.get(i);
                if (!standbyDevice.isActive.booleanValue() && this.mNetworkMonitor.getCurrentBSSID().equals(standbyDevice.bssid.trim())) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("id", standbyDevice.duid);
                    jSONObject.put(VALUE_URI, standbyDevice.ip);
                    jSONObject.put("name", standbyDevice.name);
                    arrayList.add(Service.create(jSONObject));
                }
                i++;
            } catch (Exception e) {
                StringBuilder sb = new StringBuilder();
                sb.append("get(): Error: ");
                sb.append(e.getMessage());
                Log.e(TAG, sb.toString());
            }
        }
        return arrayList;
    }

    private Boolean isStandbyDevice(String str) {
        for (int i = 0; i < this.mList.size(); i++) {
            if (((StandbyDevice) this.mList.get(i)).duid.trim().equals(str.trim()) && this.mNetworkMonitor.getCurrentBSSID().equals(((StandbyDevice) this.mList.get(i)).bssid.trim())) {
                return Boolean.valueOf(true);
            }
        }
        return Boolean.valueOf(false);
    }
}
