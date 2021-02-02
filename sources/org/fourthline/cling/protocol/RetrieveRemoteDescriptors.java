package org.fourthline.cling.protocol;

import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.fourthline.cling.UpnpService;
import org.fourthline.cling.binding.xml.DescriptorBindingException;
import org.fourthline.cling.model.ValidationException;
import org.fourthline.cling.model.message.StreamRequestMessage;
import org.fourthline.cling.model.message.StreamResponseMessage;
import org.fourthline.cling.model.message.UpnpHeaders;
import org.fourthline.cling.model.message.UpnpRequest.Method;
import org.fourthline.cling.model.message.UpnpResponse;
import org.fourthline.cling.model.meta.Icon;
import org.fourthline.cling.model.meta.RemoteDevice;
import org.fourthline.cling.model.meta.RemoteDeviceIdentity;
import org.fourthline.cling.model.meta.RemoteService;
import org.fourthline.cling.model.types.ServiceType;
import org.fourthline.cling.model.types.UDN;
import org.fourthline.cling.transport.RouterException;

public class RetrieveRemoteDescriptors implements Runnable {
    private static final Set<URL> activeRetrievals = new CopyOnWriteArraySet();
    private static final Logger log = Logger.getLogger(RetrieveRemoteDescriptors.class.getName());
    protected List<UDN> errorsAlreadyLogged = new ArrayList();
    private RemoteDevice rd;
    private final UpnpService upnpService;

    public RetrieveRemoteDescriptors(UpnpService upnpService2, RemoteDevice remoteDevice) {
        this.upnpService = upnpService2;
        this.rd = remoteDevice;
    }

    public UpnpService getUpnpService() {
        return this.upnpService;
    }

    public void run() {
        URL descriptorURL = ((RemoteDeviceIdentity) this.rd.getIdentity()).getDescriptorURL();
        if (activeRetrievals.contains(descriptorURL)) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Exiting early, active retrieval for URL already in progress: ");
            sb.append(descriptorURL);
            logger.finer(sb.toString());
        } else if (getUpnpService().getRegistry().getRemoteDevice(((RemoteDeviceIdentity) this.rd.getIdentity()).getUdn(), true) != null) {
            Logger logger2 = log;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Exiting early, already discovered: ");
            sb2.append(descriptorURL);
            logger2.finer(sb2.toString());
        } else {
            try {
                activeRetrievals.add(descriptorURL);
                describe();
            } catch (RouterException e) {
                Logger logger3 = log;
                Level level = Level.WARNING;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Descriptor retrieval failed: ");
                sb3.append(descriptorURL);
                logger3.log(level, sb3.toString(), e);
            } catch (Throwable th) {
                activeRetrievals.remove(descriptorURL);
                throw th;
            }
            activeRetrievals.remove(descriptorURL);
        }
    }

    /* access modifiers changed from: protected */
    public void describe() throws RouterException {
        String str = "Device descriptor retrieval failed: ";
        if (getUpnpService().getRouter() == null) {
            log.warning("Router not yet initialized");
            return;
        }
        try {
            StreamRequestMessage streamRequestMessage = new StreamRequestMessage(Method.GET, ((RemoteDeviceIdentity) this.rd.getIdentity()).getDescriptorURL());
            UpnpHeaders descriptorRetrievalHeaders = getUpnpService().getConfiguration().getDescriptorRetrievalHeaders((RemoteDeviceIdentity) this.rd.getIdentity());
            if (descriptorRetrievalHeaders != null) {
                streamRequestMessage.getHeaders().putAll(descriptorRetrievalHeaders);
            }
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Sending device descriptor retrieval message: ");
            sb.append(streamRequestMessage);
            logger.fine(sb.toString());
            StreamResponseMessage send = getUpnpService().getRouter().send(streamRequestMessage);
            if (send == null) {
                Logger logger2 = log;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Device descriptor retrieval failed, no response: ");
                sb2.append(((RemoteDeviceIdentity) this.rd.getIdentity()).getDescriptorURL());
                logger2.warning(sb2.toString());
            } else if (((UpnpResponse) send.getOperation()).isFailed()) {
                Logger logger3 = log;
                StringBuilder sb3 = new StringBuilder();
                sb3.append(str);
                sb3.append(((RemoteDeviceIdentity) this.rd.getIdentity()).getDescriptorURL());
                sb3.append(", ");
                sb3.append(((UpnpResponse) send.getOperation()).getResponseDetails());
                logger3.warning(sb3.toString());
            } else {
                if (!send.isContentTypeTextUDA()) {
                    Logger logger4 = log;
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("Received device descriptor without or with invalid Content-Type: ");
                    sb4.append(((RemoteDeviceIdentity) this.rd.getIdentity()).getDescriptorURL());
                    logger4.fine(sb4.toString());
                }
                String bodyString = send.getBodyString();
                if (bodyString == null || bodyString.length() == 0) {
                    Logger logger5 = log;
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append("Received empty device descriptor:");
                    sb5.append(((RemoteDeviceIdentity) this.rd.getIdentity()).getDescriptorURL());
                    logger5.warning(sb5.toString());
                    return;
                }
                Logger logger6 = log;
                StringBuilder sb6 = new StringBuilder();
                sb6.append("Received root device descriptor: ");
                sb6.append(send);
                logger6.fine(sb6.toString());
                describe(bodyString);
            }
        } catch (IllegalArgumentException e) {
            Logger logger7 = log;
            StringBuilder sb7 = new StringBuilder();
            sb7.append(str);
            sb7.append(((RemoteDeviceIdentity) this.rd.getIdentity()).getDescriptorURL());
            sb7.append(", possibly invalid URL: ");
            sb7.append(e);
            logger7.warning(sb7.toString());
        }
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x0180  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void describe(java.lang.String r8) throws org.fourthline.cling.transport.RouterException {
        /*
            r7 = this;
            java.lang.String r0 = "Cause was: "
            r1 = 0
            r2 = 0
            org.fourthline.cling.UpnpService r3 = r7.getUpnpService()     // Catch:{ ValidationException -> 0x016a, DescriptorBindingException -> 0x0126, RegistrationException -> 0x00e1 }
            org.fourthline.cling.UpnpServiceConfiguration r3 = r3.getConfiguration()     // Catch:{ ValidationException -> 0x016a, DescriptorBindingException -> 0x0126, RegistrationException -> 0x00e1 }
            org.fourthline.cling.binding.xml.DeviceDescriptorBinder r3 = r3.getDeviceDescriptorBinderUDA10()     // Catch:{ ValidationException -> 0x016a, DescriptorBindingException -> 0x0126, RegistrationException -> 0x00e1 }
            org.fourthline.cling.model.meta.RemoteDevice r4 = r7.rd     // Catch:{ ValidationException -> 0x016a, DescriptorBindingException -> 0x0126, RegistrationException -> 0x00e1 }
            org.fourthline.cling.model.meta.Device r8 = r3.describe(r4, r8)     // Catch:{ ValidationException -> 0x016a, DescriptorBindingException -> 0x0126, RegistrationException -> 0x00e1 }
            org.fourthline.cling.model.meta.RemoteDevice r8 = (org.fourthline.cling.model.meta.RemoteDevice) r8     // Catch:{ ValidationException -> 0x016a, DescriptorBindingException -> 0x0126, RegistrationException -> 0x00e1 }
            java.util.logging.Logger r2 = log     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            r3.<init>()     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            java.lang.String r4 = "Remote device described (without services) notifying listeners: "
            r3.append(r4)     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            r3.append(r8)     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            java.lang.String r3 = r3.toString()     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            r2.fine(r3)     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            org.fourthline.cling.UpnpService r2 = r7.getUpnpService()     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            org.fourthline.cling.registry.Registry r2 = r2.getRegistry()     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            boolean r1 = r2.notifyDiscoveryStart(r8)     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            java.util.logging.Logger r2 = log     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            r3.<init>()     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            java.lang.String r4 = "Hydrating described device's services: "
            r3.append(r4)     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            r3.append(r8)     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            java.lang.String r3 = r3.toString()     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            r2.fine(r3)     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            org.fourthline.cling.model.meta.RemoteDevice r2 = r7.describeServices(r8)     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            if (r2 != 0) goto L_0x00b7
            java.util.List<org.fourthline.cling.model.types.UDN> r2 = r7.errorsAlreadyLogged     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            org.fourthline.cling.model.meta.RemoteDevice r3 = r7.rd     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            org.fourthline.cling.model.meta.DeviceIdentity r3 = r3.getIdentity()     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            org.fourthline.cling.model.meta.RemoteDeviceIdentity r3 = (org.fourthline.cling.model.meta.RemoteDeviceIdentity) r3     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            org.fourthline.cling.model.types.UDN r3 = r3.getUdn()     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            boolean r2 = r2.contains(r3)     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            java.lang.String r3 = "Device service description failed: "
            if (r2 != 0) goto L_0x0093
            java.util.List<org.fourthline.cling.model.types.UDN> r2 = r7.errorsAlreadyLogged     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            org.fourthline.cling.model.meta.RemoteDevice r4 = r7.rd     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            org.fourthline.cling.model.meta.DeviceIdentity r4 = r4.getIdentity()     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            org.fourthline.cling.model.meta.RemoteDeviceIdentity r4 = (org.fourthline.cling.model.meta.RemoteDeviceIdentity) r4     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            org.fourthline.cling.model.types.UDN r4 = r4.getUdn()     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            r2.add(r4)     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            java.util.logging.Logger r2 = log     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            r4.<init>()     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            r4.append(r3)     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            org.fourthline.cling.model.meta.RemoteDevice r5 = r7.rd     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            r4.append(r5)     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            java.lang.String r4 = r4.toString()     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            r2.warning(r4)     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
        L_0x0093:
            if (r1 == 0) goto L_0x00b6
            org.fourthline.cling.UpnpService r2 = r7.getUpnpService()     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            org.fourthline.cling.registry.Registry r2 = r2.getRegistry()     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            org.fourthline.cling.binding.xml.DescriptorBindingException r4 = new org.fourthline.cling.binding.xml.DescriptorBindingException     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            r5.<init>()     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            r5.append(r3)     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            org.fourthline.cling.model.meta.RemoteDevice r3 = r7.rd     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            r5.append(r3)     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            java.lang.String r3 = r5.toString()     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            r4.<init>(r3)     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            r2.notifyDiscoveryFailure(r8, r4)     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
        L_0x00b6:
            return
        L_0x00b7:
            java.util.logging.Logger r3 = log     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            r4.<init>()     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            java.lang.String r5 = "Adding fully hydrated remote device to registry: "
            r4.append(r5)     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            r4.append(r2)     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            java.lang.String r4 = r4.toString()     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            r3.fine(r4)     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            org.fourthline.cling.UpnpService r3 = r7.getUpnpService()     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            org.fourthline.cling.registry.Registry r3 = r3.getRegistry()     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            r3.addDevice(r2)     // Catch:{ ValidationException -> 0x00de, DescriptorBindingException -> 0x00dc, RegistrationException -> 0x00da }
            goto L_0x01d6
        L_0x00da:
            r2 = move-exception
            goto L_0x00e5
        L_0x00dc:
            r2 = move-exception
            goto L_0x012a
        L_0x00de:
            r0 = move-exception
            goto L_0x016c
        L_0x00e1:
            r8 = move-exception
            r6 = r2
            r2 = r8
            r8 = r6
        L_0x00e5:
            java.util.logging.Logger r3 = log
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = "Adding hydrated device to registry failed: "
            r4.append(r5)
            org.fourthline.cling.model.meta.RemoteDevice r5 = r7.rd
            r4.append(r5)
            java.lang.String r4 = r4.toString()
            r3.warning(r4)
            java.util.logging.Logger r3 = log
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            r4.append(r0)
            java.lang.String r0 = r2.toString()
            r4.append(r0)
            java.lang.String r0 = r4.toString()
            r3.warning(r0)
            if (r8 == 0) goto L_0x01d6
            if (r1 == 0) goto L_0x01d6
            org.fourthline.cling.UpnpService r0 = r7.getUpnpService()
            org.fourthline.cling.registry.Registry r0 = r0.getRegistry()
            r0.notifyDiscoveryFailure(r8, r2)
            goto L_0x01d6
        L_0x0126:
            r8 = move-exception
            r6 = r2
            r2 = r8
            r8 = r6
        L_0x012a:
            java.util.logging.Logger r3 = log
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = "Could not hydrate device or its services from descriptor: "
            r4.append(r5)
            org.fourthline.cling.model.meta.RemoteDevice r5 = r7.rd
            r4.append(r5)
            java.lang.String r4 = r4.toString()
            r3.warning(r4)
            java.util.logging.Logger r3 = log
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            r4.append(r0)
            java.lang.Throwable r0 = org.seamless.util.Exceptions.unwrap(r2)
            r4.append(r0)
            java.lang.String r0 = r4.toString()
            r3.warning(r0)
            if (r8 == 0) goto L_0x01d6
            if (r1 == 0) goto L_0x01d6
            org.fourthline.cling.UpnpService r0 = r7.getUpnpService()
            org.fourthline.cling.registry.Registry r0 = r0.getRegistry()
            r0.notifyDiscoveryFailure(r8, r2)
            goto L_0x01d6
        L_0x016a:
            r0 = move-exception
            r8 = r2
        L_0x016c:
            java.util.List<org.fourthline.cling.model.types.UDN> r2 = r7.errorsAlreadyLogged
            org.fourthline.cling.model.meta.RemoteDevice r3 = r7.rd
            org.fourthline.cling.model.meta.DeviceIdentity r3 = r3.getIdentity()
            org.fourthline.cling.model.meta.RemoteDeviceIdentity r3 = (org.fourthline.cling.model.meta.RemoteDeviceIdentity) r3
            org.fourthline.cling.model.types.UDN r3 = r3.getUdn()
            boolean r2 = r2.contains(r3)
            if (r2 != 0) goto L_0x01d6
            java.util.List<org.fourthline.cling.model.types.UDN> r2 = r7.errorsAlreadyLogged
            org.fourthline.cling.model.meta.RemoteDevice r3 = r7.rd
            org.fourthline.cling.model.meta.DeviceIdentity r3 = r3.getIdentity()
            org.fourthline.cling.model.meta.RemoteDeviceIdentity r3 = (org.fourthline.cling.model.meta.RemoteDeviceIdentity) r3
            org.fourthline.cling.model.types.UDN r3 = r3.getUdn()
            r2.add(r3)
            java.util.logging.Logger r2 = log
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "Could not validate device model: "
            r3.append(r4)
            org.fourthline.cling.model.meta.RemoteDevice r4 = r7.rd
            r3.append(r4)
            java.lang.String r3 = r3.toString()
            r2.warning(r3)
            java.util.List r2 = r0.getErrors()
            java.util.Iterator r2 = r2.iterator()
        L_0x01b1:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L_0x01c7
            java.lang.Object r3 = r2.next()
            org.fourthline.cling.model.ValidationError r3 = (org.fourthline.cling.model.ValidationError) r3
            java.util.logging.Logger r4 = log
            java.lang.String r3 = r3.toString()
            r4.warning(r3)
            goto L_0x01b1
        L_0x01c7:
            if (r8 == 0) goto L_0x01d6
            if (r1 == 0) goto L_0x01d6
            org.fourthline.cling.UpnpService r1 = r7.getUpnpService()
            org.fourthline.cling.registry.Registry r1 = r1.getRegistry()
            r1.notifyDiscoveryFailure(r8, r0)
        L_0x01d6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fourthline.cling.protocol.RetrieveRemoteDescriptors.describe(java.lang.String):void");
    }

    /* access modifiers changed from: protected */
    public RemoteDevice describeServices(RemoteDevice remoteDevice) throws RouterException, DescriptorBindingException, ValidationException {
        RemoteDevice[] embeddedDevices;
        ArrayList arrayList = new ArrayList();
        if (remoteDevice.hasServices()) {
            for (RemoteService remoteService : filterExclusiveServices(remoteDevice.getServices())) {
                RemoteService describeService = describeService(remoteService);
                if (describeService != null) {
                    arrayList.add(describeService);
                } else {
                    Logger logger = log;
                    StringBuilder sb = new StringBuilder();
                    sb.append("Skipping invalid service '");
                    sb.append(remoteService);
                    sb.append("' of: ");
                    sb.append(remoteDevice);
                    logger.warning(sb.toString());
                }
            }
        }
        ArrayList arrayList2 = new ArrayList();
        if (remoteDevice.hasEmbeddedDevices()) {
            for (RemoteDevice remoteDevice2 : remoteDevice.getEmbeddedDevices()) {
                if (remoteDevice2 != null) {
                    RemoteDevice describeServices = describeServices(remoteDevice2);
                    if (describeServices != null) {
                        arrayList2.add(describeServices);
                    }
                }
            }
        }
        Icon[] iconArr = new Icon[remoteDevice.getIcons().length];
        for (int i = 0; i < remoteDevice.getIcons().length; i++) {
            iconArr[i] = remoteDevice.getIcons()[i].deepCopy();
        }
        return remoteDevice.newInstance(((RemoteDeviceIdentity) remoteDevice.getIdentity()).getUdn(), remoteDevice.getVersion(), remoteDevice.getType(), remoteDevice.getDetails(), iconArr, remoteDevice.toServiceArray((Collection<RemoteService>) arrayList), (List<RemoteDevice>) arrayList2);
    }

    /* access modifiers changed from: protected */
    public RemoteService describeService(RemoteService remoteService) throws RouterException, DescriptorBindingException, ValidationException {
        try {
            URL normalizeURI = ((RemoteDevice) remoteService.getDevice()).normalizeURI(remoteService.getDescriptorURI());
            StreamRequestMessage streamRequestMessage = new StreamRequestMessage(Method.GET, normalizeURI);
            UpnpHeaders descriptorRetrievalHeaders = getUpnpService().getConfiguration().getDescriptorRetrievalHeaders((RemoteDeviceIdentity) ((RemoteDevice) remoteService.getDevice()).getIdentity());
            if (descriptorRetrievalHeaders != null) {
                streamRequestMessage.getHeaders().putAll(descriptorRetrievalHeaders);
            }
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Sending service descriptor retrieval message: ");
            sb.append(streamRequestMessage);
            logger.fine(sb.toString());
            StreamResponseMessage send = getUpnpService().getRouter().send(streamRequestMessage);
            if (send == null) {
                Logger logger2 = log;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Could not retrieve service descriptor, no response: ");
                sb2.append(remoteService);
                logger2.warning(sb2.toString());
                return null;
            } else if (((UpnpResponse) send.getOperation()).isFailed()) {
                Logger logger3 = log;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Service descriptor retrieval failed: ");
                sb3.append(normalizeURI);
                sb3.append(", ");
                sb3.append(((UpnpResponse) send.getOperation()).getResponseDetails());
                logger3.warning(sb3.toString());
                return null;
            } else {
                if (!send.isContentTypeTextUDA()) {
                    Logger logger4 = log;
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("Received service descriptor without or with invalid Content-Type: ");
                    sb4.append(normalizeURI);
                    logger4.fine(sb4.toString());
                }
                String bodyString = send.getBodyString();
                if (bodyString == null || bodyString.length() == 0) {
                    Logger logger5 = log;
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append("Received empty service descriptor:");
                    sb5.append(normalizeURI);
                    logger5.warning(sb5.toString());
                    return null;
                }
                Logger logger6 = log;
                StringBuilder sb6 = new StringBuilder();
                sb6.append("Received service descriptor, hydrating service model: ");
                sb6.append(send);
                logger6.fine(sb6.toString());
                return (RemoteService) getUpnpService().getConfiguration().getServiceDescriptorBinderUDA10().describe(remoteService, bodyString);
            }
        } catch (IllegalArgumentException unused) {
            Logger logger7 = log;
            StringBuilder sb7 = new StringBuilder();
            sb7.append("Could not normalize service descriptor URL: ");
            sb7.append(remoteService.getDescriptorURI());
            logger7.warning(sb7.toString());
            return null;
        }
    }

    /* access modifiers changed from: protected */
    public List<RemoteService> filterExclusiveServices(RemoteService[] remoteServiceArr) {
        ServiceType[] exclusiveServiceTypes = getUpnpService().getConfiguration().getExclusiveServiceTypes();
        if (exclusiveServiceTypes == null || exclusiveServiceTypes.length == 0) {
            return Arrays.asList(remoteServiceArr);
        }
        ArrayList arrayList = new ArrayList();
        for (RemoteService remoteService : remoteServiceArr) {
            for (ServiceType serviceType : exclusiveServiceTypes) {
                if (remoteService.getServiceType().implementsVersion(serviceType)) {
                    Logger logger = log;
                    StringBuilder sb = new StringBuilder();
                    sb.append("Including exclusive service: ");
                    sb.append(remoteService);
                    logger.fine(sb.toString());
                    arrayList.add(remoteService);
                } else {
                    Logger logger2 = log;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Excluding unwanted service: ");
                    sb2.append(serviceType);
                    logger2.fine(sb2.toString());
                }
            }
        }
        return arrayList;
    }
}
