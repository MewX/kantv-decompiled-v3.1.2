package com.idlefish.flutterboost.interfaces;

import android.app.Activity;
import com.idlefish.flutterboost.containers.FlutterSplashView;
import java.util.Map;

public interface IFlutterViewContainer {
    public static final String RESULT_KEY = "_flutter_result_";

    void finishContainer(Map<String, Object> map);

    FlutterSplashView getBoostFlutterView();

    String getContainerUrl();

    Map getContainerUrlParams();

    Activity getContextActivity();

    void onContainerHidden();

    void onContainerShown();
}
