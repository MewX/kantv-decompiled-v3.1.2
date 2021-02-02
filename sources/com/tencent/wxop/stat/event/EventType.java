package com.tencent.wxop.stat.event;

import androidx.core.view.PointerIconCompat;
import com.avos.avoscloud.java_websocket.framing.CloseFrame;

public enum EventType {
    PAGE_VIEW(1),
    SESSION_ENV(2),
    ERROR(3),
    CUSTOM(1000),
    ADDITION(1001),
    MONITOR_STAT(1002),
    MTA_GAME_USER(1003),
    NETWORK_MONITOR(PointerIconCompat.TYPE_WAIT),
    NETWORK_DETECTOR(CloseFrame.NOCODE);
    
    private int a;

    private EventType(int i) {
        this.a = i;
    }

    public final int a() {
        return this.a;
    }
}
