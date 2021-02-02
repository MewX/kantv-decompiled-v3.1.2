package org.fourthline.cling.android;

import java.lang.reflect.Field;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.fourthline.cling.transport.impl.NetworkAddressFactoryImpl;
import org.fourthline.cling.transport.spi.InitializationException;

public class AndroidNetworkAddressFactory extends NetworkAddressFactoryImpl {
    private static final Logger log = Logger.getLogger(AndroidUpnpServiceConfiguration.class.getName());

    /* access modifiers changed from: protected */
    public boolean requiresNetworkInterface() {
        return false;
    }

    public AndroidNetworkAddressFactory(int i) {
        super(i);
    }

    /* access modifiers changed from: protected */
    public boolean isUsableAddress(NetworkInterface networkInterface, InetAddress inetAddress) {
        Object obj;
        Field field;
        String str = "hostName";
        boolean isUsableAddress = super.isUsableAddress(networkInterface, inetAddress);
        if (isUsableAddress) {
            String hostAddress = inetAddress.getHostAddress();
            try {
                Field declaredField = InetAddress.class.getDeclaredField("holder");
                declaredField.setAccessible(true);
                Object obj2 = declaredField.get(inetAddress);
                field = obj2.getClass().getDeclaredField(str);
                obj = obj2;
            } catch (NoSuchFieldException unused) {
                try {
                    field = InetAddress.class.getDeclaredField(str);
                    obj = inetAddress;
                } catch (Exception e) {
                    Logger logger = log;
                    Level level = Level.SEVERE;
                    StringBuilder sb = new StringBuilder();
                    sb.append("Failed injecting hostName to work around Android InetAddress DNS bug: ");
                    sb.append(inetAddress);
                    logger.log(level, sb.toString(), e);
                    return false;
                }
            }
            if (field == null || obj == 0 || hostAddress == null) {
                return false;
            }
            field.setAccessible(true);
            field.set(obj, hostAddress);
        }
        return isUsableAddress;
    }

    public InetAddress getLocalAddress(NetworkInterface networkInterface, boolean z, InetAddress inetAddress) {
        for (InetAddress inetAddress2 : getInetAddresses(networkInterface)) {
            if (z && (inetAddress2 instanceof Inet6Address)) {
                return inetAddress2;
            }
            if (!z && (inetAddress2 instanceof Inet4Address)) {
                return inetAddress2;
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Can't find any IPv4 or IPv6 address on interface: ");
        sb.append(networkInterface.getDisplayName());
        throw new IllegalStateException(sb.toString());
    }

    /* access modifiers changed from: protected */
    public void discoverNetworkInterfaces() throws InitializationException {
        try {
            super.discoverNetworkInterfaces();
        } catch (Exception e) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Exception while enumerating network interfaces, trying once more: ");
            sb.append(e);
            logger.warning(sb.toString());
            super.discoverNetworkInterfaces();
        }
    }
}
