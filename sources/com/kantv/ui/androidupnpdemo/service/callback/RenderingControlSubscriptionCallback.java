package com.kantv.ui.androidupnpdemo.service.callback;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.kantv.ui.androidupnpdemo.util.Utils;
import java.util.Map;
import org.fourthline.cling.model.gena.GENASubscription;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.model.state.StateVariableValue;
import org.fourthline.cling.support.lastchange.LastChange;
import org.fourthline.cling.support.lastchange.LastChangeParser;
import org.fourthline.cling.support.renderingcontrol.lastchange.ChannelVolume;
import org.fourthline.cling.support.renderingcontrol.lastchange.RenderingControlLastChangeParser;
import org.fourthline.cling.support.renderingcontrol.lastchange.RenderingControlVariable.Volume;

public class RenderingControlSubscriptionCallback extends BaseSubscriptionCallback {
    private static final String TAG = "RenderingControlSubscriptionCallback";

    public RenderingControlSubscriptionCallback(Service service, Context context) {
        super(service, context);
    }

    /* access modifiers changed from: protected */
    public void eventReceived(GENASubscription gENASubscription) {
        Map currentValues = gENASubscription.getCurrentValues();
        if (!Utils.isNull(currentValues) && !Utils.isNull(this.mContext)) {
            String str = "LastChange";
            if (currentValues.containsKey(str)) {
                String stateVariableValue = ((StateVariableValue) currentValues.get(str)).toString();
                String str2 = TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("LastChange:");
                sb.append(stateVariableValue);
                Log.i(str2, sb.toString());
                try {
                    LastChange lastChange = new LastChange((LastChangeParser) new RenderingControlLastChangeParser(), stateVariableValue);
                    if (lastChange.getEventedValue(0, Volume.class) != null) {
                        int intValue = ((ChannelVolume) ((Volume) lastChange.getEventedValue(0, Volume.class)).getValue()).getVolume().intValue();
                        String str3 = TAG;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("onVolumeChange volume: ");
                        sb2.append(intValue);
                        Log.e(str3, sb2.toString());
                        Intent intent = new Intent("com.zane.androidupnpdemo.action.volume_callback");
                        intent.putExtra("com.zane.androidupnpdemo.action.extra_volume", intValue);
                        this.mContext.sendBroadcast(intent);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
