package org.fourthline.cling;

import java.lang.annotation.Annotation;
import java.util.logging.Logger;
import javax.enterprise.context.ApplicationScoped;
import javax.enterprise.event.Event;
import javax.enterprise.event.Observes;
import javax.enterprise.inject.Any;
import javax.enterprise.inject.Instance;
import javax.enterprise.util.AnnotationLiteral;
import javax.inject.Inject;
import org.fourthline.cling.UpnpService.Shutdown;
import org.fourthline.cling.UpnpService.Start;
import org.fourthline.cling.controlpoint.ControlPoint;
import org.fourthline.cling.model.meta.LocalDevice;
import org.fourthline.cling.model.meta.RemoteDevice;
import org.fourthline.cling.protocol.ProtocolFactory;
import org.fourthline.cling.registry.Registry;
import org.fourthline.cling.registry.RegistryListener;
import org.fourthline.cling.registry.event.After;
import org.fourthline.cling.registry.event.Before;
import org.fourthline.cling.registry.event.FailedRemoteDeviceDiscovery;
import org.fourthline.cling.registry.event.LocalDeviceDiscovery;
import org.fourthline.cling.registry.event.Phase;
import org.fourthline.cling.registry.event.RegistryShutdown;
import org.fourthline.cling.registry.event.RemoteDeviceDiscovery;
import org.fourthline.cling.transport.DisableRouter;
import org.fourthline.cling.transport.EnableRouter;
import org.fourthline.cling.transport.Router;

@ApplicationScoped
public class ManagedUpnpService implements UpnpService {
    private static final Logger log = Logger.getLogger(ManagedUpnpService.class.getName());
    @Inject
    Instance<UpnpServiceConfiguration> configuration;
    @Inject
    Instance<ControlPoint> controlPointInstance;
    @Inject
    Event<DisableRouter> disableRouterEvent;
    @Inject
    Event<EnableRouter> enableRouterEvent;
    @Inject
    Instance<ProtocolFactory> protocolFactoryInstance;
    @Inject
    Instance<Registry> registryInstance;
    @Inject
    RegistryListenerAdapter registryListenerAdapter;
    @Inject
    Instance<Router> routerInstance;

    @ApplicationScoped
    static class RegistryListenerAdapter implements RegistryListener {
        @Inject
        @Any
        Event<FailedRemoteDeviceDiscovery> failedRemoteDeviceDiscoveryEvent;
        @Inject
        @Any
        Event<LocalDeviceDiscovery> localDeviceDiscoveryEvent;
        @Inject
        @Any
        Event<RegistryShutdown> registryShutdownEvent;
        @Inject
        @Any
        Event<RemoteDeviceDiscovery> remoteDeviceDiscoveryEvent;

        RegistryListenerAdapter() {
        }

        public void remoteDeviceDiscoveryStarted(Registry registry, RemoteDevice remoteDevice) {
            this.remoteDeviceDiscoveryEvent.select(new Annotation[]{Phase.ALIVE}).fire(new RemoteDeviceDiscovery(remoteDevice));
        }

        public void remoteDeviceDiscoveryFailed(Registry registry, RemoteDevice remoteDevice, Exception exc) {
            this.failedRemoteDeviceDiscoveryEvent.fire(new FailedRemoteDeviceDiscovery(remoteDevice, exc));
        }

        public void remoteDeviceAdded(Registry registry, RemoteDevice remoteDevice) {
            this.remoteDeviceDiscoveryEvent.select(new Annotation[]{Phase.COMPLETE}).fire(new RemoteDeviceDiscovery(remoteDevice));
        }

        public void remoteDeviceUpdated(Registry registry, RemoteDevice remoteDevice) {
            this.remoteDeviceDiscoveryEvent.select(new Annotation[]{Phase.UPDATED}).fire(new RemoteDeviceDiscovery(remoteDevice));
        }

        public void remoteDeviceRemoved(Registry registry, RemoteDevice remoteDevice) {
            this.remoteDeviceDiscoveryEvent.select(new Annotation[]{Phase.BYEBYE}).fire(new RemoteDeviceDiscovery(remoteDevice));
        }

        public void localDeviceAdded(Registry registry, LocalDevice localDevice) {
            this.localDeviceDiscoveryEvent.select(new Annotation[]{Phase.COMPLETE}).fire(new LocalDeviceDiscovery(localDevice));
        }

        public void localDeviceRemoved(Registry registry, LocalDevice localDevice) {
            this.localDeviceDiscoveryEvent.select(new Annotation[]{Phase.BYEBYE}).fire(new LocalDeviceDiscovery(localDevice));
        }

        public void beforeShutdown(Registry registry) {
            this.registryShutdownEvent.select(new Annotation[]{new AnnotationLiteral<Before>() {
            }}).fire(new RegistryShutdown());
        }

        public void afterShutdown() {
            this.registryShutdownEvent.select(new Annotation[]{new AnnotationLiteral<After>() {
            }}).fire(new RegistryShutdown());
        }
    }

    public UpnpServiceConfiguration getConfiguration() {
        return (UpnpServiceConfiguration) this.configuration.get();
    }

    public ControlPoint getControlPoint() {
        return (ControlPoint) this.controlPointInstance.get();
    }

    public ProtocolFactory getProtocolFactory() {
        return (ProtocolFactory) this.protocolFactoryInstance.get();
    }

    public Registry getRegistry() {
        return (Registry) this.registryInstance.get();
    }

    public Router getRouter() {
        return (Router) this.routerInstance.get();
    }

    public void start(@Observes Start start) {
        log.info(">>> Starting managed UPnP service...");
        getRegistry().addListener(this.registryListenerAdapter);
        this.enableRouterEvent.fire(new EnableRouter());
        log.info("<<< Managed UPnP service started successfully");
    }

    public void shutdown() {
        shutdown(null);
    }

    public void shutdown(@Observes Shutdown shutdown) {
        log.info(">>> Shutting down managed UPnP service...");
        getRegistry().shutdown();
        this.disableRouterEvent.fire(new DisableRouter());
        getConfiguration().shutdown();
        log.info("<<< Managed UPnP service shutdown completed");
    }
}
