package io.flutter.plugin.common;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import io.flutter.plugin.common.BinaryMessenger.BinaryMessageHandler;
import io.flutter.plugin.common.BinaryMessenger.BinaryReply;
import java.nio.ByteBuffer;

public final class BasicMessageChannel<T> {
    private static final String TAG = "BasicMessageChannel#";
    /* access modifiers changed from: private */
    @NonNull
    public final MessageCodec<T> codec;
    @NonNull
    private final BinaryMessenger messenger;
    /* access modifiers changed from: private */
    @NonNull
    public final String name;

    private final class IncomingMessageHandler implements BinaryMessageHandler {
        private final MessageHandler<T> handler;

        private IncomingMessageHandler(@NonNull MessageHandler<T> messageHandler) {
            this.handler = messageHandler;
        }

        public void onMessage(@Nullable ByteBuffer byteBuffer, @NonNull final BinaryReply binaryReply) {
            try {
                this.handler.onMessage(BasicMessageChannel.this.codec.decodeMessage(byteBuffer), new Reply<T>() {
                    public void reply(T t) {
                        binaryReply.reply(BasicMessageChannel.this.codec.encodeMessage(t));
                    }
                });
            } catch (RuntimeException e) {
                StringBuilder sb = new StringBuilder();
                sb.append(BasicMessageChannel.TAG);
                sb.append(BasicMessageChannel.this.name);
                Log.e(sb.toString(), "Failed to handle message", e);
                binaryReply.reply(null);
            }
        }
    }

    private final class IncomingReplyHandler implements BinaryReply {
        private final Reply<T> callback;

        private IncomingReplyHandler(@NonNull Reply<T> reply) {
            this.callback = reply;
        }

        public void reply(@Nullable ByteBuffer byteBuffer) {
            try {
                this.callback.reply(BasicMessageChannel.this.codec.decodeMessage(byteBuffer));
            } catch (RuntimeException e) {
                StringBuilder sb = new StringBuilder();
                sb.append(BasicMessageChannel.TAG);
                sb.append(BasicMessageChannel.this.name);
                Log.e(sb.toString(), "Failed to handle message reply", e);
            }
        }
    }

    public interface MessageHandler<T> {
        void onMessage(@Nullable T t, @NonNull Reply<T> reply);
    }

    public interface Reply<T> {
        void reply(@Nullable T t);
    }

    public BasicMessageChannel(@NonNull BinaryMessenger binaryMessenger, @NonNull String str, @NonNull MessageCodec<T> messageCodec) {
        this.messenger = binaryMessenger;
        this.name = str;
        this.codec = messageCodec;
    }

    public void send(@Nullable T t) {
        send(t, null);
    }

    @UiThread
    public void send(@Nullable T t, @Nullable Reply<T> reply) {
        BinaryMessenger binaryMessenger = this.messenger;
        String str = this.name;
        ByteBuffer encodeMessage = this.codec.encodeMessage(t);
        BinaryReply binaryReply = null;
        if (reply != null) {
            binaryReply = new IncomingReplyHandler(reply);
        }
        binaryMessenger.send(str, encodeMessage, binaryReply);
    }

    @UiThread
    public void setMessageHandler(@Nullable MessageHandler<T> messageHandler) {
        BinaryMessenger binaryMessenger = this.messenger;
        String str = this.name;
        BinaryMessageHandler binaryMessageHandler = null;
        if (messageHandler != null) {
            binaryMessageHandler = new IncomingMessageHandler(messageHandler);
        }
        binaryMessenger.setMessageHandler(str, binaryMessageHandler);
    }
}
