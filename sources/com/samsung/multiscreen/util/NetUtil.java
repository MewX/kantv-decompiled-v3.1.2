package com.samsung.multiscreen.util;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.net.wifi.WifiManager.MulticastLock;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.nio.ByteOrder;

public class NetUtil {
    private static final String TAG = "NetUtil";

    public static InetAddress getDeviceIpAddress(Context context) {
        try {
            return InetAddress.getByName(getWifiIpAddress(context));
        } catch (UnknownHostException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getWifiIpAddress(Context context) {
        String str = null;
        if (context == null) {
            return null;
        }
        int ipAddress = ((WifiManager) context.getApplicationContext().getSystemService("wifi")).getConnectionInfo().getIpAddress();
        if (ByteOrder.nativeOrder().equals(ByteOrder.LITTLE_ENDIAN)) {
            ipAddress = Integer.reverseBytes(ipAddress);
        }
        try {
            str = InetAddress.getByAddress(BigInteger.valueOf((long) ipAddress).toByteArray()).getHostAddress();
        } catch (UnknownHostException e) {
            e.printStackTrace();
        }
        return str;
    }

    public static MulticastLock acquireMulticastLock(Context context, String str) {
        MulticastLock createMulticastLock = ((WifiManager) context.getApplicationContext().getSystemService("wifi")).createMulticastLock(str);
        createMulticastLock.setReferenceCounted(true);
        createMulticastLock.acquire();
        return createMulticastLock;
    }

    public static void releaseMulticastLock(MulticastLock multicastLock) {
        if (multicastLock != null && multicastLock.isHeld()) {
            multicastLock.release();
        }
    }
}
