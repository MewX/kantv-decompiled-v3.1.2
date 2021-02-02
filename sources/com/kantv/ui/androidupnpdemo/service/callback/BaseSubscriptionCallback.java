package com.kantv.ui.androidupnpdemo.service.callback;

import android.content.Context;
import android.util.Log;
import org.fourthline.cling.controlpoint.SubscriptionCallback;
import org.fourthline.cling.model.gena.CancelReason;
import org.fourthline.cling.model.gena.GENASubscription;
import org.fourthline.cling.model.message.UpnpResponse;
import org.fourthline.cling.model.meta.Service;

public abstract class BaseSubscriptionCallback extends SubscriptionCallback {
    private static final int SUBSCRIPTION_DURATION_SECONDS = 10800;
    private static final String TAG = "BaseSubscriptionCallback";
    protected Context mContext;

    /* access modifiers changed from: protected */
    public void established(GENASubscription gENASubscription) {
    }

    /* access modifiers changed from: protected */
    public void eventsMissed(GENASubscription gENASubscription, int i) {
    }

    protected BaseSubscriptionCallback(Service service, Context context) {
        super(service, SUBSCRIPTION_DURATION_SECONDS);
        this.mContext = context;
    }

    /* access modifiers changed from: protected */
    public void failed(GENASubscription gENASubscription, UpnpResponse upnpResponse, Exception exc, String str) {
        Log.e(TAG, "AVTransportSubscriptionCallback failed.");
    }

    /* access modifiers changed from: protected */
    public void ended(GENASubscription gENASubscription, CancelReason cancelReason, UpnpResponse upnpResponse) {
        this.mContext = null;
        Log.e(TAG, "ended");
    }
}
