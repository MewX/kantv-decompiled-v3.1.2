package com.kantv.android.screen.androidupnpdemo.entity;

import org.fourthline.cling.model.action.ActionInvocation;
import org.fourthline.cling.model.message.UpnpResponse;
import org.fourthline.cling.support.model.PositionInfo;

public class ClingPositionResponse extends BaseClingResponse<PositionInfo> implements IResponse<PositionInfo> {
    public ClingPositionResponse(ActionInvocation actionInvocation) {
        super(actionInvocation);
    }

    public ClingPositionResponse(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
        super(actionInvocation, upnpResponse, str);
    }

    public ClingPositionResponse(ActionInvocation actionInvocation, PositionInfo positionInfo) {
        super(actionInvocation, positionInfo);
    }
}
