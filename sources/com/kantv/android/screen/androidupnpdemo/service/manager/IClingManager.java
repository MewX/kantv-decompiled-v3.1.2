package com.kantv.android.screen.androidupnpdemo.service.manager;

import com.kantv.android.screen.androidupnpdemo.service.ClingUpnpService;
import org.fourthline.cling.registry.Registry;

public interface IClingManager extends IDLNAManager {
    Registry getRegistry();

    void setDeviceManager(IDeviceManager iDeviceManager);

    void setUpnpService(ClingUpnpService clingUpnpService);
}
