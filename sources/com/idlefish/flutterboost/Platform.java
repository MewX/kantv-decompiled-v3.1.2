package com.idlefish.flutterboost;

import android.app.Application;
import android.content.Context;
import com.idlefish.flutterboost.NewFlutterBoost.BoostLifecycleListener;
import com.idlefish.flutterboost.interfaces.IContainerRecord;
import io.flutter.embedding.android.FlutterView.RenderMode;
import java.util.Map;

public abstract class Platform {
    public BoostLifecycleListener lifecycleListener;

    public abstract Application getApplication();

    public abstract String initialRoute();

    public abstract boolean isDebug();

    public abstract void openContainer(Context context, String str, Map<String, Object> map, int i, Map<String, Object> map2);

    public abstract RenderMode renderMode();

    public abstract int whenEngineDestroy();

    public abstract int whenEngineStart();

    public void closeContainer(IContainerRecord iContainerRecord, Map<String, Object> map, Map<String, Object> map2) {
        if (iContainerRecord != null) {
            iContainerRecord.getContainer().finishContainer(map);
        }
    }
}
