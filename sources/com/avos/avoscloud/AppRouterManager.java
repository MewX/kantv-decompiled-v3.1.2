package com.avos.avoscloud;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.avos.avoscloud.AVOSCloud.SERVER_TYPE;
import com.avos.avoscloud.LogUtil.avlog;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import okhttp3.Request.Builder;

public class AppRouterManager {
    private static final String API_SERVER_KEY = "api_server";
    private static final String DEFALUT_US_API_SERVER = "https://us-api.leancloud.cn";
    private static final String DEFAULT_QCLOUD_API_SERVER = "https://e1-api.leancloud.cn";
    private static final String DEFAULT_QCLOUD_ROUTER_SERVER = "https://router-q0-push.leancloud.cn";
    private static final String DEFAULT_US_ROUTER_SERVER = "https://router-a0-push.leancloud.cn";
    private static final String ENGINE_SERVRE_KEY = "engine_server";
    private static final String LATEST_UPDATE_TIME_KEY = "latest_update_time";
    private static final String PUSH_SERVRE_KEY = "push_server";
    private static final String ROUTER_ADDRESS = " https://app-router.leancloud.cn/2/route?appId=";
    private static final String RTM_ROUTER_SERVRE_KEY = "rtm_router_server";
    private static final String STATS_SERVRE_KEY = "stats_server";
    private static final String TTL_KEY = "ttl";
    private static AppRouterManager appRouterManager;
    private static Map<String, String> customApiMaps = new ConcurrentHashMap();
    private Map<String, String> apiMaps = new ConcurrentHashMap();

    public static synchronized AppRouterManager getInstance() {
        AppRouterManager appRouterManager2;
        synchronized (AppRouterManager.class) {
            if (appRouterManager == null) {
                appRouterManager = new AppRouterManager();
            }
            appRouterManager2 = appRouterManager;
        }
        return appRouterManager2;
    }

    private AppRouterManager() {
    }

    static void setServer(SERVER_TYPE server_type, String str) {
        customApiMaps.put(server_type.name, str);
        RequestStatisticsUtil.REPORT_INTERNAL_STATS = Boolean.valueOf(false);
    }

    /* access modifiers changed from: 0000 */
    public String getStorageServer() {
        return getServerUrl(SERVER_TYPE.API);
    }

    /* access modifiers changed from: 0000 */
    public String getPushServer() {
        return getServerUrl(SERVER_TYPE.PUSH);
    }

    /* access modifiers changed from: 0000 */
    public String getStatsServer() {
        return getServerUrl(SERVER_TYPE.STATS);
    }

    /* access modifiers changed from: 0000 */
    public String getEngineServer() {
        return getServerUrl(SERVER_TYPE.ENGINE);
    }

    public String getRtmRouterServer() {
        return getServerUrl(SERVER_TYPE.RTM);
    }

    private String getServerUrl(SERVER_TYPE server_type) {
        if (customApiMaps.containsKey(server_type.name)) {
            return (String) customApiMaps.get(server_type.name);
        }
        boolean equals = server_type.equals(SERVER_TYPE.RTM);
        if (isUsApp(AVOSCloud.applicationId)) {
            return equals ? DEFAULT_US_ROUTER_SERVER : DEFALUT_US_API_SERVER;
        } else if (isQCloudApp(AVOSCloud.applicationId)) {
            return equals ? DEFAULT_QCLOUD_ROUTER_SERVER : DEFAULT_QCLOUD_API_SERVER;
        } else if (!this.apiMaps.containsKey(server_type.name) || AVUtils.isBlankString((String) this.apiMaps.get(server_type.name))) {
            return getUcloudDefaultServer(server_type);
        } else {
            return (String) this.apiMaps.get(server_type.name);
        }
    }

    private String getUcloudDefaultServer(SERVER_TYPE server_type) {
        if (!AVUtils.isBlankString(AVOSCloud.applicationId)) {
            return String.format("https://%s.%s.lncld.net", new Object[]{AVOSCloud.applicationId.substring(0, 8), server_type.name});
        }
        avlog.e("AppId is null, Please call AVOSCloud.initialize first");
        return "";
    }

    public void updateRtmRouterServer(String str, boolean z) {
        this.apiMaps.put(SERVER_TYPE.RTM.name, addHttpsPrefix(str));
        if (z) {
            AVPersistenceUtils.sharedInstance().savePersistentSettingString(getAppRouterSPName(), RTM_ROUTER_SERVRE_KEY, (String) this.apiMaps.get(SERVER_TYPE.RTM.name));
        }
    }

    /* access modifiers changed from: 0000 */
    public void fetchRouter(boolean z) {
        fetchRouter(z, null);
    }

    /* access modifiers changed from: 0000 */
    public void fetchRouter(boolean z, final AVCallback aVCallback) {
        if (!isUsApp(AVOSCloud.applicationId)) {
            updateServers();
            Long persistentSettingLong = AVPersistenceUtils.sharedInstance().getPersistentSettingLong(getAppRouterSPName(), LATEST_UPDATE_TIME_KEY, Long.valueOf(0));
            int intValue = AVPersistenceUtils.sharedInstance().getPersistentSettingInteger(getAppRouterSPName(), "ttl", Integer.valueOf(0)).intValue();
            if (z || System.currentTimeMillis() - persistentSettingLong.longValue() > ((long) (intValue * 1000))) {
                AVHttpClient clientInstance = AVHttpClient.clientInstance();
                Builder builder = new Builder();
                StringBuilder sb = new StringBuilder();
                sb.append(ROUTER_ADDRESS);
                sb.append(AVOSCloud.applicationId);
                builder.url(sb.toString()).get();
                clientInstance.execute(builder.build(), false, new GetHttpResponseHandler(new GenericObjectCallback() {
                    public boolean isRequestStatisticNeed() {
                        return false;
                    }

                    public void onSuccess(String str, AVException aVException) {
                        if (aVException == null) {
                            if (AVOSCloud.showInternalDebugLog()) {
                                StringBuilder sb = new StringBuilder();
                                sb.append(" fetchRouter :");
                                sb.append(str);
                                avlog.d(sb.toString());
                            }
                            AppRouterManager.this.saveRouterResult(str);
                        } else {
                            avlog.e("get router error ", aVException);
                        }
                        AVCallback aVCallback = aVCallback;
                        if (aVCallback != null) {
                            aVCallback.internalDone(aVException);
                        }
                    }

                    public void onFailure(Throwable th, String str) {
                        avlog.e("get router error ", new AVException(th));
                        AVCallback aVCallback = aVCallback;
                        if (aVCallback != null) {
                            aVCallback.internalDone(new AVException(th));
                        }
                    }
                }));
            } else if (aVCallback != null) {
                aVCallback.internalDone(null);
            }
        } else if (aVCallback != null) {
            aVCallback.internalDone(null);
        }
    }

    /* access modifiers changed from: private */
    public void saveRouterResult(String str) {
        JSONObject jSONObject;
        try {
            jSONObject = JSON.parseObject(str);
        } catch (Exception e) {
            avlog.e("get router error ", e);
            jSONObject = null;
        }
        if (jSONObject != null) {
            updateMapAndSaveLocal(this.apiMaps, jSONObject, SERVER_TYPE.RTM.name, RTM_ROUTER_SERVRE_KEY);
            updateMapAndSaveLocal(this.apiMaps, jSONObject, SERVER_TYPE.PUSH.name, PUSH_SERVRE_KEY);
            updateMapAndSaveLocal(this.apiMaps, jSONObject, SERVER_TYPE.API.name, API_SERVER_KEY);
            updateMapAndSaveLocal(this.apiMaps, jSONObject, SERVER_TYPE.STATS.name, STATS_SERVRE_KEY);
            updateMapAndSaveLocal(this.apiMaps, jSONObject, SERVER_TYPE.ENGINE.name, ENGINE_SERVRE_KEY);
            String str2 = "ttl";
            if (jSONObject.containsKey(str2)) {
                AVPersistenceUtils.sharedInstance().savePersistentSettingInteger(getAppRouterSPName(), str2, Integer.valueOf(jSONObject.getIntValue(str2)));
            }
            AVPersistenceUtils.sharedInstance().savePersistentSettingLong(getAppRouterSPName(), LATEST_UPDATE_TIME_KEY, Long.valueOf(System.currentTimeMillis()));
        }
    }

    private void updateMapAndSaveLocal(Map<String, String> map, JSONObject jSONObject, String str, String str2) {
        if (jSONObject.containsKey(str2)) {
            String addHttpsPrefix = addHttpsPrefix(jSONObject.getString(str2));
            AVPersistenceUtils.sharedInstance().savePersistentSettingString(getAppRouterSPName(), str2, addHttpsPrefix);
            if (!AVUtils.isBlankString(addHttpsPrefix)) {
                map.put(str, addHttpsPrefix);
            }
        }
    }

    private void refreshMap(Map<String, String> map, String str, String str2) {
        String persistentSettingString = AVPersistenceUtils.sharedInstance().getPersistentSettingString(getAppRouterSPName(), str2, "");
        if (!AVUtils.isBlankString(persistentSettingString)) {
            map.put(str, persistentSettingString);
        }
    }

    private String getAppRouterSPName() {
        StringBuilder sb = new StringBuilder();
        sb.append("com.avos.avoscloud.approuter.");
        sb.append(AVOSCloud.applicationId);
        return sb.toString();
    }

    private void updateServers() {
        refreshMap(this.apiMaps, SERVER_TYPE.RTM.name, RTM_ROUTER_SERVRE_KEY);
        refreshMap(this.apiMaps, SERVER_TYPE.PUSH.name, PUSH_SERVRE_KEY);
        refreshMap(this.apiMaps, SERVER_TYPE.API.name, API_SERVER_KEY);
        refreshMap(this.apiMaps, SERVER_TYPE.STATS.name, STATS_SERVRE_KEY);
        refreshMap(this.apiMaps, SERVER_TYPE.ENGINE.name, ENGINE_SERVRE_KEY);
    }

    private String addHttpsPrefix(String str) {
        if (AVUtils.isBlankString(str) || str.startsWith("http")) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("https://");
        sb.append(str);
        return sb.toString();
    }

    static boolean isQCloudApp(String str) {
        return !AVUtils.isBlankString(str) && str.endsWith("9Nh9j0Va");
    }

    static boolean isUsApp(String str) {
        return !AVOSCloud.isCN() || (!AVUtils.isBlankString(str) && str.endsWith("MdYXbMMI"));
    }
}
