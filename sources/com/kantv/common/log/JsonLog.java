package com.kantv.common.log;

import android.util.Log;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class JsonLog extends BaseLog {
    public static void printJson(String str, String str2, String str3) {
        String[] split;
        try {
            if (str2.startsWith("{")) {
                str2 = new JSONObject(str2).toString(4);
            } else if (str2.startsWith("[")) {
                str2 = new JSONArray(str2).toString(4);
            }
        } catch (JSONException unused) {
        }
        printLine(str, true);
        StringBuilder sb = new StringBuilder();
        sb.append(str3);
        sb.append(LINE_SEPARATOR);
        sb.append(str2);
        for (String str4 : sb.toString().split(LINE_SEPARATOR)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("║ ");
            sb2.append(str4);
            Log.d(str, sb2.toString());
        }
        printLine(str, false);
    }
}
