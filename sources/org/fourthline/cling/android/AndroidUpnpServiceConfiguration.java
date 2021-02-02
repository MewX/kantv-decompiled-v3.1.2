package org.fourthline.cling.android;

import android.os.Build.VERSION;
import org.fourthline.cling.DefaultUpnpServiceConfiguration;
import org.fourthline.cling.binding.xml.DeviceDescriptorBinder;
import org.fourthline.cling.binding.xml.RecoveringUDA10DeviceDescriptorBinderImpl;
import org.fourthline.cling.binding.xml.ServiceDescriptorBinder;
import org.fourthline.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl;
import org.fourthline.cling.model.Namespace;
import org.fourthline.cling.model.ServerClientTokens;
import org.fourthline.cling.transport.impl.AsyncServletStreamServerConfigurationImpl;
import org.fourthline.cling.transport.impl.AsyncServletStreamServerImpl;
import org.fourthline.cling.transport.impl.RecoveringGENAEventProcessorImpl;
import org.fourthline.cling.transport.impl.RecoveringSOAPActionProcessorImpl;
import org.fourthline.cling.transport.impl.jetty.JettyServletContainer;
import org.fourthline.cling.transport.impl.jetty.StreamClientConfigurationImpl;
import org.fourthline.cling.transport.impl.jetty.StreamClientImpl;
import org.fourthline.cling.transport.spi.GENAEventProcessor;
import org.fourthline.cling.transport.spi.NetworkAddressFactory;
import org.fourthline.cling.transport.spi.SOAPActionProcessor;
import org.fourthline.cling.transport.spi.StreamClient;
import org.fourthline.cling.transport.spi.StreamServer;

public class AndroidUpnpServiceConfiguration extends DefaultUpnpServiceConfiguration {
    public int getRegistryMaintenanceIntervalMillis() {
        return 3000;
    }

    public AndroidUpnpServiceConfiguration() {
        this(0);
    }

    public AndroidUpnpServiceConfiguration(int i) {
        super(i, false);
        System.setProperty("org.xml.sax.driver", "org.xmlpull.v1.sax2.Driver");
    }

    /* access modifiers changed from: protected */
    public NetworkAddressFactory createNetworkAddressFactory(int i) {
        return new AndroidNetworkAddressFactory(i);
    }

    /* access modifiers changed from: protected */
    public Namespace createNamespace() {
        return new Namespace("/upnp");
    }

    public StreamClient createStreamClient() {
        return new StreamClientImpl(new StreamClientConfigurationImpl(getSyncProtocolExecutorService()) {
            public String getUserAgentValue(int i, int i2) {
                ServerClientTokens serverClientTokens = new ServerClientTokens(i, i2);
                serverClientTokens.setOsName("Android");
                serverClientTokens.setOsVersion(VERSION.RELEASE);
                return serverClientTokens.toString();
            }
        });
    }

    public StreamServer createStreamServer(NetworkAddressFactory networkAddressFactory) {
        return new AsyncServletStreamServerImpl(new AsyncServletStreamServerConfigurationImpl(JettyServletContainer.INSTANCE, networkAddressFactory.getStreamListenPort()));
    }

    /* access modifiers changed from: protected */
    public DeviceDescriptorBinder createDeviceDescriptorBinderUDA10() {
        return new RecoveringUDA10DeviceDescriptorBinderImpl();
    }

    /* access modifiers changed from: protected */
    public ServiceDescriptorBinder createServiceDescriptorBinderUDA10() {
        return new UDA10ServiceDescriptorBinderSAXImpl();
    }

    /* access modifiers changed from: protected */
    public SOAPActionProcessor createSOAPActionProcessor() {
        return new RecoveringSOAPActionProcessorImpl();
    }

    /* access modifiers changed from: protected */
    public GENAEventProcessor createGENAEventProcessor() {
        return new RecoveringGENAEventProcessorImpl();
    }
}
