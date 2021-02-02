package com.avos.avoscloud;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import com.alibaba.fastjson.JSON;
import com.avos.avoscloud.AVQuery.CachePolicy;
import com.avos.avoscloud.LogUtil.avlog;
import com.avos.avoscloud.LogUtil.log;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.WeakHashMap;
import okhttp3.Request.Builder;
import okhttp3.RequestBody;
import org.apache.http.Header;
import org.apache.http.entity.ByteArrayEntity;
import org.eclipse.jetty.http.HttpHeaders;

public class PaasClient {
    static final String DEFAULT_CONTENT_TYPE = "application/json";
    private static final String DEFAULT_ENCODING = "UTF-8";
    public static final String DEFAULT_FAIL_STRING = "request failed!!!";
    static String REQUEST_STATIS_HEADER = "X-Android-RS";
    private static String apiKeyField = null;
    private static String applicationIdField = null;
    private static Comparator<File> fileModifiedDateComparator = new Comparator<File>() {
        public int compare(File file, File file2) {
            return (int) (file.lastModified() - file2.lastModified());
        }
    };
    /* access modifiers changed from: private */
    public static Map<String, AVObjectReferenceCount> internalObjectsForEventuallySave = Collections.synchronizedMap(new HashMap());
    private static Map<String, String> lastModify = Collections.synchronizedMap(new WeakHashMap());
    private static boolean lastModifyEnabled = false;
    public static final String sdkVersion = "v4.6.4";
    private static HashMap<String, PaasClient> serviceClientMap = new HashMap<>();
    static String sessionTokenField = null;
    private static final String userAgent = "AVOS Cloud android-v4.6.4 SDK";
    private final String apiVersion = "1.1";
    private String baseUrl;
    private AVUser currentUser = null;
    private AVACL defaultACL;

    /* renamed from: com.avos.avoscloud.PaasClient$6 reason: invalid class name */
    static /* synthetic */ class AnonymousClass6 {
        static final /* synthetic */ int[] $SwitchMap$com$avos$avoscloud$AVQuery$CachePolicy = new int[CachePolicy.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(12:0|1|2|3|4|5|6|7|8|9|10|(3:11|12|14)) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x0040 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001f */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x002a */
        /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x0035 */
        static {
            /*
                com.avos.avoscloud.AVQuery$CachePolicy[] r0 = com.avos.avoscloud.AVQuery.CachePolicy.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$com$avos$avoscloud$AVQuery$CachePolicy = r0
                int[] r0 = $SwitchMap$com$avos$avoscloud$AVQuery$CachePolicy     // Catch:{ NoSuchFieldError -> 0x0014 }
                com.avos.avoscloud.AVQuery$CachePolicy r1 = com.avos.avoscloud.AVQuery.CachePolicy.IGNORE_CACHE     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = $SwitchMap$com$avos$avoscloud$AVQuery$CachePolicy     // Catch:{ NoSuchFieldError -> 0x001f }
                com.avos.avoscloud.AVQuery$CachePolicy r1 = com.avos.avoscloud.AVQuery.CachePolicy.CACHE_ONLY     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                int[] r0 = $SwitchMap$com$avos$avoscloud$AVQuery$CachePolicy     // Catch:{ NoSuchFieldError -> 0x002a }
                com.avos.avoscloud.AVQuery$CachePolicy r1 = com.avos.avoscloud.AVQuery.CachePolicy.NETWORK_ONLY     // Catch:{ NoSuchFieldError -> 0x002a }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x002a }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x002a }
            L_0x002a:
                int[] r0 = $SwitchMap$com$avos$avoscloud$AVQuery$CachePolicy     // Catch:{ NoSuchFieldError -> 0x0035 }
                com.avos.avoscloud.AVQuery$CachePolicy r1 = com.avos.avoscloud.AVQuery.CachePolicy.CACHE_ELSE_NETWORK     // Catch:{ NoSuchFieldError -> 0x0035 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0035 }
                r2 = 4
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0035 }
            L_0x0035:
                int[] r0 = $SwitchMap$com$avos$avoscloud$AVQuery$CachePolicy     // Catch:{ NoSuchFieldError -> 0x0040 }
                com.avos.avoscloud.AVQuery$CachePolicy r1 = com.avos.avoscloud.AVQuery.CachePolicy.NETWORK_ELSE_CACHE     // Catch:{ NoSuchFieldError -> 0x0040 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0040 }
                r2 = 5
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0040 }
            L_0x0040:
                int[] r0 = $SwitchMap$com$avos$avoscloud$AVQuery$CachePolicy     // Catch:{ NoSuchFieldError -> 0x004b }
                com.avos.avoscloud.AVQuery$CachePolicy r1 = com.avos.avoscloud.AVQuery.CachePolicy.CACHE_THEN_NETWORK     // Catch:{ NoSuchFieldError -> 0x004b }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x004b }
                r2 = 6
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x004b }
            L_0x004b:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.avos.avoscloud.PaasClient.AnonymousClass6.<clinit>():void");
        }
    }

    private String batchSaveRelativeUrl() {
        return "batch/save";
    }

    protected static PaasClient sharedInstance(String str) {
        PaasClient paasClient = (PaasClient) serviceClientMap.get(str);
        if (paasClient != null) {
            return paasClient;
        }
        PaasClient paasClient2 = new PaasClient(str);
        serviceClientMap.put(str, paasClient2);
        return paasClient2;
    }

    public static PaasClient storageInstance() {
        return sharedInstance(AppRouterManager.getInstance().getStorageServer());
    }

    public static PaasClient pushInstance() {
        return sharedInstance(AppRouterManager.getInstance().getPushServer());
    }

    public static PaasClient cloudInstance() {
        return sharedInstance(AppRouterManager.getInstance().getEngineServer());
    }

    public static PaasClient statistisInstance() {
        return sharedInstance(AppRouterManager.getInstance().getStatsServer());
    }

    /* access modifiers changed from: 0000 */
    public AVACL getDefaultACL() {
        return this.defaultACL;
    }

    /* access modifiers changed from: 0000 */
    public void setDefaultACL(AVACL avacl) {
        this.defaultACL = avacl;
    }

    /* access modifiers changed from: 0000 */
    public AVUser getCurrentUser() {
        return this.currentUser;
    }

    public Map<String, String> userHeaderMap() {
        AVUser currentUser2 = AVUser.getCurrentUser();
        if (currentUser2 != null) {
            return currentUser2.headerMap();
        }
        return null;
    }

    /* access modifiers changed from: 0000 */
    public void setCurrentUser(AVUser aVUser) {
        this.currentUser = aVUser;
    }

    private PaasClient(String str) {
        this.baseUrl = str;
        useUruluServer();
    }

    private String signRequest() {
        StringBuilder sb = new StringBuilder();
        long currentTimestamp = AVUtils.getCurrentTimestamp();
        StringBuilder sb2 = new StringBuilder();
        sb.append(currentTimestamp);
        sb.append(AVOSCloud.clientKey);
        sb2.append(AVUtils.md5(sb.toString()).toLowerCase());
        sb2.append(',');
        sb2.append(currentTimestamp);
        return sb2.toString();
    }

    /* access modifiers changed from: protected */
    public void updateHeaders(Builder builder, Map<String, String> map, boolean z) {
        String str = "1";
        builder.header("X-LC-Prod", AVCloud.isProductionMode() ? str : "0");
        AVUser currentUser2 = AVUser.getCurrentUser();
        builder.header(sessionTokenField, (currentUser2 == null || currentUser2.getSessionToken() == null) ? "" : currentUser2.getSessionToken());
        builder.header(applicationIdField, AVOSCloud.applicationId);
        String str2 = "application/json";
        builder.header("Accept", str2);
        builder.header("Content-Type", str2);
        builder.header("User-Agent", userAgent);
        builder.header("X-LC-Sign", signRequest());
        if (map != null) {
            for (Entry entry : map.entrySet()) {
                builder.header((String) entry.getKey(), (String) entry.getValue());
            }
        }
        if (z) {
            builder.header(REQUEST_STATIS_HEADER, str);
        }
    }

    public void useUruluServer() {
        if (AVOSCloud.isCN()) {
            useAVCloudCN();
        } else {
            useAVCloudUS();
        }
    }

    public static void useAVCloudUS() {
        applicationIdField = "X-LC-Id";
        apiKeyField = "X-LC-Key";
        sessionTokenField = "X-LC-Session";
    }

    public static void useAVCloudCN() {
        applicationIdField = "X-LC-Id";
        apiKeyField = "X-LC-Key";
        sessionTokenField = "X-LC-Session";
    }

    public static void useLocalStg() {
        applicationIdField = "X-LC-Id";
        apiKeyField = "X-LC-Key";
        sessionTokenField = "X-LC-Session";
    }

    public String buildUrl(String str) {
        return String.format("%s/%s/%s", new Object[]{this.baseUrl, this.apiVersion, str});
    }

    public String buildUrl(String str, AVRequestParams aVRequestParams) {
        String buildUrl = buildUrl(str);
        return (aVRequestParams == null || aVRequestParams.isEmpty()) ? buildUrl : aVRequestParams.getWholeUrl(buildUrl);
    }

    private String batchUrl() {
        return String.format("%s/%s/batch", new Object[]{this.baseUrl, this.apiVersion});
    }

    private AsyncHttpResponseHandler createGetHandler(GenericObjectCallback genericObjectCallback, CachePolicy cachePolicy, String str) {
        return new GetHttpResponseHandler(genericObjectCallback, cachePolicy, str);
    }

    private AsyncHttpResponseHandler createPostHandler(GenericObjectCallback genericObjectCallback) {
        return new PostHttpResponseHandler(genericObjectCallback);
    }

    public String getApiVersion() {
        return this.apiVersion;
    }

    private void setBaseUrl(String str) {
        this.baseUrl = str;
    }

    public String getBaseUrl() {
        return this.baseUrl;
    }

    public String getObject(String str, AVRequestParams aVRequestParams, boolean z, Map<String, String> map, GenericObjectCallback genericObjectCallback, CachePolicy cachePolicy, long j) {
        String buildUrl = buildUrl(str, aVRequestParams);
        final String generateQueryPath = generateQueryPath(str, aVRequestParams);
        final String lastModify2 = getLastModify(generateQueryPath);
        int i = AnonymousClass6.$SwitchMap$com$avos$avoscloud$AVQuery$CachePolicy[cachePolicy.ordinal()];
        if (i == 2) {
            AVCacheManager.sharedInstance().get(generateQueryPath, j, lastModify2, genericObjectCallback);
        } else if (i == 3) {
            getObject(str, aVRequestParams, z, map, genericObjectCallback, cachePolicy);
        } else if (i == 4) {
            AVCacheManager sharedInstance = AVCacheManager.sharedInstance();
            final GenericObjectCallback genericObjectCallback2 = genericObjectCallback;
            final String str2 = str;
            final AVRequestParams aVRequestParams2 = aVRequestParams;
            final boolean z2 = z;
            final Map<String, String> map2 = map;
            final CachePolicy cachePolicy2 = cachePolicy;
            AnonymousClass1 r6 = new GenericObjectCallback() {
                public void onSuccess(String str, AVException aVException) {
                    genericObjectCallback2.onSuccess(str, aVException);
                }

                public void onFailure(Throwable th, String str) {
                    PaasClient.this.getObject(str2, aVRequestParams2, z2, map2, genericObjectCallback2, cachePolicy2);
                }
            };
            sharedInstance.get(generateQueryPath, j, lastModify2, r6);
        } else if (i == 5) {
            final GenericObjectCallback genericObjectCallback3 = genericObjectCallback;
            final long j2 = j;
            AnonymousClass2 r1 = new GenericObjectCallback() {
                public void onSuccess(String str, AVException aVException) {
                    genericObjectCallback3.onSuccess(str, aVException);
                }

                public void onFailure(Throwable th, String str) {
                    AVCacheManager sharedInstance = AVCacheManager.sharedInstance();
                    if (sharedInstance.hasValidCache(generateQueryPath, lastModify2, j2)) {
                        sharedInstance.get(generateQueryPath, j2, lastModify2, genericObjectCallback3);
                    } else {
                        genericObjectCallback3.onFailure(th, str);
                    }
                }
            };
            getObject(str, aVRequestParams, z, map, r1, cachePolicy);
        } else if (i != 6) {
            getObject(str, aVRequestParams, z, map, genericObjectCallback, cachePolicy);
        } else {
            AVCacheManager sharedInstance2 = AVCacheManager.sharedInstance();
            final GenericObjectCallback genericObjectCallback4 = genericObjectCallback;
            final String str3 = str;
            final AVRequestParams aVRequestParams3 = aVRequestParams;
            final boolean z3 = z;
            final Map<String, String> map3 = map;
            final CachePolicy cachePolicy3 = cachePolicy;
            AnonymousClass3 r62 = new GenericObjectCallback() {
                public void onSuccess(String str, AVException aVException) {
                    genericObjectCallback4.onSuccess(str, aVException);
                    PaasClient.this.getObject(str3, aVRequestParams3, z3, map3, genericObjectCallback4, cachePolicy3);
                }

                public void onFailure(Throwable th, String str) {
                    genericObjectCallback4.onFailure(th, str);
                    PaasClient.this.getObject(str3, aVRequestParams3, z3, map3, genericObjectCallback4, cachePolicy3);
                }
            };
            sharedInstance2.get(generateQueryPath, j, lastModify2, r62);
        }
        return buildUrl;
    }

    /* access modifiers changed from: 0000 */
    public String generateQueryPath(String str, AVRequestParams aVRequestParams) {
        return buildUrl(str, aVRequestParams);
    }

    public void getObject(String str, AVRequestParams aVRequestParams, boolean z, Map<String, String> map, GenericObjectCallback genericObjectCallback, CachePolicy cachePolicy) {
        String str2;
        if (map == null) {
            map = new HashMap<>();
        }
        updateHeaderForPath(str, aVRequestParams, map);
        String buildUrl = buildUrl(str, aVRequestParams);
        AsyncHttpResponseHandler createGetHandler = createGetHandler(genericObjectCallback, cachePolicy, buildUrl);
        if (AVOSCloud.isDebugLogEnabled()) {
            String buildUrl2 = buildUrl(str);
            if (aVRequestParams == null) {
                str2 = null;
            } else {
                str2 = aVRequestParams.getDumpQueryString();
            }
            dumpHttpGetRequest(buildUrl2, str2, map);
        }
        AVHttpClient clientInstance = AVHttpClient.clientInstance();
        Builder builder = new Builder();
        builder.url(buildUrl).get();
        updateHeaders(builder, map, genericObjectCallback != null && genericObjectCallback.isRequestStatisticNeed());
        clientInstance.execute(builder.build(), z, createGetHandler);
    }

    public void getObject(String str, AVRequestParams aVRequestParams, boolean z, Map<String, String> map, GenericObjectCallback genericObjectCallback) {
        getObject(str, aVRequestParams, z, map, genericObjectCallback, CachePolicy.IGNORE_CACHE);
    }

    public void putObject(String str, String str2, boolean z, Map<String, String> map, GenericObjectCallback genericObjectCallback, String str3, String str4) {
        putObject(str, str2, z, false, map, genericObjectCallback, str3, str4);
    }

    public void putObject(String str, String str2, boolean z, boolean z2, Map<String, String> map, GenericObjectCallback genericObjectCallback, String str3, String str4) {
        if (z2) {
            try {
                handleArchivedRequest(archiveRequest("put", str, str2, str3, str4), z, genericObjectCallback);
            } catch (Exception e) {
                processException(e, genericObjectCallback);
            }
        } else {
            String buildUrl = buildUrl(str);
            AsyncHttpResponseHandler createPostHandler = createPostHandler(genericObjectCallback);
            if (AVOSCloud.isDebugLogEnabled()) {
                dumpHttpPutRequest(map, buildUrl, str2);
            }
            AVHttpClient clientInstance = AVHttpClient.clientInstance();
            Builder builder = new Builder();
            builder.url(buildUrl).put(RequestBody.create(AVHttpClient.JSON, str2));
            updateHeaders(builder, map, genericObjectCallback != null && genericObjectCallback.isRequestStatisticNeed());
            clientInstance.execute(builder.build(), z, createPostHandler);
        }
    }

    private void processException(Exception exc, GenericObjectCallback genericObjectCallback) {
        if (genericObjectCallback != null) {
            genericObjectCallback.onFailure(exc, null);
        }
    }

    /* access modifiers changed from: 0000 */
    public Map<String, Object> batchItemMap(String str, String str2, Object obj, Map map) {
        HashMap hashMap = new HashMap();
        hashMap.put(Param.METHOD, str);
        hashMap.put("path", str2);
        hashMap.put(TtmlNode.TAG_BODY, obj);
        if (map != null) {
            hashMap.put("params", map);
        }
        return hashMap;
    }

    /* access modifiers changed from: 0000 */
    public Map<String, Object> batchItemMap(String str, String str2, Object obj) {
        return batchItemMap(str, str2, obj, null);
    }

    /* access modifiers changed from: 0000 */
    @Deprecated
    public List<Object> assembleBatchOpsList(List<Object> list, String str) {
        ArrayList arrayList = new ArrayList();
        for (Object batchItemMap : list) {
            arrayList.add(batchItemMap("PUT", str, batchItemMap));
        }
        return arrayList;
    }

    private Map<String, Object> batchRequest(List<Object> list) {
        HashMap hashMap = new HashMap();
        hashMap.put("requests", list);
        return hashMap;
    }

    public void postBatchObject(List<Object> list, boolean z, Map<String, String> map, GenericObjectCallback genericObjectCallback) {
        try {
            String batchUrl = batchUrl();
            String jSONString = JSON.toJSONString(batchRequest(list));
            new ByteArrayEntity(jSONString.getBytes("UTF-8"));
            if (AVOSCloud.isDebugLogEnabled()) {
                dumpHttpPostRequest(map, batchUrl, jSONString);
            }
            AsyncHttpResponseHandler createPostHandler = createPostHandler(genericObjectCallback);
            AVHttpClient clientInstance = AVHttpClient.clientInstance();
            Builder builder = new Builder();
            builder.url(batchUrl).post(RequestBody.create(AVHttpClient.JSON, jSONString));
            updateHeaders(builder, map, genericObjectCallback != null && genericObjectCallback.isRequestStatisticNeed());
            clientInstance.execute(builder.build(), z, createPostHandler);
        } catch (Exception e) {
            processException(e, genericObjectCallback);
        }
    }

    public void postBatchSave(List list, boolean z, boolean z2, Map<String, String> map, GenericObjectCallback genericObjectCallback, String str, String str2) {
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("requests", list);
            String jsonStringFromMapWithNull = AVUtils.jsonStringFromMapWithNull(hashMap);
            if (z2) {
                handleArchivedRequest(archiveRequest("post", batchSaveRelativeUrl(), jsonStringFromMapWithNull, str, str2), z, genericObjectCallback);
                return;
            }
            String buildUrl = buildUrl(batchSaveRelativeUrl());
            if (AVOSCloud.isDebugLogEnabled()) {
                dumpHttpPostRequest(map, buildUrl, jsonStringFromMapWithNull);
            }
            AsyncHttpResponseHandler createPostHandler = createPostHandler(genericObjectCallback);
            AVHttpClient clientInstance = AVHttpClient.clientInstance();
            Builder builder = new Builder();
            builder.url(buildUrl).post(RequestBody.create(AVHttpClient.JSON, jsonStringFromMapWithNull));
            updateHeaders(builder, map, genericObjectCallback != null && genericObjectCallback.isRequestStatisticNeed());
            clientInstance.execute(builder.build(), z, createPostHandler);
        } catch (Exception e) {
            processException(e, genericObjectCallback);
        }
    }

    public void postObject(String str, String str2, boolean z, GenericObjectCallback genericObjectCallback) {
        postObject(str, str2, z, false, genericObjectCallback, null, null);
    }

    public void postObject(String str, String str2, Map<String, String> map, boolean z, GenericObjectCallback genericObjectCallback) {
        postObject(str, str2, map, z, false, genericObjectCallback, null, null);
    }

    public void postObject(String str, String str2, boolean z, boolean z2, GenericObjectCallback genericObjectCallback, String str3, String str4) {
        postObject(str, str2, null, z, z2, genericObjectCallback, str3, str4);
    }

    public void postObject(String str, String str2, Map<String, String> map, boolean z, boolean z2, GenericObjectCallback genericObjectCallback, String str3, String str4) {
        if (z2) {
            try {
                handleArchivedRequest(archiveRequest("post", str, str2, str3, str4), z, genericObjectCallback);
            } catch (Exception e) {
                processException(e, genericObjectCallback);
            }
        } else {
            String buildUrl = buildUrl(str);
            if (AVOSCloud.isDebugLogEnabled()) {
                dumpHttpPostRequest(null, buildUrl, str2);
            }
            AsyncHttpResponseHandler createPostHandler = createPostHandler(genericObjectCallback);
            AVHttpClient clientInstance = AVHttpClient.clientInstance();
            Builder builder = new Builder();
            updateHeaders(builder, map, genericObjectCallback != null && genericObjectCallback.isRequestStatisticNeed());
            builder.url(buildUrl).post(RequestBody.create(AVHttpClient.JSON, str2));
            clientInstance.execute(builder.build(), z, createPostHandler);
        }
    }

    public void deleteObject(String str, boolean z, GenericObjectCallback genericObjectCallback, String str2, String str3) {
        deleteObject(str, z, false, genericObjectCallback, str2, str3);
    }

    public void deleteObject(String str, boolean z, boolean z2, GenericObjectCallback genericObjectCallback, String str2, String str3) {
        if (z2) {
            try {
                handleArchivedRequest(archiveRequest("delete", str, null, str2, str3), z, genericObjectCallback);
            } catch (Exception e) {
                processException(e, genericObjectCallback);
            }
        } else {
            String buildUrl = buildUrl(str);
            if (AVOSCloud.isDebugLogEnabled()) {
                dumpHttpDeleteRequest(null, buildUrl, null);
            }
            AsyncHttpResponseHandler createPostHandler = createPostHandler(genericObjectCallback);
            AVHttpClient clientInstance = AVHttpClient.clientInstance();
            Builder builder = new Builder();
            updateHeaders(builder, null, genericObjectCallback != null && genericObjectCallback.isRequestStatisticNeed());
            builder.url(buildUrl).delete();
            clientInstance.execute(builder.build(), z, createPostHandler);
        }
    }

    private File archiveRequest(String str, String str2, String str3, String str4, String str5) {
        File file = new File(AVPersistenceUtils.getCommandCacheDir(), AVUtils.getArchiveRequestFileName(str4, str5, str, str2, str3));
        HashMap hashMap = new HashMap(3);
        hashMap.put(Param.METHOD, str);
        hashMap.put("relativePath", str2);
        hashMap.put("paramString", str3);
        hashMap.put("objectId", str4);
        hashMap.put("_internalId", str5);
        AVPersistenceUtils.saveContentToFile(AVUtils.toJSON(hashMap), file);
        if (AVOSCloud.showInternalDebugLog()) {
            StringBuilder sb = new StringBuilder();
            sb.append(AVUtils.restfulServerData(hashMap));
            sb.append("\ndid save to ");
            sb.append(file.getAbsolutePath());
            log.d(sb.toString());
        }
        return file;
    }

    private void handleArchivedRequest(File file, boolean z) {
        handleArchivedRequest(file, z, null);
    }

    private void handleArchivedRequest(final File file, boolean z, final GenericObjectCallback genericObjectCallback) {
        try {
            Map map = (Map) AVUtils.getFromJSON(AVPersistenceUtils.readContentFromFile(file), Map.class);
            if (map != null && !map.isEmpty()) {
                String str = (String) map.get(Param.METHOD);
                String str2 = (String) map.get("relativePath");
                String str3 = (String) map.get("paramString");
                String str4 = (String) map.get("objectId");
                String str5 = (String) map.get("_internalId");
                AnonymousClass4 r8 = new GenericObjectCallback() {
                    public void onSuccess(String str, AVException aVException) {
                        GenericObjectCallback genericObjectCallback = genericObjectCallback;
                        if (genericObjectCallback != null) {
                            genericObjectCallback.onSuccess(str, aVException);
                        }
                        try {
                            Map map = (Map) AVUtils.getFromJSON(str, Map.class);
                            for (String str2 : map.keySet()) {
                                if (PaasClient.internalObjectsForEventuallySave.get(str2) != null) {
                                    ((AVObjectReferenceCount) PaasClient.internalObjectsForEventuallySave.get(str2)).getValue().copyFromMap(map);
                                    PaasClient.unregisterEvtuallyObject(((AVObjectReferenceCount) PaasClient.internalObjectsForEventuallySave.get(str2)).getValue());
                                }
                            }
                        } catch (Exception unused) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("parse exception during archive request");
                            sb.append(aVException.getMessage());
                            avlog.e(sb.toString());
                        }
                        file.delete();
                        AVPersistenceUtils.removeLock(file.getAbsolutePath());
                    }

                    public void onFailure(Throwable th, String str) {
                        GenericObjectCallback genericObjectCallback = genericObjectCallback;
                        if (genericObjectCallback != null) {
                            genericObjectCallback.onFailure(th, str);
                        }
                        AVPersistenceUtils.removeLock(file.getAbsolutePath());
                    }
                };
                if (str == null) {
                    r8.onFailure(new AVRuntimeException("Null method."), null);
                }
                if ("post".equalsIgnoreCase(str)) {
                    postObject(str2, str3, z, r8);
                } else if ("put".equalsIgnoreCase(str)) {
                    putObject(str2, str3, z, null, r8, str4, str5);
                } else if ("delete".equalsIgnoreCase(str)) {
                    deleteObject(str2, z, r8, str4, str5);
                }
            }
        } catch (Exception unused) {
        }
    }

    public void handleAllArchivedRequest() {
        handleAllArchivedRequest(false);
    }

    /* access modifiers changed from: protected */
    public void handleAllArchivedRequest(boolean z) {
        File[] listFiles = AVPersistenceUtils.getCommandCacheDir().listFiles();
        if (listFiles != null && listFiles.length > 0) {
            Arrays.sort(listFiles, fileModifiedDateComparator);
            for (File file : listFiles) {
                if (file.isFile()) {
                    handleArchivedRequest(file, z);
                } else if (AVOSCloud.showInternalDebugLog()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(file.getAbsolutePath());
                    sb.append(" is a dir");
                    avlog.e(sb.toString());
                }
            }
        }
    }

    public void dumpHttpGetRequest(String str, String str2, Map<String, String> map) {
        String str3;
        StringBuilder sb = new StringBuilder();
        if (map != null) {
            for (Entry entry : map.entrySet()) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append((String) entry.getKey());
                sb2.append(": ");
                sb2.append((String) entry.getValue());
                sb.append(sb2.toString());
            }
        }
        if (str2 != null) {
            str3 = String.format("curl -X GET -H \"%s: %s\" -H \"%s: %s\" -H \"%s\" -G --data-urlencode '%s' %s", new Object[]{applicationIdField, AVOSCloud.applicationId, apiKeyField, getDebugClientKey(), sb.toString(), str2, str});
        } else {
            str3 = String.format("curl -X GET -H \"%s: %s\" -H \"%s: %s\" -H \"%s\" %s", new Object[]{applicationIdField, AVOSCloud.applicationId, apiKeyField, getDebugClientKey(), sb.toString(), str});
        }
        avlog.d(str3);
    }

    private String getDebugClientKey() {
        return AVOSCloud.showInternalDebugLog() ? AVOSCloud.clientKey : "YourAppKey";
    }

    private String headerString(Map<String, String> map) {
        StringBuilder sb = new StringBuilder(String.format(" -H \"%s: %s\" -H \"%s: %s\" ", new Object[]{applicationIdField, AVOSCloud.applicationId, apiKeyField, getDebugClientKey()}));
        if (map != null) {
            for (Entry entry : map.entrySet()) {
                sb.append(String.format(" -H \"%s: %s\" ", new Object[]{entry.getKey(), entry.getValue()}));
            }
        }
        sb.append(" -H \"Content-Type: application/json\" ");
        return sb.toString();
    }

    public void dumpHttpPutRequest(Map<String, String> map, String str, String str2) {
        avlog.d(String.format("curl -X PUT %s  -d ' %s ' %s", new Object[]{headerString(map), str2, str}));
    }

    public void dumpHttpPostRequest(Map<String, String> map, String str, String str2) {
        avlog.d(String.format("curl -X POST %s  -d '%s' %s", new Object[]{headerString(map), str2, str}));
    }

    public void dumpHttpDeleteRequest(Map<String, String> map, String str, String str2) {
        avlog.d(String.format("curl -X DELETE %s  -d '%s' %s", new Object[]{headerString(map), str2, str}));
    }

    public void updateHeaderForPath(String str, AVRequestParams aVRequestParams, Map<String, String> map) {
        if (isLastModifyEnabled() && map != null && !TextUtils.isEmpty(str)) {
            String generateQueryPath = generateQueryPath(str, aVRequestParams);
            String lastModify2 = getLastModify(generateQueryPath);
            boolean hasCache = AVCacheManager.sharedInstance().hasCache(generateQueryPath, lastModify2);
            if (lastModify2 != null && hasCache) {
                map.put(HttpHeaders.IF_MODIFIED_SINCE, lastModify2);
            }
        }
    }

    public static String getLastModify(String str) {
        if (!isLastModifyEnabled()) {
            return null;
        }
        return (String) lastModify.get(str);
    }

    public static boolean isLastModifyEnabled() {
        return lastModifyEnabled;
    }

    public static void setLastModifyEnabled(boolean z) {
        lastModifyEnabled = z;
    }

    public static void clearLastModifyCache() {
        for (Entry entry : lastModify.entrySet()) {
            AVCacheManager.sharedInstance().remove((String) entry.getKey(), (String) entry.getValue());
        }
        lastModify.clear();
    }

    public static String lastModifyFromHeaders(Header[] headerArr) {
        for (Header header : headerArr) {
            if (header.getName().equalsIgnoreCase("Last-Modified")) {
                return header.getValue();
            }
        }
        return null;
    }

    @SuppressLint({"DefaultLocale"})
    public static boolean isJSONResponse(String str) {
        if (!AVUtils.isBlankString(str)) {
            return str.toLowerCase().contains("application/json");
        }
        return false;
    }

    protected static String extractContentType(Header[] headerArr) {
        if (headerArr != null) {
            for (Header header : headerArr) {
                if (header.getName().equalsIgnoreCase("Content-Type")) {
                    return header.getValue();
                }
            }
        }
        return null;
    }

    public static boolean updateLastModify(String str, String str2) {
        if (!isLastModifyEnabled() || AVUtils.isBlankString(str2)) {
            return false;
        }
        lastModify.put(str, str2);
        return true;
    }

    public static void removeLastModifyForUrl(String str) {
        lastModify.remove(str);
    }

    protected static void registerEventuallyObject(AVObject aVObject) {
        if (aVObject != null) {
            synchronized (aVObject) {
                AVObjectReferenceCount aVObjectReferenceCount = (AVObjectReferenceCount) internalObjectsForEventuallySave.get(aVObject.internalId());
                if (aVObjectReferenceCount != null) {
                    aVObjectReferenceCount.increment();
                } else {
                    internalObjectsForEventuallySave.put(aVObject.internalId(), new AVObjectReferenceCount(aVObject));
                }
            }
        }
    }

    protected static void unregisterEvtuallyObject(AVObject aVObject) {
        AVObjectReferenceCount aVObjectReferenceCount;
        if (aVObject != null) {
            synchronized (aVObject) {
                if (internalObjectsForEventuallySave.get(aVObject.internalId()) == null) {
                    aVObjectReferenceCount = (AVObjectReferenceCount) internalObjectsForEventuallySave.get(aVObject.internalId());
                } else {
                    aVObjectReferenceCount = (AVObjectReferenceCount) internalObjectsForEventuallySave.get(aVObject.getUuid());
                }
                if (aVObjectReferenceCount != null && aVObjectReferenceCount.desc() <= 0) {
                    internalObjectsForEventuallySave.remove(aVObject.internalId());
                    internalObjectsForEventuallySave.remove(aVObject.getUuid());
                }
            }
        }
    }
}
