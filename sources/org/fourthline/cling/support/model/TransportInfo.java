package org.fourthline.cling.support.model;

import java.util.Map;
import org.fourthline.cling.model.action.ActionArgumentValue;

public class TransportInfo {
    private String currentSpeed;
    private TransportState currentTransportState;
    private TransportStatus currentTransportStatus;

    public TransportInfo() {
        this.currentTransportState = TransportState.NO_MEDIA_PRESENT;
        this.currentTransportStatus = TransportStatus.OK;
        this.currentSpeed = "1";
    }

    public TransportInfo(Map<String, ActionArgumentValue> map) {
        this(TransportState.valueOrCustomOf((String) ((ActionArgumentValue) map.get("CurrentTransportState")).getValue()), TransportStatus.valueOrCustomOf((String) ((ActionArgumentValue) map.get("CurrentTransportStatus")).getValue()), (String) ((ActionArgumentValue) map.get("CurrentSpeed")).getValue());
    }

    public TransportInfo(TransportState transportState) {
        this.currentTransportState = TransportState.NO_MEDIA_PRESENT;
        this.currentTransportStatus = TransportStatus.OK;
        this.currentSpeed = "1";
        this.currentTransportState = transportState;
    }

    public TransportInfo(TransportState transportState, String str) {
        this.currentTransportState = TransportState.NO_MEDIA_PRESENT;
        this.currentTransportStatus = TransportStatus.OK;
        this.currentSpeed = "1";
        this.currentTransportState = transportState;
        this.currentSpeed = str;
    }

    public TransportInfo(TransportState transportState, TransportStatus transportStatus) {
        this.currentTransportState = TransportState.NO_MEDIA_PRESENT;
        this.currentTransportStatus = TransportStatus.OK;
        this.currentSpeed = "1";
        this.currentTransportState = transportState;
        this.currentTransportStatus = transportStatus;
    }

    public TransportInfo(TransportState transportState, TransportStatus transportStatus, String str) {
        this.currentTransportState = TransportState.NO_MEDIA_PRESENT;
        this.currentTransportStatus = TransportStatus.OK;
        this.currentSpeed = "1";
        this.currentTransportState = transportState;
        this.currentTransportStatus = transportStatus;
        this.currentSpeed = str;
    }

    public TransportState getCurrentTransportState() {
        return this.currentTransportState;
    }

    public TransportStatus getCurrentTransportStatus() {
        return this.currentTransportStatus;
    }

    public String getCurrentSpeed() {
        return this.currentSpeed;
    }
}
