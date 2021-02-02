package com.avos.avospush.session;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.avos.avoscloud.AVPersistenceUtils;
import com.avos.avoscloud.AVUtils;

public class MessageReceiptCache {
    private static final String MESSAGE_ZONE = "com.avoscloud.chat.receipt.";
    private static final String QUEUE_KEY = "com.avoscloud.chat.message.receipt";

    public static void add(String str, String str2, Object obj) {
        String jSONString = JSON.toJSONString(obj, SerializerFeature.SkipTransientField, SerializerFeature.WriteClassName, SerializerFeature.QuoteFieldNames, SerializerFeature.WriteNullNumberAsZero, SerializerFeature.WriteNullBooleanAsFalse);
        AVPersistenceUtils sharedInstance = AVPersistenceUtils.sharedInstance();
        StringBuilder sb = new StringBuilder();
        sb.append(MESSAGE_ZONE);
        sb.append(str);
        String sb2 = sb.toString();
        StringBuilder sb3 = new StringBuilder();
        sb3.append(QUEUE_KEY);
        sb3.append(str2);
        sharedInstance.savePersistentSettingString(sb2, sb3.toString(), jSONString);
    }

    public static Object get(String str, String str2) {
        AVPersistenceUtils sharedInstance = AVPersistenceUtils.sharedInstance();
        StringBuilder sb = new StringBuilder();
        String str3 = MESSAGE_ZONE;
        sb.append(str3);
        sb.append(str);
        String sb2 = sb.toString();
        StringBuilder sb3 = new StringBuilder();
        String str4 = QUEUE_KEY;
        sb3.append(str4);
        sb3.append(str2);
        String persistentSettingString = sharedInstance.getPersistentSettingString(sb2, sb3.toString(), null);
        AVPersistenceUtils sharedInstance2 = AVPersistenceUtils.sharedInstance();
        StringBuilder sb4 = new StringBuilder();
        sb4.append(str4);
        sb4.append(str2);
        sharedInstance2.removePersistentSettingString(str3, sb4.toString());
        if (AVUtils.isBlankString(persistentSettingString)) {
            return null;
        }
        return JSON.parse(persistentSettingString);
    }

    public static void clean(String str) {
        AVPersistenceUtils sharedInstance = AVPersistenceUtils.sharedInstance();
        StringBuilder sb = new StringBuilder();
        sb.append(MESSAGE_ZONE);
        sb.append(str);
        sharedInstance.removeKeyZonePersistentSettings(sb.toString());
    }
}
