package io.flutter.plugin.platform;

import java.util.HashMap;
import java.util.Map;

class PlatformViewRegistryImpl implements PlatformViewRegistry {
    private final Map<String, PlatformViewFactory> viewFactories = new HashMap();

    PlatformViewRegistryImpl() {
    }

    public boolean registerViewFactory(String str, PlatformViewFactory platformViewFactory) {
        if (this.viewFactories.containsKey(str)) {
            return false;
        }
        this.viewFactories.put(str, platformViewFactory);
        return true;
    }

    /* access modifiers changed from: 0000 */
    public PlatformViewFactory getFactory(String str) {
        return (PlatformViewFactory) this.viewFactories.get(str);
    }
}
