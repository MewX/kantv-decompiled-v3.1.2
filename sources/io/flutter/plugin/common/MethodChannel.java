package io.flutter.plugin.common;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import io.flutter.plugin.common.BinaryMessenger.BinaryMessageHandler;
import io.flutter.plugin.common.BinaryMessenger.BinaryReply;
import java.nio.ByteBuffer;

public final class MethodChannel {
    private static final String TAG = "MethodChannel#";
    /* access modifiers changed from: private */
    public final MethodCodec codec;
    private final BinaryMessenger messenger;
    /* access modifiers changed from: private */
    public final String name;

    private final class IncomingMethodCallHandler implements BinaryMessageHandler {
        private final MethodCallHandler handler;

        IncomingMethodCallHandler(MethodCallHandler methodCallHandler) {
            this.handler = methodCallHandler;
        }

        @UiThread
        public void onMessage(ByteBuffer byteBuffer, final BinaryReply binaryReply) {
            try {
                this.handler.onMethodCall(MethodChannel.this.codec.decodeMethodCall(byteBuffer), new Result() {
                    public void success(Object obj) {
                        binaryReply.reply(MethodChannel.this.codec.encodeSuccessEnvelope(obj));
                    }

                    public void error(String str, String str2, Object obj) {
                        binaryReply.reply(MethodChannel.this.codec.encodeErrorEnvelope(str, str2, obj));
                    }

                    public void notImplemented() {
                        binaryReply.reply(null);
                    }
                });
            } catch (RuntimeException e) {
                StringBuilder sb = new StringBuilder();
                sb.append(MethodChannel.TAG);
                sb.append(MethodChannel.this.name);
                Log.e(sb.toString(), "Failed to handle method call", e);
                binaryReply.reply(MethodChannel.this.codec.encodeErrorEnvelope("error", e.getMessage(), null));
            }
        }
    }

    private final class IncomingResultHandler implements BinaryReply {
        private final Result callback;

        IncomingResultHandler(Result result) {
            this.callback = result;
        }

        @UiThread
        public void reply(ByteBuffer byteBuffer) {
            if (byteBuffer == null) {
                try {
                    this.callback.notImplemented();
                } catch (RuntimeException e) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(MethodChannel.TAG);
                    sb.append(MethodChannel.this.name);
                    Log.e(sb.toString(), "Failed to handle method call result", e);
                }
            } else {
                try {
                    this.callback.success(MethodChannel.this.codec.decodeEnvelope(byteBuffer));
                } catch (FlutterException e2) {
                    this.callback.error(e2.code, e2.getMessage(), e2.details);
                }
            }
        }
    }

    public interface MethodCallHandler {
        @UiThread
        void onMethodCall(@NonNull MethodCall methodCall, @NonNull Result result);
    }

    public interface Result {
        @UiThread
        void error(String str, @Nullable String str2, @Nullable Object obj);

        @UiThread
        void notImplemented();

        @UiThread
        void success(@Nullable Object obj);
    }

    public MethodChannel(BinaryMessenger binaryMessenger, String str) {
        this(binaryMessenger, str, StandardMethodCodec.INSTANCE);
    }

    public MethodChannel(BinaryMessenger binaryMessenger, String str, MethodCodec methodCodec) {
        this.messenger = binaryMessenger;
        this.name = str;
        this.codec = methodCodec;
    }

    @UiThread
    public void invokeMethod(@NonNull String str, @Nullable Object obj) {
        invokeMethod(str, obj, null);
    }

    @UiThread
    public void invokeMethod(String str, @Nullable Object obj, Result result) {
        this.messenger.send(this.name, this.codec.encodeMethodCall(new MethodCall(str, obj)), result == null ? null : new IncomingResultHandler(result));
    }

    @UiThread
    public void setMethodCallHandler(@Nullable MethodCallHandler methodCallHandler) {
        this.messenger.setMessageHandler(this.name, methodCallHandler == null ? null : new IncomingMethodCallHandler(methodCallHandler));
    }
}
