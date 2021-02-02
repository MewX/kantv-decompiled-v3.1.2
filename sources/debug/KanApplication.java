package debug;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import com.avos.avoscloud.AVOSCloud;
import com.crashlytics.android.Crashlytics.Builder;
import com.crashlytics.android.core.CrashlyticsListener;
import com.danikula.videocache.HttpProxyCacheServer;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.HitBuilders.EventBuilder;
import com.google.android.gms.analytics.Tracker;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.kantv.common.api.Api;
import com.kantv.common.api.CommonCallBack;
import com.kantv.common.base.BaseApplication;
import com.kantv.common.log.AILog;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.config.SignConfig;
import com.kantv.ui.flutter.FlutterMediator;
import com.kantv.ui.utils.PreferenceUtil;
import com.kantv.ui.utils.StatusCode;
import com.kantv.ui.utils.ToastUtils;
import com.shuyu.gsyvideoplayer.model.VideoOptionModel;
import io.fabric.sdk.android.Fabric;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import okhttp3.ResponseBody;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Response;

public class KanApplication extends BaseApplication {
    private static final String TAG = "KanApplication";
    /* access modifiers changed from: private */
    public static Context mContext;
    /* access modifiers changed from: private */
    public static FirebaseAnalytics mFirebaseAnalytics;
    private static GoogleAnalytics sAnalytics;
    private static Tracker sTracker;
    public static String token;
    /* access modifiers changed from: private */
    public boolean hadNetwork = false;
    private HttpProxyCacheServer proxy;

    public void onCreate() {
        super.onCreate();
        mContext = getApplicationContext();
        Utils.init(mContext);
        AVOSCloud.initialize(this, "npz3myH1q8EAeEy6F6mP9lI6-gzGzoHsz", "6z25gwYpqIQMIGF3M0l8obTB");
        Fabric.with(this, new Builder().disabled(false).listener(new CrashlyticsListener() {
            public void crashlyticsDidDetectCrashDuringPreviousExecution() {
                String str = "clear_data_time";
                long longValue = ((Long) PreferenceUtil.get(str, Long.valueOf(0))).longValue();
                long currentTimeMillis = System.currentTimeMillis();
                StringBuilder sb = new StringBuilder();
                sb.append("crach ");
                sb.append(longValue);
                sb.append(" ");
                sb.append(currentTimeMillis);
                String sb2 = sb.toString();
                String str2 = KanApplication.TAG;
                AILog.i(str2, sb2);
                if (currentTimeMillis - longValue < 600000) {
                    AILog.i(str2, "crach clear_data");
                    PreferenceUtil.clear(KanApplication.mContext);
                }
                PreferenceUtil.put(str, Long.valueOf(currentTimeMillis));
            }
        }).build());
        mFirebaseAnalytics = FirebaseAnalytics.getInstance(this);
        sAnalytics = GoogleAnalytics.getInstance(this);
        new VideoOptionModel(4, "enable-accurate-seek", 1);
        new ArrayList().add(new VideoOptionModel(1, "analyzemaxduration", 100));
        onNetworkChange();
        FlutterMediator.init(this);
    }

    public boolean isHadNetwork() {
        return this.hadNetwork;
    }

    private void onNetworkChange() {
        registerReceiver(new BroadcastReceiver() {
            public void onReceive(Context context, Intent intent) {
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
                KanApplication.this.hadNetwork = false;
                if (activeNetworkInfo != null) {
                    AILog.i(KanApplication.TAG, "App网络变化 ");
                    new Thread() {
                        public void run() {
                            super.run();
                            Api.getClient().connectionPool().evictAll();
                        }
                    }.start();
                    if (activeNetworkInfo.isConnected()) {
                        KanApplication.this.hadNetwork = true;
                    }
                }
            }
        }, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    public static HttpProxyCacheServer getProxy(Context context) {
        KanApplication kanApplication = (KanApplication) context.getApplicationContext();
        HttpProxyCacheServer httpProxyCacheServer = kanApplication.proxy;
        if (httpProxyCacheServer != null) {
            return httpProxyCacheServer;
        }
        HttpProxyCacheServer newProxy = kanApplication.newProxy();
        kanApplication.proxy = newProxy;
        return newProxy;
    }

    private HttpProxyCacheServer newProxy() {
        File file;
        String str = "ads";
        try {
            file = new File(getExternalCacheDir().getAbsolutePath(), str);
        } catch (Exception e) {
            File file2 = new File(getCacheDir(), str);
            e.printStackTrace();
            file = file2;
        }
        return new HttpProxyCacheServer.Builder(this).cacheDirectory(file).maxCacheSize(209715200).build();
    }

    /* access modifiers changed from: protected */
    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    public static FirebaseAnalytics getFirebaseAnalytics() {
        return mFirebaseAnalytics;
    }

    public static synchronized Tracker getDefaultTracker() {
        Tracker tracker;
        synchronized (KanApplication.class) {
            if (sTracker == null) {
                sTracker = sAnalytics.newTracker("UA-124410289-1");
            }
            tracker = sTracker;
        }
        return tracker;
    }

    public static void exitLogin() {
        String str = "token";
        String str2 = (String) PreferenceUtil.get(Utils.getContext(), str, "");
        AILog.d(str, str2);
        if (!StringUtils.isEmpty(str2)) {
            HashMap hashMap = new HashMap();
            hashMap.put("noncestr", SignConfig.noncestr);
            hashMap.put("timestamp", SignConfig.timestamp);
            hashMap.put("sbID", SignConfig.sbID);
            hashMap.put("sign", SignConfig.sign);
            hashMap.put("_token", str2);
            hashMap.put("devicetype", "0");
            hashMap.put("app_ver", String.valueOf(Utils.getPackageInfo(mContext).versionCode));
            hashMap.put("interfaceVersion", Utils.interfaceVersion);
            AILog.d("退出登录参数", hashMap.toString());
            Api.getService().exitLogin(hashMap).enqueue(new CommonCallBack(Utils.getContext(), false) {
                public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                    super.onResponse(call, response);
                    AILog.d("退出登录json", this.json);
                    if (!StringUtils.isEmpty(this.json)) {
                        JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                        if (jsonObject != null) {
                            String str = "status";
                            if (!StringUtils.isEmpty(jsonObject.optString(str)) && jsonObject.optString(str).equals(StatusCode.STATUS_OK)) {
                                KanApplication.clearLogin();
                                Bundle bundle = new Bundle();
                                bundle.putString("num", "1");
                                FirebaseAnalytics access$200 = KanApplication.mFirebaseAnalytics;
                                String str2 = UserPreference.ANALYZE64;
                                access$200.logEvent(str2, bundle);
                                KanApplication.getDefaultTracker().send(new EventBuilder().setCategory(str2).build());
                            }
                            ToastUtils.showShort((CharSequence) jsonObject.optString("msg"));
                        }
                    }
                }
            });
            return;
        }
        clearLogin();
    }

    public static void clearLogin() {
        PreferenceUtil.remove(mContext, "token");
        PreferenceUtil.remove(mContext, "uid");
        PreferenceUtil.remove(mContext, "Login_State");
        PreferenceUtil.remove(mContext, "name");
        PreferenceUtil.remove(mContext, "Photo");
        PreferenceUtil.remove(mContext, UserPreference.AREA_DATA);
        PreferenceUtil.remove(mContext, UserPreference.BIRTHDAY);
        PreferenceUtil.remove(mContext, UserPreference.AREA);
        PreferenceUtil.remove(mContext, UserPreference.ABOUT_ME);
        PreferenceUtil.remove(mContext, UserPreference.SEX);
        PreferenceUtil.remove(mContext, UserPreference.BACKGROUND);
        PreferenceUtil.remove(mContext, UserPreference.EDIT_BIRTH);
        PreferenceUtil.remove(mContext, UserPreference.AREA_CODE);
        PreferenceUtil.remove(mContext, UserPreference.CONTRY);
        PreferenceUtil.remove(mContext, UserPreference.CITY);
        PreferenceUtil.remove(mContext, UserPreference.PROVINCE);
        PreferenceUtil.remove(mContext, UserPreference.USER_INFO);
        token = "";
    }

    public static void clearTvDefaultIndexJson() {
        PreferenceUtil.remove(mContext, "nav_json");
        PreferenceUtil.remove(mContext, "nav_time");
        PreferenceUtil.remove(mContext, UserPreference.NEWS_NAV_JSON);
        PreferenceUtil.remove(mContext, UserPreference.NEWS_NAV_TIME);
        PreferenceUtil.remove(mContext, "index_json");
        PreferenceUtil.remove(mContext, "index_time");
    }
}
