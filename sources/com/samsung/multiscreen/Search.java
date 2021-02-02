package com.samsung.multiscreen;

import android.content.Context;
import android.util.Log;
import com.samsung.multiscreen.util.RunUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class Search {
    private static final int SERVICE_CHECK_TIMEOUT = 2000;
    private static final String TAG = "Search";
    private static Search instance;
    /* access modifiers changed from: private */
    public SearchProvider bleProvider = null;
    /* access modifiers changed from: private */
    public boolean clearProviders = false;
    private final Context context;
    /* access modifiers changed from: private */
    public StandbyDeviceList mStandbyDeviceList;
    private int numRunning;
    /* access modifiers changed from: private */
    public volatile OnBleFoundListener onBleFoundListener;
    /* access modifiers changed from: private */
    public volatile OnServiceFoundListener onServiceFoundListener;
    /* access modifiers changed from: private */
    public volatile OnServiceLostListener onServiceLostListener;
    /* access modifiers changed from: private */
    public volatile OnStartListener onStartListener;
    private int onStartNotified;
    /* access modifiers changed from: private */
    public volatile OnStopListener onStopListener;
    private final List<SearchProvider> providers = new ArrayList();
    private final List<SearchProvider> removedProviders = new ArrayList();
    /* access modifiers changed from: private */
    public final SearchListener searchListener = new SearchListener() {
        public void onStart() {
            if (Search.access$006(Search.this) == 0 && Search.this.onStartListener != null) {
                RunUtil.runOnUI(new Runnable() {
                    public void run() {
                        if (Search.this.onStartListener != null) {
                            Search.this.onStartListener.onStart();
                        }
                    }
                });
            }
        }

        public void onStop() {
            if (Search.access$206(Search.this) <= 0) {
                if (Search.this.clearProviders) {
                    Search.this.removeAllProviders();
                } else {
                    Search.this.processRemovedProviders();
                }
                if (Search.this.onStopListener != null) {
                    RunUtil.runOnUI(new Runnable() {
                        public void run() {
                            if (Search.this.onStopListener != null) {
                                Search.this.onStopListener.onStop();
                            }
                        }
                    });
                }
            }
        }

        public void onFound(final Service service) {
            if (Search.this.addService(service)) {
                RunUtil.runOnUI(new Runnable() {
                    public void run() {
                        if (Search.this.mStandbyDeviceList != null) {
                            Service lostStandbyService = Search.this.mStandbyDeviceList.getLostStandbyService(service);
                            if (lostStandbyService != null) {
                                Search.this.onServiceLostListener.onLost(lostStandbyService);
                            }
                        }
                        if (Search.this.onServiceFoundListener != null) {
                            Search.this.onServiceFoundListener.onFound(service);
                        }
                    }
                });
            }
        }

        public void onLost(Service service) {
            Search.this.validateService(service);
        }

        public void onFoundOnlyBLE(final String str) {
            if (Search.this.onBleFoundListener != null) {
                RunUtil.runOnUI(new Runnable() {
                    public void run() {
                        if (Search.this.onBleFoundListener != null) {
                            Search.this.onBleFoundListener.onFoundOnlyBLE(str);
                        }
                    }
                });
            }
        }
    };
    private List<Service> services = new CopyOnWriteArrayList();
    private boolean startingBle = false;
    private boolean stoppingBle = false;

    public interface OnBleFoundListener {
        void onFoundOnlyBLE(String str);
    }

    public interface OnServiceFoundListener {
        void onFound(Service service);
    }

    public interface OnServiceLostListener {
        void onLost(Service service);
    }

    public interface OnStartListener {
        void onStart();
    }

    public interface OnStopListener {
        void onStop();
    }

    interface SearchListener extends OnStartListener, OnStopListener, OnServiceFoundListener, OnServiceLostListener, OnBleFoundListener {
    }

    static /* synthetic */ int access$006(Search search) {
        int i = search.onStartNotified - 1;
        search.onStartNotified = i;
        return i;
    }

    static /* synthetic */ int access$206(Search search) {
        int i = search.numRunning - 1;
        search.numRunning = i;
        return i;
    }

    public void setOnStartListener(OnStartListener onStartListener2) {
        this.onStartListener = onStartListener2;
    }

    public void setOnStopListener(OnStopListener onStopListener2) {
        this.onStopListener = onStopListener2;
    }

    public void setOnServiceFoundListener(OnServiceFoundListener onServiceFoundListener2) {
        this.onServiceFoundListener = onServiceFoundListener2;
    }

    public void setOnServiceLostListener(OnServiceLostListener onServiceLostListener2) {
        this.onServiceLostListener = onServiceLostListener2;
    }

    public void setOnBleFoundListener(OnBleFoundListener onBleFoundListener2) {
        this.onBleFoundListener = onBleFoundListener2;
    }

    static Search getInstance(Context context2) {
        if (instance == null) {
            instance = new Search(context2);
        }
        return instance;
    }

    private Search(Context context2) {
        this.context = context2;
    }

    public boolean isSearching() {
        for (SearchProvider isSearching : this.providers) {
            if (isSearching.isSearching()) {
                return true;
            }
        }
        return false;
    }

    public boolean isSearchingBle() {
        SearchProvider searchProvider = this.bleProvider;
        return searchProvider != null && searchProvider.isSearching();
    }

    public boolean start() {
        return start(Boolean.valueOf(true));
    }

    public boolean start(Boolean bool) {
        if (isSearching()) {
            return false;
        }
        startDiscovery();
        Log.d("Search", "start() called & Discovery started.");
        if (bool.booleanValue()) {
            this.mStandbyDeviceList = StandbyDeviceList.create(this.context, this.searchListener);
            this.mStandbyDeviceList.start();
        } else {
            StandbyDeviceList standbyDeviceList = this.mStandbyDeviceList;
            if (standbyDeviceList != null) {
                standbyDeviceList.destruct();
                this.mStandbyDeviceList = null;
            }
        }
        return true;
    }

    public boolean stop() {
        stopDiscovery();
        return true;
    }

    public void clearStandbyDeviceList() {
        StandbyDeviceList standbyDeviceList = this.mStandbyDeviceList;
        if (standbyDeviceList != null) {
            standbyDeviceList.clear();
        }
    }

    public boolean isSupportBle() {
        return this.context.getPackageManager().hasSystemFeature("android.hardware.bluetooth_le");
    }

    public boolean startUsingBle() {
        if (!isSupportBle() || isSearchingBle()) {
            return false;
        }
        startDiscoveryUsingBle();
        return true;
    }

    public boolean stopUsingBle() {
        stopDiscoveryUsingBle();
        return true;
    }

    public List<Service> getServices() {
        return Collections.unmodifiableList(this.services);
    }

    public void addProvider(SearchProvider searchProvider) {
        if (searchProvider != null) {
            synchronized (this.providers) {
                this.providers.add(searchProvider);
                searchProvider.setSearchListener(this.searchListener);
            }
            return;
        }
        throw new NullPointerException();
    }

    public synchronized boolean removeProvider(SearchProvider searchProvider) {
        if (searchProvider == null) {
            throw new NullPointerException();
        } else if (!searchProvider.isSearching()) {
            return this.providers.remove(searchProvider);
        } else {
            this.removedProviders.add(searchProvider);
            return false;
        }
    }

    /* access modifiers changed from: private */
    public synchronized void processRemovedProviders() {
        if (!this.removedProviders.isEmpty()) {
            Iterator it = new ArrayList(this.removedProviders).iterator();
            while (it.hasNext()) {
                SearchProvider searchProvider = (SearchProvider) it.next();
                if (!searchProvider.isSearching() && this.providers.remove(searchProvider)) {
                    this.removedProviders.remove(searchProvider);
                }
            }
        }
    }

    public synchronized void removeAllProviders() {
        this.clearProviders = false;
        if (!isSearching()) {
            this.providers.clear();
        } else {
            this.clearProviders = true;
        }
    }

    private void startDiscovery() {
        if (this.providers.isEmpty()) {
            Log.w("Search", "No search providers specified. Adding default providers...");
            this.providers.add(MDNSSearchProvider.create(this.context, this.searchListener));
            this.providers.add(MSFDSearchProvider.create(this.context, this.searchListener));
        }
        this.services.clear();
        int size = this.providers.size();
        this.numRunning = size;
        this.onStartNotified = size;
        for (final SearchProvider searchProvider : this.providers) {
            RunUtil.runInBackground(new Runnable() {
                public void run() {
                    searchProvider.start();
                    Search.this.searchListener.onStart();
                    if (!searchProvider.isSearching()) {
                        Search.this.searchListener.onStop();
                    }
                }
            });
        }
    }

    private void stopDiscovery() {
        for (final SearchProvider searchProvider : this.providers) {
            RunUtil.runInBackground(new Runnable() {
                public void run() {
                    if (searchProvider.stop()) {
                        Search.this.searchListener.onStop();
                        if (Search.this.mStandbyDeviceList != null) {
                            Search.this.mStandbyDeviceList.stop();
                        }
                    }
                }
            });
        }
    }

    private void startDiscoveryUsingBle() {
        if (this.bleProvider == null) {
            this.bleProvider = BLESearchProvider.create(this.context, this.searchListener);
        }
        this.numRunning = 1;
        this.onStartNotified = 1;
        RunUtil.runInBackground(new Runnable() {
            public void run() {
                Search.this.bleProvider.start();
                Search.this.searchListener.onStart();
                if (!Search.this.bleProvider.isSearching()) {
                    Search.this.searchListener.onStop();
                }
            }
        });
    }

    private void stopDiscoveryUsingBle() {
        RunUtil.runInBackground(new Runnable() {
            public void run() {
                if (Search.this.bleProvider.stop()) {
                    Search.this.searchListener.onStop();
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public boolean addService(Service service) {
        if (service == null) {
            return false;
        }
        synchronized (this.services) {
            Boolean valueOf = Boolean.valueOf(false);
            int i = 0;
            while (true) {
                if (i >= this.services.size()) {
                    break;
                } else if (((Service) this.services.get(i)).isEqualTo(service).booleanValue()) {
                    valueOf = Boolean.valueOf(true);
                    break;
                } else {
                    i++;
                }
            }
            if (valueOf.booleanValue()) {
                return false;
            }
            this.services.add(service);
            return true;
        }
    }

    private boolean removeService(Service service) {
        if (service == null) {
            return false;
        }
        synchronized (this.services) {
            for (int i = 0; i < this.services.size(); i++) {
                if (((Service) this.services.get(i)).isEqualTo(service).booleanValue()) {
                    this.services.remove(i);
                    return true;
                }
            }
            return false;
        }
    }

    private void removeAndNotify(final Service service) {
        if (removeService(service) && this.onServiceLostListener != null) {
            RunUtil.runOnUI(new Runnable() {
                public void run() {
                    if (Search.this.onServiceLostListener != null) {
                        Search.this.onServiceLostListener.onLost(service);
                        if (Search.this.mStandbyDeviceList != null) {
                            Service foundStandbyService = Search.this.mStandbyDeviceList.getFoundStandbyService(service);
                            if (foundStandbyService != null) {
                                Search.this.onServiceFoundListener.onFound(foundStandbyService);
                            }
                        }
                    }
                }
            });
        }
    }

    /* access modifiers changed from: private */
    public void validateService(Service service) {
        removeAndNotify(service);
        if (this.mStandbyDeviceList != null && !service.isStandbyService.booleanValue()) {
            for (SearchProvider removeService : this.providers) {
                removeService.removeService(service);
            }
        }
    }
}
