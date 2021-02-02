package com.avos.avoscloud;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.avos.avoscloud.im.v2.AVIMClient;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

class AVSessionCacheHelper {
    private static final String SESSION_KEY = "sessionids";
    private static SessionTagCache tagCacheInstance;

    static class IMSessionTokenCache {
        private static final String SESSION_TOKEN_KEY = "com.avos.avoscloud.session.token";
        private static Map<String, String> imSessionTokenMap = new HashMap();

        IMSessionTokenCache() {
        }

        static String getIMSessionToken(String str) {
            if (AVIMClient.isAutoOpen()) {
                AVPersistenceUtils sharedInstance = AVPersistenceUtils.sharedInstance();
                String str2 = SESSION_TOKEN_KEY;
                String persistentSettingString = sharedInstance.getPersistentSettingString(str2, str, null);
                String persistentSettingString2 = AVPersistenceUtils.sharedInstance().getPersistentSettingString(str2, getSessionTokenExpiredAtKey(str), null);
                if (!AVUtils.isBlankString(persistentSettingString) && !AVUtils.isBlankString(persistentSettingString2)) {
                    try {
                        if (Long.parseLong(persistentSettingString2) > System.currentTimeMillis()) {
                            return persistentSettingString;
                        }
                    } catch (Exception unused) {
                    }
                }
            } else if (imSessionTokenMap.containsKey(str)) {
                return (String) imSessionTokenMap.get(str);
            }
            return null;
        }

        static void addIMSessionToken(String str, String str2, long j) {
            if (AVIMClient.isAutoOpen()) {
                AVPersistenceUtils sharedInstance = AVPersistenceUtils.sharedInstance();
                String str3 = SESSION_TOKEN_KEY;
                sharedInstance.savePersistentSettingString(str3, str, str2);
                AVPersistenceUtils.sharedInstance().savePersistentSettingString(str3, getSessionTokenExpiredAtKey(str), String.valueOf(j));
                return;
            }
            imSessionTokenMap.put(str, str2);
        }

        static void removeIMSessionToken(String str) {
            if (AVIMClient.isAutoOpen()) {
                AVPersistenceUtils sharedInstance = AVPersistenceUtils.sharedInstance();
                String str2 = SESSION_TOKEN_KEY;
                sharedInstance.removePersistentSettingString(str2, str);
                AVPersistenceUtils.sharedInstance().removePersistentSettingString(str2, getSessionTokenExpiredAtKey(str));
                return;
            }
            imSessionTokenMap.remove(str);
        }

        private static String getSessionTokenExpiredAtKey(String str) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(".expiredAt");
            return sb.toString();
        }
    }

    static class SessionTagCache {
        private final String SESSION_TAG_CACHE_KEY;
        Map<String, String> cachedTagMap;

        private SessionTagCache() {
            this.SESSION_TAG_CACHE_KEY = "session_tag_cache_key";
            this.cachedTagMap = Collections.synchronizedMap(new HashMap());
            syncLocalToMemory(this.cachedTagMap);
        }

        private synchronized void syncTagsToLocal(Map<String, String> map) {
            if (map != null) {
                AVPersistenceUtils.sharedInstance().savePersistentSettingString(AVSessionCacheHelper.SESSION_KEY, "session_tag_cache_key", JSON.toJSONString(map));
            }
        }

        private void syncLocalToMemory(Map<String, String> map) {
            Map map2 = (Map) JSON.parseObject(AVPersistenceUtils.sharedInstance().getPersistentSettingString(AVSessionCacheHelper.SESSION_KEY, "session_tag_cache_key", "{}"), HashMap.class);
            if (map2 != null && !map2.isEmpty()) {
                map.clear();
                map.putAll(map2);
            }
        }

        /* access modifiers changed from: 0000 */
        public void addSession(String str, String str2) {
            this.cachedTagMap.put(str, str2);
            if (AVIMClient.isAutoOpen()) {
                syncTagsToLocal(this.cachedTagMap);
            }
        }

        /* access modifiers changed from: 0000 */
        public void removeSession(String str) {
            if (this.cachedTagMap.containsKey(str)) {
                this.cachedTagMap.remove(str);
                if (AVIMClient.isAutoOpen()) {
                    syncTagsToLocal(this.cachedTagMap);
                }
            }
        }

        /* access modifiers changed from: 0000 */
        public Map<String, String> getAllSession() {
            HashMap hashMap = new HashMap();
            hashMap.putAll(this.cachedTagMap);
            return hashMap;
        }
    }

    static class SignatureCache {
        private static final String SESSION_SIGNATURE_KEY = "com.avos.avoscloud.session.signature";

        SignatureCache() {
        }

        static void addSessionSignature(String str, Signature signature) {
            Map sessionSignatures = getSessionSignatures();
            sessionSignatures.put(str, signature);
            AVPersistenceUtils.sharedInstance().savePersistentSettingString(SESSION_SIGNATURE_KEY, AVSessionCacheHelper.SESSION_KEY, JSON.toJSONString((Object) sessionSignatures, SerializerFeature.WriteClassName));
        }

        static Signature getSessionSignature(String str) {
            return (Signature) getSessionSignatures().get(str);
        }

        private static Map<String, Signature> getSessionSignatures() {
            return (Map) JSON.parseObject(AVPersistenceUtils.sharedInstance().getPersistentSettingString(SESSION_SIGNATURE_KEY, AVSessionCacheHelper.SESSION_KEY, "{}"), Map.class);
        }
    }

    AVSessionCacheHelper() {
    }

    static {
        AVPersistenceUtils sharedInstance = AVPersistenceUtils.sharedInstance();
        String str = SESSION_KEY;
        sharedInstance.removePersistentSettingString("com.avos.avoscloud.session.version", str);
        AVPersistenceUtils.sharedInstance().removePersistentSettingString("com.avos.avoscloud.session", str);
        AVPersistenceUtils.sharedInstance().removePersistentSettingString("com.avos.avoscloud.session.tag", str);
    }

    static synchronized SessionTagCache getTagCacheInstance() {
        SessionTagCache sessionTagCache;
        synchronized (AVSessionCacheHelper.class) {
            if (tagCacheInstance == null) {
                tagCacheInstance = new SessionTagCache();
            }
            sessionTagCache = tagCacheInstance;
        }
        return sessionTagCache;
    }
}
