package com.avos.avoscloud;

import android.content.Intent;
import android.os.Bundle;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.avos.avoscloud.im.v2.Conversation;
import com.avos.avoscloud.im.v2.Conversation.AVIMOperation;

public class BroadcastUtil {
    public static void sendIMLocalBroadcast(String str, String str2, int i, AVIMOperation aVIMOperation) {
        sendIMLocalBroadcast(str, str2, i, null, null, aVIMOperation);
    }

    public static void sendIMLocalBroadcast(String str, String str2, int i, Throwable th, AVIMOperation aVIMOperation) {
        sendIMLocalBroadcast(str, str2, i, null, th, aVIMOperation);
    }

    public static void sendIMLocalBroadcast(String str, String str2, int i, Bundle bundle, AVIMOperation aVIMOperation) {
        sendIMLocalBroadcast(str, str2, i, bundle, null, aVIMOperation);
    }

    private static void sendIMLocalBroadcast(String str, String str2, int i, Bundle bundle, Throwable th, AVIMOperation aVIMOperation) {
        if (isOperationValid(aVIMOperation)) {
            String operation = aVIMOperation.getOperation();
            StringBuilder sb = new StringBuilder();
            sb.append(operation);
            sb.append(i);
            Intent intent = new Intent(sb.toString());
            intent.putExtra(Conversation.callbackClientKey, str);
            if (!AVUtils.isBlankString(str2)) {
                intent.putExtra(Conversation.callbackConversationKey, str2);
            }
            if (th != null) {
                intent.putExtra(Conversation.callbackExceptionKey, th);
            }
            if (bundle != null) {
                intent.putExtras(bundle);
            }
            LocalBroadcastManager.getInstance(AVOSCloud.applicationContext).sendBroadcast(intent);
        }
    }

    private static boolean isOperationValid(AVIMOperation aVIMOperation) {
        return (aVIMOperation == null || AVIMOperation.CONVERSATION_UNKNOWN.getCode() == aVIMOperation.getCode()) ? false : true;
    }
}
