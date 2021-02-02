package io.flutter.embedding.engine.dart;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import io.flutter.Log;
import io.flutter.embedding.engine.FlutterJNI;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.BinaryMessenger.BinaryMessageHandler;
import io.flutter.plugin.common.BinaryMessenger.BinaryReply;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

class DartMessenger implements BinaryMessenger, PlatformMessageHandler {
    private static final String TAG = "DartMessenger";
    @NonNull
    private final FlutterJNI flutterJNI;
    @NonNull
    private final Map<String, BinaryMessageHandler> messageHandlers;
    private int nextReplyId = 1;
    @NonNull
    private final Map<Integer, BinaryReply> pendingReplies;

    private static class Reply implements BinaryReply {
        private final AtomicBoolean done = new AtomicBoolean(false);
        @NonNull
        private final FlutterJNI flutterJNI;
        private final int replyId;

        Reply(@NonNull FlutterJNI flutterJNI2, int i) {
            this.flutterJNI = flutterJNI2;
            this.replyId = i;
        }

        public void reply(@Nullable ByteBuffer byteBuffer) {
            if (this.done.getAndSet(true)) {
                throw new IllegalStateException("Reply already submitted");
            } else if (byteBuffer == null) {
                this.flutterJNI.invokePlatformMessageEmptyResponseCallback(this.replyId);
            } else {
                this.flutterJNI.invokePlatformMessageResponseCallback(this.replyId, byteBuffer, byteBuffer.position());
            }
        }
    }

    DartMessenger(@NonNull FlutterJNI flutterJNI2) {
        this.flutterJNI = flutterJNI2;
        this.messageHandlers = new HashMap();
        this.pendingReplies = new HashMap();
    }

    public void setMessageHandler(@NonNull String str, @Nullable BinaryMessageHandler binaryMessageHandler) {
        String str2 = "'";
        String str3 = TAG;
        if (binaryMessageHandler == null) {
            StringBuilder sb = new StringBuilder();
            sb.append("Removing handler for channel '");
            sb.append(str);
            sb.append(str2);
            Log.v(str3, sb.toString());
            this.messageHandlers.remove(str);
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Setting handler for channel '");
        sb2.append(str);
        sb2.append(str2);
        Log.v(str3, sb2.toString());
        this.messageHandlers.put(str, binaryMessageHandler);
    }

    @UiThread
    public void send(@NonNull String str, @NonNull ByteBuffer byteBuffer) {
        StringBuilder sb = new StringBuilder();
        sb.append("Sending message over channel '");
        sb.append(str);
        sb.append("'");
        Log.v(TAG, sb.toString());
        send(str, byteBuffer, null);
    }

    public void send(@NonNull String str, @Nullable ByteBuffer byteBuffer, @Nullable BinaryReply binaryReply) {
        int i;
        StringBuilder sb = new StringBuilder();
        sb.append("Sending message with callback over channel '");
        sb.append(str);
        sb.append("'");
        Log.v(TAG, sb.toString());
        if (binaryReply != null) {
            i = this.nextReplyId;
            this.nextReplyId = i + 1;
            this.pendingReplies.put(Integer.valueOf(i), binaryReply);
        } else {
            i = 0;
        }
        if (byteBuffer == null) {
            this.flutterJNI.dispatchEmptyPlatformMessage(str, i);
        } else {
            this.flutterJNI.dispatchPlatformMessage(str, byteBuffer, byteBuffer.position(), i);
        }
    }

    public void handleMessageFromDart(@NonNull String str, @Nullable byte[] bArr, int i) {
        ByteBuffer byteBuffer;
        StringBuilder sb = new StringBuilder();
        sb.append("Received message from Dart over channel '");
        sb.append(str);
        sb.append("'");
        String sb2 = sb.toString();
        String str2 = TAG;
        Log.v(str2, sb2);
        BinaryMessageHandler binaryMessageHandler = (BinaryMessageHandler) this.messageHandlers.get(str);
        if (binaryMessageHandler != null) {
            try {
                Log.v(str2, "Deferring to registered handler to process message.");
                if (bArr == null) {
                    byteBuffer = null;
                } else {
                    byteBuffer = ByteBuffer.wrap(bArr);
                }
                binaryMessageHandler.onMessage(byteBuffer, new Reply(this.flutterJNI, i));
            } catch (Exception e) {
                Log.e(str2, "Uncaught exception in binary message listener", e);
                this.flutterJNI.invokePlatformMessageEmptyResponseCallback(i);
            }
        } else {
            Log.v(str2, "No registered handler for message. Responding to Dart with empty reply message.");
            this.flutterJNI.invokePlatformMessageEmptyResponseCallback(i);
        }
    }

    public void handlePlatformMessageResponse(int i, @Nullable byte[] bArr) {
        ByteBuffer byteBuffer;
        String str = TAG;
        Log.v(str, "Received message reply from Dart.");
        BinaryReply binaryReply = (BinaryReply) this.pendingReplies.remove(Integer.valueOf(i));
        if (binaryReply != null) {
            try {
                Log.v(str, "Invoking registered callback for reply from Dart.");
                if (bArr == null) {
                    byteBuffer = null;
                } else {
                    byteBuffer = ByteBuffer.wrap(bArr);
                }
                binaryReply.reply(byteBuffer);
            } catch (Exception e) {
                Log.e(str, "Uncaught exception in binary message reply handler", e);
            }
        }
    }

    @UiThread
    public int getPendingChannelResponseCount() {
        return this.pendingReplies.size();
    }
}
