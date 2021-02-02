package com.kantv.android.screen.androidupnpdemo.control.callback;

import com.kantv.android.screen.androidupnpdemo.entity.IResponse;

public interface ControlCallback<T> {
    void fail(IResponse<T> iResponse);

    void success(IResponse<T> iResponse);
}
