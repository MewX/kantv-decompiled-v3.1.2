package org.fourthline.cling;

import com.google.android.gms.cast.framework.media.NotificationOptions;
import java.io.PrintStream;
import org.fourthline.cling.model.message.header.STAllHeader;
import org.fourthline.cling.model.message.header.UpnpHeader;
import org.fourthline.cling.model.meta.LocalDevice;
import org.fourthline.cling.model.meta.RemoteDevice;
import org.fourthline.cling.registry.Registry;
import org.fourthline.cling.registry.RegistryListener;

public class Main {
    public static void main(String[] strArr) throws Exception {
        AnonymousClass1 r3 = new RegistryListener() {
            public void remoteDeviceDiscoveryStarted(Registry registry, RemoteDevice remoteDevice) {
                PrintStream printStream = System.out;
                StringBuilder sb = new StringBuilder();
                sb.append("Discovery started: ");
                sb.append(remoteDevice.getDisplayString());
                printStream.println(sb.toString());
            }

            public void remoteDeviceDiscoveryFailed(Registry registry, RemoteDevice remoteDevice, Exception exc) {
                PrintStream printStream = System.out;
                StringBuilder sb = new StringBuilder();
                sb.append("Discovery failed: ");
                sb.append(remoteDevice.getDisplayString());
                sb.append(" => ");
                sb.append(exc);
                printStream.println(sb.toString());
            }

            public void remoteDeviceAdded(Registry registry, RemoteDevice remoteDevice) {
                PrintStream printStream = System.out;
                StringBuilder sb = new StringBuilder();
                sb.append("Remote device available: ");
                sb.append(remoteDevice.getDisplayString());
                printStream.println(sb.toString());
            }

            public void remoteDeviceUpdated(Registry registry, RemoteDevice remoteDevice) {
                PrintStream printStream = System.out;
                StringBuilder sb = new StringBuilder();
                sb.append("Remote device updated: ");
                sb.append(remoteDevice.getDisplayString());
                printStream.println(sb.toString());
            }

            public void remoteDeviceRemoved(Registry registry, RemoteDevice remoteDevice) {
                PrintStream printStream = System.out;
                StringBuilder sb = new StringBuilder();
                sb.append("Remote device removed: ");
                sb.append(remoteDevice.getDisplayString());
                printStream.println(sb.toString());
            }

            public void localDeviceAdded(Registry registry, LocalDevice localDevice) {
                PrintStream printStream = System.out;
                StringBuilder sb = new StringBuilder();
                sb.append("Local device added: ");
                sb.append(localDevice.getDisplayString());
                printStream.println(sb.toString());
            }

            public void localDeviceRemoved(Registry registry, LocalDevice localDevice) {
                PrintStream printStream = System.out;
                StringBuilder sb = new StringBuilder();
                sb.append("Local device removed: ");
                sb.append(localDevice.getDisplayString());
                printStream.println(sb.toString());
            }

            public void beforeShutdown(Registry registry) {
                PrintStream printStream = System.out;
                StringBuilder sb = new StringBuilder();
                sb.append("Before shutdown, the registry has devices: ");
                sb.append(registry.getDevices().size());
                printStream.println(sb.toString());
            }

            public void afterShutdown() {
                System.out.println("Shutdown of registry complete!");
            }
        };
        System.out.println("Starting Cling...");
        UpnpServiceImpl upnpServiceImpl = new UpnpServiceImpl(r3);
        System.out.println("Sending SEARCH message to all devices...");
        upnpServiceImpl.getControlPoint().search((UpnpHeader) new STAllHeader());
        System.out.println("Waiting 10 seconds before shutting down...");
        Thread.sleep(NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS);
        System.out.println("Stopping Cling...");
        upnpServiceImpl.shutdown();
    }
}
