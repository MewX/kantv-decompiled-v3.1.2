package com.kantv.ui.androidupnpdemo.control.callback;

import com.kantv.ui.androidupnpdemo.entity.IResponse;

public interface ControlReceiveCallback extends ControlCallback {
    void receive(IResponse iResponse);
}
