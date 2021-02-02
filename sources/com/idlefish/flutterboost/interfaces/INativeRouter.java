package com.idlefish.flutterboost.interfaces;

import android.content.Context;
import java.util.Map;

public interface INativeRouter {
    void openContainer(Context context, String str, Map<String, Object> map, int i, Map<String, Object> map2);
}
