package com.avos.avoscloud;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.wifi.WifiManager;
import android.provider.Settings.Secure;
import com.tencent.connect.common.Constants;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;
import okhttp3.Request.Builder;
import okhttp3.RequestBody;
import org.apache.http.Header;

class RequestStatisticsUtil {
    private static final String LAST_SENDTIME = "lastSendTime";
    public static Boolean REPORT_INTERNAL_STATS = Boolean.valueOf(true);
    private static final String REQUEST_DATA = "com.avos.avoscloud.RequestStatisticsUtil.data";
    private static int TIME_INTERVAL = 86400000;
    private static RequestStatisticsUtil sInstance;
    private long lastSendTime = 0;
    /* access modifiers changed from: private */
    public RequestStatistics requestStatistics;

    private static class RequestStatistics {
        private static final String REQUEST_2xx_NUM = "request_2xx_num";
        private static final String REQUEST_2xx_TOTAL_TIME = "request_2xx_total_time";
        private static final String REQUEST_4xx_NUM = "request_4xx_num";
        private static final String REQUEST_5xx_NUM = "request_5xx_num";
        private static final String REQUEST_TIMEOUT_NUM = "request_timeout_num";
        private static final String REQUEST_TOTAL_NUM = "request_total_num";
        private int request2xxNum = 0;
        private long request2xxTotalTime = 0;
        private int request4xxNum = 0;
        private int request5xxNum = 0;
        private int timeoutNum = 0;
        /* access modifiers changed from: private */
        public int totalNum = 0;

        public RequestStatistics() {
            updateFromPreference();
        }

        public synchronized void addRequestData(int i, boolean z, long j) {
            if (z) {
                try {
                    this.totalNum++;
                    this.timeoutNum++;
                } catch (Throwable th) {
                    throw th;
                }
            } else if (i > 100) {
                int i2 = i / 100;
                if (i2 == 2) {
                    this.totalNum++;
                    this.request2xxNum++;
                    this.request2xxTotalTime += j;
                } else if (i2 == 4) {
                    this.totalNum++;
                    this.request4xxNum++;
                } else if (i2 == 5) {
                    this.totalNum++;
                    this.request5xxNum++;
                }
            }
        }

        public synchronized void minus(RequestStatistics requestStatistics) {
            if (requestStatistics != null) {
                this.totalNum -= requestStatistics.totalNum;
                this.timeoutNum -= requestStatistics.timeoutNum;
                this.request2xxNum -= requestStatistics.request2xxNum;
                this.request4xxNum -= requestStatistics.request4xxNum;
                this.request5xxNum -= requestStatistics.request5xxNum;
                this.request2xxTotalTime -= requestStatistics.request2xxTotalTime;
            }
        }

        public synchronized void saveToPreference() {
            Editor edit = AVOSCloud.applicationContext.getSharedPreferences(RequestStatisticsUtil.REQUEST_DATA, 0).edit();
            edit.putInt(REQUEST_TIMEOUT_NUM, this.timeoutNum);
            edit.putInt(REQUEST_TOTAL_NUM, this.totalNum);
            edit.putInt(REQUEST_2xx_NUM, this.request2xxNum);
            edit.putInt(REQUEST_4xx_NUM, this.request4xxNum);
            edit.putInt(REQUEST_5xx_NUM, this.request5xxNum);
            edit.putLong(REQUEST_2xx_TOTAL_TIME, this.request2xxTotalTime);
            edit.commit();
        }

        public synchronized Map<String, Object> toPostDataMap() {
            HashMap hashMap;
            hashMap = new HashMap();
            hashMap.put("total", Integer.valueOf(this.totalNum));
            hashMap.put("timeout", Integer.valueOf(this.timeoutNum));
            hashMap.put("2xx", Integer.valueOf(this.request2xxNum));
            hashMap.put("4xx", Integer.valueOf(this.request4xxNum));
            hashMap.put("5xx", Integer.valueOf(this.request5xxNum));
            hashMap.put("avg", Long.valueOf(this.request2xxNum == 0 ? 0 : this.request2xxTotalTime / ((long) this.request2xxNum)));
            return hashMap;
        }

        private synchronized void updateFromPreference() {
            SharedPreferences sharedPreferences = AVOSCloud.applicationContext.getSharedPreferences(RequestStatisticsUtil.REQUEST_DATA, 0);
            this.timeoutNum = sharedPreferences.getInt(REQUEST_TIMEOUT_NUM, 0);
            this.totalNum = sharedPreferences.getInt(REQUEST_TOTAL_NUM, 0);
            this.request2xxNum = sharedPreferences.getInt(REQUEST_2xx_NUM, 0);
            this.request4xxNum = sharedPreferences.getInt(REQUEST_4xx_NUM, 0);
            this.request5xxNum = sharedPreferences.getInt(REQUEST_5xx_NUM, 0);
            this.request2xxTotalTime = sharedPreferences.getLong(REQUEST_2xx_TOTAL_TIME, 0);
        }
    }

    private RequestStatisticsUtil() {
        getLastSendTime();
        this.requestStatistics = new RequestStatistics();
    }

    public static synchronized RequestStatisticsUtil getInstance() {
        RequestStatisticsUtil requestStatisticsUtil;
        synchronized (RequestStatisticsUtil.class) {
            if (sInstance == null) {
                sInstance = new RequestStatisticsUtil();
            }
            requestStatisticsUtil = sInstance;
        }
        return requestStatisticsUtil;
    }

    public void recordRequestTime(int i, boolean z, long j) {
        if (REPORT_INTERNAL_STATS.booleanValue() && j > 0 && j < ((long) (AVOSCloud.getNetworkTimeout() * 2))) {
            this.requestStatistics.addRequestData(i, z, j);
            this.requestStatistics.saveToPreference();
        }
    }

    public void sendToServer() {
        if (REPORT_INTERNAL_STATS.booleanValue() && isNeedToSend()) {
            sendData(new RequestStatistics());
        }
    }

    private Map<String, Object> getClientInfo(Context context) {
        HashMap hashMap = new HashMap();
        String packageName = context.getApplicationContext().getPackageName();
        hashMap.put(Constants.PARAM_PLATFORM, "Android");
        try {
            hashMap.put("app_version", context.getPackageManager().getPackageInfo(packageName, 0).versionName);
            hashMap.put("sdk_version", PaasClient.sdkVersion);
        } catch (Exception e) {
            e.printStackTrace();
        }
        String str = null;
        try {
            str = ((WifiManager) AVOSCloud.applicationContext.getSystemService("wifi")).getConnectionInfo().getMacAddress();
        } catch (Exception unused) {
        }
        String string = Secure.getString(context.getContentResolver(), "android_id");
        if (!AVUtils.isBlankString(str)) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(string);
            string = AVUtils.md5(sb.toString());
        }
        hashMap.put("id", string);
        return hashMap;
    }

    private void sendData(final RequestStatistics requestStatistics2) {
        if (requestStatistics2.totalNum > 0) {
            HashMap hashMap = new HashMap();
            hashMap.put("client", getClientInfo(AVOSCloud.applicationContext));
            hashMap.put("attributes", requestStatistics2.toPostDataMap());
            PaasClient statistisInstance = PaasClient.statistisInstance();
            AVHttpClient clientInstance = AVHttpClient.clientInstance();
            String buildUrl = statistisInstance.buildUrl("always_collect");
            try {
                Builder builder = new Builder();
                builder.url(buildUrl).put(RequestBody.create(AVHttpClient.JSON, AVUtils.jsonStringFromMapWithNull(hashMap).getBytes("UTF-8")));
                statistisInstance.updateHeaders(builder, null, false);
                clientInstance.execute(builder.build(), true, new AsyncHttpResponseHandler() {
                    public void onFailure(int i, Header[] headerArr, byte[] bArr, Throwable th) {
                    }

                    public void onSuccess(int i, Header[] headerArr, byte[] bArr) {
                        if (200 == i) {
                            RequestStatisticsUtil.this.updateLastSendTime();
                            RequestStatisticsUtil.this.requestStatistics.minus(requestStatistics2);
                            RequestStatisticsUtil.this.requestStatistics.saveToPreference();
                        }
                    }
                });
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        } else {
            updateLastSendTime();
        }
    }

    private boolean isNeedToSend() {
        return System.currentTimeMillis() > this.lastSendTime + ((long) TIME_INTERVAL);
    }

    /* access modifiers changed from: private */
    public void updateLastSendTime() {
        this.lastSendTime = System.currentTimeMillis();
        Editor edit = AVOSCloud.applicationContext.getSharedPreferences(REQUEST_DATA, 0).edit();
        edit.putLong(LAST_SENDTIME, this.lastSendTime);
        edit.commit();
    }

    private void getLastSendTime() {
        SharedPreferences sharedPreferences = AVOSCloud.applicationContext.getSharedPreferences(REQUEST_DATA, 0);
        String str = LAST_SENDTIME;
        this.lastSendTime = sharedPreferences.getLong(str, 0);
        this.lastSendTime = sharedPreferences.getLong(str, 0);
    }
}
