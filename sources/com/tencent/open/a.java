package com.tencent.open;

import android.net.Uri;
import android.webkit.WebView;
import com.tencent.open.a.f;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

/* compiled from: ProGuard */
public class a {
    protected HashMap<String, b> a = new HashMap<>();

    /* renamed from: com.tencent.open.a$a reason: collision with other inner class name */
    /* compiled from: ProGuard */
    public static class C0009a {
        protected WeakReference<WebView> a;
        protected long b;
        protected String c;

        public C0009a(WebView webView, long j, String str) {
            this.a = new WeakReference<>(webView);
            this.b = j;
            this.c = str;
        }

        public void a(Object obj) {
            String str;
            WebView webView = (WebView) this.a.get();
            if (webView != null) {
                if (obj instanceof String) {
                    String str2 = "'";
                    String replace = ((String) obj).replace("\\", "\\\\").replace(str2, "\\'");
                    StringBuilder sb = new StringBuilder();
                    sb.append(str2);
                    sb.append(replace);
                    sb.append(str2);
                    str = sb.toString();
                } else {
                    str = ((obj instanceof Number) || (obj instanceof Long) || (obj instanceof Integer) || (obj instanceof Double) || (obj instanceof Float)) ? obj.toString() : obj instanceof Boolean ? obj.toString() : "'undefined'";
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("javascript:window.JsBridge&&JsBridge.callback(");
                sb2.append(this.b);
                sb2.append(",{'r':0,'result':");
                sb2.append(str);
                sb2.append("});");
                webView.loadUrl(sb2.toString());
            }
        }

        public void a() {
            WebView webView = (WebView) this.a.get();
            if (webView != null) {
                StringBuilder sb = new StringBuilder();
                sb.append("javascript:window.JsBridge&&JsBridge.callback(");
                sb.append(this.b);
                sb.append(",{'r':1,'result':'no such method'})");
                webView.loadUrl(sb.toString());
            }
        }

        public void a(String str) {
            WebView webView = (WebView) this.a.get();
            if (webView != null) {
                StringBuilder sb = new StringBuilder();
                sb.append("javascript:");
                sb.append(str);
                webView.loadUrl(sb.toString());
            }
        }
    }

    /* compiled from: ProGuard */
    public static class b {
        public boolean customCallback() {
            return false;
        }

        public void call(String str, List<String> list, C0009a aVar) {
            String str2;
            Method method;
            Object obj;
            String str3 = "openSDK_LOG.JsBridge";
            Method[] declaredMethods = getClass().getDeclaredMethods();
            int length = declaredMethods.length;
            int i = 0;
            while (true) {
                str2 = null;
                if (i >= length) {
                    method = null;
                    break;
                }
                method = declaredMethods[i];
                if (method.getName().equals(str) && method.getParameterTypes().length == list.size()) {
                    break;
                }
                i++;
            }
            if (method != null) {
                try {
                    int size = list.size();
                    if (size == 0) {
                        obj = method.invoke(this, new Object[0]);
                    } else if (size == 1) {
                        obj = method.invoke(this, new Object[]{list.get(0)});
                    } else if (size == 2) {
                        obj = method.invoke(this, new Object[]{list.get(0), list.get(1)});
                    } else if (size == 3) {
                        obj = method.invoke(this, new Object[]{list.get(0), list.get(1), list.get(2)});
                    } else if (size == 4) {
                        obj = method.invoke(this, new Object[]{list.get(0), list.get(1), list.get(2), list.get(3)});
                    } else if (size != 5) {
                        obj = method.invoke(this, new Object[]{list.get(0), list.get(1), list.get(2), list.get(3), list.get(4), list.get(5)});
                    } else {
                        obj = method.invoke(this, new Object[]{list.get(0), list.get(1), list.get(2), list.get(3), list.get(4)});
                    }
                    Class<Void> returnType = method.getReturnType();
                    StringBuilder sb = new StringBuilder();
                    sb.append("-->call, result: ");
                    sb.append(obj);
                    sb.append(" | ReturnType: ");
                    sb.append(returnType.getName());
                    f.b(str3, sb.toString());
                    if (!"void".equals(returnType.getName())) {
                        if (returnType != Void.class) {
                            if (aVar != null && customCallback()) {
                                if (obj != null) {
                                    str2 = obj.toString();
                                }
                                aVar.a(str2);
                            }
                        }
                    }
                    if (aVar != null) {
                        aVar.a((Object) null);
                    }
                } catch (Exception e) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("-->handler call mehtod ex. targetMethod: ");
                    sb2.append(method);
                    f.b(str3, sb2.toString(), e);
                    if (aVar != null) {
                        aVar.a();
                    }
                }
            } else {
                if (aVar != null) {
                    aVar.a();
                }
            }
        }
    }

    public void a(b bVar, String str) {
        this.a.put(str, bVar);
    }

    public void a(String str, String str2, List<String> list, C0009a aVar) {
        StringBuilder sb = new StringBuilder();
        sb.append("getResult---objName = ");
        sb.append(str);
        sb.append(" methodName = ");
        sb.append(str2);
        String str3 = "openSDK_LOG.JsBridge";
        f.a(str3, sb.toString());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            try {
                list.set(i, URLDecoder.decode((String) list.get(i), "UTF-8"));
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        b bVar = (b) this.a.get(str);
        if (bVar != null) {
            f.b(str3, "call----");
            bVar.call(str2, list, aVar);
            return;
        }
        f.b(str3, "not call----objName NOT FIND");
        if (aVar != null) {
            aVar.a();
        }
    }

    public boolean a(WebView webView, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("-->canHandleUrl---url = ");
        sb.append(str);
        f.a("openSDK_LOG.JsBridge", sb.toString());
        if (str == null || !Uri.parse(str).getScheme().equals("jsbridge")) {
            return false;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append("/#");
        ArrayList arrayList = new ArrayList(Arrays.asList(sb2.toString().split("/")));
        if (arrayList.size() < 6) {
            return false;
        }
        String str2 = (String) arrayList.get(2);
        String str3 = (String) arrayList.get(3);
        List subList = arrayList.subList(4, arrayList.size() - 1);
        C0009a aVar = new C0009a(webView, 4, str);
        webView.getUrl();
        a(str2, str3, subList, aVar);
        return true;
    }
}
