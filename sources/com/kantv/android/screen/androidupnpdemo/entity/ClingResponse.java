package com.kantv.android.screen.androidupnpdemo.entity;

import org.fourthline.cling.model.action.ActionInvocation;
import org.fourthline.cling.model.message.UpnpResponse;

public class ClingResponse implements IResponse<ActionInvocation> {
    private String defaultMsg;
    private ActionInvocation mActionInvocation;
    private UpnpResponse operation;

    public ActionInvocation getResponse() {
        return null;
    }

    public ClingResponse(ActionInvocation actionInvocation) {
        this.mActionInvocation = actionInvocation;
    }

    public ClingResponse(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
        this.mActionInvocation = actionInvocation;
        this.operation = upnpResponse;
        this.defaultMsg = str;
    }

    public void setResponse(ActionInvocation actionInvocation) {
        this.mActionInvocation = actionInvocation;
    }
}
