package com.tencent.open.web.security;

import android.webkit.WebView;
import com.avos.avospush.session.ConversationControlPacket.ConversationControlOp;
import com.tencent.open.a.C0009a;
import com.tencent.open.a.f;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: ProGuard */
public class c extends C0009a {
    private String d;

    public c(WebView webView, long j, String str, String str2) {
        super(webView, j, str);
        this.d = str2;
    }

    public void a(Object obj) {
        StringBuilder sb = new StringBuilder();
        sb.append("-->onComplete, result: ");
        sb.append(obj);
        f.a("openSDK_LOG.SecureJsListener", sb.toString());
    }

    public void a() {
        f.b("openSDK_LOG.SecureJsListener", "-->onNoMatchMethod...");
    }

    public void a(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("-->onCustomCallback, js: ");
        sb.append(str);
        f.a("openSDK_LOG.SecureJsListener", sb.toString());
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ConversationControlOp.MEMBER_COUNT_QUERY_RESULT, !com.tencent.open.c.c.a ? -4 : 0);
            jSONObject.put("sn", this.b);
            jSONObject.put("data", str);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        b(jSONObject.toString());
    }

    private void b(String str) {
        WebView webView = (WebView) this.a.get();
        if (webView != null) {
            StringBuffer stringBuffer = new StringBuffer("javascript:");
            stringBuffer.append("if(!!");
            stringBuffer.append(this.d);
            stringBuffer.append("){");
            stringBuffer.append(this.d);
            stringBuffer.append("(");
            stringBuffer.append(str);
            stringBuffer.append(")}");
            String stringBuffer2 = stringBuffer.toString();
            StringBuilder sb = new StringBuilder();
            sb.append("-->callback, callback: ");
            sb.append(stringBuffer2);
            f.a("openSDK_LOG.SecureJsListener", sb.toString());
            webView.loadUrl(stringBuffer2);
        }
    }
}
