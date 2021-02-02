package com.kantv.android.screen.androidupnpdemo;

import android.content.Intent;
import java.io.Serializable;

public class Intents {
    public static final String ACTION_CHANGE_DEVICE = "com.zane.androidupnpdemo.action.change_device";
    public static final String ACTION_GET_POSITION = "com.zane.androidupnpdemo.action.get_position";
    public static final String ACTION_PAUSED_PLAYBACK = "com.zane.androidupnpdemo.action.paused_playback";
    public static final String ACTION_PLAYING = "com.zane.androidupnpdemo.action.playing";
    public static final String ACTION_PLAY_COMPLETE = "com.zane.androidupnpdemo.action.play_complete";
    public static final String ACTION_POSITION_CALLBACK = "com.zane.androidupnpdemo.action.position_callback";
    public static final String ACTION_SET_VOLUME = "com.zane.androidupnpdemo.action.set_volume";
    public static final String ACTION_STOPPED = "com.zane.androidupnpdemo.action.stopped";
    public static final String ACTION_TRANSITIONING = "com.zane.androidupnpdemo.action.transitioning";
    public static final String ACTION_UPDATE_LAST_CHANGE = "com.zane.androidupnpdemo.action.update_last_change";
    public static final String ACTION_VOLUME_CALLBACK = "com.zane.androidupnpdemo.action.volume_callback";
    public static final String EXTRA_POSITION = "com.zane.androidupnpdemo.action.extra_position";
    public static final String EXTRA_VOLUME = "com.zane.androidupnpdemo.action.extra_volume";
    public static final String INTENT_ACTION_PREFIX = "com.zane.androidupnpdemo.action.";
    public static final String INTENT_EXTRA_PREFIX = "com.zane.androidupnpdemo.extra.";
    public static final String INTENT_PREFIX = "com.zane.androidupnpdemo.";

    public static class Builder {
        private final Intent intent;

        public Builder(String str) {
            StringBuilder sb = new StringBuilder();
            sb.append("com.zane.androidupnpdemo.");
            sb.append(str);
            this.intent = new Intent(sb.toString());
        }

        public Builder add(String str, String str2) {
            this.intent.putExtra(str, str2);
            return this;
        }

        public Builder add(String str, CharSequence[] charSequenceArr) {
            this.intent.putExtra(str, charSequenceArr);
            return this;
        }

        public Builder add(String str, int i) {
            this.intent.putExtra(str, i);
            return this;
        }

        public Builder add(String str, int[] iArr) {
            this.intent.putExtra(str, iArr);
            return this;
        }

        public Builder add(String str, boolean[] zArr) {
            this.intent.putExtra(str, zArr);
            return this;
        }

        public Builder add(String str, Serializable serializable) {
            this.intent.putExtra(str, serializable);
            return this;
        }

        public Intent toIntent() {
            return this.intent;
        }
    }
}
