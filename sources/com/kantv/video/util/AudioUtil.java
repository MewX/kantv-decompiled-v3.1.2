package com.kantv.video.util;

import android.content.Context;
import android.media.AudioManager;
import android.provider.Settings.SettingNotFoundException;
import android.provider.Settings.System;
import android.view.Window;
import android.view.WindowManager.LayoutParams;

public class AudioUtil {
    private static AudioUtil mInstance;
    private AudioManager mAudioManager;
    private Context mContext;
    private Window mWindow;

    public AudioUtil(Context context, Window window) {
        this.mAudioManager = (AudioManager) context.getSystemService("audio");
        this.mContext = context;
        this.mWindow = window;
    }

    public int getMediaMaxVolume() {
        return this.mAudioManager.getStreamMaxVolume(3);
    }

    public int getMediaVolume() {
        return this.mAudioManager.getStreamVolume(3);
    }

    public int getCallMaxVolume() {
        return this.mAudioManager.getStreamMaxVolume(0);
    }

    public int getSystemMaxVolume() {
        return this.mAudioManager.getStreamMaxVolume(1);
    }

    public int getSystemVolume() {
        return this.mAudioManager.getStreamVolume(1);
    }

    public int getAlermMaxVolume() {
        return this.mAudioManager.getStreamMaxVolume(4);
    }

    public void setMediaVolume(int i) {
        this.mAudioManager.setStreamVolume(3, i, 5);
    }

    public void setCallVolume(int i) {
        this.mAudioManager.setStreamVolume(0, i, 0);
    }

    public void setSpeakerStatus(boolean z) {
        if (z) {
            this.mAudioManager.setSpeakerphoneOn(true);
            this.mAudioManager.setMode(0);
            return;
        }
        this.mAudioManager.setStreamVolume(0, this.mAudioManager.getStreamMaxVolume(0), 0);
        this.mAudioManager.setMode(3);
        this.mAudioManager.setSpeakerphoneOn(false);
        this.mAudioManager.setRouting(0, 1, -1);
    }

    public int getSystemBrightness() {
        try {
            return System.getInt(this.mContext.getContentResolver(), "screen_brightness");
        } catch (SettingNotFoundException e) {
            e.printStackTrace();
            return 0;
        }
    }

    public void changeAppBrightness(int i) {
        LayoutParams attributes = this.mWindow.getAttributes();
        if (i == -1) {
            attributes.screenBrightness = -1.0f;
        } else {
            if (i <= 0) {
                i = 1;
            }
            attributes.screenBrightness = ((float) i) / 255.0f;
        }
        this.mWindow.setAttributes(attributes);
    }
}
