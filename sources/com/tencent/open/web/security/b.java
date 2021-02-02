package com.tencent.open.web.security;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.WebView;
import com.tencent.open.a;
import com.tencent.open.a.C0009a;
import com.tencent.open.a.f;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* compiled from: ProGuard */
public class b extends a {
    public void a(String str, String str2, List<String> list, C0009a aVar) {
        StringBuilder sb = new StringBuilder();
        sb.append("-->getResult, objectName: ");
        sb.append(str);
        sb.append(" | methodName: ");
        sb.append(str2);
        String str3 = "openSDK_LOG.SecureJsBridge";
        f.a(str3, sb.toString());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            try {
                list.set(i, URLDecoder.decode((String) list.get(i), "UTF-8"));
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        com.tencent.open.a.b bVar = (com.tencent.open.a.b) this.a.get(str);
        if (bVar != null) {
            f.b(str3, "-->handler != null");
            bVar.call(str2, list, aVar);
            return;
        }
        f.b(str3, "-->handler == null");
        if (aVar != null) {
            aVar.a();
        }
    }

    public boolean a(WebView webView, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("-->canHandleUrl---url = ");
        sb.append(str);
        String str2 = "openSDK_LOG.SecureJsBridge";
        f.a(str2, sb.toString());
        if (str == null || !Uri.parse(str).getScheme().equals("jsbridge")) {
            return false;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append("/#");
        ArrayList arrayList = new ArrayList(Arrays.asList(sb2.toString().split("/")));
        if (arrayList.size() < 7) {
            return false;
        }
        String str3 = (String) arrayList.get(2);
        String str4 = (String) arrayList.get(3);
        String str5 = (String) arrayList.get(4);
        String str6 = (String) arrayList.get(5);
        StringBuilder sb3 = new StringBuilder();
        sb3.append("-->canHandleUrl, objectName: ");
        sb3.append(str3);
        sb3.append(" | methodName: ");
        sb3.append(str4);
        sb3.append(" | snStr: ");
        sb3.append(str5);
        f.a(str2, sb3.toString());
        if (!TextUtils.isEmpty(str3) && !TextUtils.isEmpty(str4) && !TextUtils.isEmpty(str5)) {
            try {
                c cVar = new c(webView, Long.parseLong(str5), str, str6);
                a(str3, str4, arrayList.subList(6, arrayList.size() - 1), cVar);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }
}
