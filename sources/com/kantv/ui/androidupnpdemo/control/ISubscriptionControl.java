package com.kantv.ui.androidupnpdemo.control;

import android.content.Context;
import com.kantv.ui.androidupnpdemo.entity.IDevice;

public interface ISubscriptionControl<T> {
    void destroy();

    void registerAVTransport(IDevice<T> iDevice, Context context);

    void registerRenderingControl(IDevice<T> iDevice, Context context);
}
