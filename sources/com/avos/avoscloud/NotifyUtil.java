package com.avos.avoscloud;

import android.content.Intent;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.alibaba.fastjson.JSON;
import com.avos.avoscloud.LogUtil.avlog;
import com.avos.avoscloud.LogUtil.log;
import com.avos.avoscloud.signature.Base64Decoder;
import com.avos.avoscloud.signature.Base64Encoder;
import java.io.File;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

class NotifyUtil {
    static final int SERVICE_RESTART = 1024;
    static final String SERVICE_RESTART_ACTION = "com.avos.avoscloud.notify.action";
    static Handler notifyHandler = new Handler(thread.getLooper()) {
        public void handleMessage(Message message) {
            if (message.what == 1024 && AVOSCloud.applicationContext != null) {
                removeMessages(1024);
                try {
                    for (String decode : NotifyUtil.getRegisteredApps()) {
                        String decode2 = Base64Decoder.decode(decode);
                        if (!AVOSCloud.applicationContext.getPackageName().equals(decode2)) {
                            Intent intent = new Intent();
                            intent.setClassName(decode2, "com.avos.avoscloud.PushService");
                            intent.setAction(NotifyUtil.SERVICE_RESTART_ACTION);
                            if (AVOSCloud.showInternalDebugLog()) {
                                StringBuilder sb = new StringBuilder();
                                sb.append("try to start:");
                                sb.append(decode2);
                                sb.append(" from:");
                                sb.append(AVOSCloud.applicationContext.getPackageName());
                                avlog.d(sb.toString());
                            }
                            AVOSCloud.applicationContext.startService(intent);
                        }
                    }
                } catch (Exception unused) {
                }
                NotifyUtil.registerApp();
            }
        }
    };
    protected static HandlerThread thread = new HandlerThread("com.avos.avoscloud.notify");

    NotifyUtil() {
    }

    static {
        thread.start();
    }

    /* access modifiers changed from: private */
    public static void registerApp() {
        Set registeredApps = getRegisteredApps();
        if (registeredApps != null) {
            registeredApps.add(Base64Encoder.encode(AVOSCloud.applicationContext.getPackageName()));
            AVPersistenceUtils.sharedInstance();
            AVPersistenceUtils.saveContentToFile(JSON.toJSONString(registeredApps), getRegisterAppsFile());
        }
    }

    /* access modifiers changed from: private */
    public static Set<String> getRegisteredApps() {
        if (AVOSCloud.applicationContext == null) {
            return null;
        }
        File registerAppsFile = getRegisterAppsFile();
        HashSet hashSet = new HashSet();
        if (registerAppsFile.exists()) {
            AVPersistenceUtils.sharedInstance();
            String readContentFromFile = AVPersistenceUtils.readContentFromFile(registerAppsFile);
            if (!AVUtils.isBlankString(readContentFromFile)) {
                try {
                    hashSet.addAll((Collection) JSON.parseObject(readContentFromFile, Set.class));
                } catch (Exception e) {
                    if (AVOSCloud.showInternalDebugLog()) {
                        log.e("NotifyUtil", "getRegisteredApps", e);
                    }
                }
            }
        }
        return hashSet;
    }

    private static File getRegisterAppsFile() {
        StringBuilder sb = new StringBuilder();
        sb.append(Environment.getExternalStorageDirectory());
        String str = "/Android/data/leancloud/";
        sb.append(str);
        File file = new File(sb.toString(), "dontpanic.cp");
        if (file.exists()) {
            return file;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(Environment.getExternalStorageDirectory());
        sb2.append(str);
        new File(sb2.toString()).mkdirs();
        return file;
    }
}
