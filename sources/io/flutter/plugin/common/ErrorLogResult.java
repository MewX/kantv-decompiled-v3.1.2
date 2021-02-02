package io.flutter.plugin.common;

import android.util.Log;
import androidx.annotation.Nullable;
import io.flutter.plugin.common.MethodChannel.Result;

public class ErrorLogResult implements Result {
    private int level;
    private String tag;

    public void success(@Nullable Object obj) {
    }

    public ErrorLogResult(String str) {
        this(str, 5);
    }

    public ErrorLogResult(String str, int i) {
        this.tag = str;
        this.level = i;
    }

    public void error(String str, @Nullable String str2, @Nullable Object obj) {
        String str3;
        if (obj != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(" details: ");
            sb.append(obj);
            str3 = sb.toString();
        } else {
            str3 = "";
        }
        int i = this.level;
        if (i >= 5) {
            String str4 = this.tag;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str2);
            sb2.append(str3);
            Log.println(i, str4, sb2.toString());
        }
    }

    public void notImplemented() {
        int i = this.level;
        if (i >= 5) {
            Log.println(i, this.tag, "method not implemented");
        }
    }
}
