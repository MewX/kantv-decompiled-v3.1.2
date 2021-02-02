package com.tencent.mm.opensdk.a.a;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.tencent.mm.opensdk.b.d;
import com.tencent.mm.opensdk.constants.Build;
import com.tencent.mm.opensdk.constants.ConstantsAPI;

public final class a {

    /* renamed from: com.tencent.mm.opensdk.a.a.a$a reason: collision with other inner class name */
    public static class C0008a {
        public String Y;
        public Bundle Z;
        public String aa;
        public String ab;
        public long ac;
    }

    public static boolean a(Context context, C0008a aVar) {
        String str;
        String str2 = "MicroMsg.SDK.MMessage";
        if (context == null) {
            str = "send fail, invalid argument";
        } else if (d.h(aVar.ab)) {
            str = "send fail, action is null";
        } else {
            String str3 = null;
            if (!d.h(aVar.aa)) {
                StringBuilder sb = new StringBuilder();
                sb.append(aVar.aa);
                sb.append(".permission.MM_MESSAGE");
                str3 = sb.toString();
            }
            Intent intent = new Intent(aVar.ab);
            if (aVar.Z != null) {
                intent.putExtras(aVar.Z);
            }
            String packageName = context.getPackageName();
            intent.putExtra(ConstantsAPI.SDK_VERSION, Build.SDK_INT);
            intent.putExtra(ConstantsAPI.APP_PACKAGE, packageName);
            intent.putExtra(ConstantsAPI.CONTENT, aVar.Y);
            intent.putExtra(ConstantsAPI.APP_SUPORT_CONTENT_TYPE, aVar.ac);
            intent.putExtra(ConstantsAPI.CHECK_SUM, b.a(aVar.Y, Build.SDK_INT, packageName));
            context.sendBroadcast(intent, str3);
            StringBuilder sb2 = new StringBuilder("send mm message, intent=");
            sb2.append(intent);
            sb2.append(", perm=");
            sb2.append(str3);
            Log.d(str2, sb2.toString());
            return true;
        }
        Log.e(str2, str);
        return false;
    }
}
