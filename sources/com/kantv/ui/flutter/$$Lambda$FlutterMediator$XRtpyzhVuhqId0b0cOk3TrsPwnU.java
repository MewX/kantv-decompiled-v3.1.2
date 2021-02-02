package com.kantv.ui.flutter;

import android.content.Context;
import com.idlefish.flutterboost.Utils;
import com.idlefish.flutterboost.interfaces.INativeRouter;
import java.util.Map;

/* renamed from: com.kantv.ui.flutter.-$$Lambda$FlutterMediator$XRtpyzhVuhqId0b0cOk3TrsPwnU reason: invalid class name */
/* compiled from: lambda */
public final /* synthetic */ class $$Lambda$FlutterMediator$XRtpyzhVuhqId0b0cOk3TrsPwnU implements INativeRouter {
    public static final /* synthetic */ $$Lambda$FlutterMediator$XRtpyzhVuhqId0b0cOk3TrsPwnU INSTANCE = new $$Lambda$FlutterMediator$XRtpyzhVuhqId0b0cOk3TrsPwnU();

    private /* synthetic */ $$Lambda$FlutterMediator$XRtpyzhVuhqId0b0cOk3TrsPwnU() {
    }

    public final void openContainer(Context context, String str, Map map, int i, Map map2) {
        PageRouter.openPageByUrl(context, Utils.assembleUrl(str, map), map);
    }
}
