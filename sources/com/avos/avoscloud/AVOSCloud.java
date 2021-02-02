package com.avos.avoscloud;

import android.content.Context;
import android.os.Handler;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.parser.ParserConfig;
import com.alibaba.fastjson.serializer.ObjectSerializer;
import com.alibaba.fastjson.serializer.SerializeConfig;
import com.avos.avoscloud.AVSMSOption.AVSMS_TYPE;
import com.avos.avoscloud.LogUtil.avlog;
import com.avos.avoscloud.callback.AVServerDateCallback;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.Date;
import java.util.Map;

public class AVOSCloud {
    static final String AV_CLOUD_API_VERSION_KEY = "AV_CLOUD_API_VERSION";
    static final String AV_CLOUD_API_VERSION_KEY_ZONE = "AV_CLOUD_API_VERSION_KEY_ZONE";
    static final Integer AV_CLOUD_CACHE_DEFAULT_EXPIRE_DATE = Integer.valueOf(30);
    static final String AV_CLOUD_CACHE_EXPIRE_AUTO_CLEAN_KEY = "AV_CLOUD_CACHE_EXPIRE_AUTO_CLEAN_KEY";
    static final String AV_CLOUD_CACHE_EXPIRE_DATE_KEY = "AV_CLOUD_CACHE_EXPIRE_DATE_KEY";
    static final String AV_CLOUD_CACHE_EXPIRE_KEY_ZONE = "AV_CLOUD_CACHE_EXPIRE_KEY_ZONE";
    public static final int DEFAULT_NETWORK_TIMEOUT = 15000;
    static final int DEFAULT_THREAD_POOL_SIZE = 10;
    public static final int LOG_LEVEL_DEBUG = 4;
    public static final int LOG_LEVEL_ERROR = 32;
    public static final int LOG_LEVEL_INFO = 8;
    public static final int LOG_LEVEL_NONE = -1;
    public static final int LOG_LEVEL_VERBOSE = 2;
    public static final int LOG_LEVEL_WARNING = 16;
    public static Context applicationContext;
    public static String applicationId;
    public static String clientKey;
    protected static Handler handler;
    private static boolean internalDebugLog = false;
    private static boolean isCN = true;
    private static boolean isGcmOpen = false;
    private static int logLevel = -1;
    private static int networkTimeoutInMills = 15000;
    private static int threadPoolSize = 10;
    private static boolean userInternalDebugLog = false;

    public enum SERVER_TYPE {
        API("api"),
        PUSH("push"),
        RTM("rtm"),
        STATS("stats"),
        ENGINE("engine");
        
        public final String name;

        private SERVER_TYPE(String str) {
            this.name = str;
        }

        public String toString() {
            return this.name;
        }
    }

    static {
        JSON.DEFFAULT_DATE_FORMAT = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'";
        ParserConfig.getGlobalInstance().setAutoTypeSupport(true);
        ParserConfig.getGlobalInstance().putDeserializer(AVObject.class, AVObjectDeserializer.instance);
        ParserConfig.getGlobalInstance().putDeserializer(AVUser.class, AVObjectDeserializer.instance);
        SerializeConfig.getGlobalInstance().put((Type) AVObject.class, (ObjectSerializer) AVObjectSerializer.instance);
        SerializeConfig.getGlobalInstance().put((Type) AVUser.class, (ObjectSerializer) AVObjectSerializer.instance);
        try {
            Class cls = Class.forName("com.avos.avoscloud.AVInstallation");
            ParserConfig.getGlobalInstance().putDeserializer(cls, AVObjectDeserializer.instance);
            SerializeConfig.getGlobalInstance().put((Type) cls, (ObjectSerializer) AVObjectSerializer.instance);
        } catch (Exception unused) {
        }
    }

    public static void setNetworkTimeout(int i) {
        networkTimeoutInMills = i;
    }

    public static int getNetworkTimeout() {
        return networkTimeoutInMills;
    }

    public static int getThreadPoolSize() {
        return threadPoolSize;
    }

    public static void setThreadPoolSize(int i) {
        threadPoolSize = i;
    }

    private AVOSCloud() {
    }

    public static void initialize(Context context, String str, String str2) {
        if (handler == null && !AVUtils.isMainThread()) {
            throw new IllegalStateException("Please call AVOSCloud.initialize in main thread.");
        } else if (context == null || AVUtils.isBlankString(str) || AVUtils.isBlankString(str2)) {
            throw new IllegalArgumentException("Parameter(context or applicationId or clientKey) is illegal.");
        } else if (applicationContext == null) {
            applicationId = str;
            clientKey = str2;
            applicationContext = context;
            if (handler == null) {
                handler = new Handler();
            }
            ArchiveRequestTaskController.schedule();
            initialize();
        } else if (!str.equals(applicationId) || !str2.equals(clientKey)) {
            throw new IllegalStateException("Can't initialize more than once.");
        }
    }

    public static void initialize(Context context, String str, String str2, final AVCallback aVCallback) {
        if (handler == null && !AVUtils.isMainThread()) {
            throw new IllegalStateException("Please call AVOSCloud.initialize in main thread.");
        } else if (context == null || AVUtils.isBlankString(str) || AVUtils.isBlankString(str2)) {
            throw new IllegalArgumentException("Parameter(context or applicationId or clientKey) is illegal.");
        } else if (applicationContext == null) {
            applicationId = str;
            clientKey = str2;
            applicationContext = context;
            if (handler == null) {
                handler = new Handler();
            }
            ArchiveRequestTaskController.schedule();
            new Thread(new Runnable() {
                public void run() {
                    AVOSCloud.initialize();
                    AVOSCloud.handler.post(new Runnable() {
                        public void run() {
                            aVCallback.internalDone(null);
                        }
                    });
                }
            }).start();
        } else if (!str.equals(applicationId) || !str2.equals(clientKey)) {
            throw new IllegalStateException("Can't initialize more than once.");
        } else {
            if (aVCallback != null) {
                aVCallback.internalDone(null);
            }
        }
    }

    /* access modifiers changed from: private */
    public static void initialize() {
        AppRouterManager.getInstance().fetchRouter(false);
        startAnalytics(applicationContext);
        AVPersistenceUtils sharedInstance = AVPersistenceUtils.sharedInstance();
        Boolean valueOf = Boolean.valueOf(true);
        String str = AV_CLOUD_CACHE_EXPIRE_KEY_ZONE;
        if (sharedInstance.getPersistentSettingBoolean(str, AV_CLOUD_CACHE_EXPIRE_AUTO_CLEAN_KEY, valueOf)) {
            AVPersistenceUtils sharedInstance2 = AVPersistenceUtils.sharedInstance();
            Integer num = AV_CLOUD_CACHE_DEFAULT_EXPIRE_DATE;
            String str2 = AV_CLOUD_CACHE_EXPIRE_DATE_KEY;
            AVCacheManager.clearCacheMoreThanDays(sharedInstance2.getPersistentSettingInteger(str, str2, num).intValue());
            AVCacheManager.clearFileCacheMoreThanDays(AVPersistenceUtils.sharedInstance().getPersistentSettingInteger(str, str2, AV_CLOUD_CACHE_DEFAULT_EXPIRE_DATE).intValue() * 2);
        }
        AVPersistenceUtils sharedInstance3 = AVPersistenceUtils.sharedInstance();
        String str3 = AV_CLOUD_API_VERSION_KEY;
        String str4 = AV_CLOUD_API_VERSION_KEY_ZONE;
        onUpgrade(sharedInstance3.getPersistentSettingString(str4, str3, "1"), PaasClient.storageInstance().getApiVersion());
        AVPersistenceUtils.sharedInstance().savePersistentSettingString(str4, str3, PaasClient.storageInstance().getApiVersion());
    }

    public static void useAVCloudUS() {
        isCN = false;
        PaasClient.useAVCloudUS();
    }

    public static void useAVCloudCN() {
        isCN = true;
        PaasClient.useAVCloudCN();
    }

    static boolean isCN() {
        return isCN;
    }

    public static int getLogLevel() {
        return logLevel;
    }

    public static void setLogLevel(int i) {
        logLevel = i;
    }

    static void showInternalDebugLog(boolean z) {
        internalDebugLog = z;
    }

    public static boolean showInternalDebugLog() {
        return internalDebugLog;
    }

    public static void setDebugLogEnabled(boolean z) {
        userInternalDebugLog = z;
    }

    public static void setServer(SERVER_TYPE server_type, String str) {
        AppRouterManager.setServer(server_type, str);
    }

    public static boolean isDebugLogEnabled() {
        return userInternalDebugLog || internalDebugLog;
    }

    public static void setGcmOpen(boolean z) {
        isGcmOpen = z;
    }

    public static boolean isGcmOpen() {
        return isGcmOpen;
    }

    public static boolean isLastModifyEnabled() {
        return PaasClient.isLastModifyEnabled();
    }

    public static void setLastModifyEnabled(boolean z) {
        PaasClient.setLastModifyEnabled(z);
    }

    public static void clearLastModifyCache() {
        PaasClient.clearLastModifyCache();
    }

    public static void enableAutoCacheCleaner() {
        AVPersistenceUtils.sharedInstance().savePersistentSettingBoolean(AV_CLOUD_CACHE_EXPIRE_KEY_ZONE, AV_CLOUD_CACHE_EXPIRE_AUTO_CLEAN_KEY, Boolean.valueOf(true));
    }

    public static void disableAutoCacheCleaner() {
        AVPersistenceUtils.sharedInstance().savePersistentSettingBoolean(AV_CLOUD_CACHE_EXPIRE_KEY_ZONE, AV_CLOUD_CACHE_EXPIRE_AUTO_CLEAN_KEY, Boolean.valueOf(false));
    }

    public static void setCacheFileAutoExpireDate(int i) {
        AVPersistenceUtils.sharedInstance().savePersistentSettingInteger(AV_CLOUD_CACHE_EXPIRE_KEY_ZONE, AV_CLOUD_CACHE_EXPIRE_DATE_KEY, Integer.valueOf(i));
    }

    protected static void onUpgrade(String str, String str2) {
        if (!str.equals(str2) && AVUtils.compareNumberString(str2, str) && "1.1".equals(str2)) {
            if (showInternalDebugLog()) {
                avlog.d("try to do some upgrade work");
            }
            AVUser currentUser = AVUser.getCurrentUser();
            if (currentUser != null && !AVUtils.isBlankString(currentUser.getObjectId())) {
                currentUser.fetchInBackground(new GetCallback<AVObject>() {
                    public void done(AVObject aVObject, AVException aVException) {
                        AVUser.changeCurrentUser((AVUser) aVObject, true);
                    }
                });
            }
            try {
                Class cls = Class.forName("com.avos.avoscloud.AVInstallation");
                cls.getDeclaredMethod("updateCurrentInstallation", new Class[0]).invoke(cls, new Object[0]);
            } catch (Exception unused) {
                avlog.i("failed to update local Installation");
            }
            AVCacheManager.clearAllCache();
        }
    }

    private static void startAnalytics(Context context) {
        try {
            Class cls = Class.forName("com.avos.avoscloud.AVAnalytics");
            Method declaredMethod = cls.getDeclaredMethod("start", new Class[]{Context.class});
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(cls, new Object[]{context});
        } catch (Exception unused) {
            if (isDebugLogEnabled()) {
                avlog.i("statistics library not started since not included");
            }
        }
    }

    public static void getServerDateInBackground(AVServerDateCallback aVServerDateCallback) {
        getServerDateInBackground(false, aVServerDateCallback);
    }

    public static Date getServerDate() throws AVException {
        final Date[] dateArr = {null};
        getServerDateInBackground(true, new AVServerDateCallback() {
            public boolean mustRunOnUIThread() {
                return false;
            }

            public void done(Date date, AVException aVException) {
                if (aVException == null) {
                    dateArr[0] = date;
                } else {
                    AVExceptionHolder.add(aVException);
                }
            }
        });
        if (!AVExceptionHolder.exists()) {
            return dateArr[0];
        }
        throw AVExceptionHolder.remove();
    }

    private static void getServerDateInBackground(boolean z, final AVServerDateCallback aVServerDateCallback) {
        PaasClient.storageInstance().getObject("date", null, z, null, new GenericObjectCallback() {
            public void onSuccess(String str, AVException aVException) {
                try {
                    Date dateFromMap = AVUtils.dateFromMap((Map) JSON.parseObject(str, Map.class));
                    if (aVServerDateCallback != null) {
                        aVServerDateCallback.internalDone(dateFromMap, null);
                    }
                } catch (Exception e) {
                    AVServerDateCallback aVServerDateCallback = aVServerDateCallback;
                    if (aVServerDateCallback != null) {
                        aVServerDateCallback.internalDone(null, AVErrorUtils.createException((Throwable) e, (String) null));
                    }
                }
            }

            public void onFailure(Throwable th, String str) {
                AVServerDateCallback aVServerDateCallback = aVServerDateCallback;
                if (aVServerDateCallback != null) {
                    aVServerDateCallback.internalDone(null, AVErrorUtils.createException(th, str));
                }
            }
        });
    }

    public static void requestSMSCode(String str) throws AVException {
        AVSMS.requestSMSCode(str, null);
    }

    public static void requestSMSCode(String str, String str2, String str3, int i) throws AVException {
        AVSMSOption aVSMSOption = new AVSMSOption();
        aVSMSOption.setApplicationName(str2);
        aVSMSOption.setOperation(str3);
        aVSMSOption.setTtl(i);
        AVSMS.requestSMSCode(str, aVSMSOption);
    }

    public static void requestSMSCode(String str, String str2, Map<String, Object> map) throws AVException {
        AVSMSOption aVSMSOption = new AVSMSOption();
        aVSMSOption.setTemplateName(str2);
        aVSMSOption.setEnvMap(map);
        AVSMS.requestSMSCode(str, aVSMSOption);
    }

    public static void requestSMSCode(String str, String str2, String str3, Map<String, Object> map) throws AVException {
        AVSMSOption aVSMSOption = new AVSMSOption();
        aVSMSOption.setTemplateName(str2);
        aVSMSOption.setSignatureName(str3);
        aVSMSOption.setEnvMap(map);
        AVSMS.requestSMSCode(str, aVSMSOption);
    }

    public static void requestSMSCodeInBackground(String str, String str2, String str3, int i, RequestMobileCodeCallback requestMobileCodeCallback) {
        AVSMSOption aVSMSOption = new AVSMSOption();
        aVSMSOption.setApplicationName(str2);
        aVSMSOption.setOperation(str3);
        aVSMSOption.setTtl(i);
        AVSMS.requestSMSCodeInBackground(str, aVSMSOption, requestMobileCodeCallback);
    }

    public static void requestSMSCodeInBackground(String str, String str2, Map<String, Object> map, RequestMobileCodeCallback requestMobileCodeCallback) {
        AVSMSOption aVSMSOption = new AVSMSOption();
        aVSMSOption.setTemplateName(str2);
        aVSMSOption.setEnvMap(map);
        AVSMS.requestSMSCodeInBackground(str, aVSMSOption, requestMobileCodeCallback);
    }

    public static void requestSMSCodeInBackground(String str, String str2, String str3, Map<String, Object> map, RequestMobileCodeCallback requestMobileCodeCallback) {
        AVSMSOption aVSMSOption = new AVSMSOption();
        aVSMSOption.setTemplateName(str2);
        aVSMSOption.setSignatureName(str3);
        aVSMSOption.setEnvMap(map);
        AVSMS.requestSMSCodeInBackground(str, aVSMSOption, requestMobileCodeCallback);
    }

    public static void requestSMSCodeInBackground(String str, RequestMobileCodeCallback requestMobileCodeCallback) {
        AVSMS.requestSMSCodeInBackground(str, null, requestMobileCodeCallback);
    }

    public static void requestVoiceCode(String str) throws AVException {
        AVSMSOption aVSMSOption = new AVSMSOption();
        aVSMSOption.setSmsType(AVSMS_TYPE.VOICE_SMS);
        AVSMS.requestSMSCode(str, aVSMSOption);
    }

    public static void requestVoiceCodeInBackground(String str, RequestMobileCodeCallback requestMobileCodeCallback) {
        AVSMSOption aVSMSOption = new AVSMSOption();
        aVSMSOption.setSmsType(AVSMS_TYPE.VOICE_SMS);
        AVSMS.requestSMSCodeInBackground(str, aVSMSOption, requestMobileCodeCallback);
    }

    public static void verifySMSCode(String str, String str2) throws AVException {
        AVSMS.verifySMSCode(str, str2);
    }

    public static void verifyCode(String str, String str2) throws AVException {
        AVSMS.verifySMSCode(str, str2);
    }

    public static void verifySMSCodeInBackground(String str, String str2, AVMobilePhoneVerifyCallback aVMobilePhoneVerifyCallback) {
        AVSMS.verifySMSCodeInBackground(str, str2, aVMobilePhoneVerifyCallback);
    }

    public static void verifyCodeInBackground(String str, String str2, AVMobilePhoneVerifyCallback aVMobilePhoneVerifyCallback) {
        AVSMS.verifySMSCodeInBackground(str, str2, aVMobilePhoneVerifyCallback);
    }
}
