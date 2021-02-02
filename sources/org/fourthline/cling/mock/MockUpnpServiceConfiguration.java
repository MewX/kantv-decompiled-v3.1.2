package org.fourthline.cling.mock;

import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.List;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import javax.enterprise.inject.Alternative;
import org.fourthline.cling.DefaultUpnpServiceConfiguration;
import org.fourthline.cling.transport.impl.NetworkAddressFactoryImpl;
import org.fourthline.cling.transport.spi.NetworkAddressFactory;

@Alternative
public class MockUpnpServiceConfiguration extends DefaultUpnpServiceConfiguration {
    protected final boolean maintainsRegistry;
    protected final boolean multiThreaded;

    public MockUpnpServiceConfiguration() {
        this(false, false);
    }

    public MockUpnpServiceConfiguration(boolean z) {
        this(z, false);
    }

    public MockUpnpServiceConfiguration(boolean z, boolean z2) {
        super(false);
        this.maintainsRegistry = z;
        this.multiThreaded = z2;
    }

    public boolean isMaintainsRegistry() {
        return this.maintainsRegistry;
    }

    public boolean isMultiThreaded() {
        return this.multiThreaded;
    }

    /* access modifiers changed from: protected */
    public NetworkAddressFactory createNetworkAddressFactory(int i) {
        return new NetworkAddressFactoryImpl(i) {
            /* access modifiers changed from: protected */
            public boolean isUsableNetworkInterface(NetworkInterface networkInterface) throws Exception {
                return networkInterface.isLoopback();
            }

            /* access modifiers changed from: protected */
            public boolean isUsableAddress(NetworkInterface networkInterface, InetAddress inetAddress) {
                return inetAddress.isLoopbackAddress() && (inetAddress instanceof Inet4Address);
            }
        };
    }

    public Executor getRegistryMaintainerExecutor() {
        if (isMaintainsRegistry()) {
            return new Executor() {
                public void execute(Runnable runnable) {
                    new Thread(runnable).start();
                }
            };
        }
        return getDefaultExecutorService();
    }

    /* access modifiers changed from: protected */
    public ExecutorService getDefaultExecutorService() {
        if (isMultiThreaded()) {
            return super.getDefaultExecutorService();
        }
        return new AbstractExecutorService() {
            boolean terminated;

            public void shutdown() {
                this.terminated = true;
            }

            public List<Runnable> shutdownNow() {
                shutdown();
                return null;
            }

            public boolean isShutdown() {
                return this.terminated;
            }

            public boolean isTerminated() {
                return this.terminated;
            }

            public boolean awaitTermination(long j, TimeUnit timeUnit) throws InterruptedException {
                shutdown();
                return this.terminated;
            }

            public void execute(Runnable runnable) {
                runnable.run();
            }
        };
    }
}
