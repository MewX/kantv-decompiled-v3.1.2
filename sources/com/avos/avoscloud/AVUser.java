package com.avos.avoscloud;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.annotation.JSONField;
import com.alibaba.fastjson.annotation.JSONType;
import com.alibaba.fastjson.serializer.SerializeFilter;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.avos.avoscloud.AVObject.AVObjectCreator;
import com.avos.avoscloud.LogUtil.avlog;
import com.avos.avoscloud.LogUtil.log;
import com.avos.avoscloud.utils.StringUtils;
import com.google.firebase.analytics.FirebaseAnalytics.Event;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

@JSONType(asm = false, ignores = {"query", "password"})
public class AVUser extends AVObject {
    private static final String AUTHDATA_ATTR_MAIN_ACCOUNT = "main_account";
    private static final String AUTHDATA_ATTR_UNIONID = "unionid";
    private static final String AUTHDATA_ATTR_UNIONID_PLATFORM = "platform";
    public static final String AVUSER_ENDPOINT = "users";
    public static final transient Creator CREATOR = AVObjectCreator.instance;
    public static final String FOLLOWEE_TAG = "followee";
    public static final String FOLLOWER_TAG = "follower";
    public static final String LOG_TAG = "AVUser";
    public static final String SESSION_TOKEN_KEY = "sessionToken";
    public static final String SMS_PHONE_NUMBER = "mobilePhoneNumber";
    public static final String SMS_VALIDATE_TOKEN = "validate_token";
    public static final String SNS_SINA_WEIBO = "weibo";
    public static final String SNS_TENCENT_WEIBO = "qq";
    public static final String SNS_TENCENT_WEIXIN = "weixin";
    private static final String accessTokenTag = "access_token";
    private static final String anonymousTag = "anonymous";
    private static final String authDataTag = "authData";
    private static transient boolean enableAutomatic = false;
    private static final String expiresAtTag = "expires_at";
    /* access modifiers changed from: private */
    public static Class<? extends AVUser> subClazz;
    private boolean anonymous;
    private String email;
    private transient String facebookToken;
    private transient boolean isNew;
    private String mobilePhoneNumber;
    private transient boolean needTransferFromAnonymousUser;
    private transient String password;
    /* access modifiers changed from: private */
    public transient String qqWeiboToken;
    /* access modifiers changed from: private */
    public String sessionToken;
    /* access modifiers changed from: private */
    public transient String sinaWeiboToken;
    private transient String twitterToken;
    private String username;

    @Deprecated
    public static class AVThirdPartyUserAuth {
        public static final String SNS_SINA_WEIBO = "weibo";
        public static final String SNS_TENCENT_WEIBO = "qq";
        public static final String SNS_TENCENT_WEIXIN = "weixin";
        String accessToken;
        String expiredAt;
        String snsType;
        String userId;

        public AVThirdPartyUserAuth(String str, String str2, String str3, String str4) {
            this.accessToken = str;
            this.snsType = str3;
            this.expiredAt = str2;
            this.userId = str4;
        }

        protected static String platformUserIdTag(String str) {
            return ("qq".equalsIgnoreCase(str) || "weixin".equalsIgnoreCase(str)) ? "openid" : "uid";
        }

        public String getAccessToken() {
            return this.accessToken;
        }

        public void setAccessToken(String str) {
            this.accessToken = str;
        }

        public String getUserId() {
            return this.userId;
        }

        public void setUserId(String str) {
            this.userId = str;
        }

        public String getExpireAt() {
            return this.expiredAt;
        }

        public void setExpireAt(String str) {
            this.expiredAt = str;
        }

        public String getSnsType() {
            return this.snsType;
        }

        public void setSnsType(String str) {
            this.snsType = str;
        }
    }

    private static String logInPath() {
        return Event.LOGIN;
    }

    private static File currentUserArchivePath() {
        StringBuilder sb = new StringBuilder();
        sb.append(AVPersistenceUtils.getPaasDocumentDir());
        sb.append("/currentUser");
        return new File(sb.toString());
    }

    private static boolean userArchiveExist() {
        return currentUserArchivePath().exists();
    }

    public String getFacebookToken() {
        return this.facebookToken;
    }

    /* access modifiers changed from: 0000 */
    public void setFacebookToken(String str) {
        this.facebookToken = str;
    }

    public String getTwitterToken() {
        return this.twitterToken;
    }

    /* access modifiers changed from: 0000 */
    public void setTwitterToken(String str) {
        this.twitterToken = str;
    }

    public String getQqWeiboToken() {
        return this.qqWeiboToken;
    }

    /* access modifiers changed from: 0000 */
    public void setQqWeiboToken(String str) {
        this.qqWeiboToken = str;
    }

    /* access modifiers changed from: 0000 */
    public String getPassword() {
        return this.password;
    }

    static void setEnableAutomatic(boolean z) {
        enableAutomatic = z;
    }

    /* access modifiers changed from: 0000 */
    public void setNew(boolean z) {
        this.isNew = z;
    }

    public AVUser() {
        super(userClassName());
    }

    public AVUser(Parcel parcel) {
        super(parcel);
    }

    /* access modifiers changed from: protected */
    public void rebuildInstanceData() {
        super.rebuildInstanceData();
        this.sessionToken = (String) get(SESSION_TOKEN_KEY);
        this.username = (String) get("username");
        processAuthData(null);
        this.email = (String) get("email");
        this.mobilePhoneNumber = (String) get(SMS_PHONE_NUMBER);
    }

    public static void enableAutomaticUser() {
        enableAutomatic = true;
    }

    public static boolean isEnableAutomatic() {
        return enableAutomatic;
    }

    public static void disableAutomaticUser() {
        enableAutomatic = false;
    }

    public static synchronized void changeCurrentUser(AVUser aVUser, boolean z) {
        synchronized (AVUser.class) {
            if (aVUser != null) {
                aVUser.password = null;
            }
            File currentUserArchivePath = currentUserArchivePath();
            if (aVUser != null && z) {
                try {
                    String jSONString = JSON.toJSONString((Object) aVUser, (SerializeFilter) ObjectValueFilter.instance, SerializerFeature.WriteClassName, SerializerFeature.DisableCircularReferenceDetect);
                    if (AVOSCloud.showInternalDebugLog()) {
                        log.d(jSONString);
                    }
                    AVPersistenceUtils.saveContentToFile(jSONString, currentUserArchivePath);
                } catch (Exception e) {
                    log.e(LOG_TAG, "", e);
                }
            } else if (z) {
                AVPersistenceUtils.removeLock(currentUserArchivePath.getAbsolutePath());
                currentUserArchivePath.delete();
            }
            PaasClient.storageInstance().setCurrentUser(aVUser);
        }
    }

    public static AVUser getCurrentUser() {
        return getCurrentUser(AVUser.class);
    }

    public static <T extends AVUser> T getCurrentUser(Class<T> cls) {
        T currentUser = PaasClient.storageInstance().getCurrentUser();
        if (currentUser != null) {
            if (!cls.isAssignableFrom(currentUser.getClass())) {
                currentUser = cast(currentUser, cls);
            }
        } else if (userArchiveExist()) {
            synchronized (AVUser.class) {
                String readContentFromFile = AVPersistenceUtils.readContentFromFile(currentUserArchivePath());
                if (readContentFromFile != null) {
                    if (readContentFromFile.indexOf("@type") > 0) {
                        try {
                            T t = (AVUser) JSON.parse(readContentFromFile);
                            currentUser = !cls.isAssignableFrom(t.getClass()) ? cast(t, cls) : t;
                            PaasClient.storageInstance().setCurrentUser(currentUser);
                        } catch (Exception e) {
                            log.e(LOG_TAG, readContentFromFile, e);
                        }
                    } else {
                        currentUser = newAVUser(cls, null);
                        AVUtils.copyPropertiesFromJsonStringToAVObject(readContentFromFile, currentUser);
                        changeCurrentUser(currentUser, true);
                    }
                }
            }
        }
        if (!enableAutomatic || currentUser != null) {
            return currentUser;
        }
        T newAVUser = newAVUser(cls, null);
        changeCurrentUser(newAVUser, false);
        return newAVUser;
    }

    static String userClassName() {
        return AVPowerfulUtils.getAVClassName(AVUser.class.getSimpleName());
    }

    /* access modifiers changed from: 0000 */
    public void setNewFlag(boolean z) {
        this.isNew = z;
    }

    public String getEmail() {
        return this.email;
    }

    public static <T extends AVUser> AVQuery<T> getUserQuery(Class<T> cls) {
        return new AVQuery<>(userClassName(), cls);
    }

    public static AVQuery<AVUser> getQuery() {
        return getQuery(AVUser.class);
    }

    public String getSessionToken() {
        return this.sessionToken;
    }

    /* access modifiers changed from: 0000 */
    public void setSessionToken(String str) {
        this.sessionToken = str;
    }

    public String getUsername() {
        return this.username;
    }

    public boolean isAuthenticated() {
        return !AVUtils.isBlankString(this.sessionToken) || !AVUtils.isBlankString(this.sinaWeiboToken) || !AVUtils.isBlankString(this.qqWeiboToken);
    }

    public void isAuthenticated(final AVCallback<Boolean> aVCallback) {
        if (aVCallback != null) {
            if (AVUtils.isBlankContent(this.sessionToken)) {
                aVCallback.internalDone(Boolean.valueOf(false), null);
                return;
            }
            AVRequestParams aVRequestParams = new AVRequestParams();
            aVRequestParams.put("session_token", this.sessionToken);
            PaasClient.storageInstance().getObject("users/me", aVRequestParams, false, null, new GenericObjectCallback() {
                public void onSuccess(String str, AVException aVException) {
                    aVCallback.internalDone(Boolean.valueOf(true), aVException);
                }

                public void onFailure(Throwable th, String str) {
                    AVCallback aVCallback = aVCallback;
                    if (aVCallback != null) {
                        aVCallback.internalDone(null, AVErrorUtils.createException(th, str));
                    }
                }
            });
        }
    }

    public boolean isAnonymous() {
        return this.anonymous;
    }

    /* access modifiers changed from: protected */
    public void setAnonymous(boolean z) {
        this.anonymous = z;
    }

    public boolean isNew() {
        return this.isNew;
    }

    public static AVUser logIn(String str, String str2) throws AVException {
        return logIn(str, str2, AVUser.class);
    }

    public static <T extends AVUser> T logIn(String str, String str2, Class<T> cls) throws AVException {
        final T[] tArr = {null};
        logInInBackground(str, str2, true, new LogInCallback<T>() {
            public boolean mustRunOnUIThread() {
                return false;
            }

            public void done(T t, AVException aVException) {
                if (aVException != null) {
                    AVExceptionHolder.add(aVException);
                } else {
                    tArr[0] = t;
                }
            }
        }, cls);
        if (!AVExceptionHolder.exists()) {
            return tArr[0];
        }
        throw AVExceptionHolder.remove();
    }

    public static void logInInBackground(String str, String str2, LogInCallback<AVUser> logInCallback) {
        logInInBackground(str, str2, logInCallback, AVUser.class);
    }

    public static <T extends AVUser> void logInInBackground(String str, String str2, LogInCallback<T> logInCallback, Class<T> cls) {
        logInInBackground(str, str2, false, logInCallback, cls);
    }

    private static Map<String, String> createUserMap(String str, String str2, String str3) {
        HashMap hashMap = new HashMap();
        hashMap.put("username", str);
        if (!AVUtils.isBlankString(str)) {
            if (!AVUtils.isBlankString(str2)) {
                hashMap.put("password", str2);
            }
            if (!AVUtils.isBlankString(str3)) {
                hashMap.put("email", str3);
            }
            return hashMap;
        }
        throw new IllegalArgumentException("Blank username.");
    }

    private static Map<String, String> createUserMap(String str, String str2, String str3, String str4, String str5) {
        HashMap hashMap = new HashMap();
        if (!AVUtils.isBlankString(str) || !AVUtils.isBlankString(str4)) {
            if (!AVUtils.isBlankString(str)) {
                hashMap.put("username", str);
            }
            if (!AVUtils.isBlankString(str2)) {
                hashMap.put("password", str2);
            }
            if (!AVUtils.isBlankString(str3)) {
                hashMap.put("email", str3);
            }
            if (!AVUtils.isBlankString(str4)) {
                hashMap.put(SMS_PHONE_NUMBER, str4);
            }
            if (!AVUtils.isBlankString(str5)) {
                hashMap.put("smsCode", str5);
            }
            return hashMap;
        }
        throw new IllegalArgumentException("Blank username and blank mobile phone number");
    }

    private static <T extends AVUser> void logInInBackground(String str, String str2, boolean z, final LogInCallback<T> logInCallback, Class<T> cls) {
        Map createUserMap = createUserMap(str, str2, "");
        AVUser newAVUser = newAVUser(cls, logInCallback);
        if (newAVUser != null) {
            newAVUser.put("username", str, false);
            PaasClient.storageInstance().postObject(logInPath(), JSON.toJSONString(createUserMap), z, false, new GenericObjectCallback(newAVUser) {
                final /* synthetic */ AVUser val$user;

                {
                    this.val$user = r1;
                }

                public void onSuccess(String str, AVException aVException) {
                    AVUser aVUser = this.val$user;
                    if (!AVUtils.isBlankContent(str)) {
                        AVUtils.copyPropertiesFromJsonStringToAVObject(str, this.val$user);
                        this.val$user.processAuthData(null);
                        AVUser.changeCurrentUser(this.val$user, true);
                    } else {
                        aVException = new AVException(101, "User is not found.");
                        aVUser = null;
                    }
                    LogInCallback logInCallback = logInCallback;
                    if (logInCallback != null) {
                        logInCallback.internalDone(aVUser, aVException);
                    }
                }

                public void onFailure(Throwable th, String str) {
                    LogInCallback logInCallback = logInCallback;
                    if (logInCallback != null) {
                        logInCallback.internalDone(null, AVErrorUtils.createException(th, str));
                    }
                }
            }, null, null);
        }
    }

    public static AVUser loginByMobilePhoneNumber(String str, String str2) throws AVException {
        return loginByMobilePhoneNumber(str, str2, AVUser.class);
    }

    public static <T extends AVUser> T loginByMobilePhoneNumber(String str, String str2, Class<T> cls) throws AVException {
        final T[] tArr = {null};
        loginByMobilePhoneNumberInBackground(str, str2, true, new LogInCallback<T>() {
            public boolean mustRunOnUIThread() {
                return false;
            }

            public void done(T t, AVException aVException) {
                if (aVException != null) {
                    AVExceptionHolder.add(aVException);
                } else {
                    tArr[0] = t;
                }
            }
        }, cls);
        if (!AVExceptionHolder.exists()) {
            return tArr[0];
        }
        throw AVExceptionHolder.remove();
    }

    public static void loginByMobilePhoneNumberInBackground(String str, String str2, LogInCallback<AVUser> logInCallback) {
        loginByMobilePhoneNumberInBackground(str, str2, false, logInCallback, AVUser.class);
    }

    public static <T extends AVUser> void loginByMobilePhoneNumberInBackground(String str, String str2, LogInCallback<T> logInCallback, Class<T> cls) {
        loginByMobilePhoneNumberInBackground(str, str2, false, logInCallback, cls);
    }

    private static <T extends AVUser> void loginByMobilePhoneNumberInBackground(String str, String str2, boolean z, final LogInCallback<T> logInCallback, Class<T> cls) {
        Map createUserMap = createUserMap(null, str2, null, str, null);
        AVUser newAVUser = newAVUser(cls, logInCallback);
        if (newAVUser != null) {
            newAVUser.setMobilePhoneNumber(str);
            PaasClient.storageInstance().postObject(logInPath(), JSON.toJSONString(createUserMap), z, false, new GenericObjectCallback(newAVUser) {
                final /* synthetic */ AVUser val$user;

                {
                    this.val$user = r1;
                }

                public void onSuccess(String str, AVException aVException) {
                    AVUser aVUser = this.val$user;
                    if (!AVUtils.isBlankContent(str)) {
                        AVUtils.copyPropertiesFromJsonStringToAVObject(str, this.val$user);
                        AVUser.changeCurrentUser(this.val$user, true);
                    } else {
                        aVUser = null;
                        aVException = new AVException(101, "User is not found.");
                    }
                    LogInCallback logInCallback = logInCallback;
                    if (logInCallback != null) {
                        logInCallback.internalDone(aVUser, aVException);
                    }
                }

                public void onFailure(Throwable th, String str) {
                    LogInCallback logInCallback = logInCallback;
                    if (logInCallback != null) {
                        logInCallback.internalDone(null, AVErrorUtils.createException(th, str));
                    }
                }
            }, null, null);
        }
    }

    public static AVUser loginBySMSCode(String str, String str2) throws AVException {
        return loginBySMSCode(str, str2, AVUser.class);
    }

    public static <T extends AVUser> T loginBySMSCode(String str, String str2, Class<T> cls) throws AVException {
        final T[] tArr = {null};
        loginBySMSCodeInBackground(str, str2, true, new LogInCallback<T>() {
            public boolean mustRunOnUIThread() {
                return false;
            }

            public void done(T t, AVException aVException) {
                if (aVException != null) {
                    AVExceptionHolder.add(aVException);
                } else {
                    tArr[0] = t;
                }
            }
        }, cls);
        if (!AVExceptionHolder.exists()) {
            return tArr[0];
        }
        throw AVExceptionHolder.remove();
    }

    public static void loginBySMSCodeInBackground(String str, String str2, LogInCallback<AVUser> logInCallback) {
        loginBySMSCodeInBackground(str, str2, false, logInCallback, AVUser.class);
    }

    public static <T extends AVUser> void loginBySMSCodeInBackground(String str, String str2, LogInCallback<T> logInCallback, Class<T> cls) {
        loginBySMSCodeInBackground(str, str2, false, logInCallback, cls);
    }

    private static <T extends AVUser> void loginBySMSCodeInBackground(String str, String str2, boolean z, final LogInCallback<T> logInCallback, Class<T> cls) {
        Map createUserMap = createUserMap(null, null, "", str, str2);
        AVUser newAVUser = newAVUser(cls, logInCallback);
        if (newAVUser != null) {
            newAVUser.setMobilePhoneNumber(str);
            PaasClient.storageInstance().postObject(logInPath(), JSON.toJSONString(createUserMap), z, false, new GenericObjectCallback(newAVUser) {
                final /* synthetic */ AVUser val$user;

                {
                    this.val$user = r1;
                }

                public void onSuccess(String str, AVException aVException) {
                    AVUser aVUser = this.val$user;
                    if (!AVUtils.isBlankContent(str)) {
                        AVUtils.copyPropertiesFromJsonStringToAVObject(str, this.val$user);
                        AVUser.changeCurrentUser(this.val$user, true);
                    } else {
                        aVUser = null;
                        aVException = new AVException(101, "User is not found.");
                    }
                    LogInCallback logInCallback = logInCallback;
                    if (logInCallback != null) {
                        logInCallback.internalDone(aVUser, aVException);
                    }
                }

                public void onFailure(Throwable th, String str) {
                    LogInCallback logInCallback = logInCallback;
                    if (logInCallback != null) {
                        logInCallback.internalDone(null, AVErrorUtils.createException(th, str));
                    }
                }
            }, null, null);
        }
    }

    public <T extends AVUser> T refreshSessionToken() {
        final ArrayList arrayList = new ArrayList();
        refreshSessionToken(true, new LogInCallback<T>() {
            public void done(T t, AVException aVException) {
                if (aVException != null) {
                    AVExceptionHolder.add(aVException);
                } else {
                    arrayList.add(t);
                }
            }
        });
        return (AVUser) arrayList.get(0);
    }

    public <T extends AVUser> void refreshSessionTokenInBackground(LogInCallback<T> logInCallback) {
        refreshSessionToken(false, logInCallback);
    }

    private <T extends AVUser> void refreshSessionToken(boolean z, final LogInCallback<T> logInCallback) {
        if (AVUtils.isBlankContent(this.objectId) || AVUtils.isBlankContent(this.sessionToken)) {
            if (logInCallback != null) {
                logInCallback.internalDone(null, new AVException(104, "current user is not login"));
            }
            return;
        }
        PaasClient.storageInstance().putObject(String.format("users/%s/refreshSessionToken", new Object[]{this.objectId}), AVUtils.restfulServerData(null), z, headerMap(), new GenericObjectCallback() {
            public void onSuccess(String str, AVException aVException) {
                AVUser newAVUser = AVUser.newAVUser(AVUser.subClazz == null ? AVUser.class : AVUser.subClazz, null);
                if (newAVUser == null || AVUtils.isBlankContent(str)) {
                    aVException = new AVException(101, "User is not found.");
                } else {
                    AVUtils.copyPropertiesFromJsonStringToAVObject(str, newAVUser);
                    newAVUser.processAuthData(null);
                    AVUser.changeCurrentUser(newAVUser, true);
                }
                LogInCallback logInCallback = logInCallback;
                if (logInCallback != null) {
                    logInCallback.internalDone(newAVUser, aVException);
                }
            }

            public void onFailure(Throwable th, String str) {
                LogInCallback logInCallback = logInCallback;
                if (logInCallback != null) {
                    logInCallback.internalDone(null, AVErrorUtils.createException(th, str));
                }
            }
        }, null, null);
    }

    public static AVUser becomeWithSessionToken(String str) throws AVException {
        return becomeWithSessionToken(str, AVUser.class);
    }

    public static <T extends AVUser> AVUser becomeWithSessionToken(String str, Class<T> cls) throws AVException {
        final AVUser[] aVUserArr = {null};
        becomeWithSessionTokenInBackground(str, true, new LogInCallback<T>() {
            public boolean mustRunOnUIThread() {
                return false;
            }

            public void done(T t, AVException aVException) {
                if (aVException != null) {
                    AVExceptionHolder.add(aVException);
                } else {
                    aVUserArr[0] = t;
                }
            }
        }, cls);
        if (!AVExceptionHolder.exists()) {
            return aVUserArr[0];
        }
        throw AVExceptionHolder.remove();
    }

    public static void becomeWithSessionTokenInBackground(String str, LogInCallback<AVUser> logInCallback) {
        becomeWithSessionTokenInBackground(str, logInCallback, AVUser.class);
    }

    public static <T extends AVUser> void becomeWithSessionTokenInBackground(String str, LogInCallback<T> logInCallback, Class<T> cls) {
        becomeWithSessionTokenInBackground(str, false, logInCallback, cls);
    }

    private static <T extends AVUser> void becomeWithSessionTokenInBackground(String str, boolean z, final LogInCallback<T> logInCallback, Class<T> cls) {
        AVUser newAVUser = newAVUser(cls, logInCallback);
        if (newAVUser != null) {
            AVRequestParams aVRequestParams = new AVRequestParams();
            aVRequestParams.put("session_token", str);
            PaasClient.storageInstance().getObject("users/me", aVRequestParams, z, null, new GenericObjectCallback(newAVUser) {
                final /* synthetic */ AVUser val$user;

                {
                    this.val$user = r1;
                }

                public void onSuccess(String str, AVException aVException) {
                    AVUser aVUser = this.val$user;
                    if (!AVUtils.isBlankContent(str)) {
                        AVUtils.copyPropertiesFromJsonStringToAVObject(str, this.val$user);
                        this.val$user.processAuthData(null);
                        AVUser.changeCurrentUser(this.val$user, true);
                    } else {
                        aVException = new AVException(101, "User is not found.");
                        aVUser = null;
                    }
                    LogInCallback logInCallback = logInCallback;
                    if (logInCallback != null) {
                        logInCallback.internalDone(aVUser, aVException);
                    }
                }

                public void onFailure(Throwable th, String str) {
                    LogInCallback logInCallback = logInCallback;
                    if (logInCallback != null) {
                        logInCallback.internalDone(null, AVErrorUtils.createException(th, str));
                    }
                }
            });
        }
    }

    public static AVUser signUpOrLoginByMobilePhone(String str, String str2) throws AVException {
        return signUpOrLoginByMobilePhone(str, str2, AVUser.class);
    }

    public static <T extends AVUser> T signUpOrLoginByMobilePhone(String str, String str2, Class<T> cls) throws AVException {
        final T[] tArr = {null};
        signUpOrLoginByMobilePhoneInBackground(str, str2, true, cls, new LogInCallback<T>() {
            public boolean mustRunOnUIThread() {
                return false;
            }

            public void done(T t, AVException aVException) {
                if (aVException != null) {
                    AVExceptionHolder.add(aVException);
                } else {
                    tArr[0] = t;
                }
            }
        });
        if (!AVExceptionHolder.exists()) {
            return tArr[0];
        }
        throw AVExceptionHolder.remove();
    }

    public static void signUpOrLoginByMobilePhoneInBackground(String str, String str2, LogInCallback<AVUser> logInCallback) {
        signUpOrLoginByMobilePhoneInBackground(str, str2, AVUser.class, logInCallback);
    }

    public static <T extends AVUser> void signUpOrLoginByMobilePhoneInBackground(String str, String str2, Class<T> cls, LogInCallback<T> logInCallback) {
        signUpOrLoginByMobilePhoneInBackground(str, str2, false, cls, logInCallback);
    }

    private static <T extends AVUser> void signUpOrLoginByMobilePhoneInBackground(String str, String str2, boolean z, Class<T> cls, final LogInCallback<T> logInCallback) {
        if (AVUtils.isBlankString(str2)) {
            String str3 = "SMS Code can't be empty";
            if (logInCallback != null) {
                logInCallback.internalDone(null, new AVException(-1, str3));
            } else {
                avlog.e(str3);
            }
            return;
        }
        Map createUserMap = createUserMap(null, null, "", str, str2);
        AVUser newAVUser = newAVUser(cls, logInCallback);
        if (newAVUser != null) {
            newAVUser.setMobilePhoneNumber(str);
            PaasClient.storageInstance().postObject("usersByMobilePhone", JSON.toJSONString(createUserMap), z, false, new GenericObjectCallback(newAVUser) {
                final /* synthetic */ AVUser val$user;

                {
                    this.val$user = r1;
                }

                public void onSuccess(String str, AVException aVException) {
                    AVUser aVUser = this.val$user;
                    if (!AVUtils.isBlankContent(str)) {
                        AVUtils.copyPropertiesFromJsonStringToAVObject(str, this.val$user);
                        AVUser.changeCurrentUser(this.val$user, true);
                    } else {
                        aVUser = null;
                        aVException = new AVException(101, "User is not found.");
                    }
                    LogInCallback logInCallback = logInCallback;
                    if (logInCallback != null) {
                        logInCallback.internalDone(aVUser, aVException);
                    }
                }

                public void onFailure(Throwable th, String str) {
                    LogInCallback logInCallback = logInCallback;
                    if (logInCallback != null) {
                        logInCallback.internalDone(null, AVErrorUtils.createException(th, str));
                    }
                }
            }, null, null);
        }
    }

    public static <T extends AVUser> T newAVUser(Class<T> cls, LogInCallback<T> logInCallback) {
        try {
            return (AVUser) cls.newInstance();
        } catch (Exception e) {
            if (logInCallback != null) {
                logInCallback.internalDone(null, AVErrorUtils.createException((Throwable) e, (String) null));
                return null;
            }
            throw new AVRuntimeException("Create user instance failed.", e);
        }
    }

    protected static <T extends AVUser> T newAVUser() {
        Class cls = subClazz;
        if (cls == null) {
            cls = AVUser.class;
        }
        return newAVUser(cls, null);
    }

    public static void logOut() {
        changeCurrentUser(null, true);
        PaasClient.storageInstance().setDefaultACL(null);
    }

    public void put(String str, Object obj) {
        super.put(str, obj);
    }

    public void remove(String str) {
        super.remove(str);
    }

    public static void requestPasswordReset(String str) {
        requestPasswordResetInBackground(str, true, null);
    }

    public static void requestPasswordResetInBackground(String str, RequestPasswordResetCallback requestPasswordResetCallback) {
        requestPasswordResetInBackground(str, false, requestPasswordResetCallback);
    }

    private static void requestPasswordResetInBackground(String str, boolean z, final RequestPasswordResetCallback requestPasswordResetCallback) {
        HashMap hashMap = new HashMap();
        hashMap.put("email", str);
        String str2 = "requestPasswordReset";
        PaasClient.storageInstance().postObject(str2, AVUtils.jsonStringFromMapWithNull(hashMap), z, false, new GenericObjectCallback() {
            public void onSuccess(String str, AVException aVException) {
                RequestPasswordResetCallback requestPasswordResetCallback = requestPasswordResetCallback;
                if (requestPasswordResetCallback != null) {
                    requestPasswordResetCallback.internalDone(null, null);
                }
            }

            public void onFailure(Throwable th, String str) {
                RequestPasswordResetCallback requestPasswordResetCallback = requestPasswordResetCallback;
                if (requestPasswordResetCallback != null) {
                    requestPasswordResetCallback.internalDone(null, AVErrorUtils.createException(th, str));
                }
            }
        }, null, null);
    }

    public void updatePassword(String str, String str2) throws AVException {
        updatePasswordInBackground(str, str2, new UpdatePasswordCallback() {
            public boolean mustRunOnUIThread() {
                return false;
            }

            public void done(AVException aVException) {
                if (aVException != null) {
                    AVExceptionHolder.add(aVException);
                }
            }
        }, true);
        if (AVExceptionHolder.exists()) {
            throw AVExceptionHolder.remove();
        }
    }

    public void updatePasswordInBackground(String str, String str2, UpdatePasswordCallback updatePasswordCallback) {
        updatePasswordInBackground(str, str2, updatePasswordCallback, false);
    }

    private void updatePasswordInBackground(String str, String str2, final UpdatePasswordCallback updatePasswordCallback, boolean z) {
        if (!isAuthenticated() || AVUtils.isBlankString(getObjectId())) {
            updatePasswordCallback.internalDone(AVErrorUtils.sessionMissingException());
            return;
        }
        String format = String.format("users/%s/updatePassword", new Object[]{getObjectId()});
        HashMap hashMap = new HashMap();
        hashMap.put("old_password", str);
        hashMap.put("new_password", str2);
        PaasClient.storageInstance().putObject(format, AVUtils.restfulServerData(hashMap), z, headerMap(), new GenericObjectCallback() {
            public void onSuccess(String str, AVException aVException) {
                if (aVException == null && !TextUtils.isEmpty(str)) {
                    AVUser.this.sessionToken = AVUtils.getJSONValue(str, AVUser.SESSION_TOKEN_KEY);
                }
                updatePasswordCallback.internalDone(aVException);
            }

            public void onFailure(Throwable th, String str) {
                updatePasswordCallback.internalDone(AVErrorUtils.createException(th, str));
            }
        }, getObjectId(), getObjectId());
    }

    public static void requestPasswordResetBySmsCode(String str) throws AVException {
        requestPasswordResetBySmsCode(str, null);
    }

    public static void requestPasswordResetBySmsCode(String str, String str2) throws AVException {
        requestPasswordResetBySmsCodeInBackground(str, str2, true, new RequestMobileCodeCallback() {
            public boolean mustRunOnUIThread() {
                return false;
            }

            public void done(AVException aVException) {
                if (aVException != null) {
                    AVExceptionHolder.add(aVException);
                }
            }
        });
        if (AVExceptionHolder.exists()) {
            throw AVExceptionHolder.remove();
        }
    }

    public static void requestPasswordResetBySmsCodeInBackground(String str, RequestMobileCodeCallback requestMobileCodeCallback) {
        requestPasswordResetBySmsCodeInBackground(str, null, requestMobileCodeCallback);
    }

    public static void requestPasswordResetBySmsCodeInBackground(String str, String str2, RequestMobileCodeCallback requestMobileCodeCallback) {
        requestPasswordResetBySmsCodeInBackground(str, str2, false, requestMobileCodeCallback);
    }

    protected static void requestPasswordResetBySmsCodeInBackground(String str, String str2, boolean z, final RequestMobileCodeCallback requestMobileCodeCallback) {
        if (AVUtils.isBlankString(str) || !AVUtils.checkMobilePhoneNumber(str)) {
            requestMobileCodeCallback.internalDone(new AVException((int) AVException.INVALID_PHONE_NUMBER, "Invalid Phone Number"));
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put(SMS_PHONE_NUMBER, str);
        if (!AVUtils.isBlankString(str2)) {
            hashMap.put(SMS_VALIDATE_TOKEN, str2);
        }
        String str3 = "requestPasswordResetBySmsCode";
        PaasClient.storageInstance().postObject(str3, AVUtils.jsonStringFromMapWithNull(hashMap), z, false, new GenericObjectCallback() {
            public void onSuccess(String str, AVException aVException) {
                RequestMobileCodeCallback requestMobileCodeCallback = requestMobileCodeCallback;
                if (requestMobileCodeCallback != null) {
                    requestMobileCodeCallback.internalDone(null, null);
                }
            }

            public void onFailure(Throwable th, String str) {
                RequestMobileCodeCallback requestMobileCodeCallback = requestMobileCodeCallback;
                if (requestMobileCodeCallback != null) {
                    requestMobileCodeCallback.internalDone(null, AVErrorUtils.createException(th, str));
                }
            }
        }, null, null);
    }

    public static void resetPasswordBySmsCode(String str, String str2) throws AVException {
        resetPasswordBySmsCodeInBackground(str, str2, true, new UpdatePasswordCallback() {
            public boolean mustRunOnUIThread() {
                return false;
            }

            public void done(AVException aVException) {
                if (aVException != null) {
                    AVExceptionHolder.add(aVException);
                }
            }
        });
        if (AVExceptionHolder.exists()) {
            throw AVExceptionHolder.remove();
        }
    }

    public static void resetPasswordBySmsCodeInBackground(String str, String str2, UpdatePasswordCallback updatePasswordCallback) {
        resetPasswordBySmsCodeInBackground(str, str2, false, updatePasswordCallback);
    }

    protected static void resetPasswordBySmsCodeInBackground(String str, String str2, boolean z, final UpdatePasswordCallback updatePasswordCallback) {
        if (AVUtils.isBlankString(str) || !AVUtils.checkMobileVerifyCode(str)) {
            updatePasswordCallback.internalDone(new AVException((int) AVException.INVALID_PHONE_NUMBER, "Invalid Verify Code"));
            return;
        }
        String format = String.format("resetPasswordBySmsCode/%s", new Object[]{str});
        HashMap hashMap = new HashMap();
        hashMap.put("password", str2);
        PaasClient.storageInstance().putObject(format, AVUtils.restfulServerData(hashMap), z, null, new GenericObjectCallback() {
            public void onFailure(Throwable th, String str) {
                UpdatePasswordCallback updatePasswordCallback = updatePasswordCallback;
                if (updatePasswordCallback != null) {
                    updatePasswordCallback.internalDone(new AVException(str, th));
                }
            }

            public void onSuccess(String str, AVException aVException) {
                updatePasswordCallback.internalDone(aVException);
            }
        }, null, null);
    }

    public static void requestEmailVerify(String str) {
        requestEmailVerifyInBackground(str, true, null);
    }

    public static void requestEmailVerifyInBackground(String str, RequestEmailVerifyCallback requestEmailVerifyCallback) {
        requestEmailVerifyInBackground(str, false, requestEmailVerifyCallback);
    }

    private static void requestEmailVerifyInBackground(String str, boolean z, final RequestEmailVerifyCallback requestEmailVerifyCallback) {
        if (AVUtils.isBlankString(str) || !AVUtils.checkEmailAddress(str)) {
            requestEmailVerifyCallback.internalDone(new AVException((int) AVException.INVALID_EMAIL_ADDRESS, "Invalid Email"));
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("email", str);
        String str2 = "requestEmailVerify";
        PaasClient.storageInstance().postObject(str2, AVUtils.jsonStringFromMapWithNull(hashMap), z, false, new GenericObjectCallback() {
            public void onSuccess(String str, AVException aVException) {
                RequestEmailVerifyCallback requestEmailVerifyCallback = requestEmailVerifyCallback;
                if (requestEmailVerifyCallback != null) {
                    requestEmailVerifyCallback.internalDone(null, null);
                }
            }

            public void onFailure(Throwable th, String str) {
                RequestEmailVerifyCallback requestEmailVerifyCallback = requestEmailVerifyCallback;
                if (requestEmailVerifyCallback != null) {
                    requestEmailVerifyCallback.internalDone(null, AVErrorUtils.createException(th, str));
                }
            }
        }, null, null);
    }

    public static void requestMobilePhoneVerify(String str) throws AVException {
        requestMobilePhoneVerify(str, null);
    }

    public static void requestMobilePhoneVerify(String str, String str2) throws AVException {
        requestMobilePhoneVerifyInBackground(str, str2, true, new RequestMobileCodeCallback() {
            public boolean mustRunOnUIThread() {
                return false;
            }

            public void done(AVException aVException) {
                if (aVException != null) {
                    AVExceptionHolder.add(aVException);
                }
            }
        });
        if (AVExceptionHolder.exists()) {
            throw AVExceptionHolder.remove();
        }
    }

    public static void requestMobilePhoneVerifyInBackground(String str, RequestMobileCodeCallback requestMobileCodeCallback) {
        requestMobilePhoneVerifyInBackground(str, null, false, requestMobileCodeCallback);
    }

    public static void requestMobilePhoneVerifyInBackground(String str, String str2, RequestMobileCodeCallback requestMobileCodeCallback) {
        requestMobilePhoneVerifyInBackground(str, str2, false, requestMobileCodeCallback);
    }

    private static void requestMobilePhoneVerifyInBackground(String str, String str2, boolean z, final RequestMobileCodeCallback requestMobileCodeCallback) {
        if (AVUtils.isBlankString(str) || !AVUtils.checkMobilePhoneNumber(str)) {
            requestMobileCodeCallback.internalDone(new AVException((int) AVException.INVALID_PHONE_NUMBER, "Invalid Phone Number"));
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put(SMS_PHONE_NUMBER, str);
        if (!AVUtils.isBlankString(str2)) {
            hashMap.put(SMS_VALIDATE_TOKEN, str2);
        }
        String str3 = "requestMobilePhoneVerify";
        PaasClient.storageInstance().postObject(str3, AVUtils.jsonStringFromMapWithNull(hashMap), z, false, new GenericObjectCallback() {
            public void onSuccess(String str, AVException aVException) {
                RequestMobileCodeCallback requestMobileCodeCallback = requestMobileCodeCallback;
                if (requestMobileCodeCallback != null) {
                    requestMobileCodeCallback.internalDone(null, null);
                }
            }

            public void onFailure(Throwable th, String str) {
                RequestMobileCodeCallback requestMobileCodeCallback = requestMobileCodeCallback;
                if (requestMobileCodeCallback != null) {
                    requestMobileCodeCallback.internalDone(null, AVErrorUtils.createException(th, str));
                }
            }
        }, null, null);
    }

    public static void requestLoginSmsCode(String str) throws AVException {
        requestLoginSmsCode(str, null);
    }

    public static void requestLoginSmsCode(String str, String str2) throws AVException {
        requestLoginSmsCodeInBackground(str, str2, false, new RequestMobileCodeCallback() {
            public boolean mustRunOnUIThread() {
                return false;
            }

            public void done(AVException aVException) {
                if (aVException != null) {
                    AVExceptionHolder.add(aVException);
                }
            }
        });
        if (AVExceptionHolder.exists()) {
            throw AVExceptionHolder.remove();
        }
    }

    public static void requestLoginSmsCodeInBackground(String str, RequestMobileCodeCallback requestMobileCodeCallback) {
        requestLoginSmsCodeInBackground(str, null, requestMobileCodeCallback);
    }

    public static void requestLoginSmsCodeInBackground(String str, String str2, RequestMobileCodeCallback requestMobileCodeCallback) {
        requestLoginSmsCodeInBackground(str, str2, false, requestMobileCodeCallback);
    }

    private static void requestLoginSmsCodeInBackground(String str, String str2, boolean z, final RequestMobileCodeCallback requestMobileCodeCallback) {
        if (AVUtils.isBlankString(str) || !AVUtils.checkMobilePhoneNumber(str)) {
            requestMobileCodeCallback.internalDone(new AVException((int) AVException.INVALID_PHONE_NUMBER, "Invalid Phone Number"));
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put(SMS_PHONE_NUMBER, str);
        if (!AVUtils.isBlankString(str2)) {
            hashMap.put(SMS_VALIDATE_TOKEN, str2);
        }
        String str3 = "requestLoginSmsCode";
        PaasClient.storageInstance().postObject(str3, AVUtils.jsonStringFromMapWithNull(hashMap), z, false, new GenericObjectCallback() {
            public void onSuccess(String str, AVException aVException) {
                RequestMobileCodeCallback requestMobileCodeCallback = requestMobileCodeCallback;
                if (requestMobileCodeCallback != null) {
                    requestMobileCodeCallback.internalDone(null, null);
                }
            }

            public void onFailure(Throwable th, String str) {
                RequestMobileCodeCallback requestMobileCodeCallback = requestMobileCodeCallback;
                if (requestMobileCodeCallback != null) {
                    requestMobileCodeCallback.internalDone(null, AVErrorUtils.createException(th, str));
                }
            }
        }, null, null);
    }

    public static void verifyMobilePhone(String str) throws AVException {
        verifyMobilePhoneInBackground(true, str, new AVMobilePhoneVerifyCallback() {
            public boolean mustRunOnUIThread() {
                return false;
            }

            public void done(AVException aVException) {
                if (aVException != null) {
                    AVExceptionHolder.add(aVException);
                }
            }
        });
        if (AVExceptionHolder.exists()) {
            throw AVExceptionHolder.remove();
        }
    }

    public static void verifyMobilePhoneInBackground(String str, AVMobilePhoneVerifyCallback aVMobilePhoneVerifyCallback) {
        verifyMobilePhoneInBackground(false, str, aVMobilePhoneVerifyCallback);
    }

    private static void verifyMobilePhoneInBackground(boolean z, String str, final AVMobilePhoneVerifyCallback aVMobilePhoneVerifyCallback) {
        if (AVUtils.isBlankString(str) || !AVUtils.checkMobileVerifyCode(str)) {
            aVMobilePhoneVerifyCallback.internalDone(new AVException((int) AVException.INVALID_PHONE_NUMBER, "Invalid Verify Code"));
            return;
        }
        PaasClient.storageInstance().postObject(String.format("verifyMobilePhone/%s", new Object[]{str}), AVUtils.restfulServerData(null), z, false, new GenericObjectCallback() {
            public void onSuccess(String str, AVException aVException) {
                AVMobilePhoneVerifyCallback aVMobilePhoneVerifyCallback = aVMobilePhoneVerifyCallback;
                if (aVMobilePhoneVerifyCallback != null) {
                    aVMobilePhoneVerifyCallback.internalDone(null, null);
                }
            }

            public void onFailure(Throwable th, String str) {
                AVMobilePhoneVerifyCallback aVMobilePhoneVerifyCallback = aVMobilePhoneVerifyCallback;
                if (aVMobilePhoneVerifyCallback != null) {
                    aVMobilePhoneVerifyCallback.internalDone(null, AVErrorUtils.createException(th, str));
                }
            }
        }, null, null);
    }

    public void setEmail(String str) {
        this.email = str;
        put("email", str);
    }

    public void setPassword(String str) {
        this.password = str;
        put("password", str);
        markAnonymousUserTransfer();
    }

    public void setUsername(String str) {
        this.username = str;
        put("username", str);
        markAnonymousUserTransfer();
    }

    public String getMobilePhoneNumber() {
        return this.mobilePhoneNumber;
    }

    public void setMobilePhoneNumber(String str) {
        this.mobilePhoneNumber = str;
        put(SMS_PHONE_NUMBER, str);
    }

    public boolean isMobilePhoneVerified() {
        return getBoolean("mobilePhoneVerified");
    }

    /* access modifiers changed from: 0000 */
    public void setMobilePhoneVerified(boolean z) {
        put("mobileVerified", Boolean.valueOf(z));
    }

    @JSONField(serialize = false)
    public List<AVRole> getRoles() throws AVException {
        AVQuery aVQuery = new AVQuery(AVRole.className);
        aVQuery.whereEqualTo(AVUSER_ENDPOINT, this);
        return aVQuery.find();
    }

    public void getRolesInBackground(final AVCallback<List<AVRole>> aVCallback) {
        AVQuery aVQuery = new AVQuery(AVRole.className);
        aVQuery.whereEqualTo(AVUSER_ENDPOINT, this);
        aVQuery.findInBackground(new FindCallback<AVRole>() {
            public void done(List<AVRole> list, AVException aVException) {
                aVCallback.internalDone(list, aVException);
            }
        });
    }

    private void signUp(boolean z, final SignUpCallback signUpCallback) {
        if (z) {
            try {
                save();
                if (signUpCallback != null) {
                    signUpCallback.internalDone(null);
                }
            } catch (AVException e) {
                if (signUpCallback != null) {
                    signUpCallback.internalDone(e);
                }
            }
        } else {
            saveInBackground((SaveCallback) new SaveCallback() {
                public void done(AVException aVException) {
                    SignUpCallback signUpCallback = signUpCallback;
                    if (signUpCallback != null) {
                        signUpCallback.internalDone(aVException);
                    }
                }
            });
        }
    }

    public void signUp() throws AVException {
        signUp(true, new SignUpCallback() {
            /* access modifiers changed from: protected */
            public boolean mustRunOnUIThread() {
                return false;
            }

            public void done(AVException aVException) {
                if (aVException != null) {
                    AVExceptionHolder.add(aVException);
                }
            }
        });
        if (AVExceptionHolder.exists()) {
            throw AVExceptionHolder.remove();
        }
    }

    public void signUpInBackground(SignUpCallback signUpCallback) {
        signUp(false, signUpCallback);
    }

    /* access modifiers changed from: 0000 */
    public void setSinaWeiboToken(String str) {
        this.sinaWeiboToken = str;
    }

    public String getSinaWeiboToken() {
        return this.sinaWeiboToken;
    }

    /* access modifiers changed from: 0000 */
    public void setQQWeiboToken(String str) {
        this.qqWeiboToken = str;
    }

    public String getQQWeiboToken() {
        return this.qqWeiboToken;
    }

    /* access modifiers changed from: protected */
    public void onSaveSuccess() {
        super.onSaveSuccess();
        processAuthData(null);
        if (!AVUtils.isBlankString(this.sessionToken)) {
            changeCurrentUser(this, true);
        }
    }

    /* access modifiers changed from: protected */
    public void onDataSynchronized() {
        processAuthData(null);
        if (!AVUtils.isBlankString(this.sessionToken)) {
            changeCurrentUser(this, true);
        }
    }

    /* access modifiers changed from: protected */
    public Map<String, String> headerMap() {
        HashMap hashMap = new HashMap();
        if (!AVUtils.isBlankString(this.sessionToken)) {
            hashMap.put(PaasClient.sessionTokenField, this.sessionToken);
        }
        return hashMap;
    }

    static AVUser userFromSinaWeibo(String str, String str2) {
        AVUser newAVUser = newAVUser();
        newAVUser.sinaWeiboToken = str;
        newAVUser.username = str2;
        return newAVUser;
    }

    static AVUser userFromQQWeibo(String str, String str2) {
        AVUser newAVUser = newAVUser();
        newAVUser.qqWeiboToken = str;
        newAVUser.username = str2;
        return newAVUser;
    }

    private boolean checkUserAuthentication(AVCallback aVCallback) {
        if (isAuthenticated() && !AVUtils.isBlankString(getObjectId())) {
            return true;
        }
        if (aVCallback != null) {
            aVCallback.internalDone(AVErrorUtils.createException(206, "No valid session token, make sure signUp or login has been called."));
        }
        return false;
    }

    public void followInBackground(String str, FollowCallback followCallback) {
        followInBackground(str, null, followCallback);
    }

    public void followInBackground(String str, Map<String, Object> map, final FollowCallback followCallback) {
        if (checkUserAuthentication(followCallback)) {
            PaasClient.storageInstance().postObject(AVPowerfulUtils.getFollowEndPoint(getObjectId(), str), map != null ? AVUtils.restfulServerData(map) : "", false, new GenericObjectCallback() {
                public void onSuccess(String str, AVException aVException) {
                    super.onSuccess(str, aVException);
                    FollowCallback followCallback = followCallback;
                    if (followCallback != null) {
                        followCallback.internalDone(AVUser.this, null);
                    }
                }

                public void onFailure(Throwable th, String str) {
                    super.onFailure(th, str);
                    FollowCallback followCallback = followCallback;
                    if (followCallback != null) {
                        followCallback.internalDone(null, AVErrorUtils.createException(th, str));
                    }
                }
            });
        }
    }

    public void unfollowInBackground(String str, final FollowCallback followCallback) {
        if (checkUserAuthentication(followCallback)) {
            PaasClient.storageInstance().deleteObject(AVPowerfulUtils.getFollowEndPoint(getObjectId(), str), false, new GenericObjectCallback() {
                public void onSuccess(String str, AVException aVException) {
                    super.onSuccess(str, aVException);
                    FollowCallback followCallback = followCallback;
                    if (followCallback != null) {
                        followCallback.internalDone(AVUser.this, null);
                    }
                }

                public void onFailure(Throwable th, String str) {
                    super.onFailure(th, str);
                    FollowCallback followCallback = followCallback;
                    if (followCallback != null) {
                        followCallback.internalDone(null, AVErrorUtils.createException(th, str));
                    }
                }
            }, null, null);
        }
    }

    /* access modifiers changed from: private */
    public List<AVUser> processResultByTag(String str, String str2) {
        LinkedList linkedList = new LinkedList();
        if (AVUtils.isBlankString(str)) {
            return linkedList;
        }
        processResultList(((AVFollowResponse) JSON.parseObject(str, new AVFollowResponse().getClass())).results, linkedList, str2);
        return linkedList;
    }

    /* access modifiers changed from: private */
    public Map<String, List<AVUser>> processFollowerAndFollowee(String str) {
        HashMap hashMap = new HashMap();
        if (AVUtils.isBlankString(str)) {
            return hashMap;
        }
        AVFollowResponse aVFollowResponse = (AVFollowResponse) JSON.parseObject(str, new AVFollowResponse().getClass());
        LinkedList linkedList = new LinkedList();
        LinkedList linkedList2 = new LinkedList();
        Map[] mapArr = aVFollowResponse.followers;
        String str2 = FOLLOWER_TAG;
        processResultList(mapArr, linkedList, str2);
        Map[] mapArr2 = aVFollowResponse.followees;
        String str3 = FOLLOWEE_TAG;
        processResultList(mapArr2, linkedList2, str3);
        hashMap.put(str2, linkedList);
        hashMap.put(str3, linkedList2);
        return hashMap;
    }

    private void processResultList(Map[] mapArr, List<AVUser> list, String str) {
        for (Map map : mapArr) {
            if (map != null && !map.isEmpty()) {
                list.add((AVUser) AVUtils.getObjectFrom(map.get(str)));
            }
        }
    }

    public static <T extends AVUser> AVQuery<T> followerQuery(String str, Class<T> cls) {
        if (!AVUtils.isBlankString(str)) {
            AVFellowshipQuery aVFellowshipQuery = new AVFellowshipQuery("_Follower", cls);
            aVFellowshipQuery.whereEqualTo("user", createWithoutData("_User", str));
            aVFellowshipQuery.setFriendshipTag(FOLLOWER_TAG);
            return aVFellowshipQuery;
        }
        throw new IllegalArgumentException("Blank user objectId.");
    }

    public <T extends AVUser> AVQuery<T> followerQuery(Class<T> cls) throws AVException {
        if (!AVUtils.isBlankString(getObjectId())) {
            return followerQuery(getObjectId(), cls);
        }
        throw AVErrorUtils.sessionMissingException();
    }

    public static <T extends AVUser> AVQuery<T> followeeQuery(String str, Class<T> cls) {
        if (!AVUtils.isBlankString(str)) {
            AVFellowshipQuery aVFellowshipQuery = new AVFellowshipQuery("_Followee", cls);
            aVFellowshipQuery.whereEqualTo("user", createWithoutData("_User", str));
            aVFellowshipQuery.setFriendshipTag(FOLLOWEE_TAG);
            return aVFellowshipQuery;
        }
        throw new IllegalArgumentException("Blank user objectId.");
    }

    public <T extends AVUser> AVQuery<T> followeeQuery(Class<T> cls) throws AVException {
        if (!AVUtils.isBlankString(getObjectId())) {
            return followeeQuery(getObjectId(), cls);
        }
        throw AVErrorUtils.sessionMissingException();
    }

    public AVFriendshipQuery friendshipQuery() {
        Class cls = subClazz;
        if (cls == null) {
            cls = AVUser.class;
        }
        return friendshipQuery(cls);
    }

    public <T extends AVUser> AVFriendshipQuery friendshipQuery(Class<T> cls) {
        return new AVFriendshipQuery(this.objectId, cls);
    }

    public static <T extends AVUser> AVFriendshipQuery friendshipQuery(String str) {
        Class cls = subClazz;
        if (cls == null) {
            cls = AVUser.class;
        }
        return new AVFriendshipQuery(str, cls);
    }

    public static <T extends AVUser> AVFriendshipQuery friendshipQuery(String str, Class<T> cls) {
        return new AVFriendshipQuery(str, cls);
    }

    @Deprecated
    public void getFollowersInBackground(final FindCallback findCallback) {
        if (checkUserAuthentication(findCallback)) {
            PaasClient.storageInstance().getObject(AVPowerfulUtils.getFollowersEndPoint(getObjectId()), null, false, null, new GenericObjectCallback() {
                public void onSuccess(String str, AVException aVException) {
                    super.onSuccess(str, aVException);
                    List access$200 = AVUser.this.processResultByTag(str, AVUser.FOLLOWER_TAG);
                    FindCallback findCallback = findCallback;
                    if (findCallback != null) {
                        findCallback.internalDone(access$200, null);
                    }
                }

                public void onFailure(Throwable th, String str) {
                    super.onFailure(th, str);
                    FindCallback findCallback = findCallback;
                    if (findCallback != null) {
                        findCallback.internalDone(null, AVErrorUtils.createException(th, str));
                    }
                }
            });
        }
    }

    @Deprecated
    public void getMyFolloweesInBackground(final FindCallback findCallback) {
        if (checkUserAuthentication(findCallback)) {
            PaasClient.storageInstance().getObject(AVPowerfulUtils.getFolloweesEndPoint(getObjectId()), null, false, null, new GenericObjectCallback() {
                public void onSuccess(String str, AVException aVException) {
                    super.onSuccess(str, aVException);
                    List access$200 = AVUser.this.processResultByTag(str, AVUser.FOLLOWEE_TAG);
                    FindCallback findCallback = findCallback;
                    if (findCallback != null) {
                        findCallback.internalDone(access$200, null);
                    }
                }

                public void onFailure(Throwable th, String str) {
                    super.onFailure(th, str);
                    FindCallback findCallback = findCallback;
                    if (findCallback != null) {
                        findCallback.internalDone(null, AVErrorUtils.createException(th, str));
                    }
                }
            });
        }
    }

    public void getFollowersAndFolloweesInBackground(final FollowersAndFolloweesCallback followersAndFolloweesCallback) {
        if (checkUserAuthentication(followersAndFolloweesCallback)) {
            PaasClient.storageInstance().getObject(AVPowerfulUtils.getFollowersAndFollowees(getObjectId()), null, false, null, new GenericObjectCallback() {
                public void onSuccess(String str, AVException aVException) {
                    super.onSuccess(str, aVException);
                    Map access$300 = AVUser.this.processFollowerAndFollowee(str);
                    FollowersAndFolloweesCallback followersAndFolloweesCallback = followersAndFolloweesCallback;
                    if (followersAndFolloweesCallback != null) {
                        followersAndFolloweesCallback.internalDone(access$300, null);
                    }
                }

                public void onFailure(Throwable th, String str) {
                    super.onFailure(th, str);
                    FollowersAndFolloweesCallback followersAndFolloweesCallback = followersAndFolloweesCallback;
                    if (followersAndFolloweesCallback != null) {
                        followersAndFolloweesCallback.internalDone(null, AVErrorUtils.createException(th, str));
                    }
                }
            });
        }
    }

    public static <T extends AVUser> T cast(AVUser aVUser, Class<T> cls) {
        try {
            return (AVUser) AVObject.cast(aVUser, cls);
        } catch (Exception e) {
            log.e("ClassCast Exception", e);
            return null;
        }
    }

    public static void alwaysUseSubUserClass(Class<? extends AVUser> cls) {
        subClazz = cls;
    }

    private static Map<String, Object> authData(AVThirdPartyUserAuth aVThirdPartyUserAuth) {
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        hashMap2.put("access_token", aVThirdPartyUserAuth.accessToken);
        hashMap2.put("expires_at", aVThirdPartyUserAuth.expiredAt);
        if (!AVUtils.isBlankString(aVThirdPartyUserAuth.snsType)) {
            hashMap2.put(AVThirdPartyUserAuth.platformUserIdTag(aVThirdPartyUserAuth.snsType), aVThirdPartyUserAuth.userId);
        }
        hashMap.put(aVThirdPartyUserAuth.snsType, hashMap2);
        return hashMap;
    }

    @Deprecated
    public static void loginWithAuthData(AVThirdPartyUserAuth aVThirdPartyUserAuth, LogInCallback<AVUser> logInCallback) {
        loginWithAuthData(AVUser.class, aVThirdPartyUserAuth, logInCallback);
    }

    public static void loginWithAuthData(Map<String, Object> map, String str, LogInCallback logInCallback) {
        loginWithAuthData(AVUser.class, map, str, logInCallback);
    }

    public static void loginWithAuthData(Map<String, Object> map, String str, String str2, String str3, boolean z, LogInCallback logInCallback) {
        loginWithAuthData(AVUser.class, map, str, str2, str3, z, logInCallback);
    }

    public static <T extends AVUser> void loginWithAuthData(Class<T> cls, Map<String, Object> map, String str, String str2, String str3, boolean z, LogInCallback logInCallback) {
        if (cls == null) {
            if (logInCallback != null) {
                logInCallback.internalDone(AVErrorUtils.createException(-1, "illegal parameter. clazz must not null/empty."));
            }
        } else if (map == null || map.isEmpty()) {
            if (logInCallback != null) {
                logInCallback.internalDone(AVErrorUtils.createException(-1, "illegal parameter. authdata must not null/empty."));
            }
        } else if (StringUtils.isBlankString(str)) {
            if (logInCallback != null) {
                logInCallback.internalDone(AVErrorUtils.createException(-1, "illegal parameter. platform must not null/empty."));
            }
        } else if (StringUtils.isBlankString(str2)) {
            if (logInCallback != null) {
                logInCallback.internalDone(AVErrorUtils.createException(-1, "illegal parameter. unionId must not null/empty."));
            }
        } else if (StringUtils.isBlankString(str3)) {
            if (logInCallback != null) {
                logInCallback.internalDone(AVErrorUtils.createException(-1, "illegal parameter. unionIdPlatform must not null/empty."));
            }
        } else {
            map.put("unionid", str2);
            map.put("platform", str3);
            if (z) {
                map.put(AUTHDATA_ATTR_MAIN_ACCOUNT, Boolean.valueOf(z));
            }
            loginWithAuthData(cls, map, str, logInCallback);
        }
    }

    public static <T extends AVUser> void loginWithAuthData(final Class<T> cls, final Map<String, Object> map, final String str, final LogInCallback logInCallback) {
        if (cls == null) {
            if (logInCallback != null) {
                logInCallback.internalDone(AVErrorUtils.createException(-1, "illegal parameter. clazz must not null/empty."));
            }
        } else if (map == null || map.isEmpty()) {
            if (logInCallback != null) {
                logInCallback.internalDone(AVErrorUtils.createException(-1, "illegal parameter. authdata must not null/empty."));
            }
        } else if (StringUtils.isBlankString(str)) {
            if (logInCallback != null) {
                logInCallback.internalDone(AVErrorUtils.createException(-1, "illegal parameter. platform must not null/empty."));
            }
        } else {
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            hashMap2.put(str, map);
            hashMap.put(authDataTag, hashMap2);
            String jSONString = JSON.toJSONString(hashMap);
            PaasClient.storageInstance().postObject(AVUSER_ENDPOINT, jSONString, false, false, new GenericObjectCallback() {
                public void onSuccess(String str, AVException aVException) {
                    if (aVException == null) {
                        AVUser newAVUser = AVUser.newAVUser(cls, logInCallback);
                        if (newAVUser != null) {
                            AVUtils.copyPropertiesFromJsonStringToAVObject(str, newAVUser);
                            newAVUser.processAuthData(null);
                            String str2 = "access_token";
                            if (str.equals("weibo")) {
                                newAVUser.sinaWeiboToken = (String) map.get(str2);
                            } else if (str.equals("qq")) {
                                newAVUser.qqWeiboToken = (String) map.get(str2);
                            }
                            AVUser.changeCurrentUser(newAVUser, true);
                            LogInCallback logInCallback = logInCallback;
                            if (logInCallback != null) {
                                logInCallback.internalDone(newAVUser, null);
                            }
                        }
                    }
                }

                public void onFailure(Throwable th, String str) {
                    LogInCallback logInCallback = logInCallback;
                    if (logInCallback != null) {
                        logInCallback.internalDone(null, AVErrorUtils.createException(th, str));
                    }
                }
            }, null, null);
        }
    }

    @Deprecated
    public static <T extends AVUser> void loginWithAuthData(final Class<T> cls, final AVThirdPartyUserAuth aVThirdPartyUserAuth, final LogInCallback<T> logInCallback) {
        if (aVThirdPartyUserAuth == null) {
            if (logInCallback != null) {
                logInCallback.internalDone(null, AVErrorUtils.createException(-1, "NULL userInfo."));
            }
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put(authDataTag, authData(aVThirdPartyUserAuth));
        String jSONString = JSON.toJSONString(hashMap);
        PaasClient.storageInstance().postObject(AVUSER_ENDPOINT, jSONString, false, false, new GenericObjectCallback() {
            public void onSuccess(String str, AVException aVException) {
                if (aVException == null) {
                    AVUser newAVUser = AVUser.newAVUser(cls, logInCallback);
                    if (newAVUser != null) {
                        AVUtils.copyPropertiesFromJsonStringToAVObject(str, newAVUser);
                        newAVUser.processAuthData(aVThirdPartyUserAuth);
                        AVUser.changeCurrentUser(newAVUser, true);
                        LogInCallback logInCallback = logInCallback;
                        if (logInCallback != null) {
                            logInCallback.internalDone(newAVUser, null);
                        }
                    }
                }
            }

            public void onFailure(Throwable th, String str) {
                LogInCallback logInCallback = logInCallback;
                if (logInCallback != null) {
                    logInCallback.internalDone(null, AVErrorUtils.createException(th, str));
                }
            }
        }, null, null);
    }

    @Deprecated
    public static void associateWithAuthData(AVUser aVUser, AVThirdPartyUserAuth aVThirdPartyUserAuth, SaveCallback saveCallback) {
        if (aVThirdPartyUserAuth == null) {
            if (saveCallback != null) {
                saveCallback.internalDone(AVErrorUtils.createException(-1, "NULL userInfo."));
            }
            return;
        }
        Map authData = authData(aVThirdPartyUserAuth);
        String str = authDataTag;
        if (aVUser.get(str) != null && (aVUser.get(str) instanceof Map)) {
            authData.putAll((Map) aVUser.get(str));
        }
        aVUser.put(str, authData);
        aVUser.markAnonymousUserTransfer();
        aVUser.saveInBackground(saveCallback);
    }

    public void associateWithAuthData(Map<String, Object> map, String str, SaveCallback saveCallback) {
        if (map == null || map.isEmpty()) {
            if (saveCallback != null) {
                saveCallback.internalDone(AVErrorUtils.createException(-1, "illegal parameter. authdata must not null/empty."));
            }
        } else if (StringUtils.isBlankString(str)) {
            if (saveCallback != null) {
                saveCallback.internalDone(AVErrorUtils.createException(-1, "illegal parameter. platform must not null/empty."));
            }
        } else {
            HashMap hashMap = new HashMap();
            hashMap.put(str, map);
            String str2 = authDataTag;
            Object obj = get(str2);
            if (obj != null && (obj instanceof Map)) {
                hashMap.putAll((Map) obj);
            }
            put(str2, hashMap);
            markAnonymousUserTransfer();
            saveInBackground(saveCallback);
        }
    }

    public void associateWithAuthData(Map<String, Object> map, String str, String str2, String str3, boolean z, SaveCallback saveCallback) {
        if (map == null || map.isEmpty()) {
            if (saveCallback != null) {
                saveCallback.internalDone(AVErrorUtils.createException(-1, "illegal parameter. authdata must not null/empty."));
            }
        } else if (StringUtils.isBlankString(str)) {
            if (saveCallback != null) {
                saveCallback.internalDone(AVErrorUtils.createException(-1, "illegal parameter. platform must not null/empty."));
            }
        } else if (StringUtils.isBlankString(str2)) {
            if (saveCallback != null) {
                saveCallback.internalDone(AVErrorUtils.createException(-1, "illegal parameter. unionId must not null/empty."));
            }
        } else if (StringUtils.isBlankString(str3)) {
            if (saveCallback != null) {
                saveCallback.internalDone(AVErrorUtils.createException(-1, "illegal parameter. unionIdPlatform must not null/empty."));
            }
        } else {
            map.put("unionid", str2);
            map.put("platform", str3);
            if (z) {
                map.put(AUTHDATA_ATTR_MAIN_ACCOUNT, Boolean.valueOf(true));
            }
            associateWithAuthData(map, str, saveCallback);
        }
    }

    public void dissociateAuthData(final String str, final SaveCallback saveCallback) {
        if (AVUtils.isBlankString(str)) {
            if (saveCallback != null) {
                saveCallback.internalDone(AVErrorUtils.createException(-1, "illegal parameter. platform must not null/empty."));
            }
            return;
        }
        String str2 = authDataTag;
        Map map = (Map) get(str2);
        if (map != null) {
            map.remove(str);
        }
        put(str2, map);
        if (isAuthenticated() && !AVUtils.isBlankString(getObjectId())) {
            saveInBackground((SaveCallback) new SaveCallback() {
                public void done(AVException aVException) {
                    AVUser.this.processAuthData(new AVThirdPartyUserAuth(null, null, str, null));
                    SaveCallback saveCallback = saveCallback;
                    if (saveCallback != null) {
                        saveCallback.internalDone(aVException);
                    }
                }
            });
        } else if (saveCallback != null) {
            saveCallback.internalDone(new AVException(206, "the user object missing a valid session"));
        }
    }

    @Deprecated
    public static void dissociateAuthData(AVUser aVUser, final String str, final SaveCallback saveCallback) {
        String str2 = authDataTag;
        Map map = (Map) aVUser.get(str2);
        if (map != null) {
            map.remove(str);
        }
        aVUser.put(str2, map);
        if (aVUser.isAuthenticated() && !AVUtils.isBlankString(aVUser.getObjectId())) {
            aVUser.saveInBackground((SaveCallback) new SaveCallback(aVUser) {
                final /* synthetic */ AVUser val$user;

                {
                    this.val$user = r1;
                }

                public void done(AVException aVException) {
                    this.val$user.processAuthData(new AVThirdPartyUserAuth(null, null, str, null));
                    SaveCallback saveCallback = saveCallback;
                    if (saveCallback != null) {
                        saveCallback.internalDone(aVException);
                    }
                }
            });
        } else if (saveCallback != null) {
            saveCallback.internalDone(new AVException(206, "the user object missing a valid session"));
        }
    }

    /* access modifiers changed from: protected */
    public void processAuthData(AVThirdPartyUserAuth aVThirdPartyUserAuth) {
        Map map = (Map) get(authDataTag);
        boolean z = this.needTransferFromAnonymousUser;
        String str = anonymousTag;
        if (z) {
            if (map == null || !map.containsKey(str)) {
                this.anonymous = false;
            } else {
                map.remove(str);
            }
            this.needTransferFromAnonymousUser = false;
        }
        String str2 = "qq";
        String str3 = "weibo";
        if (map != null) {
            String str4 = "access_token";
            if (map.containsKey(str3)) {
                this.sinaWeiboToken = (String) ((Map) map.get(str3)).get(str4);
            } else {
                this.sinaWeiboToken = null;
            }
            if (map.containsKey(str2)) {
                this.qqWeiboToken = (String) ((Map) map.get(str2)).get(str4);
            } else {
                this.qqWeiboToken = null;
            }
            if (map.containsKey(str)) {
                this.anonymous = true;
            } else {
                this.anonymous = false;
            }
        }
        if (aVThirdPartyUserAuth != null) {
            if (aVThirdPartyUserAuth.snsType.equals(str3)) {
                this.sinaWeiboToken = aVThirdPartyUserAuth.accessToken;
            } else if (aVThirdPartyUserAuth.snsType.equals(str2)) {
                this.qqWeiboToken = aVThirdPartyUserAuth.accessToken;
            }
        }
    }

    private void markAnonymousUserTransfer() {
        if (isAnonymous()) {
            this.needTransferFromAnonymousUser = true;
        }
    }
}
