package com.avos.avoscloud;

import android.content.Intent;
import android.os.Build.VERSION;

public class IntentUtil {
    public static Intent setupIntentFlags(Intent intent) {
        if (VERSION.SDK_INT > 11) {
            intent.setFlags(32);
        }
        return intent;
    }
}
