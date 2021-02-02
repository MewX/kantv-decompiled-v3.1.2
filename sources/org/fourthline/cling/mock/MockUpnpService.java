package org.fourthline.cling.mock;

import javax.enterprise.inject.Alternative;
import org.fourthline.cling.UpnpService;
import org.fourthline.cling.UpnpServiceConfiguration;
import org.fourthline.cling.controlpoint.ControlPoint;
import org.fourthline.cling.controlpoint.ControlPointImpl;
import org.fourthline.cling.model.message.header.UpnpHeader;
import org.fourthline.cling.model.meta.LocalDevice;
import org.fourthline.cling.protocol.ProtocolFactory;
import org.fourthline.cling.protocol.ProtocolFactoryImpl;
import org.fourthline.cling.protocol.async.SendingNotificationAlive;
import org.fourthline.cling.protocol.async.SendingSearch;
import org.fourthline.cling.registry.Registry;
import org.fourthline.cling.registry.RegistryImpl;
import org.fourthline.cling.registry.RegistryMaintainer;
import org.fourthline.cling.transport.RouterException;
import org.fourthline.cling.transport.spi.NetworkAddressFactory;

@Alternative
public class MockUpnpService implements UpnpService {
    protected final UpnpServiceConfiguration configuration;
    protected final ControlPoint controlPoint;
    protected final NetworkAddressFactory networkAddressFactory;
    protected final ProtocolFactory protocolFactory;
    protected final Registry registry;
    protected final MockRouter router;

    public static class MockProtocolFactory extends ProtocolFactoryImpl {
        /* access modifiers changed from: private */
        public boolean sendsAlive;

        public MockProtocolFactory(UpnpService upnpService, boolean z) {
            super(upnpService);
            this.sendsAlive = z;
        }

        public SendingNotificationAlive createSendingNotificationAlive(LocalDevice localDevice) {
            return new SendingNotificationAlive(getUpnpService(), localDevice) {
                /* access modifiers changed from: protected */
                public void execute() throws RouterException {
                    if (MockProtocolFactory.this.sendsAlive) {
                        super.execute();
                    }
                }
            };
        }

        public SendingSearch createSendingSearch(UpnpHeader upnpHeader, int i) {
            return new SendingSearch(getUpnpService(), upnpHeader, i) {
                public int getBulkIntervalMilliseconds() {
                    return 0;
                }
            };
        }
    }

    public MockUpnpService() {
        this(false, new MockUpnpServiceConfiguration(false, false));
    }

    public MockUpnpService(MockUpnpServiceConfiguration mockUpnpServiceConfiguration) {
        this(false, mockUpnpServiceConfiguration);
    }

    public MockUpnpService(boolean z, boolean z2) {
        this(z, new MockUpnpServiceConfiguration(z2, false));
    }

    public MockUpnpService(boolean z, boolean z2, boolean z3) {
        this(z, new MockUpnpServiceConfiguration(z2, z3));
    }

    public MockUpnpService(boolean z, final MockUpnpServiceConfiguration mockUpnpServiceConfiguration) {
        this.configuration = mockUpnpServiceConfiguration;
        this.protocolFactory = createProtocolFactory(this, z);
        this.registry = new RegistryImpl(this) {
            /* access modifiers changed from: protected */
            public RegistryMaintainer createRegistryMaintainer() {
                if (mockUpnpServiceConfiguration.isMaintainsRegistry()) {
                    return super.createRegistryMaintainer();
                }
                return null;
            }
        };
        this.networkAddressFactory = this.configuration.createNetworkAddressFactory();
        this.router = createRouter();
        this.controlPoint = new ControlPointImpl(mockUpnpServiceConfiguration, this.protocolFactory, this.registry);
    }

    /* access modifiers changed from: protected */
    public ProtocolFactory createProtocolFactory(UpnpService upnpService, boolean z) {
        return new MockProtocolFactory(upnpService, z);
    }

    /* access modifiers changed from: protected */
    public MockRouter createRouter() {
        return new MockRouter(getConfiguration(), getProtocolFactory());
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

    public MockRouter getRouter() {
        return this.router;
    }

    public void shutdown() {
        getRegistry().shutdown();
        getConfiguration().shutdown();
    }
}
