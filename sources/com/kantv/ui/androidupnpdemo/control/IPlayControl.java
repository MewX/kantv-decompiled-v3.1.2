package com.kantv.ui.androidupnpdemo.control;

import androidx.annotation.Nullable;
import com.kantv.ui.androidupnpdemo.control.callback.ControlCallback;
import com.kantv.ui.androidupnpdemo.control.callback.ControlReceiveCallback;

public interface IPlayControl {
    void getPositionInfo(@Nullable ControlReceiveCallback controlReceiveCallback);

    void getVolume(@Nullable ControlReceiveCallback controlReceiveCallback);

    void pause(@Nullable ControlCallback controlCallback);

    void play(@Nullable ControlCallback controlCallback);

    void playNew(String str, @Nullable ControlCallback controlCallback);

    void seek(int i, @Nullable ControlCallback controlCallback);

    void setMute(boolean z, @Nullable ControlCallback controlCallback);

    void setVolume(int i, @Nullable ControlCallback controlCallback);

    void stop(@Nullable ControlCallback controlCallback);
}
