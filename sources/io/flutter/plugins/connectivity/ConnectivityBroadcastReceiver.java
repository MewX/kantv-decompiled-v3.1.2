package io.flutter.plugins.connectivity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import io.flutter.plugin.common.EventChannel.EventSink;
import io.flutter.plugin.common.EventChannel.StreamHandler;

class ConnectivityBroadcastReceiver extends BroadcastReceiver implements StreamHandler {
    private Connectivity connectivity;
    private Context context;
    private EventSink events;

    ConnectivityBroadcastReceiver(Context context2, Connectivity connectivity2) {
        this.context = context2;
        this.connectivity = connectivity2;
    }

    public void onListen(Object obj, EventSink eventSink) {
        this.events = eventSink;
        this.context.registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    public void onCancel(Object obj) {
        this.context.unregisterReceiver(this);
    }

    public void onReceive(Context context2, Intent intent) {
        EventSink eventSink = this.events;
        if (eventSink != null) {
            eventSink.success(this.connectivity.getNetworkType());
        }
    }
}
