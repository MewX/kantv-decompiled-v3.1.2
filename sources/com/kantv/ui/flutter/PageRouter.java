package com.kantv.ui.flutter;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.idlefish.flutterboost.containers.NewBoostFlutterActivity;
import com.idlefish.flutterboost.containers.NewBoostFlutterActivity.BackgroundMode;
import java.util.HashMap;
import java.util.Map;

public class PageRouter {
    public static final String FLUTTER_FRAGMENT_PAGE_URL = "LiveDetailPage";
    public static final String FLUTTER_PAGE_URL = "LiveDetailPage";
    public static final String NATIVE_PAGE_URL = "LiveHomePage";
    public static final Map<String, String> pageName = new HashMap<String, String>() {
        {
            String str = "first";
            put(str, str);
            String str2 = "second";
            put(str2, str2);
            String str3 = "LiveDetailPage";
            put(str3, str3);
            put("sample://flutterPage", "flutterPage");
        }
    };

    public static boolean openPageByUrl(Context context, String str, Map map) {
        return openPageByUrl(context, str, map, 0);
    }

    public static boolean openPageByUrl(Context context, String str, Map map, int i) {
        String str2 = str.split("\\?")[0];
        Log.i("openPageByUrl", str2);
        try {
            if (pageName.containsKey(str2)) {
                context.startActivity(MyFlutterBootActivity.withNewEngines().url((String) pageName.get(str2)).params(map).backgroundMode(BackgroundMode.opaque).build(context));
                return false;
            } else if (str.startsWith("LiveDetailPage")) {
                context.startActivity(new Intent(context, NewBoostFlutterActivity.class));
                return true;
            } else if (str.startsWith(NATIVE_PAGE_URL)) {
                return true;
            } else {
                return false;
            }
        } catch (Throwable unused) {
        }
    }
}
