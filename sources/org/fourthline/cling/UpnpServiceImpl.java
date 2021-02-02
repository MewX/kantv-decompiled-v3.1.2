package org.fourthline.cling;

import java.util.logging.Level;
import java.util.logging.Logger;
import javax.enterprise.inject.Alternative;
import org.fourthline.cling.controlpoint.ControlPoint;
import org.fourthline.cling.controlpoint.ControlPointImpl;
import org.fourthline.cling.protocol.ProtocolFactory;
import org.fourthline.cling.protocol.ProtocolFactoryImpl;
import org.fourthline.cling.registry.Registry;
import org.fourthline.cling.registry.RegistryImpl;
import org.fourthline.cling.registry.RegistryListener;
import org.fourthline.cling.transport.Router;
import org.fourthline.cling.transport.RouterException;
import org.fourthline.cling.transport.RouterImpl;
import org.seamless.util.Exceptions;

@Alternative
public class UpnpServiceImpl implements UpnpService {
    /* access modifiers changed from: private */
    public static Logger log = Logger.getLogger(UpnpServiceImpl.class.getName());
    protected final UpnpServiceConfiguration configuration;
    protected final ControlPoint controlPoint;
    protected final ProtocolFactory protocolFactory;
    protected final Registry registry;
    protected final Router router;

    public UpnpServiceImpl() {
        this(new DefaultUpnpServiceConfiguration(), new RegistryListener[0]);
    }

    public UpnpServiceImpl(RegistryListener... registryListenerArr) {
        this(new DefaultUpnpServiceConfiguration(), registryListenerArr);
    }

    public UpnpServiceImpl(UpnpServiceConfiguration upnpServiceConfiguration, RegistryListener... registryListenerArr) {
        this.configuration = upnpServiceConfiguration;
        log.info(">>> Starting UPnP service...");
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Using configuration: ");
        sb.append(getConfiguration().getClass().getName());
        logger.info(sb.toString());
        this.protocolFactory = createProtocolFactory();
        this.registry = createRegistry(this.protocolFactory);
        for (RegistryListener addListener : registryListenerArr) {
            this.registry.addListener(addListener);
        }
        this.router = createRouter(this.protocolFactory, this.registry);
        try {
            this.router.enable();
            this.controlPoint = createControlPoint(this.protocolFactory, this.registry);
            log.info("<<< UPnP service started successfully");
        } catch (RouterException e) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Enabling network router failed: ");
            sb2.append(e);
            throw new RuntimeException(sb2.toString(), e);
        }
    }

    /* access modifiers changed from: protected */
    public ProtocolFactory createProtocolFactory() {
        return new ProtocolFactoryImpl(this);
    }

    /* access modifiers changed from: protected */
    public Registry createRegistry(ProtocolFactory protocolFactory2) {
        return new RegistryImpl(this);
    }

    /* access modifiers changed from: protected */
    public Router createRouter(ProtocolFactory protocolFactory2, Registry registry2) {
        return new RouterImpl(getConfiguration(), protocolFactory2);
    }

    /* access modifiers changed from: protected */
    public ControlPoint createControlPoint(ProtocolFactory protocolFactory2, Registry registry2) {
        return new ControlPointImpl(getConfiguration(), protocolFactory2, registry2);
    }

    public UpnpServiceConfiguration getConfiguration() {
        return this.configuration;
    }

    public ControlPoint getControlPoint() {
        return this.controlPoint;
    }

    public ProtocolFactory getProtocolFactory() {
        return this.protocolFactory;
    }

    public Registry getRegistry() {
        return this.registry;
    }

    public Router getRouter() {
        return this.router;
    }

    public synchronized void shutdown() {
        shutdown(false);
    }

    /* access modifiers changed from: protected */
    public void shutdown(boolean z) {
        AnonymousClass1 r0 = new Runnable() {
            public void run() {
                UpnpServiceImpl.log.info(">>> Shutting down UPnP service...");
                UpnpServiceImpl.this.shutdownRegistry();
                UpnpServiceImpl.this.shutdownRouter();
                UpnpServiceImpl.this.shutdownConfiguration();
                UpnpServiceImpl.log.info("<<< UPnP service shutdown completed");
            }
        };
        if (z) {
            new Thread(r0).start();
        } else {
            r0.run();
        }
    }

    /* access modifiers changed from: protected */
    public void shutdownRegistry() {
        getRegistry().shutdown();
    }

    /* access modifiers changed from: protected */
    public void shutdownRouter() {
        try {
            getRouter().shutdown();
        } catch (RouterException e) {
            Throwable unwrap = Exceptions.unwrap(e);
            if (unwrap instanceof InterruptedException) {
                Logger logger = log;
                Level level = Level.INFO;
                StringBuilder sb = new StringBuilder();
                sb.append("Router shutdown was interrupted: ");
                sb.append(e);
                logger.log(level, sb.toString(), unwrap);
                return;
            }
            Logger logger2 = log;
            Level level2 = Level.SEVERE;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Router error on shutdown: ");
            sb2.append(e);
            logger2.log(level2, sb2.toString(), unwrap);
        }
    }

    /* access modifiers changed from: protected */
    public void shutdownConfiguration() {
        getConfiguration().shutdown();
    }
}
