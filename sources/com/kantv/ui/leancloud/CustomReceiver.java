package com.kantv.ui.leancloud;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.core.app.NotificationCompat.Builder;
import com.imkan.tv.R;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.ui.BuildConfig;
import com.kantv.ui.MainActivity;
import org.json.JSONObject;

public class CustomReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        String str;
        String str2 = "title";
        String str3 = "pushtype";
        try {
            if (intent.getAction().equals(BuildConfig.APPLICATION_ID)) {
                JSONObject jsonObject = StringUtils.toJsonObject(intent.getExtras().getString("com.avos.avoscloud.Data"));
                if (jsonObject != null) {
                    String optString = jsonObject.optString("alert");
                    String optString2 = jsonObject.optString(str2);
                    if (jsonObject.optString(str3) != null) {
                        String optString3 = jsonObject.optString(str3);
                        if (optString3.equals("appupdate")) {
                            str = jsonObject.optString("download");
                        } else {
                            str = jsonObject.optString("targeturl");
                        }
                        Intent intent2 = new Intent(Utils.getContext(), MainActivity.class);
                        Bundle bundle = new Bundle();
                        bundle.putString(str3, optString3);
                        bundle.putString("url", str);
                        bundle.putString(str2, optString2);
                        intent2.putExtras(bundle);
                        PendingIntent activity = PendingIntent.getActivity(Utils.getContext(), 0, intent2, 134217728);
                        Builder ticker = new Builder(Utils.getContext()).setSmallIcon(R.drawable.ic_launcher).setContentTitle(optString2).setContentText(optString).setTicker(optString);
                        ticker.setContentIntent(activity);
                        ticker.setAutoCancel(true);
                        ((NotificationManager) Utils.getContext().getSystemService("notification")).notify(10086, ticker.build());
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
