package com.kantv.android.screen.androidupnpdemo.entity;

import org.fourthline.cling.model.action.ActionInvocation;
import org.fourthline.cling.model.message.UpnpResponse;

public class BaseClingResponse<T> implements IResponse<T> {
    protected String defaultMsg;
    protected T info;
    protected ActionInvocation mActionInvocation;
    protected UpnpResponse operation;

    public BaseClingResponse(ActionInvocation actionInvocation) {
        this.mActionInvocation = actionInvocation;
    }

    public BaseClingResponse(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
        this.mActionInvocation = actionInvocation;
        this.operation = upnpResponse;
        this.defaultMsg = str;
    }

    public BaseClingResponse(ActionInvocation actionInvocation, T t) {
        this.mActionInvocation = actionInvocation;
        this.info = t;
    }

    public T getResponse() {
        return this.info;
    }

    public void setResponse(T t) {
        this.info = t;
    }
}
