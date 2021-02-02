package com.tencent.mm.opensdk.b;

import android.os.Bundle;
import android.util.Log;

public final class a {
    public static int a(Bundle bundle, String str) {
        int i = -1;
        if (bundle == null) {
            return -1;
        }
        try {
            i = bundle.getInt(str, -1);
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder("getIntExtra exception:");
            sb.append(e.getMessage());
            Log.e("MicroMsg.IntentUtil", sb.toString());
        }
        return i;
    }

    public static String b(Bundle bundle, String str) {
        String str2 = null;
        if (bundle == null) {
            return null;
        }
        try {
            str2 = bundle.getString(str);
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder("getStringExtra exception:");
            sb.append(e.getMessage());
            Log.e("MicroMsg.IntentUtil", sb.toString());
        }
        return str2;
    }
}
