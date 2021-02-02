package com.kantv.ui.androidupnpdemo.entity;

import androidx.annotation.Nullable;
import com.kantv.ui.androidupnpdemo.util.Utils;
import java.util.ArrayList;
import java.util.Collection;
import org.fourthline.cling.model.meta.Device;

public class ClingDeviceList {
    private static ClingDeviceList INSTANCE;
    private Collection<ClingDevice> mClingDeviceList = null;

    private ClingDeviceList() {
        if (this.mClingDeviceList == null) {
            this.mClingDeviceList = new ArrayList();
        }
    }

    public static ClingDeviceList getInstance() {
        if (Utils.isNull(INSTANCE)) {
            INSTANCE = new ClingDeviceList();
        }
        return INSTANCE;
    }

    public void removeDevice(ClingDevice clingDevice) {
        Collection<ClingDevice> collection = this.mClingDeviceList;
        if (collection != null) {
            synchronized (collection) {
                this.mClingDeviceList.remove(clingDevice);
            }
        }
    }

    public void addDevice(ClingDevice clingDevice) {
        Collection<ClingDevice> collection = this.mClingDeviceList;
        if (collection != null) {
            synchronized (collection) {
                this.mClingDeviceList.add(clingDevice);
            }
        }
    }

    @Nullable
    public ClingDevice getClingDevice(Device device) {
        Collection<ClingDevice> collection = this.mClingDeviceList;
        if (collection != null) {
            synchronized (collection) {
                for (ClingDevice clingDevice : this.mClingDeviceList) {
                    Device device2 = clingDevice.getDevice();
                    if (device2 != null && device2.equals(device)) {
                        return clingDevice;
                    }
                }
            }
        }
        return null;
    }

    public boolean contain(Device device) {
        Collection<ClingDevice> collection = this.mClingDeviceList;
        if (collection != null) {
            synchronized (collection) {
                for (ClingDevice device2 : this.mClingDeviceList) {
                    Device device3 = device2.getDevice();
                    if (device3 != null && device3.equals(device)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Nullable
    public Collection<ClingDevice> getClingDeviceList() {
        return this.mClingDeviceList;
    }

    public void setClingDeviceList(Collection<ClingDevice> collection) {
        if (this.mClingDeviceList == null) {
            this.mClingDeviceList = new ArrayList();
        }
        Collection<ClingDevice> collection2 = this.mClingDeviceList;
        if (collection2 != null) {
            synchronized (collection2) {
                this.mClingDeviceList = collection;
            }
        }
    }

    public void destroy() {
        Collection<ClingDevice> collection = this.mClingDeviceList;
        if (collection != null) {
            synchronized (collection) {
                this.mClingDeviceList = null;
            }
        }
        INSTANCE = null;
    }
}
