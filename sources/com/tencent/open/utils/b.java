package com.tencent.open.utils;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import com.tencent.open.a.f;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

/* compiled from: ProGuard */
public class b {
    /* access modifiers changed from: private */
    public static String c;
    /* access modifiers changed from: private */
    public String a;
    /* access modifiers changed from: private */
    public c b;
    /* access modifiers changed from: private */
    public long d;
    /* access modifiers changed from: private */
    public Handler e;
    private Runnable f = new Runnable() {
        public void run() {
            boolean z;
            String str = "AsynLoadImg";
            f.a(str, "saveFileRunnable:");
            String f = k.f(b.this.a);
            StringBuilder sb = new StringBuilder();
            sb.append("share_qq_");
            sb.append(f);
            sb.append(".jpg");
            String sb2 = sb.toString();
            StringBuilder sb3 = new StringBuilder();
            sb3.append(b.c);
            sb3.append(sb2);
            String sb4 = sb3.toString();
            File file = new File(sb4);
            Message obtainMessage = b.this.e.obtainMessage();
            if (file.exists()) {
                obtainMessage.arg1 = 0;
                obtainMessage.obj = sb4;
                StringBuilder sb5 = new StringBuilder();
                sb5.append("file exists: time:");
                sb5.append(System.currentTimeMillis() - b.this.d);
                f.a(str, sb5.toString());
            } else {
                Bitmap a2 = b.a(b.this.a);
                if (a2 != null) {
                    z = b.this.a(a2, sb2);
                } else {
                    f.a(str, "saveFileRunnable:get bmp fail---");
                    z = false;
                }
                if (z) {
                    obtainMessage.arg1 = 0;
                    obtainMessage.obj = sb4;
                } else {
                    obtainMessage.arg1 = 1;
                }
                StringBuilder sb6 = new StringBuilder();
                sb6.append("file not exists: download time:");
                sb6.append(System.currentTimeMillis() - b.this.d);
                f.a(str, sb6.toString());
            }
            b.this.e.sendMessage(obtainMessage);
        }
    };

    public b(Activity activity) {
        this.e = new Handler(activity.getMainLooper()) {
            public void handleMessage(Message message) {
                StringBuilder sb = new StringBuilder();
                sb.append("handleMessage:");
                sb.append(message.arg1);
                f.a("AsynLoadImg", sb.toString());
                if (message.arg1 == 0) {
                    b.this.b.a(message.arg1, (String) message.obj);
                } else {
                    b.this.b.a(message.arg1, (String) null);
                }
            }
        };
    }

    public void a(String str, c cVar) {
        f.a("AsynLoadImg", "--save---");
        if (str == null || str.equals("")) {
            cVar.a(1, (String) null);
        } else if (!k.b()) {
            cVar.a(2, (String) null);
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append(Environment.getExternalStorageDirectory());
            sb.append("/tmp/");
            c = sb.toString();
            this.d = System.currentTimeMillis();
            this.a = str;
            this.b = cVar;
            new Thread(this.f).start();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:24:0x006d A[SYNTHETIC, Splitter:B:24:0x006d] */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x0078 A[SYNTHETIC, Splitter:B:30:0x0078] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(android.graphics.Bitmap r6, java.lang.String r7) {
        /*
            r5 = this;
            java.lang.String r0 = "AsynLoadImg"
            java.lang.String r1 = c
            r2 = 0
            java.io.File r3 = new java.io.File     // Catch:{ IOException -> 0x0061 }
            r3.<init>(r1)     // Catch:{ IOException -> 0x0061 }
            boolean r4 = r3.exists()     // Catch:{ IOException -> 0x0061 }
            if (r4 != 0) goto L_0x0013
            r3.mkdir()     // Catch:{ IOException -> 0x0061 }
        L_0x0013:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ IOException -> 0x0061 }
            r3.<init>()     // Catch:{ IOException -> 0x0061 }
            r3.append(r1)     // Catch:{ IOException -> 0x0061 }
            r3.append(r7)     // Catch:{ IOException -> 0x0061 }
            java.lang.String r1 = r3.toString()     // Catch:{ IOException -> 0x0061 }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ IOException -> 0x0061 }
            r3.<init>()     // Catch:{ IOException -> 0x0061 }
            java.lang.String r4 = "saveFile:"
            r3.append(r4)     // Catch:{ IOException -> 0x0061 }
            r3.append(r7)     // Catch:{ IOException -> 0x0061 }
            java.lang.String r7 = r3.toString()     // Catch:{ IOException -> 0x0061 }
            com.tencent.open.a.f.a(r0, r7)     // Catch:{ IOException -> 0x0061 }
            java.io.File r7 = new java.io.File     // Catch:{ IOException -> 0x0061 }
            r7.<init>(r1)     // Catch:{ IOException -> 0x0061 }
            java.io.BufferedOutputStream r1 = new java.io.BufferedOutputStream     // Catch:{ IOException -> 0x0061 }
            java.io.FileOutputStream r3 = new java.io.FileOutputStream     // Catch:{ IOException -> 0x0061 }
            r3.<init>(r7)     // Catch:{ IOException -> 0x0061 }
            r1.<init>(r3)     // Catch:{ IOException -> 0x0061 }
            android.graphics.Bitmap$CompressFormat r7 = android.graphics.Bitmap.CompressFormat.JPEG     // Catch:{ IOException -> 0x005c, all -> 0x0059 }
            r2 = 80
            r6.compress(r7, r2, r1)     // Catch:{ IOException -> 0x005c, all -> 0x0059 }
            r1.flush()     // Catch:{ IOException -> 0x005c, all -> 0x0059 }
            r1.close()     // Catch:{ IOException -> 0x0053 }
            goto L_0x0057
        L_0x0053:
            r6 = move-exception
            r6.printStackTrace()
        L_0x0057:
            r6 = 1
            return r6
        L_0x0059:
            r6 = move-exception
            r2 = r1
            goto L_0x0076
        L_0x005c:
            r6 = move-exception
            r2 = r1
            goto L_0x0062
        L_0x005f:
            r6 = move-exception
            goto L_0x0076
        L_0x0061:
            r6 = move-exception
        L_0x0062:
            r6.printStackTrace()     // Catch:{ all -> 0x005f }
            java.lang.String r7 = "saveFile bmp fail---"
            com.tencent.open.a.f.b(r0, r7, r6)     // Catch:{ all -> 0x005f }
            r6 = 0
            if (r2 == 0) goto L_0x0075
            r2.close()     // Catch:{ IOException -> 0x0071 }
            goto L_0x0075
        L_0x0071:
            r7 = move-exception
            r7.printStackTrace()
        L_0x0075:
            return r6
        L_0x0076:
            if (r2 == 0) goto L_0x0080
            r2.close()     // Catch:{ IOException -> 0x007c }
            goto L_0x0080
        L_0x007c:
            r7 = move-exception
            r7.printStackTrace()
        L_0x0080:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.open.utils.b.a(android.graphics.Bitmap, java.lang.String):boolean");
    }

    public static Bitmap a(String str) {
        String str2 = "getbitmap bmp fail---";
        StringBuilder sb = new StringBuilder();
        sb.append("getbitmap:");
        sb.append(str);
        String str3 = "AsynLoadImg";
        f.a(str3, sb.toString());
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setDoInput(true);
            httpURLConnection.connect();
            InputStream inputStream = httpURLConnection.getInputStream();
            Bitmap decodeStream = BitmapFactory.decodeStream(inputStream);
            inputStream.close();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("image download finished.");
            sb2.append(str);
            f.a(str3, sb2.toString());
            return decodeStream;
        } catch (OutOfMemoryError e2) {
            e2.printStackTrace();
            f.a(str3, str2);
            return null;
        } catch (IOException e3) {
            e3.printStackTrace();
            f.a(str3, str2);
            return null;
        }
    }
}
