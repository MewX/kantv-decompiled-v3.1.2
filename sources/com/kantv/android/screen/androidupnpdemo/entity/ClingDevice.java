package com.kantv.android.screen.androidupnpdemo.entity;

import java.io.Serializable;
import org.fourthline.cling.model.meta.Device;

public class ClingDevice implements IDevice<Device>, Serializable {
    private boolean isSelected;
    private Device mDevice;

    public ClingDevice(Device device) {
        this.mDevice = device;
    }

    public Device getDevice() {
        return this.mDevice;
    }

    public boolean isSelected() {
        return this.isSelected;
    }

    public void setSelected(boolean z) {
        this.isSelected = z;
    }
}
