package com.kantv.ui.androidupnpdemo.entity;

import org.fourthline.cling.model.action.ActionInvocation;
import org.fourthline.cling.model.message.UpnpResponse;

public class ClingVolumeResponse extends BaseClingResponse<Integer> {
    public ClingVolumeResponse(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
        super(actionInvocation, upnpResponse, str);
    }

    public ClingVolumeResponse(ActionInvocation actionInvocation, Integer num) {
        super(actionInvocation, num);
    }
}
