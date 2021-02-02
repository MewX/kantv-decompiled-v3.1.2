package com.tencent.mm.opensdk.openapi;

import android.content.Context;
import android.util.Log;

public class WXAPIFactory {
    private static final String TAG = "MicroMsg.PaySdk.WXFactory";

    private WXAPIFactory() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" should not be instantiated");
        throw new RuntimeException(sb.toString());
    }

    public static IWXAPI createWXAPI(Context context, String str) {
        return createWXAPI(context, str, false);
    }

    public static IWXAPI createWXAPI(Context context, String str, boolean z) {
        StringBuilder sb = new StringBuilder("createWXAPI, appId = ");
        sb.append(str);
        sb.append(", checkSignature = ");
        sb.append(z);
        Log.d(TAG, sb.toString());
        return new WXApiImplV10(context, str, z);
    }
}
