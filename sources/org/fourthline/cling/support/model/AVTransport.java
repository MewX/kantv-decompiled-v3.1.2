package org.fourthline.cling.support.model;

import org.fourthline.cling.model.types.UnsignedIntegerFourBytes;
import org.fourthline.cling.support.lastchange.LastChange;

public class AVTransport {
    protected DeviceCapabilities deviceCapabilities;
    protected final UnsignedIntegerFourBytes instanceID;
    protected final LastChange lastChange;
    protected MediaInfo mediaInfo;
    protected PositionInfo positionInfo;
    protected TransportInfo transportInfo;
    protected TransportSettings transportSettings;

    public AVTransport(UnsignedIntegerFourBytes unsignedIntegerFourBytes, LastChange lastChange2, StorageMedium storageMedium) {
        this(unsignedIntegerFourBytes, lastChange2, new StorageMedium[]{storageMedium});
    }

    public AVTransport(UnsignedIntegerFourBytes unsignedIntegerFourBytes, LastChange lastChange2, StorageMedium[] storageMediumArr) {
        this.instanceID = unsignedIntegerFourBytes;
        this.lastChange = lastChange2;
        setDeviceCapabilities(new DeviceCapabilities(storageMediumArr));
        setMediaInfo(new MediaInfo());
        setTransportInfo(new TransportInfo());
        setPositionInfo(new PositionInfo());
        setTransportSettings(new TransportSettings());
    }

    public UnsignedIntegerFourBytes getInstanceId() {
        return this.instanceID;
    }

    public LastChange getLastChange() {
        return this.lastChange;
    }

    public MediaInfo getMediaInfo() {
        return this.mediaInfo;
    }

    public void setMediaInfo(MediaInfo mediaInfo2) {
        this.mediaInfo = mediaInfo2;
    }

    public TransportInfo getTransportInfo() {
        return this.transportInfo;
    }

    public void setTransportInfo(TransportInfo transportInfo2) {
        this.transportInfo = transportInfo2;
    }

    public PositionInfo getPositionInfo() {
        return this.positionInfo;
    }

    public void setPositionInfo(PositionInfo positionInfo2) {
        this.positionInfo = positionInfo2;
    }

    public DeviceCapabilities getDeviceCapabilities() {
        return this.deviceCapabilities;
    }

    public void setDeviceCapabilities(DeviceCapabilities deviceCapabilities2) {
        this.deviceCapabilities = deviceCapabilities2;
    }

    public TransportSettings getTransportSettings() {
        return this.transportSettings;
    }

    public void setTransportSettings(TransportSettings transportSettings2) {
        this.transportSettings = transportSettings2;
    }
}
