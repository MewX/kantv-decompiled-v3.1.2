package com.avos.avoscloud.im.v2;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.RUNTIME)
public @interface AVIMMessageType {
    public static final int AUDIO_MESSAGE_TYPE = -3;
    public static final int FILE_MESSAGE_TYPE = -6;
    public static final int IMAGE_MESSAGE_TYPE = -2;
    public static final int LOCATION_MESSAGE_TYPE = -5;
    public static final int RECALLED_MESSAGE_TYPE = -127;
    public static final int TEXT_MESSAGE_TYPE = -1;
    public static final int VIDEO_MESSAGE_TYPE = -4;

    int type();
}
