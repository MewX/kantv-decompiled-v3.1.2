package org.fourthline.cling.protocol.sync;

import java.util.List;
import java.util.logging.Logger;
import org.fourthline.cling.UpnpService;
import org.fourthline.cling.model.NetworkAddress;
import org.fourthline.cling.model.gena.RemoteGENASubscription;
import org.fourthline.cling.model.message.gena.IncomingSubscribeResponseMessage;
import org.fourthline.cling.model.message.gena.OutgoingSubscribeRequestMessage;
import org.fourthline.cling.model.meta.RemoteService;
import org.fourthline.cling.protocol.SendingSync;

public class SendingSubscribe extends SendingSync<OutgoingSubscribeRequestMessage, IncomingSubscribeResponseMessage> {
    private static final Logger log = Logger.getLogger(SendingSubscribe.class.getName());
    protected final RemoteGENASubscription subscription;

    public SendingSubscribe(UpnpService upnpService, RemoteGENASubscription remoteGENASubscription, List<NetworkAddress> list) {
        super(upnpService, new OutgoingSubscribeRequestMessage(remoteGENASubscription, remoteGENASubscription.getEventCallbackURLs(list, upnpService.getConfiguration().getNamespace()), upnpService.getConfiguration().getEventSubscriptionHeaders((RemoteService) remoteGENASubscription.getService())));
        this.subscription = remoteGENASubscription;
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Can't wrap try/catch for region: R(4:24|25|26|27) */
    /* JADX WARNING: Code restructure failed: missing block: B:25:?, code lost:
        onSubscriptionFailure();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x012b, code lost:
        getUpnpService().getRegistry().unregisterPendingRemoteSubscription(r5.subscription);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0138, code lost:
        return null;
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:24:0x0128 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public org.fourthline.cling.model.message.gena.IncomingSubscribeResponseMessage executeSync() throws org.fourthline.cling.transport.RouterException {
        /*
            r5 = this;
            org.fourthline.cling.model.message.StreamRequestMessage r0 = r5.getInputMessage()
            org.fourthline.cling.model.message.gena.OutgoingSubscribeRequestMessage r0 = (org.fourthline.cling.model.message.gena.OutgoingSubscribeRequestMessage) r0
            boolean r0 = r0.hasCallbackURLs()
            r1 = 0
            if (r0 != 0) goto L_0x0029
            java.util.logging.Logger r0 = log
            java.lang.String r2 = "Subscription failed, no active local callback URLs available (network disabled?)"
            r0.fine(r2)
            org.fourthline.cling.UpnpService r0 = r5.getUpnpService()
            org.fourthline.cling.UpnpServiceConfiguration r0 = r0.getConfiguration()
            java.util.concurrent.Executor r0 = r0.getRegistryListenerExecutor()
            org.fourthline.cling.protocol.sync.SendingSubscribe$1 r2 = new org.fourthline.cling.protocol.sync.SendingSubscribe$1
            r2.<init>()
            r0.execute(r2)
            return r1
        L_0x0029:
            java.util.logging.Logger r0 = log
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Sending subscription request: "
            r2.append(r3)
            org.fourthline.cling.model.message.StreamRequestMessage r3 = r5.getInputMessage()
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            r0.fine(r2)
            org.fourthline.cling.UpnpService r0 = r5.getUpnpService()     // Catch:{ all -> 0x0139 }
            org.fourthline.cling.registry.Registry r0 = r0.getRegistry()     // Catch:{ all -> 0x0139 }
            org.fourthline.cling.model.gena.RemoteGENASubscription r2 = r5.subscription     // Catch:{ all -> 0x0139 }
            r0.registerPendingRemoteSubscription(r2)     // Catch:{ all -> 0x0139 }
            org.fourthline.cling.UpnpService r0 = r5.getUpnpService()     // Catch:{ RouterException -> 0x0128 }
            org.fourthline.cling.transport.Router r0 = r0.getRouter()     // Catch:{ RouterException -> 0x0128 }
            org.fourthline.cling.model.message.StreamRequestMessage r2 = r5.getInputMessage()     // Catch:{ RouterException -> 0x0128 }
            org.fourthline.cling.model.message.StreamResponseMessage r0 = r0.send(r2)     // Catch:{ RouterException -> 0x0128 }
            if (r0 != 0) goto L_0x0073
            r5.onSubscriptionFailure()     // Catch:{ all -> 0x0139 }
            org.fourthline.cling.UpnpService r0 = r5.getUpnpService()
            org.fourthline.cling.registry.Registry r0 = r0.getRegistry()
            org.fourthline.cling.model.gena.RemoteGENASubscription r2 = r5.subscription
            r0.unregisterPendingRemoteSubscription(r2)
            return r1
        L_0x0073:
            org.fourthline.cling.model.message.gena.IncomingSubscribeResponseMessage r1 = new org.fourthline.cling.model.message.gena.IncomingSubscribeResponseMessage     // Catch:{ all -> 0x0139 }
            r1.<init>(r0)     // Catch:{ all -> 0x0139 }
            org.fourthline.cling.model.message.UpnpOperation r2 = r0.getOperation()     // Catch:{ all -> 0x0139 }
            org.fourthline.cling.model.message.UpnpResponse r2 = (org.fourthline.cling.model.message.UpnpResponse) r2     // Catch:{ all -> 0x0139 }
            boolean r2 = r2.isFailed()     // Catch:{ all -> 0x0139 }
            if (r2 == 0) goto L_0x00af
            java.util.logging.Logger r0 = log     // Catch:{ all -> 0x0139 }
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ all -> 0x0139 }
            r2.<init>()     // Catch:{ all -> 0x0139 }
            java.lang.String r3 = "Subscription failed, response was: "
            r2.append(r3)     // Catch:{ all -> 0x0139 }
            r2.append(r1)     // Catch:{ all -> 0x0139 }
            java.lang.String r2 = r2.toString()     // Catch:{ all -> 0x0139 }
            r0.fine(r2)     // Catch:{ all -> 0x0139 }
            org.fourthline.cling.UpnpService r0 = r5.getUpnpService()     // Catch:{ all -> 0x0139 }
            org.fourthline.cling.UpnpServiceConfiguration r0 = r0.getConfiguration()     // Catch:{ all -> 0x0139 }
            java.util.concurrent.Executor r0 = r0.getRegistryListenerExecutor()     // Catch:{ all -> 0x0139 }
            org.fourthline.cling.protocol.sync.SendingSubscribe$2 r2 = new org.fourthline.cling.protocol.sync.SendingSubscribe$2     // Catch:{ all -> 0x0139 }
            r2.<init>(r1)     // Catch:{ all -> 0x0139 }
            r0.execute(r2)     // Catch:{ all -> 0x0139 }
            goto L_0x011a
        L_0x00af:
            boolean r2 = r1.isValidHeaders()     // Catch:{ all -> 0x0139 }
            if (r2 != 0) goto L_0x00d1
            java.util.logging.Logger r0 = log     // Catch:{ all -> 0x0139 }
            java.lang.String r2 = "Subscription failed, invalid or missing (SID, Timeout) response headers"
            r0.severe(r2)     // Catch:{ all -> 0x0139 }
            org.fourthline.cling.UpnpService r0 = r5.getUpnpService()     // Catch:{ all -> 0x0139 }
            org.fourthline.cling.UpnpServiceConfiguration r0 = r0.getConfiguration()     // Catch:{ all -> 0x0139 }
            java.util.concurrent.Executor r0 = r0.getRegistryListenerExecutor()     // Catch:{ all -> 0x0139 }
            org.fourthline.cling.protocol.sync.SendingSubscribe$3 r2 = new org.fourthline.cling.protocol.sync.SendingSubscribe$3     // Catch:{ all -> 0x0139 }
            r2.<init>(r1)     // Catch:{ all -> 0x0139 }
            r0.execute(r2)     // Catch:{ all -> 0x0139 }
            goto L_0x011a
        L_0x00d1:
            java.util.logging.Logger r2 = log     // Catch:{ all -> 0x0139 }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x0139 }
            r3.<init>()     // Catch:{ all -> 0x0139 }
            java.lang.String r4 = "Subscription established, adding to registry, response was: "
            r3.append(r4)     // Catch:{ all -> 0x0139 }
            r3.append(r0)     // Catch:{ all -> 0x0139 }
            java.lang.String r0 = r3.toString()     // Catch:{ all -> 0x0139 }
            r2.fine(r0)     // Catch:{ all -> 0x0139 }
            org.fourthline.cling.model.gena.RemoteGENASubscription r0 = r5.subscription     // Catch:{ all -> 0x0139 }
            java.lang.String r2 = r1.getSubscriptionId()     // Catch:{ all -> 0x0139 }
            r0.setSubscriptionId(r2)     // Catch:{ all -> 0x0139 }
            org.fourthline.cling.model.gena.RemoteGENASubscription r0 = r5.subscription     // Catch:{ all -> 0x0139 }
            int r2 = r1.getSubscriptionDurationSeconds()     // Catch:{ all -> 0x0139 }
            r0.setActualSubscriptionDurationSeconds(r2)     // Catch:{ all -> 0x0139 }
            org.fourthline.cling.UpnpService r0 = r5.getUpnpService()     // Catch:{ all -> 0x0139 }
            org.fourthline.cling.registry.Registry r0 = r0.getRegistry()     // Catch:{ all -> 0x0139 }
            org.fourthline.cling.model.gena.RemoteGENASubscription r2 = r5.subscription     // Catch:{ all -> 0x0139 }
            r0.addRemoteSubscription(r2)     // Catch:{ all -> 0x0139 }
            org.fourthline.cling.UpnpService r0 = r5.getUpnpService()     // Catch:{ all -> 0x0139 }
            org.fourthline.cling.UpnpServiceConfiguration r0 = r0.getConfiguration()     // Catch:{ all -> 0x0139 }
            java.util.concurrent.Executor r0 = r0.getRegistryListenerExecutor()     // Catch:{ all -> 0x0139 }
            org.fourthline.cling.protocol.sync.SendingSubscribe$4 r2 = new org.fourthline.cling.protocol.sync.SendingSubscribe$4     // Catch:{ all -> 0x0139 }
            r2.<init>()     // Catch:{ all -> 0x0139 }
            r0.execute(r2)     // Catch:{ all -> 0x0139 }
        L_0x011a:
            org.fourthline.cling.UpnpService r0 = r5.getUpnpService()
            org.fourthline.cling.registry.Registry r0 = r0.getRegistry()
            org.fourthline.cling.model.gena.RemoteGENASubscription r2 = r5.subscription
            r0.unregisterPendingRemoteSubscription(r2)
            return r1
        L_0x0128:
            r5.onSubscriptionFailure()     // Catch:{ all -> 0x0139 }
            org.fourthline.cling.UpnpService r0 = r5.getUpnpService()
            org.fourthline.cling.registry.Registry r0 = r0.getRegistry()
            org.fourthline.cling.model.gena.RemoteGENASubscription r2 = r5.subscription
            r0.unregisterPendingRemoteSubscription(r2)
            return r1
        L_0x0139:
            r0 = move-exception
            org.fourthline.cling.UpnpService r1 = r5.getUpnpService()
            org.fourthline.cling.registry.Registry r1 = r1.getRegistry()
            org.fourthline.cling.model.gena.RemoteGENASubscription r2 = r5.subscription
            r1.unregisterPendingRemoteSubscription(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fourthline.cling.protocol.sync.SendingSubscribe.executeSync():org.fourthline.cling.model.message.gena.IncomingSubscribeResponseMessage");
    }

    /* access modifiers changed from: protected */
    public void onSubscriptionFailure() {
        log.fine("Subscription failed");
        getUpnpService().getConfiguration().getRegistryListenerExecutor().execute(new Runnable() {
            public void run() {
                SendingSubscribe.this.subscription.fail(null);
            }
        });
    }
}
