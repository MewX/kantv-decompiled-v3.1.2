package com.kantv.android.screen.androidupnpdemo.control;

import android.content.Context;
import com.kantv.android.screen.androidupnpdemo.entity.IDevice;

public interface ISubscriptionControl<T> {
    void destroy();

    void registerAVTransport(IDevice<T> iDevice, Context context);

    void registerRenderingControl(IDevice<T> iDevice, Context context);
}
