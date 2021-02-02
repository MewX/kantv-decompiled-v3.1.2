package io.flutter.plugins.connectivity;

import io.flutter.plugin.common.MethodChannel.MethodCallHandler;

class ConnectivityMethodChannelHandler implements MethodCallHandler {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private Connectivity connectivity;

    ConnectivityMethodChannelHandler(Connectivity connectivity2) {
        this.connectivity = connectivity2;
    }

    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onMethodCall(io.flutter.plugin.common.MethodCall r5, io.flutter.plugin.common.MethodChannel.Result r6) {
        /*
            r4 = this;
            java.lang.String r5 = r5.method
            int r0 = r5.hashCode()
            r1 = 3
            r2 = 2
            r3 = 1
            switch(r0) {
                case -1340798144: goto L_0x002b;
                case 94627080: goto L_0x0021;
                case 1373405384: goto L_0x0017;
                case 1756715352: goto L_0x000d;
                default: goto L_0x000c;
            }
        L_0x000c:
            goto L_0x0035
        L_0x000d:
            java.lang.String r0 = "wifiIPAddress"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L_0x0035
            r5 = 3
            goto L_0x0036
        L_0x0017:
            java.lang.String r0 = "wifiBSSID"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L_0x0035
            r5 = 2
            goto L_0x0036
        L_0x0021:
            java.lang.String r0 = "check"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L_0x0035
            r5 = 0
            goto L_0x0036
        L_0x002b:
            java.lang.String r0 = "wifiName"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L_0x0035
            r5 = 1
            goto L_0x0036
        L_0x0035:
            r5 = -1
        L_0x0036:
            if (r5 == 0) goto L_0x0060
            if (r5 == r3) goto L_0x0056
            if (r5 == r2) goto L_0x004c
            if (r5 == r1) goto L_0x0042
            r6.notImplemented()
            goto L_0x0069
        L_0x0042:
            io.flutter.plugins.connectivity.Connectivity r5 = r4.connectivity
            java.lang.String r5 = r5.getWifiIPAddress()
            r6.success(r5)
            goto L_0x0069
        L_0x004c:
            io.flutter.plugins.connectivity.Connectivity r5 = r4.connectivity
            java.lang.String r5 = r5.getWifiBSSID()
            r6.success(r5)
            goto L_0x0069
        L_0x0056:
            io.flutter.plugins.connectivity.Connectivity r5 = r4.connectivity
            java.lang.String r5 = r5.getWifiName()
            r6.success(r5)
            goto L_0x0069
        L_0x0060:
            io.flutter.plugins.connectivity.Connectivity r5 = r4.connectivity
            java.lang.String r5 = r5.getNetworkType()
            r6.success(r5)
        L_0x0069:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.flutter.plugins.connectivity.ConnectivityMethodChannelHandler.onMethodCall(io.flutter.plugin.common.MethodCall, io.flutter.plugin.common.MethodChannel$Result):void");
    }
}
