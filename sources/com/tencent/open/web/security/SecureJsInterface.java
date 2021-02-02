package com.tencent.open.web.security;

import com.tencent.open.a.b;
import com.tencent.open.a.f;

/* compiled from: ProGuard */
public class SecureJsInterface extends b {
    public static boolean isPWDEdit = false;
    private String a;

    public boolean customCallback() {
        return true;
    }

    public void curPosFromJS(String str) {
        int i;
        StringBuilder sb = new StringBuilder();
        sb.append("-->curPosFromJS: ");
        sb.append(str);
        String str2 = "openSDK_LOG.SecureJsInterface";
        f.b(str2, sb.toString());
        try {
            i = Integer.parseInt(str);
        } catch (NumberFormatException e) {
            f.b(str2, "-->curPosFromJS number format exception.", e);
            i = -1;
        }
        if (i >= 0) {
            boolean z = a.c;
            if (!a.b) {
                this.a = a.a;
                String str3 = this.a;
                JniInterface.insetTextToArray(i, str3, str3.length());
                StringBuilder sb2 = new StringBuilder();
                sb2.append("curPosFromJS mKey: ");
                sb2.append(this.a);
                f.a(str2, sb2.toString());
            } else if (Boolean.valueOf(JniInterface.BackSpaceChar(a.b, i)).booleanValue()) {
                a.b = false;
            }
        } else {
            throw new RuntimeException("position is illegal.");
        }
    }

    public void isPasswordEdit(String str) {
        int i;
        StringBuilder sb = new StringBuilder();
        sb.append("-->is pswd edit, flag: ");
        sb.append(str);
        String str2 = "openSDK_LOG.SecureJsInterface";
        f.c(str2, sb.toString());
        try {
            i = Integer.parseInt(str);
        } catch (Exception e) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("-->is pswd edit exception: ");
            sb2.append(e.getMessage());
            f.e(str2, sb2.toString());
            i = -1;
        }
        if (i != 0 && i != 1) {
            throw new RuntimeException("is pswd edit flag is illegal.");
        } else if (i == 0) {
            isPWDEdit = false;
        } else if (i == 1) {
            isPWDEdit = true;
        }
    }

    public void clearAllEdit() {
        String str = "openSDK_LOG.SecureJsInterface";
        f.c(str, "-->clear all edit.");
        try {
            JniInterface.clearAllPWD();
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append("-->clear all edit exception: ");
            sb.append(e.getMessage());
            f.e(str, sb.toString());
            throw new RuntimeException(e);
        }
    }

    public String getMD5FromNative() {
        String str = "openSDK_LOG.SecureJsInterface";
        f.c(str, "-->get md5 form native");
        try {
            String pWDKeyToMD5 = JniInterface.getPWDKeyToMD5(null);
            StringBuilder sb = new StringBuilder();
            sb.append("-->getMD5FromNative, MD5= ");
            sb.append(pWDKeyToMD5);
            f.a(str, sb.toString());
            return pWDKeyToMD5;
        } catch (Exception e) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("-->get md5 form native exception: ");
            sb2.append(e.getMessage());
            f.e(str, sb2.toString());
            throw new RuntimeException(e);
        }
    }
}
