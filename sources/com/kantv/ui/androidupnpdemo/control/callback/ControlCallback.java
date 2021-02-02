package com.kantv.ui.androidupnpdemo.control.callback;

import com.kantv.ui.androidupnpdemo.entity.IResponse;

public interface ControlCallback<T> {
    void fail(IResponse<T> iResponse);

    void success(IResponse<T> iResponse);
}
