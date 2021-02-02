package com.samsung.multiscreen;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.util.Log;
import com.koushikdutta.async.http.AsyncHttpRequest;
import com.samsung.multiscreen.util.HttpUtil;
import com.samsung.multiscreen.util.HttpUtil.ResultCreator;
import com.samsung.multiscreen.util.JSONUtil;
import com.samsung.multiscreen.util.RunUtil;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.jmdns.ServiceInfo;
import org.json.JSONObject;

public class Service {
    private static final int DEFAULT_WOW_TIMEOUT_VALUE = 60000;
    private static final String ENDPOINT_PROPERTY = "se";
    private static final String ID_PROPERTY = "id";
    private static final String NAME_PROPERTY = "fn";
    private static final String PROPERTY_DEVICE = "device";
    private static final String PROPERTY_DUID = "duid";
    private static final String PROPERTY_ISSUPPORT = "isSupport";
    private static final String PROPERTY_NAME = "name";
    private static final String PROPERTY_TYPE = "type";
    private static final String PROPERTY_URI = "uri";
    private static final String PROPERTY_VERSION = "version";
    public static final String SUPPORT_DMP = "DMP_available";
    private static final String TAG = "Service";
    private static final int TV_YEAR_DMP_SUPPORT = 15;
    private static final int TV_YEAR_SSL_SUPPORT = 15;
    private static final String TYPE_PROPERTY = "md";
    public static final String TYPE_SMART_TV = "Samsung SmartTV";
    public static final String TYPE_SPEAKER = "Samsung Speaker";
    private static final String VERSION_PROPERTY = "ve";
    /* access modifiers changed from: private */
    public static boolean isWoWAndConnectStarted = false;
    private final String id;
    /* access modifiers changed from: private */
    public SecureModeState isSecureModeSupported = SecureModeState.Unknown;
    final Boolean isStandbyService;
    private final Map<String, Object> isSupport;
    private final String name;
    private final String type;
    private final Uri uri;
    private final String version;

    private enum SecureModeState {
        Unknown,
        NotSupported,
        Supported
    }

    public void setIsSecureModeSupported(SecureModeState secureModeState) {
        this.isSecureModeSupported = secureModeState;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Service(isSecureModeSupported=");
        sb.append(getIsSecureModeSupported());
        sb.append(", id=");
        sb.append(getId());
        sb.append(", version=");
        sb.append(getVersion());
        sb.append(", name=");
        sb.append(getName());
        sb.append(", type=");
        sb.append(getType());
        sb.append(", isSupport=");
        sb.append(getIsSupport());
        sb.append(", uri=");
        sb.append(getUri());
        sb.append(", isStandbyService=");
        sb.append(getIsStandbyService());
        sb.append(")");
        return sb.toString();
    }

    private Service(String str, String str2, String str3, String str4, Map<String, Object> map, Uri uri2, Boolean bool) {
        this.id = str;
        this.version = str2;
        this.name = str3;
        this.type = str4;
        this.isSupport = map;
        this.uri = uri2;
        this.isStandbyService = bool;
    }

    /* access modifiers changed from: protected */
    public boolean canEqual(Object obj) {
        return obj instanceof Service;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Service)) {
            return false;
        }
        Service service = (Service) obj;
        if (!service.canEqual(this)) {
            return false;
        }
        String id2 = getId();
        String id3 = service.getId();
        return id2 != null ? id2.equals(id3) : id3 == null;
    }

    public int hashCode() {
        String id2 = getId();
        return 59 + (id2 == null ? 43 : id2.hashCode());
    }

    protected Service(Service service) {
        this.id = service.id;
        this.version = service.version;
        this.name = service.name;
        this.type = service.type;
        this.isSupport = new HashMap(service.isSupport);
        this.uri = Uri.parse(service.uri.toString());
        this.isStandbyService = Boolean.valueOf(false);
        this.isSecureModeSupported = service.isSecureModeSupported;
    }

    /* access modifiers changed from: 0000 */
    public Boolean isEqualTo(Service service) {
        int hashCode = hashCode();
        int hashCode2 = service.hashCode();
        Boolean valueOf = Boolean.valueOf(false);
        if (hashCode == hashCode2 && this.name.equals(service.name) && this.isStandbyService == service.isStandbyService && this.id.equals(service.id) && this.uri.equals(service.uri) && this.type.equals(service.type) && this.version.equals(service.version) && this.isSupport.equals(service.isSupport) && this.isSecureModeSupported == service.isSecureModeSupported) {
            return Boolean.valueOf(true);
        }
        return valueOf;
    }

    public SecureModeState getIsSecureModeSupported() {
        return this.isSecureModeSupported;
    }

    public String getId() {
        return this.id;
    }

    public String getVersion() {
        return this.version;
    }

    public String getName() {
        return this.name;
    }

    public String getType() {
        return this.type;
    }

    public Map<String, Object> getIsSupport() {
        return this.isSupport;
    }

    public Uri getUri() {
        return this.uri;
    }

    public Boolean getIsStandbyService() {
        return this.isStandbyService;
    }

    public static Search search(Context context) {
        return Search.getInstance(context);
    }

    public static void getByURI(Uri uri2, Result<Service> result) {
        getByURI(uri2, AsyncHttpRequest.DEFAULT_TIMEOUT, result);
    }

    public static void getByURI(Uri uri2, int i, Result<Service> result) {
        HttpUtil.executeJSONRequest(uri2, "GET", i, HttpHelper.createHttpCallback(new ResultCreator<Service>() {
            public Service createResult(Map<String, Object> map) {
                return Service.create(map);
            }
        }, result));
    }

    public static void getById(Context context, String str, final Result<Service> result) {
        final ArrayList arrayList = new ArrayList();
        final CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        AnonymousClass2 r2 = new Result<Service>() {
            public void onSuccess(Service service) {
                copyOnWriteArrayList.add(service);
                RunUtil.runInBackground(new Runnable() {
                    public void run() {
                        for (ProviderThread terminate : arrayList) {
                            terminate.terminate();
                        }
                    }
                });
            }

            public void onError(Error error) {
                copyOnWriteArrayList.add(error);
            }
        };
        arrayList.add(MDNSSearchProvider.getById(context, str, r2));
        ProviderThread byId = MSFDSearchProvider.getById(context, str, r2);
        if (byId != null) {
            arrayList.add(byId);
        }
        RunUtil.runInBackground(new Runnable() {
            public void run() {
                for (ProviderThread join : arrayList) {
                    try {
                        join.join();
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
                chooseResult();
            }

            private void chooseResult() {
                Error error = null;
                for (Object next : copyOnWriteArrayList) {
                    if (next instanceof Service) {
                        result.onSuccess((Service) next);
                        return;
                    } else if (error == null && (next instanceof Error)) {
                        error = (Error) next;
                    }
                }
                if (error != null) {
                    result.onError(error);
                }
            }
        });
    }

    /* access modifiers changed from: 0000 */
    public void isSecurityModeSupported(final Result<Boolean> result) {
        boolean booleanValue = this.isStandbyService.booleanValue();
        Boolean valueOf = Boolean.valueOf(true);
        if (booleanValue) {
            result.onSuccess(valueOf);
        } else if (this.isSecureModeSupported == SecureModeState.Unknown) {
            getDeviceInfo(new Result<Device>() {
                public void onSuccess(Device device) {
                    int i;
                    if (device != null) {
                        boolean z = false;
                        try {
                            i = Integer.parseInt(device.getModel().substring(0, 2));
                        } catch (NumberFormatException unused) {
                            Service.this.isSecureModeSupported = SecureModeState.NotSupported;
                            i = 0;
                        }
                        if (i >= 15) {
                            Service.this.isSecureModeSupported = SecureModeState.Supported;
                        } else {
                            Service.this.isSecureModeSupported = SecureModeState.NotSupported;
                        }
                        Result result = result;
                        if (i >= 15) {
                            z = true;
                        }
                        result.onSuccess(Boolean.valueOf(z));
                    }
                }

                public void onError(Error error) {
                    result.onError(error);
                }
            });
        } else if (this.isSecureModeSupported == SecureModeState.Supported) {
            result.onSuccess(valueOf);
        } else {
            result.onSuccess(Boolean.valueOf(false));
        }
    }

    public static void WakeOnWirelessLan(String str) {
        ByteBuffer allocate = ByteBuffer.allocate(120);
        allocate.put(convertMacAddrToBytes("FF:FF:FF:FF:FF:FF"));
        for (int i = 0; i < 16; i++) {
            allocate.put(convertMacAddrToBytes(str));
        }
        allocate.put(convertMacAddrToBytes("00:00:00:00:00:00"));
        allocate.put("SECWOW".getBytes());
        allocate.putInt(0);
        allocate.put((byte) 0);
        final byte[] array = allocate.array();
        RunUtil.runInBackground(new Runnable() {
            /* JADX WARNING: Removed duplicated region for block: B:17:0x0045  */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public void run() {
                /*
                    r6 = this;
                    r0 = 0
                    java.net.DatagramSocket r1 = new java.net.DatagramSocket     // Catch:{ Exception -> 0x0035, all -> 0x0030 }
                    r1.<init>(r0)     // Catch:{ Exception -> 0x0035, all -> 0x0030 }
                    r0 = 1
                    r1.setReuseAddress(r0)     // Catch:{ Exception -> 0x002e }
                    java.net.InetSocketAddress r0 = new java.net.InetSocketAddress     // Catch:{ Exception -> 0x002e }
                    r2 = 2014(0x7de, float:2.822E-42)
                    r0.<init>(r2)     // Catch:{ Exception -> 0x002e }
                    r1.bind(r0)     // Catch:{ Exception -> 0x002e }
                    java.net.DatagramPacket r0 = new java.net.DatagramPacket     // Catch:{ Exception -> 0x002e }
                    byte[] r3 = r4     // Catch:{ Exception -> 0x002e }
                    byte[] r4 = r4     // Catch:{ Exception -> 0x002e }
                    int r4 = r4.length     // Catch:{ Exception -> 0x002e }
                    r0.<init>(r3, r4)     // Catch:{ Exception -> 0x002e }
                    java.lang.String r3 = "255.255.255.255"
                    java.net.InetAddress r3 = java.net.InetAddress.getByName(r3)     // Catch:{ Exception -> 0x002e }
                    r0.setAddress(r3)     // Catch:{ Exception -> 0x002e }
                    r0.setPort(r2)     // Catch:{ Exception -> 0x002e }
                    r1.send(r0)     // Catch:{ Exception -> 0x002e }
                    goto L_0x003e
                L_0x002e:
                    r0 = move-exception
                    goto L_0x0039
                L_0x0030:
                    r1 = move-exception
                    r5 = r1
                    r1 = r0
                    r0 = r5
                    goto L_0x0043
                L_0x0035:
                    r1 = move-exception
                    r5 = r1
                    r1 = r0
                    r0 = r5
                L_0x0039:
                    r0.printStackTrace()     // Catch:{ all -> 0x0042 }
                    if (r1 == 0) goto L_0x0041
                L_0x003e:
                    r1.close()
                L_0x0041:
                    return
                L_0x0042:
                    r0 = move-exception
                L_0x0043:
                    if (r1 == 0) goto L_0x0048
                    r1.close()
                L_0x0048:
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.samsung.multiscreen.Service.AnonymousClass5.run():void");
            }
        });
    }

    public static void WakeOnWirelessAndConnect(String str, Uri uri2, Result<Service> result) {
        WakeOnWirelessAndConnect(str, uri2, DEFAULT_WOW_TIMEOUT_VALUE, result);
    }

    public static void WakeOnWirelessAndConnect(String str, Uri uri2, int i, Result<Service> result) {
        if (!isWoWAndConnectStarted) {
            isWoWAndConnectStarted = true;
            if (str != null) {
                WakeOnWirelessLan(str);
                Handler handler = new Handler();
                WakeUpAndConnect(uri2, result);
                handler.postDelayed(new Runnable() {
                    public void run() {
                        Service.isWoWAndConnectStarted = false;
                    }
                }, (long) i);
                return;
            }
            throw new NullPointerException();
        }
    }

    /* access modifiers changed from: private */
    public static void WakeUpAndConnect(final Uri uri2, final Result<Service> result) {
        getByURI(uri2, new Result<Service>() {
            public void onError(Error error) {
                if (Service.isWoWAndConnectStarted) {
                    Service.WakeUpAndConnect(uri2, result);
                    return;
                }
                Service.isWoWAndConnectStarted = false;
                result.onError(error);
            }

            public void onSuccess(Service service) {
                Service.isWoWAndConnectStarted = false;
                result.onSuccess(service);
            }
        });
    }

    private static byte[] convertMacAddrToBytes(String str) {
        String[] split = str.split(":");
        byte[] bArr = new byte[6];
        for (int i = 0; i < 6; i++) {
            bArr[i] = Integer.valueOf(Integer.parseInt(split[i], 16)).byteValue();
        }
        return bArr;
    }

    public void getDeviceInfo(Result<Device> result) {
        HttpUtil.executeJSONRequest(getUri(), "GET", HttpHelper.createHttpCallback(new ResultCreator<Device>() {
            public Device createResult(Map<String, Object> map) {
                return Device.create((Map) map.get(Service.PROPERTY_DEVICE));
            }
        }, result));
    }

    public Channel createChannel(Uri uri2) {
        return Channel.create(this, uri2);
    }

    /* access modifiers changed from: 0000 */
    public Application createApplication(Uri uri2) {
        if (uri2 != null) {
            return Application.create(this, uri2);
        }
        throw new NullPointerException();
    }

    public Application createApplication(Uri uri2, String str) {
        if (uri2 != null && str != null) {
            return Application.create(this, uri2, str, null);
        }
        throw new NullPointerException();
    }

    public Application createApplication(Uri uri2, String str, Map<String, Object> map) {
        if (uri2 != null && str != null && map != null) {
            return Application.create(this, uri2, str, map);
        }
        throw new NullPointerException();
    }

    /* access modifiers changed from: 0000 */
    public Application createApplication(String str) {
        if (str != null) {
            return Application.create(this, Uri.parse(str));
        }
        throw new NullPointerException();
    }

    public Application createApplication(String str, String str2) {
        if (str != null && str2 != null) {
            return Application.create(this, Uri.parse(str), str2, null);
        }
        throw new NullPointerException();
    }

    public VideoPlayer createVideoPlayer(String str) {
        String str2 = this.id;
        if (str2 != null) {
            return new VideoPlayer(this, Uri.parse(str2), str);
        }
        throw new NullPointerException();
    }

    public PhotoPlayer createPhotoPlayer(String str) {
        String str2 = this.id;
        if (str2 != null) {
            return new PhotoPlayer(this, Uri.parse(str2), str);
        }
        throw new NullPointerException();
    }

    public AudioPlayer createAudioPlayer(String str) {
        String str2 = this.id;
        if (str2 != null) {
            return new AudioPlayer(this, Uri.parse(str2), str);
        }
        throw new NullPointerException();
    }

    public Application createApplication(String str, String str2, Map<String, Object> map) {
        if (str != null && str2 != null && map != null) {
            return Application.create(this, Uri.parse(str), str2, map);
        }
        throw new NullPointerException();
    }

    static Service create(ServiceInfo serviceInfo) {
        if (serviceInfo != null) {
            Service service = new Service(serviceInfo.getPropertyString("id"), serviceInfo.getPropertyString(VERSION_PROPERTY), serviceInfo.getPropertyString(NAME_PROPERTY), serviceInfo.getPropertyString(TYPE_PROPERTY), JSONUtil.parse(serviceInfo.getPropertyString(PROPERTY_ISSUPPORT)), Uri.parse(serviceInfo.getPropertyString(ENDPOINT_PROPERTY)), Boolean.valueOf(false));
            return service;
        }
        throw new NullPointerException();
    }

    /* access modifiers changed from: private */
    public static Service create(Map<String, Object> map) {
        if (map != null) {
            Service service = new Service((String) map.get("id"), (String) map.get(PROPERTY_VERSION), (String) map.get("name"), (String) map.get("type"), JSONUtil.parse((String) map.get(PROPERTY_ISSUPPORT)), Uri.parse((String) map.get(PROPERTY_URI)), Boolean.valueOf(false));
            return service;
        }
        throw new NullPointerException();
    }

    protected static Service create(JSONObject jSONObject) {
        Uri uri2;
        String str;
        String str2;
        if (jSONObject != null) {
            HashMap hashMap = new HashMap();
            try {
                str2 = jSONObject.getString("id");
                try {
                    str = jSONObject.getString("name");
                    try {
                        str = str.concat("(standby)");
                        uri2 = Uri.parse(jSONObject.getString(PROPERTY_URI));
                    } catch (Exception e) {
                        e = e;
                        StringBuilder sb = new StringBuilder();
                        sb.append("create(): Error: ");
                        sb.append(e.getMessage());
                        Log.e(TAG, sb.toString());
                        uri2 = null;
                        Service service = new Service(str2, "Unknown", str, TYPE_SMART_TV, hashMap, uri2, Boolean.valueOf(true));
                        return service;
                    }
                } catch (Exception e2) {
                    e = e2;
                    str = null;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("create(): Error: ");
                    sb2.append(e.getMessage());
                    Log.e(TAG, sb2.toString());
                    uri2 = null;
                    Service service2 = new Service(str2, "Unknown", str, TYPE_SMART_TV, hashMap, uri2, Boolean.valueOf(true));
                    return service2;
                }
            } catch (Exception e3) {
                e = e3;
                str2 = null;
                str = null;
                StringBuilder sb22 = new StringBuilder();
                sb22.append("create(): Error: ");
                sb22.append(e.getMessage());
                Log.e(TAG, sb22.toString());
                uri2 = null;
                Service service22 = new Service(str2, "Unknown", str, TYPE_SMART_TV, hashMap, uri2, Boolean.valueOf(true));
                return service22;
            }
            Service service222 = new Service(str2, "Unknown", str, TYPE_SMART_TV, hashMap, uri2, Boolean.valueOf(true));
            return service222;
        }
        throw new NullPointerException();
    }

    public void remove() {
        if (StandbyDeviceList.getInstance() != null) {
            StandbyDeviceList.getInstance().remove(this);
        }
    }

    public void isDMPSupported(final Result<Boolean> result) {
        if (result == null) {
            return;
        }
        if (this.isStandbyService.booleanValue()) {
            result.onSuccess(Boolean.valueOf(true));
            return;
        }
        Map<String, Object> map = this.isSupport;
        if (map == null || map.isEmpty()) {
            getDeviceInfo(new Result<Device>() {
                public void onSuccess(Device device) {
                    int i;
                    if (device != null) {
                        boolean z = false;
                        try {
                            i = Integer.parseInt(device.getModel().substring(0, 2));
                        } catch (NumberFormatException unused) {
                            result.onSuccess(Boolean.valueOf(false));
                            i = 0;
                        }
                        Result result = result;
                        if (i == 15) {
                            z = true;
                        }
                        result.onSuccess(Boolean.valueOf(z));
                    }
                }

                public void onError(Error error) {
                    result.onError(error);
                }
            });
        } else {
            result.onSuccess(Boolean.valueOf(isSupport(SUPPORT_DMP)));
        }
    }

    private boolean isSupport(String str) {
        return this.isSupport.get(str) != null && this.isSupport.get(str).equals("true");
    }
}
