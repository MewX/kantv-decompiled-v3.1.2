package com.kantv.android.screen.androidupnpdemo.entity;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public class DLANPlayState {
    public static final int BUFFER = 4;
    public static final int ERROR = 5;
    public static final int GET_POSITION_POLING = 6;
    public static final int PAUSE = 2;
    public static final int PLAY = 1;
    public static final int PLAY_COMPLETE = 8;
    public static final int POSITION_CALLBACK = 7;
    public static final int STOP = 3;

    @Retention(RetentionPolicy.SOURCE)
    public @interface DLANPlayStates {
    }
}
