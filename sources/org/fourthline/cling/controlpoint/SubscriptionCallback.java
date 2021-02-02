package org.fourthline.cling.controlpoint;

import java.util.Collections;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.fourthline.cling.model.UnsupportedDataException;
import org.fourthline.cling.model.gena.CancelReason;
import org.fourthline.cling.model.gena.GENASubscription;
import org.fourthline.cling.model.gena.LocalGENASubscription;
import org.fourthline.cling.model.gena.RemoteGENASubscription;
import org.fourthline.cling.model.message.UpnpResponse;
import org.fourthline.cling.model.meta.LocalService;
import org.fourthline.cling.model.meta.RemoteService;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.protocol.ProtocolCreationException;
import org.seamless.util.Exceptions;

public abstract class SubscriptionCallback implements Runnable {
    protected static Logger log = Logger.getLogger(SubscriptionCallback.class.getName());
    private ControlPoint controlPoint;
    protected final Integer requestedDurationSeconds;
    protected final Service service;
    private GENASubscription subscription;

    /* access modifiers changed from: protected */
    public abstract void ended(GENASubscription gENASubscription, CancelReason cancelReason, UpnpResponse upnpResponse);

    /* access modifiers changed from: protected */
    public abstract void established(GENASubscription gENASubscription);

    /* access modifiers changed from: protected */
    public abstract void eventReceived(GENASubscription gENASubscription);

    /* access modifiers changed from: protected */
    public abstract void eventsMissed(GENASubscription gENASubscription, int i);

    /* access modifiers changed from: protected */
    public abstract void failed(GENASubscription gENASubscription, UpnpResponse upnpResponse, Exception exc, String str);

    protected SubscriptionCallback(Service service2) {
        this.service = service2;
        this.requestedDurationSeconds = Integer.valueOf(1800);
    }

    protected SubscriptionCallback(Service service2, int i) {
        this.service = service2;
        this.requestedDurationSeconds = Integer.valueOf(i);
    }

    public Service getService() {
        return this.service;
    }

    public synchronized ControlPoint getControlPoint() {
        return this.controlPoint;
    }

    public synchronized void setControlPoint(ControlPoint controlPoint2) {
        this.controlPoint = controlPoint2;
    }

    public synchronized GENASubscription getSubscription() {
        return this.subscription;
    }

    public synchronized void setSubscription(GENASubscription gENASubscription) {
        this.subscription = gENASubscription;
    }

    public synchronized void run() {
        if (getControlPoint() == null) {
            throw new IllegalStateException("Callback must be executed through ControlPoint");
        } else if (getService() instanceof LocalService) {
            establishLocalSubscription((LocalService) this.service);
        } else if (getService() instanceof RemoteService) {
            establishRemoteSubscription((RemoteService) this.service);
        }
    }

    private void establishLocalSubscription(LocalService localService) {
        LocalGENASubscription localGENASubscription;
        if (getControlPoint().getRegistry().getLocalDevice(localService.getDevice().getIdentity().getUdn(), false) == null) {
            log.fine("Local device service is currently not registered, failing subscription immediately");
            failed(null, null, new IllegalStateException("Local device is not registered"));
            return;
        }
        try {
            localGENASubscription = new LocalGENASubscription(localService, Integer.valueOf(Integer.MAX_VALUE), Collections.EMPTY_LIST) {
                public void failed(Exception exc) {
                    synchronized (SubscriptionCallback.this) {
                        SubscriptionCallback.this.setSubscription(null);
                        SubscriptionCallback.this.failed(null, null, exc);
                    }
                }

                public void established() {
                    synchronized (SubscriptionCallback.this) {
                        SubscriptionCallback.this.setSubscription(this);
                        SubscriptionCallback.this.established(this);
                    }
                }

                public void ended(CancelReason cancelReason) {
                    synchronized (SubscriptionCallback.this) {
                        SubscriptionCallback.this.setSubscription(null);
                        SubscriptionCallback.this.ended(this, cancelReason, null);
                    }
                }

                public void eventReceived() {
                    synchronized (SubscriptionCallback.this) {
                        Logger logger = SubscriptionCallback.log;
                        StringBuilder sb = new StringBuilder();
                        sb.append("Local service state updated, notifying callback, sequence is: ");
                        sb.append(getCurrentSequence());
                        logger.fine(sb.toString());
                        SubscriptionCallback.this.eventReceived(this);
                        incrementSequence();
                    }
                }
            };
            try {
                log.fine("Local device service is currently registered, also registering subscription");
                getControlPoint().getRegistry().addLocalSubscription(localGENASubscription);
                log.fine("Notifying subscription callback of local subscription availablity");
                localGENASubscription.establish();
                Logger logger = log;
                StringBuilder sb = new StringBuilder();
                sb.append("Simulating first initial event for local subscription callback, sequence: ");
                sb.append(localGENASubscription.getCurrentSequence());
                logger.fine(sb.toString());
                eventReceived(localGENASubscription);
                localGENASubscription.incrementSequence();
                log.fine("Starting to monitor state changes of local service");
                localGENASubscription.registerOnService();
            } catch (Exception e) {
                e = e;
            }
        } catch (Exception e2) {
            e = e2;
            localGENASubscription = null;
            Logger logger2 = log;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Local callback creation failed: ");
            sb2.append(e.toString());
            logger2.fine(sb2.toString());
            log.log(Level.FINE, "Exception root cause: ", Exceptions.unwrap(e));
            if (localGENASubscription != null) {
                getControlPoint().getRegistry().removeLocalSubscription(localGENASubscription);
            }
            failed(localGENASubscription, null, e);
        }
    }

    private void establishRemoteSubscription(RemoteService remoteService) {
        try {
            getControlPoint().getProtocolFactory().createSendingSubscribe(new RemoteGENASubscription(remoteService, this.requestedDurationSeconds.intValue()) {
                public void failed(UpnpResponse upnpResponse) {
                    synchronized (SubscriptionCallback.this) {
                        SubscriptionCallback.this.setSubscription(null);
                        SubscriptionCallback.this.failed(this, upnpResponse, null);
                    }
                }

                public void established() {
                    synchronized (SubscriptionCallback.this) {
                        SubscriptionCallback.this.setSubscription(this);
                        SubscriptionCallback.this.established(this);
                    }
                }

                public void ended(CancelReason cancelReason, UpnpResponse upnpResponse) {
                    synchronized (SubscriptionCallback.this) {
                        SubscriptionCallback.this.setSubscription(null);
                        SubscriptionCallback.this.ended(this, cancelReason, upnpResponse);
                    }
                }

                public void eventReceived() {
                    synchronized (SubscriptionCallback.this) {
                        SubscriptionCallback.this.eventReceived(this);
                    }
                }

                public void eventsMissed(int i) {
                    synchronized (SubscriptionCallback.this) {
                        SubscriptionCallback.this.eventsMissed(this, i);
                    }
                }

                public void invalidMessage(UnsupportedDataException unsupportedDataException) {
                    synchronized (SubscriptionCallback.this) {
                        SubscriptionCallback.this.invalidMessage(this, unsupportedDataException);
                    }
                }
            }).run();
        } catch (ProtocolCreationException e) {
            failed(this.subscription, null, e);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0023, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void end() {
        /*
            r1 = this;
            monitor-enter(r1)
            org.fourthline.cling.model.gena.GENASubscription r0 = r1.subscription     // Catch:{ all -> 0x0024 }
            if (r0 != 0) goto L_0x0007
            monitor-exit(r1)
            return
        L_0x0007:
            org.fourthline.cling.model.gena.GENASubscription r0 = r1.subscription     // Catch:{ all -> 0x0024 }
            boolean r0 = r0 instanceof org.fourthline.cling.model.gena.LocalGENASubscription     // Catch:{ all -> 0x0024 }
            if (r0 == 0) goto L_0x0015
            org.fourthline.cling.model.gena.GENASubscription r0 = r1.subscription     // Catch:{ all -> 0x0024 }
            org.fourthline.cling.model.gena.LocalGENASubscription r0 = (org.fourthline.cling.model.gena.LocalGENASubscription) r0     // Catch:{ all -> 0x0024 }
            r1.endLocalSubscription(r0)     // Catch:{ all -> 0x0024 }
            goto L_0x0022
        L_0x0015:
            org.fourthline.cling.model.gena.GENASubscription r0 = r1.subscription     // Catch:{ all -> 0x0024 }
            boolean r0 = r0 instanceof org.fourthline.cling.model.gena.RemoteGENASubscription     // Catch:{ all -> 0x0024 }
            if (r0 == 0) goto L_0x0022
            org.fourthline.cling.model.gena.GENASubscription r0 = r1.subscription     // Catch:{ all -> 0x0024 }
            org.fourthline.cling.model.gena.RemoteGENASubscription r0 = (org.fourthline.cling.model.gena.RemoteGENASubscription) r0     // Catch:{ all -> 0x0024 }
            r1.endRemoteSubscription(r0)     // Catch:{ all -> 0x0024 }
        L_0x0022:
            monitor-exit(r1)
            return
        L_0x0024:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fourthline.cling.controlpoint.SubscriptionCallback.end():void");
    }

    private void endLocalSubscription(LocalGENASubscription localGENASubscription) {
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Removing local subscription and ending it in callback: ");
        sb.append(localGENASubscription);
        logger.fine(sb.toString());
        getControlPoint().getRegistry().removeLocalSubscription(localGENASubscription);
        localGENASubscription.end(null);
    }

    private void endRemoteSubscription(RemoteGENASubscription remoteGENASubscription) {
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Ending remote subscription: ");
        sb.append(remoteGENASubscription);
        logger.fine(sb.toString());
        getControlPoint().getConfiguration().getSyncProtocolExecutorService().execute(getControlPoint().getProtocolFactory().createSendingUnsubscribe(remoteGENASubscription));
    }

    /* access modifiers changed from: protected */
    public void failed(GENASubscription gENASubscription, UpnpResponse upnpResponse, Exception exc) {
        failed(gENASubscription, upnpResponse, exc, createDefaultFailureMessage(upnpResponse, exc));
    }

    public static String createDefaultFailureMessage(UpnpResponse upnpResponse, Exception exc) {
        String str = "Subscription failed: ";
        if (upnpResponse != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(" HTTP response was: ");
            sb.append(upnpResponse.getResponseDetails());
            return sb.toString();
        } else if (exc != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            sb2.append(" Exception occured: ");
            sb2.append(exc);
            return sb2.toString();
        } else {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(str);
            sb3.append(" No response received.");
            return sb3.toString();
        }
    }

    /* access modifiers changed from: protected */
    public void invalidMessage(RemoteGENASubscription remoteGENASubscription, UnsupportedDataException unsupportedDataException) {
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Invalid event message received, causing: ");
        sb.append(unsupportedDataException);
        logger.info(sb.toString());
        if (log.isLoggable(Level.FINE)) {
            String str = "------------------------------------------------------------------------------";
            log.fine(str);
            log.fine(unsupportedDataException.getData() != null ? unsupportedDataException.getData().toString() : "null");
            log.fine(str);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("(SubscriptionCallback) ");
        sb.append(getService());
        return sb.toString();
    }
}
