package com.tencent.open.utils;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import com.tencent.connect.common.Constants;
import com.tencent.open.a.f;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.MessageDigest;

/* compiled from: ProGuard */
public class h {
    public static String a(int i) {
        if (i == 10103) {
            return "shareToQQ";
        }
        if (i == 10104) {
            return "shareToQzone";
        }
        if (i == 10105) {
            return "addToQQFavorites";
        }
        if (i == 10106) {
            return "sendToMyComputer";
        }
        if (i == 10107) {
            return "shareToTroopBar";
        }
        if (i == 11101) {
            return "action_login";
        }
        if (i == 10100) {
            return "action_request";
        }
        return null;
    }

    public static String a(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 0).versionName;
        } catch (NameNotFoundException unused) {
            return null;
        }
    }

    public static int a(String str, String str2) {
        if (str == null && str2 == null) {
            return 0;
        }
        if (str != null && str2 == null) {
            return 1;
        }
        if (str == null && str2 != null) {
            return -1;
        }
        String str3 = "\\.";
        String[] split = str.split(str3);
        String[] split2 = str2.split(str3);
        int i = 0;
        while (i < split.length && i < split2.length) {
            try {
                int parseInt = Integer.parseInt(split[i]);
                int parseInt2 = Integer.parseInt(split2[i]);
                if (parseInt < parseInt2) {
                    return -1;
                }
                if (parseInt > parseInt2) {
                    return 1;
                }
                i++;
            } catch (NumberFormatException unused) {
                return str.compareTo(str2);
            }
        }
        if (split.length > i) {
            return 1;
        }
        return split2.length > i ? -1 : 0;
    }

    public static boolean a(Context context, String str, String str2) {
        f.a("openSDK_LOG.SystemUtils", "OpenUi, validateAppSignatureForPackage");
        try {
            for (Signature charsString : context.getPackageManager().getPackageInfo(str, 64).signatures) {
                if (k.f(charsString.toCharsString()).equals(str2)) {
                    return true;
                }
            }
        } catch (NameNotFoundException unused) {
        }
        return false;
    }

    public static String b(Context context, String str) {
        String str2 = EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR;
        String str3 = "";
        String str4 = "openSDK_LOG.SystemUtils";
        f.a(str4, "OpenUi, getSignValidString");
        try {
            String packageName = context.getPackageName();
            Signature[] signatureArr = context.getPackageManager().getPackageInfo(packageName, 64).signatures;
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(signatureArr[0].toByteArray());
            String a = k.a(instance.digest());
            instance.reset();
            StringBuilder sb = new StringBuilder();
            sb.append("-->sign: ");
            sb.append(a);
            f.a(str4, sb.toString());
            StringBuilder sb2 = new StringBuilder();
            sb2.append(packageName);
            sb2.append(str2);
            sb2.append(a);
            sb2.append(str2);
            sb2.append(str);
            sb2.append(str3);
            instance.update(k.i(sb2.toString()));
            str3 = k.a(instance.digest());
            instance.reset();
            StringBuilder sb3 = new StringBuilder();
            sb3.append("-->signEncryped: ");
            sb3.append(str3);
            f.a(str4, sb3.toString());
            return str3;
        } catch (Exception e) {
            e.printStackTrace();
            f.b(str4, "OpenUi, getSignValidString error", e);
            return str3;
        }
    }

    public static boolean a(Context context, Intent intent) {
        if (context == null || intent == null || context.getPackageManager().queryIntentActivities(intent, 0).size() == 0) {
            return false;
        }
        return true;
    }

    public static String a(Context context) {
        return context.getApplicationInfo().loadLabel(context.getPackageManager()).toString();
    }

    public static int c(Context context, String str) {
        return a(a(context, "com.tencent.mobileqq"), str);
    }

    public static int d(Context context, String str) {
        return a(a(context, Constants.PACKAGE_TIM), str);
    }

    /* JADX WARNING: type inference failed for: r4v1 */
    /* JADX WARNING: type inference failed for: r10v1, types: [java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r4v2, types: [java.io.OutputStream] */
    /* JADX WARNING: type inference failed for: r10v2, types: [java.io.OutputStream] */
    /* JADX WARNING: type inference failed for: r4v3, types: [java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r9v0 */
    /* JADX WARNING: type inference failed for: r4v4 */
    /* JADX WARNING: type inference failed for: r10v3 */
    /* JADX WARNING: type inference failed for: r10v4 */
    /* JADX WARNING: type inference failed for: r10v5 */
    /* JADX WARNING: type inference failed for: r10v6, types: [java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r4v5 */
    /* JADX WARNING: type inference failed for: r9v1 */
    /* JADX WARNING: type inference failed for: r4v6 */
    /* JADX WARNING: type inference failed for: r10v7 */
    /* JADX WARNING: type inference failed for: r4v7 */
    /* JADX WARNING: type inference failed for: r4v8, types: [java.io.OutputStream, java.io.FileOutputStream] */
    /* JADX WARNING: type inference failed for: r4v11 */
    /* JADX WARNING: type inference failed for: r4v12 */
    /* JADX WARNING: type inference failed for: r4v13 */
    /* JADX WARNING: type inference failed for: r4v14 */
    /* JADX WARNING: type inference failed for: r10v9 */
    /* JADX WARNING: type inference failed for: r4v15 */
    /* JADX WARNING: type inference failed for: r4v16 */
    /* JADX WARNING: type inference failed for: r4v17 */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r4v7
      assigns: []
      uses: []
      mth insns count: 85
    	at jadx.core.dex.visitors.typeinference.TypeSearch.fillTypeCandidates(TypeSearch.java:237)
    	at java.util.ArrayList.forEach(ArrayList.java:1257)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:53)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runMultiVariableSearch(TypeInferenceVisitor.java:99)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:92)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
    	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
    	at java.util.ArrayList.forEach(ArrayList.java:1257)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
    	at jadx.core.ProcessClass.process(ProcessClass.java:30)
    	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:49)
    	at java.util.ArrayList.forEach(ArrayList.java:1257)
    	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:49)
    	at jadx.core.ProcessClass.process(ProcessClass.java:35)
    	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
    	at jadx.api.JavaClass.decompile(JavaClass.java:62)
    	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
     */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00ad A[SYNTHETIC, Splitter:B:42:0x00ad] */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00b4 A[SYNTHETIC, Splitter:B:46:0x00b4] */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x00be A[SYNTHETIC, Splitter:B:53:0x00be] */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x00c5 A[SYNTHETIC, Splitter:B:57:0x00c5] */
    /* JADX WARNING: Unknown variable types count: 11 */
    @android.annotation.SuppressLint({"SdCardPath"})
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean a(java.lang.String r10, java.lang.String r11, int r12) {
        /*
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "-->extractSecureLib, libName: "
            r0.append(r1)
            r0.append(r10)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "openSDK_LOG.SystemUtils"
            com.tencent.open.a.f.c(r1, r0)
            android.content.Context r0 = com.tencent.open.utils.e.a()
            r2 = 0
            if (r0 != 0) goto L_0x0023
            java.lang.String r10 = "-->extractSecureLib, global context is null. "
            com.tencent.open.a.f.c(r1, r10)
            return r2
        L_0x0023:
            java.lang.String r3 = "secure_lib"
            android.content.SharedPreferences r3 = r0.getSharedPreferences(r3, r2)
            java.io.File r4 = new java.io.File
            java.io.File r5 = r0.getFilesDir()
            r4.<init>(r5, r11)
            boolean r5 = r4.exists()
            r6 = 1
            java.lang.String r7 = "version"
            if (r5 != 0) goto L_0x0050
            java.io.File r5 = r4.getParentFile()
            if (r5 == 0) goto L_0x0073
            boolean r5 = r5.mkdirs()
            if (r5 == 0) goto L_0x0073
            r4.createNewFile()     // Catch:{ IOException -> 0x004b }
            goto L_0x0073
        L_0x004b:
            r4 = move-exception
            r4.printStackTrace()
            goto L_0x0073
        L_0x0050:
            int r4 = r3.getInt(r7, r2)
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r8 = "-->extractSecureLib, libVersion: "
            r5.append(r8)
            r5.append(r12)
            java.lang.String r8 = " | oldVersion: "
            r5.append(r8)
            r5.append(r4)
            java.lang.String r5 = r5.toString()
            com.tencent.open.a.f.c(r1, r5)
            if (r12 != r4) goto L_0x0073
            return r6
        L_0x0073:
            r4 = 0
            android.content.res.AssetManager r5 = r0.getAssets()     // Catch:{ Exception -> 0x00a4, all -> 0x00a1 }
            java.io.InputStream r10 = r5.open(r10)     // Catch:{ Exception -> 0x00a4, all -> 0x00a1 }
            java.io.FileOutputStream r4 = r0.openFileOutput(r11, r2)     // Catch:{ Exception -> 0x009c, all -> 0x009a }
            a(r10, r4)     // Catch:{ Exception -> 0x009c, all -> 0x009a }
            android.content.SharedPreferences$Editor r11 = r3.edit()     // Catch:{ Exception -> 0x009c, all -> 0x009a }
            r11.putInt(r7, r12)     // Catch:{ Exception -> 0x009c, all -> 0x009a }
            r11.commit()     // Catch:{ Exception -> 0x009c, all -> 0x009a }
            if (r10 == 0) goto L_0x0094
            r10.close()     // Catch:{ IOException -> 0x0093 }
            goto L_0x0094
        L_0x0093:
        L_0x0094:
            if (r4 == 0) goto L_0x0099
            r4.close()     // Catch:{ IOException -> 0x0099 }
        L_0x0099:
            return r6
        L_0x009a:
            r11 = move-exception
            goto L_0x00bc
        L_0x009c:
            r11 = move-exception
            r9 = r4
            r4 = r10
            r10 = r9
            goto L_0x00a6
        L_0x00a1:
            r11 = move-exception
            r10 = r4
            goto L_0x00bc
        L_0x00a4:
            r11 = move-exception
            r10 = r4
        L_0x00a6:
            java.lang.String r12 = "-->extractSecureLib, when copy lib execption."
            com.tencent.open.a.f.b(r1, r12, r11)     // Catch:{ all -> 0x00b8 }
            if (r4 == 0) goto L_0x00b2
            r4.close()     // Catch:{ IOException -> 0x00b1 }
            goto L_0x00b2
        L_0x00b1:
        L_0x00b2:
            if (r10 == 0) goto L_0x00b7
            r10.close()     // Catch:{ IOException -> 0x00b7 }
        L_0x00b7:
            return r2
        L_0x00b8:
            r11 = move-exception
            r9 = r4
            r4 = r10
            r10 = r9
        L_0x00bc:
            if (r10 == 0) goto L_0x00c3
            r10.close()     // Catch:{ IOException -> 0x00c2 }
            goto L_0x00c3
        L_0x00c2:
        L_0x00c3:
            if (r4 == 0) goto L_0x00c8
            r4.close()     // Catch:{ IOException -> 0x00c8 }
        L_0x00c8:
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.open.utils.h.a(java.lang.String, java.lang.String, int):boolean");
    }

    private static long a(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[8192];
        long j = 0;
        while (true) {
            int read = inputStream.read(bArr, 0, bArr.length);
            if (read != -1) {
                outputStream.write(bArr, 0, read);
                j += (long) read;
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append("-->copy, copyed size is: ");
                sb.append(j);
                f.c("openSDK_LOG.SystemUtils", sb.toString());
                return j;
            }
        }
    }

    public static int a(String str) {
        if ("shareToQQ".equals(str)) {
            return Constants.REQUEST_QQ_SHARE;
        }
        if ("shareToQzone".equals(str)) {
            return Constants.REQUEST_QZONE_SHARE;
        }
        if ("addToQQFavorites".equals(str)) {
            return Constants.REQUEST_QQ_FAVORITES;
        }
        if ("sendToMyComputer".equals(str)) {
            return Constants.REQUEST_SEND_TO_MY_COMPUTER;
        }
        if ("shareToTroopBar".equals(str)) {
            return Constants.REQUEST_SHARE_TO_TROOP_BAR;
        }
        if ("action_login".equals(str)) {
            return Constants.REQUEST_LOGIN;
        }
        return "action_request".equals(str) ? 10100 : -1;
    }
}
