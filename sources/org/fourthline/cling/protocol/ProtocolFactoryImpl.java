package org.fourthline.cling.protocol;

import java.net.URI;
import java.net.URL;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import org.fourthline.cling.UpnpService;
import org.fourthline.cling.model.Namespace;
import org.fourthline.cling.model.action.ActionInvocation;
import org.fourthline.cling.model.gena.LocalGENASubscription;
import org.fourthline.cling.model.gena.RemoteGENASubscription;
import org.fourthline.cling.model.message.IncomingDatagramMessage;
import org.fourthline.cling.model.message.StreamRequestMessage;
import org.fourthline.cling.model.message.UpnpRequest;
import org.fourthline.cling.model.message.UpnpRequest.Method;
import org.fourthline.cling.model.message.UpnpResponse;
import org.fourthline.cling.model.message.header.UpnpHeader;
import org.fourthline.cling.model.message.header.UpnpHeader.Type;
import org.fourthline.cling.model.meta.LocalDevice;
import org.fourthline.cling.model.meta.RemoteDevice;
import org.fourthline.cling.model.meta.RemoteDeviceIdentity;
import org.fourthline.cling.model.meta.RemoteService;
import org.fourthline.cling.model.types.InvalidValueException;
import org.fourthline.cling.model.types.NamedServiceType;
import org.fourthline.cling.model.types.NotificationSubtype;
import org.fourthline.cling.model.types.ServiceType;
import org.fourthline.cling.protocol.async.ReceivingNotification;
import org.fourthline.cling.protocol.async.ReceivingSearch;
import org.fourthline.cling.protocol.async.ReceivingSearchResponse;
import org.fourthline.cling.protocol.async.SendingNotificationAlive;
import org.fourthline.cling.protocol.async.SendingNotificationByebye;
import org.fourthline.cling.protocol.async.SendingSearch;
import org.fourthline.cling.protocol.sync.ReceivingAction;
import org.fourthline.cling.protocol.sync.ReceivingEvent;
import org.fourthline.cling.protocol.sync.ReceivingRetrieval;
import org.fourthline.cling.protocol.sync.ReceivingSubscribe;
import org.fourthline.cling.protocol.sync.ReceivingUnsubscribe;
import org.fourthline.cling.protocol.sync.SendingAction;
import org.fourthline.cling.protocol.sync.SendingEvent;
import org.fourthline.cling.protocol.sync.SendingRenewal;
import org.fourthline.cling.protocol.sync.SendingSubscribe;
import org.fourthline.cling.protocol.sync.SendingUnsubscribe;
import org.fourthline.cling.transport.RouterException;

@ApplicationScoped
public class ProtocolFactoryImpl implements ProtocolFactory {
    private static final Logger log = Logger.getLogger(ProtocolFactory.class.getName());
    protected final UpnpService upnpService;

    /* renamed from: org.fourthline.cling.protocol.ProtocolFactoryImpl$1 reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$fourthline$cling$model$message$UpnpRequest$Method = new int[Method.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(6:0|1|2|3|4|6) */
        /* JADX WARNING: Code restructure failed: missing block: B:7:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        static {
            /*
                org.fourthline.cling.model.message.UpnpRequest$Method[] r0 = org.fourthline.cling.model.message.UpnpRequest.Method.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$org$fourthline$cling$model$message$UpnpRequest$Method = r0
                int[] r0 = $SwitchMap$org$fourthline$cling$model$message$UpnpRequest$Method     // Catch:{ NoSuchFieldError -> 0x0014 }
                org.fourthline.cling.model.message.UpnpRequest$Method r1 = org.fourthline.cling.model.message.UpnpRequest.Method.NOTIFY     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = $SwitchMap$org$fourthline$cling$model$message$UpnpRequest$Method     // Catch:{ NoSuchFieldError -> 0x001f }
                org.fourthline.cling.model.message.UpnpRequest$Method r1 = org.fourthline.cling.model.message.UpnpRequest.Method.MSEARCH     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: org.fourthline.cling.protocol.ProtocolFactoryImpl.AnonymousClass1.<clinit>():void");
        }
    }

    protected ProtocolFactoryImpl() {
        this.upnpService = null;
    }

    @Inject
    public ProtocolFactoryImpl(UpnpService upnpService2) {
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Creating ProtocolFactory: ");
        sb.append(getClass().getName());
        logger.fine(sb.toString());
        this.upnpService = upnpService2;
    }

    public UpnpService getUpnpService() {
        return this.upnpService;
    }

    public ReceivingAsync createReceivingAsync(IncomingDatagramMessage incomingDatagramMessage) throws ProtocolCreationException {
        if (log.isLoggable(Level.FINE)) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Creating protocol for incoming asynchronous: ");
            sb.append(incomingDatagramMessage);
            logger.fine(sb.toString());
        }
        ReceivingAsync receivingAsync = null;
        if (incomingDatagramMessage.getOperation() instanceof UpnpRequest) {
            int i = AnonymousClass1.$SwitchMap$org$fourthline$cling$model$message$UpnpRequest$Method[((UpnpRequest) incomingDatagramMessage.getOperation()).getMethod().ordinal()];
            if (i == 1) {
                if (isByeBye(incomingDatagramMessage) || isSupportedServiceAdvertisement(incomingDatagramMessage)) {
                    receivingAsync = createReceivingNotification(incomingDatagramMessage);
                }
                return receivingAsync;
            } else if (i == 2) {
                return createReceivingSearch(incomingDatagramMessage);
            }
        } else if (incomingDatagramMessage.getOperation() instanceof UpnpResponse) {
            if (isSupportedServiceAdvertisement(incomingDatagramMessage)) {
                receivingAsync = createReceivingSearchResponse(incomingDatagramMessage);
            }
            return receivingAsync;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Protocol for incoming datagram message not found: ");
        sb2.append(incomingDatagramMessage);
        throw new ProtocolCreationException(sb2.toString());
    }

    /* access modifiers changed from: protected */
    public ReceivingAsync createReceivingNotification(IncomingDatagramMessage<UpnpRequest> incomingDatagramMessage) {
        return new ReceivingNotification(getUpnpService(), incomingDatagramMessage);
    }

    /* access modifiers changed from: protected */
    public ReceivingAsync createReceivingSearch(IncomingDatagramMessage<UpnpRequest> incomingDatagramMessage) {
        return new ReceivingSearch(getUpnpService(), incomingDatagramMessage);
    }

    /* access modifiers changed from: protected */
    public ReceivingAsync createReceivingSearchResponse(IncomingDatagramMessage<UpnpResponse> incomingDatagramMessage) {
        return new ReceivingSearchResponse(getUpnpService(), incomingDatagramMessage);
    }

    /* access modifiers changed from: protected */
    public boolean isByeBye(IncomingDatagramMessage incomingDatagramMessage) {
        String firstHeader = incomingDatagramMessage.getHeaders().getFirstHeader(Type.NTS.getHttpName());
        return firstHeader != null && firstHeader.equals(NotificationSubtype.BYEBYE.getHeaderString());
    }

    /* access modifiers changed from: protected */
    public boolean isSupportedServiceAdvertisement(IncomingDatagramMessage incomingDatagramMessage) {
        ServiceType[] exclusiveServiceTypes = getUpnpService().getConfiguration().getExclusiveServiceTypes();
        if (exclusiveServiceTypes == null) {
            return false;
        }
        if (exclusiveServiceTypes.length == 0) {
            return true;
        }
        String firstHeader = incomingDatagramMessage.getHeaders().getFirstHeader(Type.USN.getHttpName());
        if (firstHeader == null) {
            return false;
        }
        try {
            NamedServiceType valueOf = NamedServiceType.valueOf(firstHeader);
            for (ServiceType implementsVersion : exclusiveServiceTypes) {
                if (valueOf.getServiceType().implementsVersion(implementsVersion)) {
                    return true;
                }
            }
        } catch (InvalidValueException unused) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Not a named service type header value: ");
            sb.append(firstHeader);
            logger.finest(sb.toString());
        }
        Logger logger2 = log;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Service advertisement not supported, dropping it: ");
        sb2.append(firstHeader);
        logger2.fine(sb2.toString());
        return false;
    }

    public ReceivingSync createReceivingSync(StreamRequestMessage streamRequestMessage) throws ProtocolCreationException {
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Creating protocol for incoming synchronous: ");
        sb.append(streamRequestMessage);
        logger.fine(sb.toString());
        if (((UpnpRequest) streamRequestMessage.getOperation()).getMethod().equals(Method.GET)) {
            return createReceivingRetrieval(streamRequestMessage);
        }
        if (getUpnpService().getConfiguration().getNamespace().isControlPath(streamRequestMessage.getUri())) {
            if (((UpnpRequest) streamRequestMessage.getOperation()).getMethod().equals(Method.POST)) {
                return createReceivingAction(streamRequestMessage);
            }
        } else if (getUpnpService().getConfiguration().getNamespace().isEventSubscriptionPath(streamRequestMessage.getUri())) {
            if (((UpnpRequest) streamRequestMessage.getOperation()).getMethod().equals(Method.SUBSCRIBE)) {
                return createReceivingSubscribe(streamRequestMessage);
            }
            if (((UpnpRequest) streamRequestMessage.getOperation()).getMethod().equals(Method.UNSUBSCRIBE)) {
                return createReceivingUnsubscribe(streamRequestMessage);
            }
        } else if (getUpnpService().getConfiguration().getNamespace().isEventCallbackPath(streamRequestMessage.getUri())) {
            if (((UpnpRequest) streamRequestMessage.getOperation()).getMethod().equals(Method.NOTIFY)) {
                return createReceivingEvent(streamRequestMessage);
            }
        } else if (streamRequestMessage.getUri().getPath().contains("/event/cb")) {
            Logger logger2 = log;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Fixing trailing garbage in event message path: ");
            sb2.append(streamRequestMessage.getUri().getPath());
            logger2.warning(sb2.toString());
            String uri = streamRequestMessage.getUri().toString();
            streamRequestMessage.setUri(URI.create(uri.substring(0, uri.indexOf(Namespace.CALLBACK_FILE) + 3)));
            if (getUpnpService().getConfiguration().getNamespace().isEventCallbackPath(streamRequestMessage.getUri()) && ((UpnpRequest) streamRequestMessage.getOperation()).getMethod().equals(Method.NOTIFY)) {
                return createReceivingEvent(streamRequestMessage);
            }
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("Protocol for message type not found: ");
        sb3.append(streamRequestMessage);
        throw new ProtocolCreationException(sb3.toString());
    }

    public SendingNotificationAlive createSendingNotificationAlive(LocalDevice localDevice) {
        return new SendingNotificationAlive(getUpnpService(), localDevice);
    }

    public SendingNotificationByebye createSendingNotificationByebye(LocalDevice localDevice) {
        return new SendingNotificationByebye(getUpnpService(), localDevice);
    }

    public SendingSearch createSendingSearch(UpnpHeader upnpHeader, int i) {
        return new SendingSearch(getUpnpService(), upnpHeader, i);
    }

    public SendingAction createSendingAction(ActionInvocation actionInvocation, URL url) {
        return new SendingAction(getUpnpService(), actionInvocation, url);
    }

    public SendingSubscribe createSendingSubscribe(RemoteGENASubscription remoteGENASubscription) throws ProtocolCreationException {
        try {
            return new SendingSubscribe(getUpnpService(), remoteGENASubscription, getUpnpService().getRouter().getActiveStreamServers(((RemoteDeviceIdentity) ((RemoteDevice) ((RemoteService) remoteGENASubscription.getService()).getDevice()).getIdentity()).getDiscoveredOnLocalAddress()));
        } catch (RouterException e) {
            throw new ProtocolCreationException("Failed to obtain local stream servers (for event callback URL creation) from router", e);
        }
    }

    public SendingRenewal createSendingRenewal(RemoteGENASubscription remoteGENASubscription) {
        return new SendingRenewal(getUpnpService(), remoteGENASubscription);
    }

    public SendingUnsubscribe createSendingUnsubscribe(RemoteGENASubscription remoteGENASubscription) {
        return new SendingUnsubscribe(getUpnpService(), remoteGENASubscription);
    }

    public SendingEvent createSendingEvent(LocalGENASubscription localGENASubscription) {
        return new SendingEvent(getUpnpService(), localGENASubscription);
    }

    /* access modifiers changed from: protected */
    public ReceivingRetrieval createReceivingRetrieval(StreamRequestMessage streamRequestMessage) {
        return new ReceivingRetrieval(getUpnpService(), streamRequestMessage);
    }

    /* access modifiers changed from: protected */
    public ReceivingAction createReceivingAction(StreamRequestMessage streamRequestMessage) {
        return new ReceivingAction(getUpnpService(), streamRequestMessage);
    }

    /* access modifiers changed from: protected */
    public ReceivingSubscribe createReceivingSubscribe(StreamRequestMessage streamRequestMessage) {
        return new ReceivingSubscribe(getUpnpService(), streamRequestMessage);
    }

    /* access modifiers changed from: protected */
    public ReceivingUnsubscribe createReceivingUnsubscribe(StreamRequestMessage streamRequestMessage) {
        return new ReceivingUnsubscribe(getUpnpService(), streamRequestMessage);
    }

    /* access modifiers changed from: protected */
    public ReceivingEvent createReceivingEvent(StreamRequestMessage streamRequestMessage) {
        return new ReceivingEvent(getUpnpService(), streamRequestMessage);
    }
}
