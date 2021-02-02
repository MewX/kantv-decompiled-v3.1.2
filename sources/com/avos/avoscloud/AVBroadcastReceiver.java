package com.avos.avoscloud;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.avos.avoscloud.LogUtil.log;

public class AVBroadcastReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        try {
            context.startService(new Intent(context, PushService.class));
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append("failed to start PushService. cause: ");
            sb.append(e.getMessage());
            log.e(sb.toString());
        }
    }
}
