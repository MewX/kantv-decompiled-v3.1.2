package com.tencent.mm.opensdk.diffdev.a;

import android.util.Log;
import com.tencent.mm.opensdk.diffdev.OAuthErrCode;
import com.tencent.mm.opensdk.diffdev.OAuthListener;
import java.util.ArrayList;

final class b implements OAuthListener {
    final /* synthetic */ a ag;

    b(a aVar) {
        this.ag = aVar;
    }

    public final void onAuthFinish(OAuthErrCode oAuthErrCode, String str) {
        Log.d("MicroMsg.SDK.ListenerWrapper", String.format("onAuthFinish, errCode = %s, authCode = %s", new Object[]{oAuthErrCode.toString(), str}));
        this.ag.ae = null;
        ArrayList<OAuthListener> arrayList = new ArrayList<>();
        arrayList.addAll(this.ag.ad);
        for (OAuthListener onAuthFinish : arrayList) {
            onAuthFinish.onAuthFinish(oAuthErrCode, str);
        }
    }

    public final void onAuthGotQrcode(String str, byte[] bArr) {
        StringBuilder sb = new StringBuilder("onAuthGotQrcode, qrcodeImgPath = ");
        sb.append(str);
        Log.d("MicroMsg.SDK.ListenerWrapper", sb.toString());
        ArrayList<OAuthListener> arrayList = new ArrayList<>();
        arrayList.addAll(this.ag.ad);
        for (OAuthListener onAuthGotQrcode : arrayList) {
            onAuthGotQrcode.onAuthGotQrcode(str, bArr);
        }
    }

    public final void onQrcodeScanned() {
        Log.d("MicroMsg.SDK.ListenerWrapper", "onQrcodeScanned");
        if (this.ag.handler != null) {
            this.ag.handler.post(new c(this));
        }
    }
}
