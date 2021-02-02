package com.samsung.multiscreen;

import java.util.Collections;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public abstract class SearchProvider {
    private static final String TAG = "SearchProvider";
    protected List<String> TVListOnlyBle = new CopyOnWriteArrayList();
    private SearchListener searchListener;
    boolean searching = false;
    private List<Service> services = new CopyOnWriteArrayList();

    public abstract void start();

    public abstract boolean stop();

    protected SearchProvider() {
    }

    /* access modifiers changed from: 0000 */
    public boolean isSearching() {
        return this.searching;
    }

    /* access modifiers changed from: protected */
    public void setSearchListener(SearchListener searchListener2) {
        this.searchListener = searchListener2;
    }

    SearchProvider(SearchListener searchListener2) {
        this.searchListener = searchListener2;
    }

    public List<Service> getServices() {
        return Collections.unmodifiableList(this.services);
    }

    /* access modifiers changed from: protected */
    public synchronized void setServices(List<Service> list) {
        clearServices();
        if (list != null) {
            this.services.addAll(list);
        }
    }

    /* access modifiers changed from: protected */
    public void addService(Service service) {
        if (service != null) {
            boolean z = false;
            synchronized (this.services) {
                if (!this.services.contains(service)) {
                    this.services.add(service);
                    z = true;
                }
            }
            if (z) {
                SearchListener searchListener2 = this.searchListener;
                if (searchListener2 != null) {
                    searchListener2.onFound(service);
                }
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void removeService(Service service) {
        if (service != null) {
            synchronized (this.services) {
                this.services.remove(service);
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void removeServiceAndNotify(Service service) {
        if (service != null) {
            removeService(service);
            SearchListener searchListener2 = this.searchListener;
            if (searchListener2 != null) {
                searchListener2.onLost(service);
            }
        }
    }

    /* access modifiers changed from: protected */
    public synchronized void clearServices() {
        this.services.clear();
    }

    /* access modifiers changed from: protected */
    public Service getServiceById(String str) {
        for (Service service : this.services) {
            if (service.getId().equals(str)) {
                return service;
            }
        }
        return null;
    }

    /* access modifiers changed from: protected */
    public void addTVOnlyBle(String str) {
        if (str != null) {
            boolean z = false;
            synchronized (this.TVListOnlyBle) {
                if (!this.TVListOnlyBle.contains(str)) {
                    this.TVListOnlyBle.add(str);
                    z = true;
                }
            }
            if (z) {
                SearchListener searchListener2 = this.searchListener;
                if (searchListener2 != null) {
                    searchListener2.onFoundOnlyBLE(str);
                }
            }
        }
    }

    public boolean equals(Object obj) {
        return getClass().getName().equals(obj.getClass().getName());
    }
}
