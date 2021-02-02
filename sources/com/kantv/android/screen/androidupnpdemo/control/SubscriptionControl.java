package com.kantv.android.screen.androidupnpdemo.control;

import android.content.Context;
import androidx.annotation.NonNull;
import com.kantv.android.screen.androidupnpdemo.entity.IDevice;
import com.kantv.android.screen.androidupnpdemo.service.callback.AVTransportSubscriptionCallback;
import com.kantv.android.screen.androidupnpdemo.service.callback.RenderingControlSubscriptionCallback;
import com.kantv.android.screen.androidupnpdemo.service.manager.ClingManager;
import com.kantv.android.screen.androidupnpdemo.util.ClingUtils;
import com.kantv.android.screen.androidupnpdemo.util.Utils;
import org.fourthline.cling.controlpoint.ControlPoint;
import org.fourthline.cling.controlpoint.SubscriptionCallback;
import org.fourthline.cling.model.meta.Device;

public class SubscriptionControl implements ISubscriptionControl<Device> {
    private AVTransportSubscriptionCallback mAVTransportSubscriptionCallback;
    private RenderingControlSubscriptionCallback mRenderingControlSubscriptionCallback;

    public void registerAVTransport(@NonNull IDevice<Device> iDevice, @NonNull Context context) {
        if (Utils.isNotNull(this.mAVTransportSubscriptionCallback)) {
            this.mAVTransportSubscriptionCallback.end();
        }
        ControlPoint controlPoint = ClingUtils.getControlPoint();
        if (!Utils.isNull(controlPoint)) {
            this.mAVTransportSubscriptionCallback = new AVTransportSubscriptionCallback(((Device) iDevice.getDevice()).findService(ClingManager.AV_TRANSPORT_SERVICE), context);
            controlPoint.execute((SubscriptionCallback) this.mAVTransportSubscriptionCallback);
        }
    }

    public void registerRenderingControl(@NonNull IDevice<Device> iDevice, @NonNull Context context) {
        if (Utils.isNotNull(this.mRenderingControlSubscriptionCallback)) {
            this.mRenderingControlSubscriptionCallback.end();
        }
        ControlPoint controlPoint = ClingUtils.getControlPoint();
        if (!Utils.isNull(controlPoint)) {
            this.mRenderingControlSubscriptionCallback = new RenderingControlSubscriptionCallback(((Device) iDevice.getDevice()).findService(ClingManager.RENDERING_CONTROL_SERVICE), context);
            controlPoint.execute((SubscriptionCallback) this.mRenderingControlSubscriptionCallback);
        }
    }

    public void destroy() {
        if (Utils.isNotNull(this.mAVTransportSubscriptionCallback)) {
            this.mAVTransportSubscriptionCallback.end();
        }
        if (Utils.isNotNull(this.mRenderingControlSubscriptionCallback)) {
            this.mRenderingControlSubscriptionCallback.end();
        }
    }
}
