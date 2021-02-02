package com.kantv.ui.androidupnpdemo.service.callback;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.kantv.ui.androidupnpdemo.Config;
import com.kantv.ui.androidupnpdemo.util.Utils;
import java.util.Map;
import org.eclipse.jetty.util.component.AbstractLifeCycle;
import org.fourthline.cling.model.gena.GENASubscription;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.support.avtransport.lastchange.AVTransportLastChangeParser;
import org.fourthline.cling.support.avtransport.lastchange.AVTransportVariable.RelativeTimePosition;
import org.fourthline.cling.support.avtransport.lastchange.AVTransportVariable.TransportState;
import org.fourthline.cling.support.lastchange.LastChange;
import org.fourthline.cling.support.lastchange.LastChangeParser;

public class AVTransportSubscriptionCallback extends BaseSubscriptionCallback {
    private static final String TAG = "AVTransportSubscriptionCallback";

    public AVTransportSubscriptionCallback(Service service, Context context) {
        super(service, context);
    }

    /* access modifiers changed from: protected */
    public void eventReceived(GENASubscription gENASubscription) {
        if (!Utils.isNull(this.mContext)) {
            Map currentValues = gENASubscription.getCurrentValues();
            if (currentValues != null) {
                String str = "LastChange";
                if (currentValues.containsKey(str)) {
                    String obj = currentValues.get(str).toString();
                    String str2 = TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("LastChange:");
                    sb.append(obj);
                    Log.i(str2, sb.toString());
                    doAVTransportChange(obj);
                }
            }
        }
    }

    private void doAVTransportChange(String str) {
        try {
            LastChange lastChange = new LastChange((LastChangeParser) new AVTransportLastChangeParser(), str);
            TransportState transportState = (TransportState) lastChange.getEventedValue(0, TransportState.class);
            if (transportState != null) {
                org.fourthline.cling.support.model.TransportState transportState2 = (org.fourthline.cling.support.model.TransportState) transportState.getValue();
                if (transportState2 == org.fourthline.cling.support.model.TransportState.PLAYING) {
                    Log.e(TAG, "PLAYING");
                    this.mContext.sendBroadcast(new Intent("com.zane.androidupnpdemo.action.playing"));
                    return;
                } else if (transportState2 == org.fourthline.cling.support.model.TransportState.PAUSED_PLAYBACK) {
                    Log.e(TAG, "PAUSED_PLAYBACK");
                    this.mContext.sendBroadcast(new Intent("com.zane.androidupnpdemo.action.paused_playback"));
                    return;
                } else if (transportState2 == org.fourthline.cling.support.model.TransportState.STOPPED) {
                    Log.e(TAG, AbstractLifeCycle.STOPPED);
                    this.mContext.sendBroadcast(new Intent("com.zane.androidupnpdemo.action.stopped"));
                    return;
                } else if (transportState2 == org.fourthline.cling.support.model.TransportState.TRANSITIONING) {
                    Log.e(TAG, "BUFFER");
                    this.mContext.sendBroadcast(new Intent("com.zane.androidupnpdemo.action.transitioning"));
                    return;
                }
            }
            if (Utils.isNotNull((RelativeTimePosition) lastChange.getEventedValue(0, RelativeTimePosition.class))) {
                String str2 = (String) ((RelativeTimePosition) lastChange.getEventedValue(0, RelativeTimePosition.class)).getValue();
                int intTime = Utils.getIntTime(str2);
                String str3 = TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("position: ");
                sb.append(str2);
                sb.append(", intTime: ");
                sb.append(intTime);
                Log.e(str3, sb.toString());
                Config.getInstance().setHasRelTimePosCallback(true);
                Intent intent = new Intent("com.zane.androidupnpdemo.action.position_callback");
                intent.putExtra("com.zane.androidupnpdemo.action.extra_position", intTime);
                this.mContext.sendBroadcast(intent);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
