package com.tencent.mm.opensdk.diffdev.a;

import com.tencent.mm.opensdk.diffdev.OAuthListener;
import java.util.ArrayList;

final class c implements Runnable {
    final /* synthetic */ b ah;

    c(b bVar) {
        this.ah = bVar;
    }

    public final void run() {
        ArrayList<OAuthListener> arrayList = new ArrayList<>();
        arrayList.addAll(this.ah.ag.ad);
        for (OAuthListener onQrcodeScanned : arrayList) {
            onQrcodeScanned.onQrcodeScanned();
        }
    }
}
