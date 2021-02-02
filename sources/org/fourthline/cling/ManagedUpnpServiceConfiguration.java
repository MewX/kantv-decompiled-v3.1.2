package org.fourthline.cling;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.logging.Logger;
import javax.annotation.PostConstruct;
import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import org.fourthline.cling.DefaultUpnpServiceConfiguration.ClingExecutor;
import org.fourthline.cling.binding.xml.DeviceDescriptorBinder;
import org.fourthline.cling.binding.xml.ServiceDescriptorBinder;
import org.fourthline.cling.binding.xml.UDA10DeviceDescriptorBinderImpl;
import org.fourthline.cling.binding.xml.UDA10ServiceDescriptorBinderImpl;
import org.fourthline.cling.model.ModelUtil;
import org.fourthline.cling.model.Namespace;
import org.fourthline.cling.model.message.UpnpHeaders;
import org.fourthline.cling.model.meta.RemoteDeviceIdentity;
import org.fourthline.cling.model.meta.RemoteService;
import org.fourthline.cling.model.types.ServiceType;
import org.fourthline.cling.transport.impl.DatagramIOConfigurationImpl;
import org.fourthline.cling.transport.impl.DatagramIOImpl;
import org.fourthline.cling.transport.impl.GENAEventProcessorImpl;
import org.fourthline.cling.transport.impl.MulticastReceiverConfigurationImpl;
import org.fourthline.cling.transport.impl.MulticastReceiverImpl;
import org.fourthline.cling.transport.impl.NetworkAddressFactoryImpl;
import org.fourthline.cling.transport.impl.SOAPActionProcessorImpl;
import org.fourthline.cling.transport.impl.StreamClientConfigurationImpl;
import org.fourthline.cling.transport.impl.StreamClientImpl;
import org.fourthline.cling.transport.impl.StreamServerConfigurationImpl;
import org.fourthline.cling.transport.impl.StreamServerImpl;
import org.fourthline.cling.transport.spi.DatagramIO;
import org.fourthline.cling.transport.spi.DatagramProcessor;
import org.fourthline.cling.transport.spi.GENAEventProcessor;
import org.fourthline.cling.transport.spi.MulticastReceiver;
import org.fourthline.cling.transport.spi.NetworkAddressFactory;
import org.fourthline.cling.transport.spi.SOAPActionProcessor;
import org.fourthline.cling.transport.spi.StreamClient;
import org.fourthline.cling.transport.spi.StreamServer;

@ApplicationScoped
public class ManagedUpnpServiceConfiguration implements UpnpServiceConfiguration {
    private static Logger log = Logger.getLogger(DefaultUpnpServiceConfiguration.class.getName());
    @Inject
    protected DatagramProcessor datagramProcessor;
    private ExecutorService defaultExecutorService;
    private DeviceDescriptorBinder deviceDescriptorBinderUDA10;
    private GENAEventProcessor genaEventProcessor;
    private Namespace namespace;
    private ServiceDescriptorBinder serviceDescriptorBinderUDA10;
    private SOAPActionProcessor soapActionProcessor;
    private int streamListenPort;

    public int getAliveIntervalMillis() {
        return 0;
    }

    public UpnpHeaders getDescriptorRetrievalHeaders(RemoteDeviceIdentity remoteDeviceIdentity) {
        return null;
    }

    public UpnpHeaders getEventSubscriptionHeaders(RemoteService remoteService) {
        return null;
    }

    public int getRegistryMaintenanceIntervalMillis() {
        return 1000;
    }

    public Integer getRemoteDeviceMaxAgeSeconds() {
        return null;
    }

    public boolean isReceivedSubscriptionTimeoutIgnored() {
        return false;
    }

    @PostConstruct
    public void init() {
        if (!ModelUtil.ANDROID_RUNTIME) {
            this.streamListenPort = 0;
            this.defaultExecutorService = createDefaultExecutorService();
            this.soapActionProcessor = createSOAPActionProcessor();
            this.genaEventProcessor = createGENAEventProcessor();
            this.deviceDescriptorBinderUDA10 = createDeviceDescriptorBinderUDA10();
            this.serviceDescriptorBinderUDA10 = createServiceDescriptorBinderUDA10();
            this.namespace = createNamespace();
            return;
        }
        throw new Error("Unsupported runtime environment, use org.fourthline.cling.android.AndroidUpnpServiceConfiguration");
    }

    public DatagramProcessor getDatagramProcessor() {
        return this.datagramProcessor;
    }

    public SOAPActionProcessor getSoapActionProcessor() {
        return this.soapActionProcessor;
    }

    public GENAEventProcessor getGenaEventProcessor() {
        return this.genaEventProcessor;
    }

    public StreamClient createStreamClient() {
        return new StreamClientImpl(new StreamClientConfigurationImpl(getSyncProtocolExecutorService()));
    }

    public MulticastReceiver createMulticastReceiver(NetworkAddressFactory networkAddressFactory) {
        return new MulticastReceiverImpl(new MulticastReceiverConfigurationImpl(networkAddressFactory.getMulticastGroup(), networkAddressFactory.getMulticastPort()));
    }

    public DatagramIO createDatagramIO(NetworkAddressFactory networkAddressFactory) {
        return new DatagramIOImpl(new DatagramIOConfigurationImpl());
    }

    public StreamServer createStreamServer(NetworkAddressFactory networkAddressFactory) {
        return new StreamServerImpl(new StreamServerConfigurationImpl(networkAddressFactory.getStreamListenPort()));
    }

    public Executor getMulticastReceiverExecutor() {
        return getDefaultExecutorService();
    }

    public Executor getDatagramIOExecutor() {
        return getDefaultExecutorService();
    }

    public ExecutorService getStreamServerExecutorService() {
        return getDefaultExecutorService();
    }

    public DeviceDescriptorBinder getDeviceDescriptorBinderUDA10() {
        return this.deviceDescriptorBinderUDA10;
    }

    public ServiceDescriptorBinder getServiceDescriptorBinderUDA10() {
        return this.serviceDescriptorBinderUDA10;
    }

    public ServiceType[] getExclusiveServiceTypes() {
        return new ServiceType[0];
    }

    public Executor getAsyncProtocolExecutor() {
        return getDefaultExecutorService();
    }

    public ExecutorService getSyncProtocolExecutorService() {
        return getDefaultExecutorService();
    }

    public Namespace getNamespace() {
        return this.namespace;
    }

    public Executor getRegistryMaintainerExecutor() {
        return getDefaultExecutorService();
    }

    public Executor getRegistryListenerExecutor() {
        return getDefaultExecutorService();
    }

    public NetworkAddressFactory createNetworkAddressFactory() {
        return createNetworkAddressFactory(this.streamListenPort);
    }

    public void shutdown() {
        log.fine("Shutting down default executor service");
        getDefaultExecutorService().shutdownNow();
    }

    /* access modifiers changed from: protected */
    public NetworkAddressFactory createNetworkAddressFactory(int i) {
        return new NetworkAddressFactoryImpl(i);
    }

    /* access modifiers changed from: protected */
    public SOAPActionProcessor createSOAPActionProcessor() {
        return new SOAPActionProcessorImpl();
    }

    /* access modifiers changed from: protected */
    public GENAEventProcessor createGENAEventProcessor() {
        return new GENAEventProcessorImpl();
    }

    /* access modifiers changed from: protected */
    public DeviceDescriptorBinder createDeviceDescriptorBinderUDA10() {
        return new UDA10DeviceDescriptorBinderImpl();
    }

    /* access modifiers changed from: protected */
    public ServiceDescriptorBinder createServiceDescriptorBinderUDA10() {
        return new UDA10ServiceDescriptorBinderImpl();
    }

    /* access modifiers changed from: protected */
    public Namespace createNamespace() {
        return new Namespace();
    }

    /* access modifiers changed from: protected */
    public ExecutorService getDefaultExecutorService() {
        return this.defaultExecutorService;
    }

    /* access modifiers changed from: protected */
    public ExecutorService createDefaultExecutorService() {
        return new ClingExecutor();
    }
}
