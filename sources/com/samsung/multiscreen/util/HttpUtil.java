package com.samsung.multiscreen.util;

import android.net.Uri;
import android.util.Log;
import com.koushikdutta.async.http.AsyncHttpClient;
import com.koushikdutta.async.http.AsyncHttpClient.StringCallback;
import com.koushikdutta.async.http.AsyncHttpRequest;
import com.koushikdutta.async.http.body.JSONObjectBody;
import java.util.Map;
import org.json.JSONObject;

public class HttpUtil {
    public static final String METHOD_DELETE = "DELETE";
    public static final String METHOD_GET = "GET";
    public static final String METHOD_POST = "POST";
    public static final String METHOD_PUT = "PUT";
    private static final String TAG = "HttpUtil";
    private static boolean logging = false;

    public interface ResultCreator<T> {
        T createResult(Map<String, Object> map);
    }

    public static void enableLogging(boolean z) {
        logging = z;
    }

    public static void executeJSONRequest(Uri uri, String str, StringCallback stringCallback) {
        executeJSONRequest(uri, str, null, stringCallback);
    }

    public static void executeJSONRequest(Uri uri, String str, int i, StringCallback stringCallback) {
        executeJSONRequest(uri, str, i, null, stringCallback);
    }

    public static void executeJSONRequest(Uri uri, String str, Map<String, Object> map, StringCallback stringCallback) {
        executeJSONRequest(uri, str, AsyncHttpRequest.DEFAULT_TIMEOUT, map, stringCallback);
    }

    public static void executeJSONRequest(Uri uri, String str, int i, Map<String, Object> map, StringCallback stringCallback) {
        AsyncHttpRequest asyncHttpRequest = new AsyncHttpRequest(uri, str);
        if (i <= 0) {
            i = AsyncHttpRequest.DEFAULT_TIMEOUT;
        }
        asyncHttpRequest.setTimeout(i);
        asyncHttpRequest.setHeader("Content-Type", "application/json");
        if (map != null) {
            asyncHttpRequest.setBody(new JSONObjectBody(new JSONObject(map)));
        }
        if (logging) {
            StringBuilder sb = new StringBuilder();
            sb.append("executeJSONRequest() method: ");
            sb.append(asyncHttpRequest.getMethod());
            sb.append(", uri: ");
            sb.append(uri);
            String sb2 = sb.toString();
            String str2 = TAG;
            Log.d(str2, sb2);
            StringBuilder sb3 = new StringBuilder();
            sb3.append("executeJSONRequest() request.getHeaders() ");
            sb3.append(asyncHttpRequest.getHeaders().toString());
            Log.d(str2, sb3.toString());
        }
        AsyncHttpClient.getDefaultInstance().executeString(asyncHttpRequest, stringCallback);
    }
}
