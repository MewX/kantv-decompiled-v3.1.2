package io.flutter.embedding.engine.dart;

import android.content.res.AssetManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import com.idlefish.flutterboost.NewFlutterBoost.ConfigBuilder;
import io.flutter.Log;
import io.flutter.embedding.engine.FlutterJNI;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.BinaryMessenger.BinaryMessageHandler;
import io.flutter.plugin.common.BinaryMessenger.BinaryReply;
import io.flutter.plugin.common.StringCodec;
import io.flutter.view.FlutterCallbackInformation;
import io.flutter.view.FlutterMain;
import java.nio.ByteBuffer;

public class DartExecutor implements BinaryMessenger {
    private static final String TAG = "DartExecutor";
    @NonNull
    private final AssetManager assetManager;
    @NonNull
    private final FlutterJNI flutterJNI;
    private boolean isApplicationRunning = false;
    private final BinaryMessageHandler isolateChannelMessageHandler = new BinaryMessageHandler() {
        public void onMessage(ByteBuffer byteBuffer, BinaryReply binaryReply) {
            DartExecutor.this.isolateServiceId = StringCodec.INSTANCE.decodeMessage(byteBuffer);
            if (DartExecutor.this.isolateServiceIdListener != null) {
                DartExecutor.this.isolateServiceIdListener.onIsolateServiceIdAvailable(DartExecutor.this.isolateServiceId);
            }
        }
    };
    /* access modifiers changed from: private */
    @Nullable
    public String isolateServiceId;
    /* access modifiers changed from: private */
    @Nullable
    public IsolateServiceIdListener isolateServiceIdListener;
    @NonNull
    private final DartMessenger messenger;

    public static class DartCallback {
        public final AssetManager androidAssetManager;
        public final FlutterCallbackInformation callbackHandle;
        public final String pathToBundle;

        public DartCallback(@NonNull AssetManager assetManager, @NonNull String str, @NonNull FlutterCallbackInformation flutterCallbackInformation) {
            this.androidAssetManager = assetManager;
            this.pathToBundle = str;
            this.callbackHandle = flutterCallbackInformation;
        }

        @NonNull
        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("DartCallback( bundle path: ");
            sb.append(this.pathToBundle);
            sb.append(", library path: ");
            sb.append(this.callbackHandle.callbackLibraryPath);
            sb.append(", function: ");
            sb.append(this.callbackHandle.callbackName);
            sb.append(" )");
            return sb.toString();
        }
    }

    public static class DartEntrypoint {
        @NonNull
        public final String dartEntrypointFunctionName;
        @NonNull
        public final String pathToBundle;

        @NonNull
        public static DartEntrypoint createDefault() {
            return new DartEntrypoint(FlutterMain.findAppBundlePath(), ConfigBuilder.DEFAULT_DART_ENTRYPOINT);
        }

        public DartEntrypoint(@NonNull String str, @NonNull String str2) {
            this.pathToBundle = str;
            this.dartEntrypointFunctionName = str2;
        }

        @NonNull
        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("DartEntrypoint( bundle path: ");
            sb.append(this.pathToBundle);
            sb.append(", function: ");
            sb.append(this.dartEntrypointFunctionName);
            sb.append(" )");
            return sb.toString();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            DartEntrypoint dartEntrypoint = (DartEntrypoint) obj;
            if (!this.pathToBundle.equals(dartEntrypoint.pathToBundle)) {
                return false;
            }
            return this.dartEntrypointFunctionName.equals(dartEntrypoint.dartEntrypointFunctionName);
        }

        public int hashCode() {
            return (this.pathToBundle.hashCode() * 31) + this.dartEntrypointFunctionName.hashCode();
        }
    }

    interface IsolateServiceIdListener {
        void onIsolateServiceIdAvailable(@NonNull String str);
    }

    public DartExecutor(@NonNull FlutterJNI flutterJNI2, @NonNull AssetManager assetManager2) {
        this.flutterJNI = flutterJNI2;
        this.assetManager = assetManager2;
        this.messenger = new DartMessenger(flutterJNI2);
        this.messenger.setMessageHandler("flutter/isolate", this.isolateChannelMessageHandler);
    }

    public void onAttachedToJNI() {
        Log.v(TAG, "Attached to JNI. Registering the platform message handler for this Dart execution context.");
        this.flutterJNI.setPlatformMessageHandler(this.messenger);
    }

    public void onDetachedFromJNI() {
        Log.v(TAG, "Detached from JNI. De-registering the platform message handler for this Dart execution context.");
        this.flutterJNI.setPlatformMessageHandler(null);
    }

    public boolean isExecutingDart() {
        return this.isApplicationRunning;
    }

    public void executeDartEntrypoint(@NonNull DartEntrypoint dartEntrypoint) {
        boolean z = this.isApplicationRunning;
        String str = TAG;
        if (z) {
            Log.w(str, "Attempted to run a DartExecutor that is already running.");
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Executing Dart entrypoint: ");
        sb.append(dartEntrypoint);
        Log.v(str, sb.toString());
        this.flutterJNI.runBundleAndSnapshotFromLibrary(dartEntrypoint.pathToBundle, dartEntrypoint.dartEntrypointFunctionName, null, this.assetManager);
        this.isApplicationRunning = true;
    }

    public void executeDartCallback(@NonNull DartCallback dartCallback) {
        boolean z = this.isApplicationRunning;
        String str = TAG;
        if (z) {
            Log.w(str, "Attempted to run a DartExecutor that is already running.");
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Executing Dart callback: ");
        sb.append(dartCallback);
        Log.v(str, sb.toString());
        this.flutterJNI.runBundleAndSnapshotFromLibrary(dartCallback.pathToBundle, dartCallback.callbackHandle.callbackName, dartCallback.callbackHandle.callbackLibraryPath, dartCallback.androidAssetManager);
        this.isApplicationRunning = true;
    }

    @UiThread
    public void send(@NonNull String str, @Nullable ByteBuffer byteBuffer) {
        this.messenger.send(str, byteBuffer, null);
    }

    @UiThread
    public void send(@NonNull String str, @Nullable ByteBuffer byteBuffer, @Nullable BinaryReply binaryReply) {
        this.messenger.send(str, byteBuffer, binaryReply);
    }

    @UiThread
    public void setMessageHandler(@NonNull String str, @Nullable BinaryMessageHandler binaryMessageHandler) {
        this.messenger.setMessageHandler(str, binaryMessageHandler);
    }

    @UiThread
    public int getPendingChannelResponseCount() {
        return this.messenger.getPendingChannelResponseCount();
    }

    @Nullable
    public String getIsolateServiceId() {
        return this.isolateServiceId;
    }

    public void setIsolateServiceIdListener(@Nullable IsolateServiceIdListener isolateServiceIdListener2) {
        this.isolateServiceIdListener = isolateServiceIdListener2;
        IsolateServiceIdListener isolateServiceIdListener3 = this.isolateServiceIdListener;
        if (isolateServiceIdListener3 != null) {
            String str = this.isolateServiceId;
            if (str != null) {
                isolateServiceIdListener3.onIsolateServiceIdAvailable(str);
            }
        }
    }
}
