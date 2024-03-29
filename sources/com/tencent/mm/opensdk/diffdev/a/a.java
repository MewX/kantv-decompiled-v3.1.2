package com.tencent.mm.opensdk.diffdev.a;

import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.tencent.mm.opensdk.diffdev.IDiffDevOAuth;
import com.tencent.mm.opensdk.diffdev.OAuthListener;
import java.util.ArrayList;
import java.util.List;

public final class a implements IDiffDevOAuth {
    /* access modifiers changed from: private */
    public List<OAuthListener> ad = new ArrayList();
    /* access modifiers changed from: private */
    public d ae;
    private OAuthListener af = new b(this);
    /* access modifiers changed from: private */
    public Handler handler = null;

    public final void addListener(OAuthListener oAuthListener) {
        if (!this.ad.contains(oAuthListener)) {
            this.ad.add(oAuthListener);
        }
    }

    public final boolean auth(String str, String str2, String str3, String str4, String str5, OAuthListener oAuthListener) {
        String str6 = str;
        StringBuilder sb = new StringBuilder("start auth, appId = ");
        sb.append(str);
        String str7 = "MicroMsg.SDK.DiffDevOAuth";
        Log.i(str7, sb.toString());
        if (str6 == null || str.length() <= 0 || str2 == null || str2.length() <= 0) {
            Log.d(str7, String.format("auth fail, invalid argument, appId = %s, scope = %s", new Object[]{str6, str2}));
            return false;
        }
        if (this.handler == null) {
            this.handler = new Handler(Looper.getMainLooper());
        }
        addListener(oAuthListener);
        if (this.ae != null) {
            Log.d(str7, "auth, already running, no need to start auth again");
            return true;
        }
        d dVar = new d(str, str2, str3, str4, str5, this.af);
        this.ae = dVar;
        d dVar2 = this.ae;
        if (VERSION.SDK_INT >= 11) {
            dVar2.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        } else {
            dVar2.execute(new Void[0]);
        }
        return true;
    }

    public final void detach() {
        Log.i("MicroMsg.SDK.DiffDevOAuth", "detach");
        this.ad.clear();
        stopAuth();
    }

    public final void removeAllListeners() {
        this.ad.clear();
    }

    public final void removeListener(OAuthListener oAuthListener) {
        this.ad.remove(oAuthListener);
    }

    public final boolean stopAuth() {
        boolean z;
        String str = "MicroMsg.SDK.DiffDevOAuth";
        Log.i(str, "stopAuth");
        try {
            z = this.ae == null ? true : this.ae.q();
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder("stopAuth fail, ex = ");
            sb.append(e.getMessage());
            Log.w(str, sb.toString());
            z = false;
        }
        this.ae = null;
        return z;
    }
}
