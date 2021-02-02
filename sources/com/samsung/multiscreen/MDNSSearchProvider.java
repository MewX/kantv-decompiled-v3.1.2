package com.samsung.multiscreen;

import android.content.Context;
import android.net.wifi.WifiManager.MulticastLock;
import android.util.Log;
import com.samsung.multiscreen.util.NetUtil;
import com.samsung.multiscreen.util.RunUtil;
import java.io.IOException;
import javax.jmdns.JmDNS;
import javax.jmdns.ServiceEvent;
import javax.jmdns.ServiceInfo;
import javax.jmdns.ServiceListener;

public class MDNSSearchProvider extends SearchProvider {
    private static final long MAX_GET_SERVICE_INFO_WAIT_TIME = 15000;
    private static final int SERVICE_CHECK_TIMEOUT = 2000;
    static final String SERVICE_TYPE = "_samsungmsf._tcp.local.";
    private static final String TAG = "MDNSSearchProvider";
    private final Context context;
    /* access modifiers changed from: private */
    public volatile JmDNS jmdns;
    private volatile MulticastLock multicastLock;
    private final ServiceListener serviceListener = new ServiceListener() {
        public void serviceResolved(ServiceEvent serviceEvent) {
        }

        public void serviceAdded(final ServiceEvent serviceEvent) {
            if (MDNSSearchProvider.this.searching) {
                RunUtil.runInBackground(new Runnable() {
                    public void run() {
                        Service service = MDNSSearchProvider.getService(MDNSSearchProvider.this.jmdns, serviceEvent.getType(), serviceEvent.getName());
                        if (service != null && service.getUri() != null) {
                            Service.getByURI(service.getUri(), 2000, new Result<Service>() {
                                public void onError(Error error) {
                                }

                                public void onSuccess(Service service) {
                                    MDNSSearchProvider.this.addService(service);
                                }
                            });
                        }
                    }
                });
            }
        }

        public void serviceRemoved(ServiceEvent serviceEvent) {
            MDNSSearchProvider.this.removeServiceAndNotify(MDNSSearchProvider.this.getServiceById(serviceEvent.getName()));
        }
    };

    private MDNSSearchProvider(Context context2) {
        this.context = context2;
    }

    private MDNSSearchProvider(Context context2, SearchListener searchListener) {
        super(searchListener);
        this.context = context2;
    }

    public void start() {
        if (this.searching) {
            stop();
        }
        clearServices();
        this.searching = acquireMulticastLock() && createJmDNS();
    }

    public boolean stop() {
        if (!this.searching) {
            return false;
        }
        this.searching = false;
        destroyJmDNS();
        releaseMulticastLock();
        return true;
    }

    public static SearchProvider create(Context context2) {
        return new MDNSSearchProvider(context2);
    }

    static SearchProvider create(Context context2, SearchListener searchListener) {
        return new MDNSSearchProvider(context2, searchListener);
    }

    static ProviderThread getById(final Context context2, final String str, final Result<Service> result) {
        AnonymousClass3 r0 = new ProviderThread(new Runnable() {
            public void run() {
                Runnable runnable;
                JmDNS jmDNS;
                ProviderThread providerThread = (ProviderThread) Thread.currentThread();
                Context context = context2;
                String str = MDNSSearchProvider.TAG;
                MulticastLock acquireMulticastLock = NetUtil.acquireMulticastLock(context, str);
                ServiceInfo serviceInfo = null;
                try {
                    jmDNS = JmDNS.create(NetUtil.getDeviceIpAddress(context2));
                    runnable = null;
                } catch (IOException e) {
                    e.printStackTrace();
                    runnable = new Runnable() {
                        public void run() {
                            result.onError(Error.create((Exception) e));
                        }
                    };
                    jmDNS = null;
                }
                if (jmDNS != null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str);
                    sb.append(".");
                    sb.append(MDNSSearchProvider.SERVICE_TYPE);
                    String sb2 = sb.toString();
                    String str2 = str;
                    int i = 2;
                    while (!providerThread.isTerminate() && serviceInfo == null) {
                        int i2 = i - 1;
                        if (i < 0 || Thread.currentThread().isInterrupted()) {
                            break;
                        }
                        serviceInfo = jmDNS.getServiceInfo(sb2, str2, false, 5000);
                        i = i2;
                    }
                    if (!providerThread.isTerminate()) {
                        if (serviceInfo == null) {
                            runnable = new Runnable() {
                                public void run() {
                                    result.onError(Error.create("Not Found"));
                                }
                            };
                        } else {
                            final Service create = Service.create(serviceInfo);
                            runnable = new Runnable() {
                                public void run() {
                                    result.onSuccess(create);
                                }
                            };
                        }
                    }
                    try {
                        jmDNS.close();
                    } catch (IOException e2) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("getById error: ");
                        sb3.append(e2.getMessage());
                        Log.e(str, sb3.toString());
                    }
                }
                NetUtil.releaseMulticastLock(acquireMulticastLock);
                if (runnable != null) {
                    RunUtil.runOnUI(runnable);
                }
            }
        }) {
            private boolean terminate = false;

            /* access modifiers changed from: 0000 */
            public void terminate() {
                this.terminate = true;
            }

            public boolean isTerminate() {
                return this.terminate;
            }
        };
        r0.start();
        return r0;
    }

    private boolean createJmDNS() {
        destroyJmDNS();
        try {
            this.jmdns = JmDNS.create(NetUtil.getDeviceIpAddress(this.context));
            this.jmdns.addServiceListener(SERVICE_TYPE, this.serviceListener);
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    private synchronized boolean destroyJmDNS() {
        boolean z;
        z = false;
        if (this.jmdns != null) {
            this.jmdns.removeServiceListener(SERVICE_TYPE, this.serviceListener);
            try {
                this.jmdns.close();
                z = true;
            } catch (IOException e) {
                e.printStackTrace();
            }
            this.jmdns = null;
        }
        return z;
    }

    static Service getService(JmDNS jmDNS, String str, String str2) {
        int i = 2;
        while (true) {
            int i2 = i - 1;
            if (i < 0) {
                return null;
            }
            ServiceInfo serviceInfo = jmDNS.getServiceInfo(str, str2, false, 5000);
            if (serviceInfo != null) {
                return Service.create(serviceInfo);
            }
            i = i2;
        }
    }

    private boolean acquireMulticastLock() {
        try {
            if (this.multicastLock == null) {
                this.multicastLock = NetUtil.acquireMulticastLock(this.context, TAG);
            } else if (!this.multicastLock.isHeld()) {
                this.multicastLock.acquire();
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    private boolean releaseMulticastLock() {
        try {
            NetUtil.releaseMulticastLock(this.multicastLock);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
