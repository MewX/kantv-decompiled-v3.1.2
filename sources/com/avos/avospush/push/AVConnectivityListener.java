package com.avos.avospush.push;

import android.content.Context;

public interface AVConnectivityListener {
    void onMobile(Context context);

    void onNotConnected(Context context);

    void onWifi(Context context);
}
