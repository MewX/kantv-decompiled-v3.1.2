package io.flutter.embedding.engine.systemchannels;

import android.os.Build.VERSION;
import androidx.annotation.NonNull;
import io.flutter.Log;
import io.flutter.embedding.engine.dart.DartExecutor;
import io.flutter.plugin.common.JSONMethodCodec;
import io.flutter.plugin.common.MethodChannel;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class LocalizationChannel {
    private static final String TAG = "LocalizationChannel";
    @NonNull
    public final MethodChannel channel;

    public LocalizationChannel(@NonNull DartExecutor dartExecutor) {
        this.channel = new MethodChannel(dartExecutor, "flutter/localization", JSONMethodCodec.INSTANCE);
    }

    public void sendLocales(@NonNull List<Locale> list) {
        String str = TAG;
        Log.v(str, "Sending Locales to Flutter.");
        ArrayList arrayList = new ArrayList();
        for (Locale locale : list) {
            StringBuilder sb = new StringBuilder();
            sb.append("Locale (Language: ");
            sb.append(locale.getLanguage());
            sb.append(", Country: ");
            sb.append(locale.getCountry());
            sb.append(", Variant: ");
            sb.append(locale.getVariant());
            sb.append(")");
            Log.v(str, sb.toString());
            arrayList.add(locale.getLanguage());
            arrayList.add(locale.getCountry());
            arrayList.add(VERSION.SDK_INT >= 21 ? locale.getScript() : "");
            arrayList.add(locale.getVariant());
        }
        this.channel.invokeMethod("setLocale", arrayList);
    }
}
