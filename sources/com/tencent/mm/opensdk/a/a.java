package com.tencent.mm.opensdk.a;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.google.android.exoplayer2.C;
import com.tencent.mm.opensdk.a.a.b;
import com.tencent.mm.opensdk.b.d;
import com.tencent.mm.opensdk.constants.Build;
import com.tencent.mm.opensdk.constants.ConstantsAPI;

public final class a {

    /* renamed from: com.tencent.mm.opensdk.a.a$a reason: collision with other inner class name */
    public static class C0007a {
        public String W;
        public String X;
        public String Y;
        public Bundle Z;
        public int flags = -1;

        public final String toString() {
            StringBuilder sb = new StringBuilder("targetPkgName:");
            sb.append(this.W);
            sb.append(", targetClassName:");
            sb.append(this.X);
            sb.append(", content:");
            sb.append(this.Y);
            sb.append(", flags:");
            sb.append(this.flags);
            sb.append(", bundle:");
            sb.append(this.Z);
            return sb.toString();
        }
    }

    public static boolean a(Context context, C0007a aVar) {
        String sb;
        String str = "MicroMsg.SDK.MMessageAct";
        if (context == null) {
            sb = "send fail, invalid argument";
        } else if (d.h(aVar.W)) {
            StringBuilder sb2 = new StringBuilder("send fail, invalid targetPkgName, targetPkgName = ");
            sb2.append(aVar.W);
            sb = sb2.toString();
        } else {
            if (d.h(aVar.X)) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(aVar.W);
                sb3.append(".wxapi.WXEntryActivity");
                aVar.X = sb3.toString();
            }
            StringBuilder sb4 = new StringBuilder("send, targetPkgName = ");
            sb4.append(aVar.W);
            sb4.append(", targetClassName = ");
            sb4.append(aVar.X);
            Log.d(str, sb4.toString());
            Intent intent = new Intent();
            intent.setClassName(aVar.W, aVar.X);
            if (aVar.Z != null) {
                intent.putExtras(aVar.Z);
            }
            String packageName = context.getPackageName();
            intent.putExtra(ConstantsAPI.SDK_VERSION, Build.SDK_INT);
            intent.putExtra(ConstantsAPI.APP_PACKAGE, packageName);
            intent.putExtra(ConstantsAPI.CONTENT, aVar.Y);
            intent.putExtra(ConstantsAPI.CHECK_SUM, b.a(aVar.Y, Build.SDK_INT, packageName));
            if (aVar.flags == -1) {
                intent.addFlags(C.ENCODING_PCM_MU_LAW).addFlags(134217728);
            } else {
                intent.setFlags(aVar.flags);
            }
            try {
                context.startActivity(intent);
                StringBuilder sb5 = new StringBuilder("send mm message, intent=");
                sb5.append(intent);
                Log.d(str, sb5.toString());
                return true;
            } catch (Exception e) {
                StringBuilder sb6 = new StringBuilder("send fail, ex = ");
                sb6.append(e.getMessage());
                sb = sb6.toString();
            }
        }
        Log.e(str, sb);
        return false;
    }
}
