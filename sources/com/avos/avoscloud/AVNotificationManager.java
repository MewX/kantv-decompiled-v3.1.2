package com.avos.avoscloud;

import android.annotation.TargetApi;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.PendingIntent.CanceledException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.os.Build.VERSION;
import android.util.Log;
import androidx.core.app.NotificationCompat.Builder;
import com.alibaba.fastjson.JSON;
import com.avos.avoscloud.LogUtil.avlog;
import com.avos.avoscloud.LogUtil.log;
import com.avos.avoscloud.utils.StringUtils;
import com.avos.avospush.session.StaleMessageDepot;
import com.tencent.tauth.AuthActivity;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Random;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

class AVNotificationManager {
    private static final String AV_PUSH_SERVICE_APP_DATA = "AV_PUSH_SERVICE_APP_DATA";
    private static final String ICON_KEY = "_notification_icon";
    private static final String LOGTAG = "AVNotificationManager";
    private static final String PUSH_INTENT_KEY = "com.avoscloud.push";
    private static final String PUSH_MESSAGE_DEPOT = "com.avos.push.message";
    private static AVNotificationManager notificationManager;
    private static final Random random = new Random();
    private Context context;
    private final ConcurrentHashMap<String, String> defaultPushCallback = new ConcurrentHashMap<>();
    private final StaleMessageDepot depot;
    private int notificationIcon;

    public static synchronized AVNotificationManager getInstance() {
        AVNotificationManager aVNotificationManager;
        synchronized (AVNotificationManager.class) {
            if (notificationManager == null) {
                notificationManager = new AVNotificationManager(AVOSCloud.applicationContext);
            }
            aVNotificationManager = notificationManager;
        }
        return aVNotificationManager;
    }

    private AVNotificationManager(Context context2) {
        this.context = context2;
        this.notificationIcon = context2.getApplicationInfo().icon;
        this.depot = new StaleMessageDepot(PUSH_MESSAGE_DEPOT);
        readDataFromCache();
        if (AVOSCloud.isDebugLogEnabled()) {
            StringBuilder sb = new StringBuilder();
            sb.append("Init AppManager Done, read data from cache: ");
            sb.append(this.defaultPushCallback.size());
            Log.d(LOGTAG, sb.toString());
        }
    }

    private void sendNotification(String str, String str2) throws IllegalArgumentException {
        sendNotification(str, str2, buildUpdateIntent(str, str2, null));
    }

    private Intent buildUpdateIntent(String str, String str2, String str3) {
        Intent intent = new Intent();
        if (str3 != null) {
            intent.setAction(str3);
        }
        intent.putExtra("com.avoscloud.push", 1);
        intent.putExtra("com.avos.avoscloud.Channel", str);
        intent.putExtra("com.avoscloud.Channel", str);
        intent.putExtra("com.avos.avoscloud.Data", str2);
        intent.putExtra("com.avoscloud.Data", str2);
        intent.setPackage(this.context.getPackageName());
        return intent;
    }

    private void sendBroadcast(String str, String str2, String str3) {
        Intent buildUpdateIntent = buildUpdateIntent(str, str2, str3);
        if (AVOSCloud.showInternalDebugLog()) {
            StringBuilder sb = new StringBuilder();
            sb.append("action: ");
            sb.append(buildUpdateIntent.getAction());
            avlog.d(sb.toString());
        }
        this.context.sendBroadcast(buildUpdateIntent);
        if (AVOSCloud.showInternalDebugLog()) {
            avlog.d("sent broadcast");
        }
    }

    private void sendNotificationBroadcast(String str, String str2, String str3) {
        Intent buildUpdateIntent = buildUpdateIntent(str, str2, str3);
        if (AVOSCloud.showInternalDebugLog()) {
            StringBuilder sb = new StringBuilder();
            sb.append("action: ");
            sb.append(buildUpdateIntent.getAction());
            avlog.d(sb.toString());
        }
        this.context.sendBroadcast(buildUpdateIntent);
        if (AVOSCloud.showInternalDebugLog()) {
            avlog.d("sent broadcast");
        }
    }

    private String getChannel(String str) {
        return AVUtils.getJSONValue(str, "_channel");
    }

    private String getAction(String str) {
        return AVUtils.getJSONValue(str, AuthActivity.ACTION_KEY);
    }

    private boolean getSilent(String str) {
        if (!AVUtils.isBlankString(str)) {
            try {
                return new JSONObject(str).optBoolean("silent", false);
            } catch (JSONException e) {
                if (AVOSCloud.isDebugLogEnabled()) {
                    avlog.e("getSilent failed.", e);
                }
            }
        }
        return false;
    }

    private Date getExpiration(String str) {
        String str2;
        try {
            str2 = new JSONObject(str).getString("_expiration_time");
        } catch (JSONException unused) {
            str2 = "";
        }
        if (AVUtils.isBlankString(str2)) {
            return null;
        }
        return AVUtils.dateFromString(str2);
    }

    /* access modifiers changed from: 0000 */
    public void processGcmMessage(String str, String str2, String str3) {
        if (str == null || !containsDefaultPushCallback(str)) {
            String str4 = AVOSCloud.applicationId;
            if (str2 != null) {
                sendBroadcast(str4, str3, str2);
            } else {
                sendNotification(str4, str3);
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void processMixPushMessage(String str) {
        if (!AVUtils.isBlankString(str)) {
            String channel = getChannel(str);
            if (channel == null || !containsDefaultPushCallback(channel)) {
                channel = AVOSCloud.applicationId;
            }
            String action = getAction(str);
            boolean silent = getSilent(str);
            if (action != null) {
                sendBroadcast(channel, str, action);
            } else if (!silent) {
                sendNotification(channel, str);
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void processMixNotification(String str, String str2) {
        boolean isBlankString = StringUtils.isBlankString(str);
        String str3 = LOGTAG;
        if (isBlankString) {
            log.e(str3, "message is empty, ignore.");
            return;
        }
        String channel = getChannel(str);
        if (channel == null || !containsDefaultPushCallback(channel)) {
            channel = AVOSCloud.applicationId;
        }
        if (getAction(str) != null) {
            sendNotificationBroadcast(channel, str, str2);
            return;
        }
        String defaultPushCallback2 = getDefaultPushCallback(channel);
        if (StringUtils.isBlankString(defaultPushCallback2)) {
            log.e(str3, "className is empty, ignore.");
            return;
        }
        Intent buildUpdateIntent = buildUpdateIntent(channel, str, null);
        buildUpdateIntent.setComponent(new ComponentName(this.context, defaultPushCallback2));
        buildUpdateIntent.setFlags(536870912);
        try {
            PendingIntent.getActivity(this.context, 0, buildUpdateIntent, 134217728).send();
        } catch (CanceledException e) {
            log.e(str3, "Ocurred PendingIntent.CanceledException", e);
        }
    }

    /* access modifiers changed from: 0000 */
    public void processPushMessage(String str, String str2) {
        try {
            String channel = getChannel(str);
            if (channel == null || !containsDefaultPushCallback(channel)) {
                channel = AVOSCloud.applicationId;
            }
            Date expiration = getExpiration(str);
            if (expiration == null || !expiration.before(new Date())) {
                if (this.depot.putStableMessage(str2)) {
                    String action = getAction(str);
                    if (action != null) {
                        sendBroadcast(channel, str, action);
                    } else {
                        sendNotification(channel, str);
                    }
                }
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("message expired:");
            sb.append(str);
            avlog.d(sb.toString());
        } catch (Exception e) {
            avlog.e("Process notification failed.", e);
        }
    }

    /* access modifiers changed from: 0000 */
    public void porcessMixNotificationArrived(String str, String str2) {
        if (!AVUtils.isBlankString(str) && !AVUtils.isBlankString(str2)) {
            String channel = getChannel(str);
            if (channel == null || !containsDefaultPushCallback(channel)) {
                channel = AVOSCloud.applicationId;
            }
            sendNotificationBroadcast(channel, str, str2);
        }
    }

    private void readDataFromCache() {
        for (Entry entry : this.context.getSharedPreferences(AV_PUSH_SERVICE_APP_DATA, 0).getAll().entrySet()) {
            String str = (String) entry.getKey();
            if (str.equals(ICON_KEY)) {
                try {
                    this.notificationIcon = Integer.valueOf((String) entry.getValue()).intValue();
                } catch (Exception unused) {
                }
            } else {
                this.defaultPushCallback.put(str, String.valueOf(entry.getValue()));
            }
        }
    }

    private int getNotificationIcon() {
        return this.notificationIcon;
    }

    /* access modifiers changed from: 0000 */
    public void setNotificationIcon(int i) {
        this.notificationIcon = i;
        AVPersistenceUtils.sharedInstance().savePersistentSettingString(AV_PUSH_SERVICE_APP_DATA, ICON_KEY, String.valueOf(i));
    }

    /* access modifiers changed from: 0000 */
    public void addDefaultPushCallback(String str, String str2) {
        this.defaultPushCallback.put(str, str2);
        AVPersistenceUtils.sharedInstance().savePersistentSettingString(AV_PUSH_SERVICE_APP_DATA, str, String.valueOf(str2));
    }

    /* access modifiers changed from: 0000 */
    public void removeDefaultPushCallback(String str) {
        this.defaultPushCallback.remove(str);
        AVPersistenceUtils.sharedInstance().removePersistentSettingString(AV_PUSH_SERVICE_APP_DATA, str);
    }

    private boolean containsDefaultPushCallback(String str) {
        return this.defaultPushCallback.containsKey(str);
    }

    /* access modifiers changed from: 0000 */
    public String getDefaultPushCallback(String str) {
        if (AVUtils.isBlankString(str)) {
            return null;
        }
        return (String) this.defaultPushCallback.get(str);
    }

    public int size() {
        return this.defaultPushCallback.size();
    }

    @TargetApi(26)
    private void sendNotification(String str, String str2, Intent intent) {
        Notification notification;
        String defaultPushCallback2 = getDefaultPushCallback(str);
        if (AVUtils.isBlankString(defaultPushCallback2)) {
            throw new IllegalArgumentException("No default callback found, did you forget to invoke setDefaultPushCallback?");
        } else if (defaultPushCallback2.lastIndexOf(".") != -1) {
            int nextInt = random.nextInt();
            intent.setComponent(new ComponentName(this.context, defaultPushCallback2));
            PendingIntent activity = PendingIntent.getActivity(this.context, nextInt, intent, 0);
            String sound = getSound(str2);
            if (VERSION.SDK_INT <= 25) {
                notification = new Builder(this.context).setSmallIcon(getNotificationIcon()).setContentTitle(getTitle(str2)).setAutoCancel(true).setContentIntent(activity).setDefaults(3).setContentText(getText(str2)).build();
            } else {
                notification = new Notification.Builder(this.context).setSmallIcon(getNotificationIcon()).setContentTitle(getTitle(str2)).setAutoCancel(true).setContentIntent(activity).setDefaults(3).setContentText(getText(str2)).setChannelId(PushService.DefaultChannelId).build();
            }
            if (sound != null && sound.trim().length() > 0) {
                StringBuilder sb = new StringBuilder();
                sb.append("android.resource://");
                sb.append(sound);
                notification.sound = Uri.parse(sb.toString());
            }
            ((NotificationManager) this.context.getSystemService("notification")).notify(nextInt, notification);
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Class name is invalid, which must contain '.': ");
            sb2.append(defaultPushCallback2);
            Log.e(LOGTAG, sb2.toString());
        }
    }

    private String getTitle(String str) {
        return getValue(str, "title");
    }

    private String getSound(String str) {
        return getValue(str, "sound");
    }

    private String getValue(String str, String str2) {
        String jSONValue = AVUtils.getJSONValue(str, str2);
        if (jSONValue != null && jSONValue.trim().length() > 0) {
            return jSONValue;
        }
        Map map = (Map) JSON.parseObject(str, HashMap.class);
        if (map == null || map.isEmpty()) {
            return getApplicationName();
        }
        Map map2 = (Map) map.get("data");
        if (map2 == null || map2.isEmpty()) {
            return getApplicationName();
        }
        Object obj = map2.get(str2);
        if (obj != null) {
            return obj.toString();
        }
        return getApplicationName();
    }

    private String getApplicationName() {
        ApplicationInfo applicationInfo;
        PackageManager packageManager = this.context.getPackageManager();
        try {
            applicationInfo = packageManager.getApplicationInfo(this.context.getPackageName(), 0);
        } catch (NameNotFoundException unused) {
            applicationInfo = null;
        }
        return (String) (applicationInfo != null ? packageManager.getApplicationLabel(applicationInfo) : "Notification");
    }

    private String getText(String str) {
        String jSONValue = AVUtils.getJSONValue(str, "alert");
        if (jSONValue != null && jSONValue.trim().length() > 0) {
            return jSONValue;
        }
        Map map = (Map) JSON.parseObject(str, HashMap.class);
        if (map != null && !map.isEmpty()) {
            Map map2 = (Map) map.get("data");
            if (map2 != null && !map2.isEmpty()) {
                Object obj = map2.get("message");
                if (obj != null) {
                    return obj.toString();
                }
            }
        }
        return null;
    }
}
