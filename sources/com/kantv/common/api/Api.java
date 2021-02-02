package com.kantv.common.api;

import android.text.TextUtils;
import com.kantv.common.BuildConfig;
import com.kantv.common.log.AILog;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;
import okhttp3.Interceptor;
import okhttp3.Interceptor.Chain;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Response;
import org.json.JSONArray;
import retrofit2.Retrofit;
import retrofit2.Retrofit.Builder;
import retrofit2.converter.gson.GsonConverterFactory;

public class Api {
    public static List<String> API_DOMAIN = new ArrayList();
    public static List BOOT_HOST_DOMAIN = new ArrayList();
    private static String domain = "https://www.suramic.com/";
    private static OkHttpClient mClient;
    private static Interceptor mInterceptor = new Interceptor() {
        public Response intercept(Chain chain) throws IOException {
            return chain.proceed(chain.request().newBuilder().addHeader("User-Agent", "suramic app1.0").build());
        }
    };
    private static long pre;
    private static ApiService singleton;

    static {
        BOOT_HOST_DOMAIN.clear();
        BOOT_HOST_DOMAIN.add(BuildConfig.BOOT_HOST);
        API_DOMAIN.clear();
        API_DOMAIN.add(BuildConfig.HOST1);
        API_DOMAIN.add(BuildConfig.HOST2);
    }

    public static void addDefaultBootDomains(String str) {
        String str2 = "http";
        try {
            if (!TextUtils.isEmpty(str)) {
                BOOT_HOST_DOMAIN.clear();
                BOOT_HOST_DOMAIN.add(BuildConfig.BOOT_HOST);
                JSONArray jSONArray = new JSONArray(str);
                for (int i = 0; i < jSONArray.length(); i++) {
                    String obj = jSONArray.get(i).toString();
                    if (!TextUtils.isEmpty(obj) && obj.contains(str2)) {
                        String str3 = "";
                        if (obj.contains("https")) {
                            obj = obj.replace("https://", str3);
                        } else if (obj.contains(str2)) {
                            obj = obj.replace("http://", str3);
                        }
                    }
                    BOOT_HOST_DOMAIN.add(0, obj);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void addDefaultApiDomains(String str) {
        String str2 = "http";
        try {
            if (!TextUtils.isEmpty(str)) {
                API_DOMAIN.clear();
                JSONArray jSONArray = new JSONArray(str);
                for (int i = 0; i < jSONArray.length(); i++) {
                    String obj = jSONArray.get(i).toString();
                    if (!TextUtils.isEmpty(obj) && obj.contains(str2)) {
                        String str3 = "";
                        if (obj.contains("https")) {
                            obj = obj.replace("https://", str3);
                        } else if (obj.contains(str2)) {
                            obj = obj.replace("http://", str3);
                        }
                    }
                    API_DOMAIN.add(obj);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static ApiService getService() {
        if (singleton == null) {
            synchronized (Api.class) {
                singleton = (ApiService) createRetrofit().create(ApiService.class);
            }
        }
        return singleton;
    }

    public static ApiService getService(String str) {
        return (ApiService) new Builder().client(new OkHttpClient.Builder().connectTimeout(60, TimeUnit.SECONDS).addInterceptor(mInterceptor).build()).baseUrl(str).addConverterFactory(GsonConverterFactory.create()).build().create(ApiService.class);
    }

    public static void setDomain(String str) {
        String str2 = "/";
        if (!str.contains("https")) {
            StringBuilder sb = new StringBuilder();
            sb.append("https://");
            sb.append(str);
            sb.append(str2);
            domain = sb.toString();
        } else if (str.endsWith(str2)) {
            domain = str;
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            sb2.append(str2);
            domain = sb2.toString();
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("#####setDomain DOMAIN ####### ");
        sb3.append(str);
        AILog.i(sb3.toString());
    }

    public static void setNextDomain() {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - pre >= 5000) {
            pre = currentTimeMillis;
            String str = domain;
            int i = 0;
            while (true) {
                if (i >= API_DOMAIN.size()) {
                    break;
                } else if (str.contains((String) API_DOMAIN.get(i))) {
                    int i2 = i + 1;
                    if (i2 >= API_DOMAIN.size()) {
                        i2 = 0;
                    }
                    setSingletonNull();
                    setDomain((String) API_DOMAIN.get(i2));
                } else {
                    i++;
                }
            }
        }
    }

    public static String getDomain() {
        return domain;
    }

    public static String getBootDomain() {
        String str = (String) BOOT_HOST_DOMAIN.get(0);
        if (str.contains("https")) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("https://");
        sb.append(str);
        sb.append("/");
        return sb.toString();
    }

    private static Retrofit createRetrofit() {
        return new Builder().client(getClient()).baseUrl(getDomain()).addConverterFactory(GsonConverterFactory.create()).build();
    }

    public static OkHttpClient getClient() {
        if (mClient == null) {
            mClient = new OkHttpClient.Builder().connectTimeout(15, TimeUnit.SECONDS).readTimeout(15, TimeUnit.SECONDS).writeTimeout(15, TimeUnit.SECONDS).addInterceptor(mInterceptor).retryOnConnectionFailure(true).pingInterval(1, TimeUnit.SECONDS).protocols(Collections.unmodifiableList(Arrays.asList(new Protocol[]{Protocol.HTTP_1_1}))).build();
        }
        return mClient;
    }

    public static void setSingletonNull() {
        singleton = null;
    }

    public static boolean checkDomain(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setConnectTimeout(5000);
            httpURLConnection.setReadTimeout(5000);
            httpURLConnection.getContent();
            StringBuilder sb = new StringBuilder();
            sb.append("### DOMAIN Normal ### ");
            sb.append(str);
            AILog.d(sb.toString());
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("### DOMAIN ERROR ### ");
            sb2.append(str);
            AILog.d(sb2.toString());
            return false;
        }
    }
}
