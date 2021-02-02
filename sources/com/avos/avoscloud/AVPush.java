package com.avos.avoscloud;

import com.alibaba.fastjson.JSON;
import com.avos.avoscloud.LogUtil.log;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

public class AVPush {
    private static final Set<String> DEVICE_TYPES = new HashSet();
    private static final String deviceTypeTag = "deviceType";
    private final Set<String> channelSet = new HashSet();
    private String cql;
    private long expirationTime;
    private long expirationTimeInterval;
    /* access modifiers changed from: private */
    public volatile AVObject notification;
    private boolean production = true;
    private final Map<String, Object> pushData = new HashMap();
    private Date pushDate = null;
    private AVQuery<? extends AVInstallation> pushQuery = AVInstallation.getQuery();
    private final Set<String> pushTarget = new HashSet(DEVICE_TYPES);

    static {
        DEVICE_TYPES.add("android");
        DEVICE_TYPES.add("ios");
        AVPowerfulUtils.createSettings(AVPush.class.getSimpleName(), "push", "");
    }

    public Set<String> getChannelSet() {
        return this.channelSet;
    }

    public AVObject getNotification() {
        return this.notification;
    }

    public AVQuery<? extends AVInstallation> getPushQuery() {
        return this.pushQuery;
    }

    public Date getPushDate() {
        return this.pushDate;
    }

    public long getExpirationTime() {
        return this.expirationTime;
    }

    public long getExpirationTimeInterval() {
        return this.expirationTimeInterval;
    }

    public Set<String> getPushTarget() {
        return this.pushTarget;
    }

    public Map<String, Object> getPushData() {
        return this.pushData;
    }

    public void clearExpiration() {
        this.expirationTime = 0;
        this.expirationTimeInterval = 0;
    }

    public void send() {
        sendInBackground(true, null);
    }

    static void sendDataInBackground(JSONObject jSONObject, AVQuery<? extends AVInstallation> aVQuery) {
        AVPush aVPush = new AVPush();
        aVPush.setData(jSONObject);
        aVPush.setQuery(aVQuery);
        aVPush.sendInBackground();
    }

    public static void sendDataInBackground(JSONObject jSONObject, AVQuery<? extends AVInstallation> aVQuery, SendCallback sendCallback) {
        AVPush aVPush = new AVPush();
        aVPush.setData(jSONObject);
        aVPush.setQuery(aVQuery);
        aVPush.sendInBackground(false, sendCallback);
    }

    public void sendInBackground() {
        sendInBackground(false, null);
    }

    public void sendInBackground(SendCallback sendCallback) {
        sendInBackground(false, sendCallback);
    }

    private Map<String, Object> pushChannelsData() {
        return AVUtils.createStringObjectMap("channels", this.channelSet);
    }

    private Map<String, Object> postDataMap() throws AVException {
        HashMap hashMap = new HashMap();
        if (this.pushQuery != null) {
            int size = this.pushTarget.size();
            String str = deviceTypeTag;
            if (size == 0) {
                this.pushQuery.whereNotContainedIn(str, DEVICE_TYPES);
            } else if (this.pushTarget.size() == 1) {
                this.pushQuery.whereEqualTo(str, this.pushTarget.toArray()[0]);
            }
            Map assembleParameters = this.pushQuery.assembleParameters();
            if (assembleParameters.keySet().size() <= 0 || AVUtils.isBlankString(this.cql)) {
                for (String str2 : assembleParameters.keySet()) {
                    hashMap.put(str2, JSON.parse((String) assembleParameters.get(str2)));
                }
            } else {
                throw new IllegalStateException("You can't use AVQuery and Cloud query at the same time.");
            }
        }
        if (!AVUtils.isBlankString(this.cql)) {
            hashMap.put("cql", this.cql);
        }
        if (this.channelSet.size() > 0) {
            hashMap.putAll(pushChannelsData());
        }
        if (this.expirationTime > 0) {
            hashMap.put("expiration_time", expirationDateTime());
        }
        String str3 = "push_time";
        if (this.expirationTimeInterval > 0) {
            hashMap.put(str3, AVUtils.stringFromDate(new Date()));
            hashMap.put("expiration_interval", new Long(this.expirationTimeInterval));
        }
        Date date = this.pushDate;
        if (date != null) {
            hashMap.put(str3, AVUtils.stringFromDate(date));
        }
        if (!this.production) {
            hashMap.put("prod", "dev");
        }
        hashMap.putAll(this.pushData);
        return hashMap;
    }

    private void sendInBackground(boolean z, final SendCallback sendCallback) {
        String str = "push";
        try {
            PaasClient.pushInstance().postObject(str, AVUtils.jsonStringFromMapWithNull(postDataMap()), z, new GenericObjectCallback() {
                public void onSuccess(String str, AVException aVException) {
                    AVPush.this.notification = new AVObject("_Notification");
                    AVUtils.copyPropertiesFromJsonStringToAVObject(str, AVPush.this.notification);
                    SendCallback sendCallback = sendCallback;
                    if (sendCallback != null) {
                        sendCallback.internalDone(null);
                    }
                }

                public void onFailure(Throwable th, String str) {
                    SendCallback sendCallback = sendCallback;
                    if (sendCallback != null) {
                        sendCallback.internalDone(AVErrorUtils.createException(th, str));
                    }
                }
            });
        } catch (AVException e) {
            if (sendCallback != null) {
                sendCallback.internalDone(e);
            } else {
                log.e("AVPush sent exception", (Exception) e);
            }
        }
    }

    public static void sendMessageInBackground(String str, AVQuery<? extends AVInstallation> aVQuery) {
        AVPush aVPush = new AVPush();
        aVPush.setMessage(str);
        aVPush.setQuery(aVQuery);
        aVPush.sendInBackground(false, null);
    }

    public static void sendMessageInBackground(String str, AVQuery<? extends AVInstallation> aVQuery, SendCallback sendCallback) {
        AVPush aVPush = new AVPush();
        aVPush.setMessage(str);
        aVPush.setQuery(aVQuery);
        aVPush.sendInBackground(false, sendCallback);
    }

    public void setChannel(String str) {
        this.channelSet.clear();
        this.channelSet.add(str);
    }

    public void setChannels(Collection<String> collection) {
        this.channelSet.clear();
        this.channelSet.addAll(collection);
    }

    public void setData(Map<String, Object> map) {
        this.pushData.put("data", map);
    }

    public void setData(JSONObject jSONObject) {
        try {
            HashMap hashMap = new HashMap();
            Iterator keys = jSONObject.keys();
            while (keys.hasNext()) {
                String str = (String) keys.next();
                hashMap.put(str, jSONObject.get(str));
            }
            this.pushData.put("data", hashMap);
        } catch (Exception e) {
            throw new AVRuntimeException((Throwable) e);
        }
    }

    private Date expirationDateTime() {
        return new Date(this.expirationTime);
    }

    public void setPushDate(Date date) {
        this.pushDate = date;
    }

    public void setExpirationTime(long j) {
        this.expirationTime = j;
    }

    public void setExpirationTimeInterval(long j) {
        this.expirationTimeInterval = j;
    }

    public void setMessage(String str) {
        this.pushData.clear();
        this.pushData.put("data", AVUtils.createStringObjectMap("alert", str));
    }

    public void setPushToAndroid(boolean z) {
        String str = "android";
        if (z) {
            this.pushTarget.add(str);
        } else {
            this.pushTarget.remove(str);
        }
    }

    public void setPushToIOS(boolean z) {
        String str = "ios";
        if (z) {
            this.pushTarget.add(str);
        } else {
            this.pushTarget.remove(str);
        }
    }

    public void setPushToWindowsPhone(boolean z) {
        String str = "wp";
        if (z) {
            this.pushTarget.add(str);
        } else {
            this.pushTarget.remove(str);
        }
    }

    public void setQuery(AVQuery<? extends AVInstallation> aVQuery) {
        this.pushQuery = aVQuery;
    }

    public void setCloudQuery(String str) {
        this.cql = str;
    }

    public boolean getProductionMode() {
        return this.production;
    }

    public void setProductionMode(boolean z) {
        this.production = z;
    }
}
