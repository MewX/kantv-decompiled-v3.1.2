package com.tencent.mm.opensdk.diffdev.a;

import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Environment;
import android.util.Base64;
import android.util.Log;
import com.tencent.mm.opensdk.diffdev.OAuthErrCode;
import com.tencent.mm.opensdk.diffdev.OAuthListener;
import java.io.File;
import org.json.JSONObject;

public final class d extends AsyncTask<Void, Void, a> {
    /* access modifiers changed from: private */
    public static final boolean ai = (Environment.getExternalStorageState().equals("mounted") && new File(Environment.getExternalStorageDirectory().getAbsolutePath()).canWrite());
    /* access modifiers changed from: private */
    public static final String aj;
    private static String ak;
    private String al;
    private String am;
    private OAuthListener an;
    private f ao;
    private String appId;
    private String scope;
    private String signature;

    static class a {
        public OAuthErrCode ap;
        public String aq;
        public String ar;
        public String as;
        public int at;
        public String au;
        public byte[] av;

        private a() {
        }

        /* JADX WARNING: Removed duplicated region for block: B:20:0x004f A[SYNTHETIC, Splitter:B:20:0x004f] */
        /* JADX WARNING: Removed duplicated region for block: B:27:0x006b A[SYNTHETIC, Splitter:B:27:0x006b] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private static boolean a(java.lang.String r4, byte[] r5) {
            /*
                java.lang.String r0 = "fout.close() exception:"
                java.lang.String r1 = "MicroMsg.SDK.GetQRCodeResult"
                r2 = 0
                java.io.FileOutputStream r3 = new java.io.FileOutputStream     // Catch:{ Exception -> 0x0037 }
                r3.<init>(r4)     // Catch:{ Exception -> 0x0037 }
                r3.write(r5)     // Catch:{ Exception -> 0x0032, all -> 0x002f }
                r3.flush()     // Catch:{ Exception -> 0x0032, all -> 0x002f }
                r3.close()     // Catch:{ IOException -> 0x0014 }
                goto L_0x0028
            L_0x0014:
                r4 = move-exception
                java.lang.StringBuilder r5 = new java.lang.StringBuilder
                r5.<init>(r0)
                java.lang.String r4 = r4.getMessage()
                r5.append(r4)
                java.lang.String r4 = r5.toString()
                android.util.Log.e(r1, r4)
            L_0x0028:
                java.lang.String r4 = "writeToFile ok!"
                android.util.Log.d(r1, r4)
                r4 = 1
                return r4
            L_0x002f:
                r4 = move-exception
                r2 = r3
                goto L_0x0069
            L_0x0032:
                r4 = move-exception
                r2 = r3
                goto L_0x0038
            L_0x0035:
                r4 = move-exception
                goto L_0x0069
            L_0x0037:
                r4 = move-exception
            L_0x0038:
                java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch:{ all -> 0x0035 }
                java.lang.String r3 = "write to file error, exception:"
                r5.<init>(r3)     // Catch:{ all -> 0x0035 }
                java.lang.String r4 = r4.getMessage()     // Catch:{ all -> 0x0035 }
                r5.append(r4)     // Catch:{ all -> 0x0035 }
                java.lang.String r4 = r5.toString()     // Catch:{ all -> 0x0035 }
                android.util.Log.w(r1, r4)     // Catch:{ all -> 0x0035 }
                if (r2 == 0) goto L_0x0067
                r2.close()     // Catch:{ IOException -> 0x0053 }
                goto L_0x0067
            L_0x0053:
                r4 = move-exception
                java.lang.StringBuilder r5 = new java.lang.StringBuilder
                r5.<init>(r0)
                java.lang.String r4 = r4.getMessage()
                r5.append(r4)
                java.lang.String r4 = r5.toString()
                android.util.Log.e(r1, r4)
            L_0x0067:
                r4 = 0
                return r4
            L_0x0069:
                if (r2 == 0) goto L_0x0083
                r2.close()     // Catch:{ IOException -> 0x006f }
                goto L_0x0083
            L_0x006f:
                r5 = move-exception
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                r2.<init>(r0)
                java.lang.String r5 = r5.getMessage()
                r2.append(r5)
                java.lang.String r5 = r2.toString()
                android.util.Log.e(r1, r5)
            L_0x0083:
                throw r4
            */
            throw new UnsupportedOperationException("Method not decompiled: com.tencent.mm.opensdk.diffdev.a.d.a.a(java.lang.String, byte[]):boolean");
        }

        public static a c(byte[] bArr) {
            OAuthErrCode oAuthErrCode;
            String format;
            a aVar = new a();
            String str = "MicroMsg.SDK.GetQRCodeResult";
            if (bArr == null || bArr.length == 0) {
                Log.e(str, "parse fail, buf is null");
                oAuthErrCode = OAuthErrCode.WechatAuth_Err_NetworkErr;
            } else {
                try {
                    try {
                        JSONObject jSONObject = new JSONObject(new String(bArr, "utf-8"));
                        int i = jSONObject.getInt("errcode");
                        if (i != 0) {
                            Log.e(str, String.format("resp errcode = %d", new Object[]{Integer.valueOf(i)}));
                            aVar.ap = OAuthErrCode.WechatAuth_Err_NormalErr;
                            aVar.at = i;
                            aVar.au = jSONObject.optString("errmsg");
                            return aVar;
                        }
                        String string = jSONObject.getJSONObject("qrcode").getString("qrcodebase64");
                        if (string != null) {
                            if (string.length() != 0) {
                                byte[] decode = Base64.decode(string, 0);
                                if (decode != null) {
                                    if (decode.length != 0) {
                                        String str2 = "appname";
                                        String str3 = "uuid";
                                        if (d.ai) {
                                            File file = new File(d.aj);
                                            file.mkdirs();
                                            if (file.exists()) {
                                                file.delete();
                                            }
                                            if (!a(d.aj, decode)) {
                                                Log.e(str, String.format("writeToFile fail, qrcodeBuf length = %d", new Object[]{Integer.valueOf(decode.length)}));
                                                aVar.ap = OAuthErrCode.WechatAuth_Err_NormalErr;
                                                return aVar;
                                            }
                                            aVar.ap = OAuthErrCode.WechatAuth_Err_OK;
                                            aVar.as = d.aj;
                                            aVar.aq = jSONObject.getString(str3);
                                            aVar.ar = jSONObject.getString(str2);
                                            Log.d(str, String.format("parse succ, save in external storage, uuid = %s, appname = %s, imgPath = %s", new Object[]{aVar.aq, aVar.ar, aVar.as}));
                                            return aVar;
                                        }
                                        aVar.ap = OAuthErrCode.WechatAuth_Err_OK;
                                        aVar.av = decode;
                                        aVar.aq = jSONObject.getString(str3);
                                        aVar.ar = jSONObject.getString(str2);
                                        Log.d(str, String.format("parse succ, save in memory, uuid = %s, appname = %s, imgBufLength = %d", new Object[]{aVar.aq, aVar.ar, Integer.valueOf(aVar.av.length)}));
                                        return aVar;
                                    }
                                }
                                Log.e(str, "parse fail, qrcodeBuf is null");
                                aVar.ap = OAuthErrCode.WechatAuth_Err_JsonDecodeErr;
                                return aVar;
                            }
                        }
                        Log.e(str, "parse fail, qrcodeBase64 is null");
                        aVar.ap = OAuthErrCode.WechatAuth_Err_JsonDecodeErr;
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

    static {
        StringBuilder sb = new StringBuilder();
        sb.append(Environment.getExternalStorageDirectory().getAbsolutePath());
        sb.append("/tencent/MicroMsg/oauth_qrcode.png");
        aj = sb.toString();
        ak = null;
        ak = "http://open.weixin.qq.com/connect/sdk/qrconnect?appid=%s&noncestr=%s&timestamp=%s&scope=%s&signature=%s";
    }

    public d(String str, String str2, String str3, String str4, String str5, OAuthListener oAuthListener) {
        this.appId = str;
        this.scope = str2;
        this.al = str3;
        this.am = str4;
        this.signature = str5;
        this.an = oAuthListener;
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ Object doInBackground(Object[] objArr) {
        StringBuilder sb = new StringBuilder("external storage available = ");
        sb.append(ai);
        String str = "MicroMsg.SDK.GetQRCodeTask";
        Log.i(str, sb.toString());
        String format = String.format(ak, new Object[]{this.appId, this.al, this.am, this.scope, this.signature});
        long currentTimeMillis = System.currentTimeMillis();
        byte[] b = e.b(format, -1);
        Log.d(str, String.format("doInBackground, url = %s, time consumed = %d(ms)", new Object[]{format, Long.valueOf(System.currentTimeMillis() - currentTimeMillis)}));
        return a.c(b);
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ void onPostExecute(Object obj) {
        a aVar = (a) obj;
        String str = "MicroMsg.SDK.GetQRCodeTask";
        if (aVar.ap == OAuthErrCode.WechatAuth_Err_OK) {
            Log.d(str, "onPostExecute, get qrcode success");
            this.an.onAuthGotQrcode(aVar.as, aVar.av);
            this.ao = new f(aVar.aq, this.an);
            f fVar = this.ao;
            if (VERSION.SDK_INT >= 11) {
                fVar.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            } else {
                fVar.execute(new Void[0]);
            }
        } else {
            Log.e(str, String.format("onPostExecute, get qrcode fail, OAuthErrCode = %s", new Object[]{aVar.ap}));
            this.an.onAuthFinish(aVar.ap, null);
        }
    }

    public final boolean q() {
        Log.i("MicroMsg.SDK.GetQRCodeTask", "cancelTask");
        f fVar = this.ao;
        return fVar == null ? cancel(true) : fVar.cancel(true);
    }
}
