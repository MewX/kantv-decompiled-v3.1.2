package io.flutter.embedding.engine.systemchannels;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.flutter.Log;
import io.flutter.embedding.engine.FlutterJNI;
import io.flutter.embedding.engine.FlutterJNI.AccessibilityDelegate;
import io.flutter.embedding.engine.dart.DartExecutor;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.BasicMessageChannel.MessageHandler;
import io.flutter.plugin.common.BasicMessageChannel.Reply;
import io.flutter.plugin.common.StandardMessageCodec;
import io.flutter.view.AccessibilityBridge.Action;
import java.util.HashMap;

public class AccessibilityChannel {
    private static final String TAG = "AccessibilityChannel";
    @NonNull
    public final BasicMessageChannel<Object> channel;
    @NonNull
    public final FlutterJNI flutterJNI;
    /* access modifiers changed from: private */
    @Nullable
    public AccessibilityMessageHandler handler;
    private final MessageHandler<Object> parsingMessageHandler = new MessageHandler<Object>() {
        public void onMessage(@Nullable Object obj, @NonNull Reply<Object> reply) {
            if (AccessibilityChannel.this.handler != null) {
                HashMap hashMap = (HashMap) obj;
                String str = (String) hashMap.get("type");
                HashMap hashMap2 = (HashMap) hashMap.get("data");
                StringBuilder sb = new StringBuilder();
                sb.append("Received ");
                sb.append(str);
                sb.append(" message.");
                Log.v(AccessibilityChannel.TAG, sb.toString());
                char c = 65535;
                switch (str.hashCode()) {
                    case -1140076541:
                        if (str.equals("tooltip")) {
                            c = 3;
                            break;
                        }
                        break;
                    case -649620375:
                        if (str.equals("announce")) {
                            c = 0;
                            break;
                        }
                        break;
                    case 114595:
                        if (str.equals("tap")) {
                            c = 1;
                            break;
                        }
                        break;
                    case 114203431:
                        if (str.equals("longPress")) {
                            c = 2;
                            break;
                        }
                        break;
                }
                String str2 = "message";
                if (c != 0) {
                    String str3 = "nodeId";
                    if (c == 1) {
                        Integer num = (Integer) hashMap.get(str3);
                        if (num != null) {
                            AccessibilityChannel.this.handler.onTap(num.intValue());
                        }
                    } else if (c == 2) {
                        Integer num2 = (Integer) hashMap.get(str3);
                        if (num2 != null) {
                            AccessibilityChannel.this.handler.onLongPress(num2.intValue());
                        }
                    } else if (c == 3) {
                        String str4 = (String) hashMap2.get(str2);
                        if (str4 != null) {
                            AccessibilityChannel.this.handler.onTooltip(str4);
                        }
                    }
                } else {
                    String str5 = (String) hashMap2.get(str2);
                    if (str5 != null) {
                        AccessibilityChannel.this.handler.announce(str5);
                    }
                }
            }
        }
    };

    public interface AccessibilityMessageHandler extends AccessibilityDelegate {
        void announce(@NonNull String str);

        void onLongPress(int i);

        void onTap(int i);

        void onTooltip(@NonNull String str);
    }

    public AccessibilityChannel(@NonNull DartExecutor dartExecutor, @NonNull FlutterJNI flutterJNI2) {
        this.channel = new BasicMessageChannel<>(dartExecutor, "flutter/accessibility", StandardMessageCodec.INSTANCE);
        this.channel.setMessageHandler(this.parsingMessageHandler);
        this.flutterJNI = flutterJNI2;
    }

    public void onAndroidAccessibilityEnabled() {
        this.flutterJNI.setSemanticsEnabled(true);
    }

    public void onAndroidAccessibilityDisabled() {
        this.flutterJNI.setSemanticsEnabled(false);
    }

    public void setAccessibilityFeatures(int i) {
        this.flutterJNI.setAccessibilityFeatures(i);
    }

    public void dispatchSemanticsAction(int i, @NonNull Action action) {
        this.flutterJNI.dispatchSemanticsAction(i, action);
    }

    public void dispatchSemanticsAction(int i, @NonNull Action action, @Nullable Object obj) {
        this.flutterJNI.dispatchSemanticsAction(i, action, obj);
    }

    public void setAccessibilityMessageHandler(@Nullable AccessibilityMessageHandler accessibilityMessageHandler) {
        this.handler = accessibilityMessageHandler;
        this.flutterJNI.setAccessibilityDelegate(accessibilityMessageHandler);
    }
}
