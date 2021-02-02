package com.kantv.android.screen.androidupnpdemo.control.callback;

import com.kantv.android.screen.androidupnpdemo.entity.IResponse;

public interface ControlReceiveCallback extends ControlCallback {
    void receive(IResponse iResponse);
}
