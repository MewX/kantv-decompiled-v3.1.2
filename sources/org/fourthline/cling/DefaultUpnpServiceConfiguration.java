package org.fourthline.cling;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor.DiscardPolicy;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.logging.Logger;
import javax.enterprise.inject.Alternative;
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
import org.fourthline.cling.transport.impl.DatagramProcessorImpl;
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
import org.seamless.util.Exceptions;

@Alternative
public class DefaultUpnpServiceConfiguration implements UpnpServiceConfiguration {
    /* access modifiers changed from: private */
    public static Logger log = Logger.getLogger(DefaultUpnpServiceConfiguration.class.getName());
    private final DatagramProcessor datagramProcessor;
    private final ExecutorService defaultExecutorService;
    private final DeviceDescriptorBinder deviceDescriptorBinderUDA10;
    private final GENAEventProcessor genaEventProcessor;
    private final Namespace namespace;
    private final ServiceDescriptorBinder serviceDescriptorBinderUDA10;
    private final SOAPActionProcessor soapActionProcessor;
    private final int streamListenPort;

    public static class ClingExecutor extends ThreadPoolExecutor {
        public ClingExecutor() {
            this(new ClingThreadFactory(), new DiscardPolicy() {
                public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
                    Logger access$000 = DefaultUpnpServiceConfiguration.log;
                    StringBuilder sb = new StringBuilder();
                    sb.append("Thread pool rejected execution of ");
                    sb.append(runnable.getClass());
                    access$000.info(sb.toString());
                    super.rejectedExecution(runnable, threadPoolExecutor);
                }
            });
        }

        public ClingExecutor(ThreadFactory threadFactory, RejectedExecutionHandler rejectedExecutionHandler) {
            super(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), threadFactory, rejectedExecutionHandler);
        }

        /* access modifiers changed from: protected */
        public void afterExecute(Runnable runnable, Throwable th) {
            super.afterExecute(runnable, th);
            if (th != null) {
                Throwable unwrap = Exceptions.unwrap(th);
                if (!(unwrap instanceof InterruptedException)) {
                    Logger access$000 = DefaultUpnpServiceConfiguration.log;
                    StringBuilder sb = new StringBuilder();
                    sb.append("Thread terminated ");
                    sb.append(runnable);
                    sb.append(" abruptly with exception: ");
                    sb.append(th);
                    access$000.warning(sb.toString());
                    Logger access$0002 = DefaultUpnpServiceConfiguration.log;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Root cause: ");
                    sb2.append(unwrap);
                    access$0002.warning(sb2.toString());
                }
            }
        }
    }

    public static class ClingThreadFactory implements ThreadFactory {
        protected final ThreadGroup group;
        protected final String namePrefix = "cling-";
        protected final AtomicInteger threadNumber = new AtomicInteger(1);

        public ClingThreadFactory() {
            SecurityManager securityManager = System.getSecurityManager();
            this.group = securityManager != null ? securityManager.getThreadGroup() : Thread.currentThread().getThreadGroup();
        }

        public Thread newThread(Runnable runnable) {
            ThreadGroup threadGroup = this.group;
            StringBuilder sb = new StringBuilder();
            sb.append("cling-");
            sb.append(this.threadNumber.getAndIncrement());
            Thread thread = new Thread(threadGroup, runnable, sb.toString(), 0);
            if (thread.isDaemon()) {
                thread.setDaemon(false);
            }
            if (thread.getPriority() != 5) {
                thread.setPriority(5);
            }
            return thread;
        }
    }

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

    public DefaultUpnpServiceConfiguration() {
        this(0);
    }

    public DefaultUpnpServiceConfiguration(int i) {
        this(i, true);
    }

    protected DefaultUpnpServiceConfiguration(boolean z) {
        this(0, z);
    }

    protected DefaultUpnpServiceConfiguration(int i, boolean z) {
        if (!z || !ModelUtil.ANDROID_RUNTIME) {
            this.streamListenPort = i;
            this.defaultExecutorService = createDefaultExecutorService();
            this.datagramProcessor = createDatagramProcessor();
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
    public DatagramProcessor createDatagramProcessor() {
        return new DatagramProcessorImpl();
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
