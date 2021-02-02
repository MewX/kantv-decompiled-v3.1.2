package com.tencent.mm.opensdk.diffdev.a;

import android.os.AsyncTask;
import android.util.Log;
import com.tencent.mm.opensdk.diffdev.OAuthErrCode;
import com.tencent.mm.opensdk.diffdev.OAuthListener;
import org.json.JSONObject;

final class f extends AsyncTask<Void, Void, a> {
    private OAuthListener an;
    private String aq;
    private int aw;
    private String url;

    static class a {
        public OAuthErrCode ap;
        public String ax;
        public int ay;

        a() {
        }

        public static a d(byte[] bArr) {
            OAuthErrCode oAuthErrCode;
            String format;
            OAuthErrCode oAuthErrCode2;
            a aVar = new a();
            String str = "MicroMsg.SDK.NoopingResult";
            if (bArr == null || bArr.length == 0) {
                Log.e(str, "parse fail, buf is null");
                oAuthErrCode = OAuthErrCode.WechatAuth_Err_NetworkErr;
            } else {
                try {
                    try {
                        JSONObject jSONObject = new JSONObject(new String(bArr, "utf-8"));
                        aVar.ay = jSONObject.getInt("wx_errcode");
                        Log.d(str, String.format("nooping uuidStatusCode = %d", new Object[]{Integer.valueOf(aVar.ay)}));
                        int i = aVar.ay;
                        if (i == 408) {
                            oAuthErrCode2 = OAuthErrCode.WechatAuth_Err_OK;
                        } else if (i != 500) {
                            switch (i) {
                                case 402:
                                    oAuthErrCode2 = OAuthErrCode.WechatAuth_Err_Timeout;
                                    break;
                                case 403:
                                    oAuthErrCode2 = OAuthErrCode.WechatAuth_Err_Cancel;
                                    break;
                                case 404:
                                    oAuthErrCode2 = OAuthErrCode.WechatAuth_Err_OK;
                                    break;
                                case 405:
                                    aVar.ap = OAuthErrCode.WechatAuth_Err_OK;
                                    aVar.ax = jSONObject.getString("wx_code");
                                    break;
                                default:
                                    oAuthErrCode2 = OAuthErrCode.WechatAuth_Err_NormalErr;
                                    break;
                            }
                        } else {
                            oAuthErrCode2 = OAuthErrCode.WechatAuth_Err_NormalErr;
                        }
                        aVar.ap = oAuthErrCode2;
                        return aVar;
                    } catch (Exception e) {
                        format = String.format("parse json fail, ex = %s", new Object[]{e.getMessage()});
                        Log.e(str, format);
                        oAuthErrCode = OAuthErrCode.WechatAuth_Err_NormalErr;
                        aVar.ap = oAuthErrCode;
                        return aVar;
                    }
                } catch (Exception e2) {
                    format = String.format("parse fail, build String fail, ex = %s", new Object[]{e2.getMessage()});
                    Log.e(str, format);
                    oAuthErrCode = OAuthErrCode.WechatAuth_Err_NormalErr;
                    aVar.ap = oAuthErrCode;
                    return aVar;
                }
            }
            aVar.ap = oAuthErrCode;
            return aVar;
        }
    }

    public f(String str, OAuthListener oAuthListener) {
        this.aq = str;
        this.an = oAuthListener;
        this.url = String.format("https://long.open.weixin.qq.com/connect/l/qrconnect?f=json&uuid=%s", new Object[]{str});
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ Object doInBackground(Object[] objArr) {
        a aVar;
        OAuthErrCode oAuthErrCode;
        String str;
        String str2 = this.aq;
        String str3 = "MicroMsg.SDK.NoopingTask";
        if (str2 == null || str2.length() == 0) {
            Log.e(str3, "run fail, uuid is null");
            aVar = new a();
            oAuthErrCode = OAuthErrCode.WechatAuth_Err_NormalErr;
        } else {
            while (!isCancelled()) {
                StringBuilder sb = new StringBuilder();
                sb.append(this.url);
                if (this.aw == 0) {
                    str = "";
                } else {
                    StringBuilder sb2 = new StringBuilder("&last=");
                    sb2.append(this.aw);
                    str = sb2.toString();
                }
                sb.append(str);
                String sb3 = sb.toString();
                long currentTimeMillis = System.currentTimeMillis();
                byte[] b = e.b(sb3, 60000);
                long currentTimeMillis2 = System.currentTimeMillis();
                a d = a.d(b);
                Log.d(str3, String.format("nooping, url = %s, errCode = %s, uuidStatusCode = %d, time consumed = %d(ms)", new Object[]{sb3, d.ap.toString(), Integer.valueOf(d.ay), Long.valueOf(currentTimeMillis2 - currentTimeMillis)}));
                if (d.ap == OAuthErrCode.WechatAuth_Err_OK) {
                    this.aw = d.ay;
                    if (d.ay == g.UUID_SCANED.getCode()) {
                        this.an.onQrcodeScanned();
                    } else if (d.ay != g.UUID_KEEP_CONNECT.getCode() && d.ay == g.UUID_CONFIRM.getCode()) {
                        if (d.ax == null || d.ax.length() == 0) {
                            Log.e(str3, "nooping fail, confirm with an empty code!!!");
                            d.ap = OAuthErrCode.WechatAuth_Err_NormalErr;
                        }
                        return d;
                    }
                } else {
                    Log.e(str3, String.format("nooping fail, errCode = %s, uuidStatusCode = %d", new Object[]{d.ap.toString(), Integer.valueOf(d.ay)}));
                    return d;
                }
            }
            Log.i(str3, "IDiffDevOAuth.stopAuth / detach invoked");
            aVar = new a();
            oAuthErrCode = OAuthErrCode.WechatAuth_Err_Auth_Stopped;
        }
        aVar.ap = oAuthErrCode;
        return aVar;
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ void onPostExecute(Object obj) {
        a aVar = (a) obj;
        this.an.onAuthFinish(aVar.ap, aVar.ax);
    }
}
