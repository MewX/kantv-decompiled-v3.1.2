package com.kantv.ui.manager;

import android.content.Context;
import android.widget.ArrayAdapter;
import com.kantv.ui.androidupnpdemo.entity.ClingDevice;

public class UpnpManager {
    private static final String TAG = "UpnpManager";
    private static UpnpManager upnpManager;
    private Context mContext;
    public ArrayAdapter<ClingDevice> mDevicesAdapter;
    public String name;
    public int progressMax;
    public String seo;
    public String tid;
    public String title;
    public String url;

    private UpnpManager(Context context) {
        String str = "";
        this.tid = str;
        this.seo = str;
        this.name = str;
        this.title = str;
        this.url = str;
        this.mContext = context;
    }

    public static UpnpManager getInstance(Context context) {
        if (upnpManager == null) {
            synchronized (UpnpManager.class) {
                upnpManager = new UpnpManager(context);
            }
        }
        return upnpManager;
    }
}
