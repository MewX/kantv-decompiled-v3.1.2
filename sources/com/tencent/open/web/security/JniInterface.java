package com.tencent.open.web.security;

import android.content.Context;
import com.tencent.connect.auth.AuthAgent;
import com.tencent.open.a.f;
import com.tencent.open.utils.e;
import java.io.File;

/* compiled from: ProGuard */
public class JniInterface {
    public static boolean isJniOk = false;

    public static native boolean BackSpaceChar(boolean z, int i);

    public static native boolean clearAllPWD();

    public static native String getPWDKeyToMD5(String str);

    public static native boolean insetTextToArray(int i, String str, int i2);

    public static void loadSo() {
        String str = "/";
        String str2 = "openSDK_LOG.JniInterface";
        if (!isJniOk) {
            try {
                Context a = e.a();
                if (a != null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(a.getFilesDir().toString());
                    sb.append(str);
                    sb.append(AuthAgent.SECURE_LIB_NAME);
                    if (new File(sb.toString()).exists()) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(a.getFilesDir().toString());
                        sb2.append(str);
                        sb2.append(AuthAgent.SECURE_LIB_NAME);
                        System.load(sb2.toString());
                        isJniOk = true;
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("-->load lib success:");
                        sb3.append(AuthAgent.SECURE_LIB_NAME);
                        f.c(str2, sb3.toString());
                    } else {
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append("-->fail, because so is not exists:");
                        sb4.append(AuthAgent.SECURE_LIB_NAME);
                        f.c(str2, sb4.toString());
                    }
                } else {
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append("-->load lib fail, because context is null:");
                    sb5.append(AuthAgent.SECURE_LIB_NAME);
                    f.c(str2, sb5.toString());
                }
            } catch (Throwable th) {
                StringBuilder sb6 = new StringBuilder();
                sb6.append("-->load lib error:");
                sb6.append(AuthAgent.SECURE_LIB_NAME);
                f.b(str2, sb6.toString(), th);
            }
        }
    }
}
