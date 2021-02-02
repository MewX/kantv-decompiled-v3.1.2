package io.flutter.plugin.common;

import android.util.Log;
import androidx.annotation.UiThread;
import io.flutter.plugin.common.BinaryMessenger.BinaryMessageHandler;
import io.flutter.plugin.common.BinaryMessenger.BinaryReply;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public final class EventChannel {
    private static final String TAG = "EventChannel#";
    /* access modifiers changed from: private */
    public final MethodCodec codec;
    /* access modifiers changed from: private */
    public final BinaryMessenger messenger;
    /* access modifiers changed from: private */
    public final String name;

    public interface StreamHandler {
        void onCancel(Object obj);

        void onListen(Object obj, EventSink eventSink);
    }

    public interface EventSink {
        void endOfStream();

        void error(String str, String str2, Object obj);

        void success(Object obj);
    }

    private final class IncomingStreamRequestHandler implements BinaryMessageHandler {
        /* access modifiers changed from: private */
        public final AtomicReference<EventSink> activeSink = new AtomicReference<>(null);
        private final StreamHandler handler;

        private final class EventSinkImplementation implements EventSink {
            final AtomicBoolean hasEnded;

            private EventSinkImplementation() {
                this.hasEnded = new AtomicBoolean(false);
            }

            @UiThread
            public void success(Object obj) {
                if (!this.hasEnded.get() && IncomingStreamRequestHandler.this.activeSink.get() == this) {
                    EventChannel.this.messenger.send(EventChannel.this.name, EventChannel.this.codec.encodeSuccessEnvelope(obj));
                }
            }

            @UiThread
            public void error(String str, String str2, Object obj) {
                if (!this.hasEnded.get() && IncomingStreamRequestHandler.this.activeSink.get() == this) {
                    EventChannel.this.messenger.send(EventChannel.this.name, EventChannel.this.codec.encodeErrorEnvelope(str, str2, obj));
                }
            }

            @UiThread
            public void endOfStream() {
                if (!this.hasEnded.getAndSet(true) && IncomingStreamRequestHandler.this.activeSink.get() == this) {
                    EventChannel.this.messenger.send(EventChannel.this.name, null);
                }
            }
        }

        IncomingStreamRequestHandler(StreamHandler streamHandler) {
            this.handler = streamHandler;
        }

        public void onMessage(ByteBuffer byteBuffer, BinaryReply binaryReply) {
            MethodCall decodeMethodCall = EventChannel.this.codec.decodeMethodCall(byteBuffer);
            if (decodeMethodCall.method.equals("listen")) {
                onListen(decodeMethodCall.arguments, binaryReply);
            } else if (decodeMethodCall.method.equals("cancel")) {
                onCancel(decodeMethodCall.arguments, binaryReply);
            } else {
                binaryReply.reply(null);
            }
        }

        private void onListen(Object obj, BinaryReply binaryReply) {
            EventSinkImplementation eventSinkImplementation = new EventSinkImplementation();
            EventSink eventSink = (EventSink) this.activeSink.getAndSet(eventSinkImplementation);
            String str = EventChannel.TAG;
            if (eventSink != null) {
                try {
                    this.handler.onCancel(null);
                } catch (RuntimeException e) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str);
                    sb.append(EventChannel.this.name);
                    Log.e(sb.toString(), "Failed to close existing event stream", e);
                }
            }
            try {
                this.handler.onListen(obj, eventSinkImplementation);
                binaryReply.reply(EventChannel.this.codec.encodeSuccessEnvelope(null));
            } catch (RuntimeException e2) {
                this.activeSink.set(null);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append(EventChannel.this.name);
                Log.e(sb2.toString(), "Failed to open event stream", e2);
                binaryReply.reply(EventChannel.this.codec.encodeErrorEnvelope("error", e2.getMessage(), null));
            }
        }

        private void onCancel(Object obj, BinaryReply binaryReply) {
            String str = "error";
            if (((EventSink) this.activeSink.getAndSet(null)) != null) {
                try {
                    this.handler.onCancel(obj);
                    binaryReply.reply(EventChannel.this.codec.encodeSuccessEnvelope(null));
                } catch (RuntimeException e) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(EventChannel.TAG);
                    sb.append(EventChannel.this.name);
                    Log.e(sb.toString(), "Failed to close event stream", e);
                    binaryReply.reply(EventChannel.this.codec.encodeErrorEnvelope(str, e.getMessage(), null));
                }
            } else {
                binaryReply.reply(EventChannel.this.codec.encodeErrorEnvelope(str, "No active stream to cancel", null));
            }
        }
    }

    public EventChannel(BinaryMessenger binaryMessenger, String str) {
        this(binaryMessenger, str, StandardMethodCodec.INSTANCE);
    }

    public EventChannel(BinaryMessenger binaryMessenger, String str, MethodCodec methodCodec) {
        this.messenger = binaryMessenger;
        this.name = str;
        this.codec = methodCodec;
    }

    @UiThread
    public void setStreamHandler(StreamHandler streamHandler) {
        this.messenger.setMessageHandler(this.name, streamHandler == null ? null : new IncomingStreamRequestHandler(streamHandler));
    }
}
