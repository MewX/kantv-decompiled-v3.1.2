package io.flutter.embedding.engine.systemchannels;

import androidx.annotation.NonNull;
import io.flutter.Log;
import io.flutter.embedding.engine.dart.DartExecutor;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.JSONMessageCodec;
import java.util.HashMap;
import java.util.Map;

public class SettingsChannel {
    private static final String ALWAYS_USE_24_HOUR_FORMAT = "alwaysUse24HourFormat";
    public static final String CHANNEL_NAME = "flutter/settings";
    private static final String PLATFORM_BRIGHTNESS = "platformBrightness";
    private static final String TAG = "SettingsChannel";
    private static final String TEXT_SCALE_FACTOR = "textScaleFactor";
    @NonNull
    public final BasicMessageChannel<Object> channel;

    public static class MessageBuilder {
        @NonNull
        private final BasicMessageChannel<Object> channel;
        @NonNull
        private Map<String, Object> message = new HashMap();

        MessageBuilder(@NonNull BasicMessageChannel<Object> basicMessageChannel) {
            this.channel = basicMessageChannel;
        }

        @NonNull
        public MessageBuilder setTextScaleFactor(float f) {
            this.message.put(SettingsChannel.TEXT_SCALE_FACTOR, Float.valueOf(f));
            return this;
        }

        @NonNull
        public MessageBuilder setUse24HourFormat(boolean z) {
            this.message.put(SettingsChannel.ALWAYS_USE_24_HOUR_FORMAT, Boolean.valueOf(z));
            return this;
        }

        @NonNull
        public MessageBuilder setPlatformBrightness(@NonNull PlatformBrightness platformBrightness) {
            this.message.put(SettingsChannel.PLATFORM_BRIGHTNESS, platformBrightness.name);
            return this;
        }

        public void send() {
            StringBuilder sb = new StringBuilder();
            sb.append("Sending message: \ntextScaleFactor: ");
            sb.append(this.message.get(SettingsChannel.TEXT_SCALE_FACTOR));
            sb.append("\nalwaysUse24HourFormat: ");
            sb.append(this.message.get(SettingsChannel.ALWAYS_USE_24_HOUR_FORMAT));
            sb.append("\nplatformBrightness: ");
            sb.append(this.message.get(SettingsChannel.PLATFORM_BRIGHTNESS));
            Log.v(SettingsChannel.TAG, sb.toString());
            this.channel.send(this.message);
        }
    }

    public enum PlatformBrightness {
        light(r2),
        dark(r3);
        
        @NonNull
        public String name;

        private PlatformBrightness(@NonNull String str) {
            this.name = str;
        }
    }

    public SettingsChannel(@NonNull DartExecutor dartExecutor) {
        this.channel = new BasicMessageChannel<>(dartExecutor, CHANNEL_NAME, JSONMessageCodec.INSTANCE);
    }

    @NonNull
    public MessageBuilder startMessage() {
        return new MessageBuilder(this.channel);
    }
}
