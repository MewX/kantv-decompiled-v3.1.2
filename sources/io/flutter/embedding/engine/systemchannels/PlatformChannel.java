package io.flutter.embedding.engine.systemchannels;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import io.flutter.embedding.engine.dart.DartExecutor;
import io.flutter.plugin.common.JSONMethodCodec;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class PlatformChannel {
    private static final String TAG = "PlatformChannel";
    @NonNull
    public final MethodChannel channel;
    private final MethodCallHandler parsingMethodCallHandler = new MethodCallHandler() {
        /* JADX WARNING: Can't wrap try/catch for region: R(2:47|48) */
        /* JADX WARNING: Code restructure failed: missing block: B:48:?, code lost:
            r2 = new java.lang.StringBuilder();
            r2.append("No such clipboard content format: ");
            r2.append(r6);
            r7.error(r0, r2.toString(), null);
         */
        /* JADX WARNING: Missing exception handler attribute for start block: B:47:0x00c1 */
        /* JADX WARNING: Removed duplicated region for block: B:52:0x00e2 A[Catch:{ JSONException -> 0x01cc }] */
        /* JADX WARNING: Removed duplicated region for block: B:53:0x00ef A[Catch:{ JSONException -> 0x01cc }] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void onMethodCall(@androidx.annotation.NonNull io.flutter.plugin.common.MethodCall r6, @androidx.annotation.NonNull io.flutter.plugin.common.MethodChannel.Result r7) {
            /*
                r5 = this;
                java.lang.String r0 = "error"
                io.flutter.embedding.engine.systemchannels.PlatformChannel r1 = io.flutter.embedding.engine.systemchannels.PlatformChannel.this
                io.flutter.embedding.engine.systemchannels.PlatformChannel$PlatformMessageHandler r1 = r1.platformMessageHandler
                if (r1 != 0) goto L_0x000b
                return
            L_0x000b:
                java.lang.String r1 = r6.method
                java.lang.Object r6 = r6.arguments
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                r2.<init>()
                java.lang.String r3 = "Received '"
                r2.append(r3)
                r2.append(r1)
                java.lang.String r3 = "' message."
                r2.append(r3)
                java.lang.String r2 = r2.toString()
                java.lang.String r3 = "PlatformChannel"
                io.flutter.Log.v(r3, r2)
                r2 = -1
                r3 = 0
                int r4 = r1.hashCode()     // Catch:{ JSONException -> 0x01cc }
                switch(r4) {
                    case -766342101: goto L_0x0091;
                    case -720677196: goto L_0x0086;
                    case -548468504: goto L_0x007c;
                    case -247230243: goto L_0x0072;
                    case -215273374: goto L_0x0068;
                    case 241845679: goto L_0x005e;
                    case 1390477857: goto L_0x0054;
                    case 1514180520: goto L_0x0049;
                    case 1674312266: goto L_0x003f;
                    case 2119655719: goto L_0x0035;
                    default: goto L_0x0033;
                }     // Catch:{ JSONException -> 0x01cc }
            L_0x0033:
                goto L_0x009a
            L_0x0035:
                java.lang.String r4 = "SystemChrome.setPreferredOrientations"
                boolean r1 = r1.equals(r4)     // Catch:{ JSONException -> 0x01cc }
                if (r1 == 0) goto L_0x009a
                r2 = 2
                goto L_0x009a
            L_0x003f:
                java.lang.String r4 = "SystemChrome.setEnabledSystemUIOverlays"
                boolean r1 = r1.equals(r4)     // Catch:{ JSONException -> 0x01cc }
                if (r1 == 0) goto L_0x009a
                r2 = 4
                goto L_0x009a
            L_0x0049:
                java.lang.String r4 = "Clipboard.getData"
                boolean r1 = r1.equals(r4)     // Catch:{ JSONException -> 0x01cc }
                if (r1 == 0) goto L_0x009a
                r2 = 8
                goto L_0x009a
            L_0x0054:
                java.lang.String r4 = "SystemChrome.setSystemUIOverlayStyle"
                boolean r1 = r1.equals(r4)     // Catch:{ JSONException -> 0x01cc }
                if (r1 == 0) goto L_0x009a
                r2 = 6
                goto L_0x009a
            L_0x005e:
                java.lang.String r4 = "SystemChrome.restoreSystemUIOverlays"
                boolean r1 = r1.equals(r4)     // Catch:{ JSONException -> 0x01cc }
                if (r1 == 0) goto L_0x009a
                r2 = 5
                goto L_0x009a
            L_0x0068:
                java.lang.String r4 = "SystemSound.play"
                boolean r1 = r1.equals(r4)     // Catch:{ JSONException -> 0x01cc }
                if (r1 == 0) goto L_0x009a
                r2 = 0
                goto L_0x009a
            L_0x0072:
                java.lang.String r4 = "HapticFeedback.vibrate"
                boolean r1 = r1.equals(r4)     // Catch:{ JSONException -> 0x01cc }
                if (r1 == 0) goto L_0x009a
                r2 = 1
                goto L_0x009a
            L_0x007c:
                java.lang.String r4 = "SystemChrome.setApplicationSwitcherDescription"
                boolean r1 = r1.equals(r4)     // Catch:{ JSONException -> 0x01cc }
                if (r1 == 0) goto L_0x009a
                r2 = 3
                goto L_0x009a
            L_0x0086:
                java.lang.String r4 = "Clipboard.setData"
                boolean r1 = r1.equals(r4)     // Catch:{ JSONException -> 0x01cc }
                if (r1 == 0) goto L_0x009a
                r2 = 9
                goto L_0x009a
            L_0x0091:
                java.lang.String r4 = "SystemNavigator.pop"
                boolean r1 = r1.equals(r4)     // Catch:{ JSONException -> 0x01cc }
                if (r1 == 0) goto L_0x009a
                r2 = 7
            L_0x009a:
                java.lang.String r1 = "text"
                switch(r2) {
                    case 0: goto L_0x01b0;
                    case 1: goto L_0x0194;
                    case 2: goto L_0x0174;
                    case 3: goto L_0x0154;
                    case 4: goto L_0x0132;
                    case 5: goto L_0x0124;
                    case 6: goto L_0x0102;
                    case 7: goto L_0x00f4;
                    case 8: goto L_0x00b8;
                    case 9: goto L_0x00a4;
                    default: goto L_0x009f;
                }
            L_0x009f:
                r7.notImplemented()     // Catch:{ JSONException -> 0x01cc }
                goto L_0x01e5
            L_0x00a4:
                org.json.JSONObject r6 = (org.json.JSONObject) r6     // Catch:{ JSONException -> 0x01cc }
                java.lang.String r6 = r6.getString(r1)     // Catch:{ JSONException -> 0x01cc }
                io.flutter.embedding.engine.systemchannels.PlatformChannel r1 = io.flutter.embedding.engine.systemchannels.PlatformChannel.this     // Catch:{ JSONException -> 0x01cc }
                io.flutter.embedding.engine.systemchannels.PlatformChannel$PlatformMessageHandler r1 = r1.platformMessageHandler     // Catch:{ JSONException -> 0x01cc }
                r1.setClipboardData(r6)     // Catch:{ JSONException -> 0x01cc }
                r7.success(r3)     // Catch:{ JSONException -> 0x01cc }
                goto L_0x01e5
            L_0x00b8:
                java.lang.String r6 = (java.lang.String) r6     // Catch:{ JSONException -> 0x01cc }
                if (r6 == 0) goto L_0x00d5
                io.flutter.embedding.engine.systemchannels.PlatformChannel$ClipboardContentFormat r6 = io.flutter.embedding.engine.systemchannels.PlatformChannel.ClipboardContentFormat.fromValue(r6)     // Catch:{ NoSuchFieldException -> 0x00c1 }
                goto L_0x00d6
            L_0x00c1:
                java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ JSONException -> 0x01cc }
                r2.<init>()     // Catch:{ JSONException -> 0x01cc }
                java.lang.String r4 = "No such clipboard content format: "
                r2.append(r4)     // Catch:{ JSONException -> 0x01cc }
                r2.append(r6)     // Catch:{ JSONException -> 0x01cc }
                java.lang.String r6 = r2.toString()     // Catch:{ JSONException -> 0x01cc }
                r7.error(r0, r6, r3)     // Catch:{ JSONException -> 0x01cc }
            L_0x00d5:
                r6 = r3
            L_0x00d6:
                io.flutter.embedding.engine.systemchannels.PlatformChannel r2 = io.flutter.embedding.engine.systemchannels.PlatformChannel.this     // Catch:{ JSONException -> 0x01cc }
                io.flutter.embedding.engine.systemchannels.PlatformChannel$PlatformMessageHandler r2 = r2.platformMessageHandler     // Catch:{ JSONException -> 0x01cc }
                java.lang.CharSequence r6 = r2.getClipboardData(r6)     // Catch:{ JSONException -> 0x01cc }
                if (r6 == 0) goto L_0x00ef
                org.json.JSONObject r2 = new org.json.JSONObject     // Catch:{ JSONException -> 0x01cc }
                r2.<init>()     // Catch:{ JSONException -> 0x01cc }
                r2.put(r1, r6)     // Catch:{ JSONException -> 0x01cc }
                r7.success(r2)     // Catch:{ JSONException -> 0x01cc }
                goto L_0x01e5
            L_0x00ef:
                r7.success(r3)     // Catch:{ JSONException -> 0x01cc }
                goto L_0x01e5
            L_0x00f4:
                io.flutter.embedding.engine.systemchannels.PlatformChannel r6 = io.flutter.embedding.engine.systemchannels.PlatformChannel.this     // Catch:{ JSONException -> 0x01cc }
                io.flutter.embedding.engine.systemchannels.PlatformChannel$PlatformMessageHandler r6 = r6.platformMessageHandler     // Catch:{ JSONException -> 0x01cc }
                r6.popSystemNavigator()     // Catch:{ JSONException -> 0x01cc }
                r7.success(r3)     // Catch:{ JSONException -> 0x01cc }
                goto L_0x01e5
            L_0x0102:
                io.flutter.embedding.engine.systemchannels.PlatformChannel r1 = io.flutter.embedding.engine.systemchannels.PlatformChannel.this     // Catch:{ JSONException -> 0x011a, NoSuchFieldException -> 0x0118 }
                org.json.JSONObject r6 = (org.json.JSONObject) r6     // Catch:{ JSONException -> 0x011a, NoSuchFieldException -> 0x0118 }
                io.flutter.embedding.engine.systemchannels.PlatformChannel$SystemChromeStyle r6 = r1.decodeSystemChromeStyle(r6)     // Catch:{ JSONException -> 0x011a, NoSuchFieldException -> 0x0118 }
                io.flutter.embedding.engine.systemchannels.PlatformChannel r1 = io.flutter.embedding.engine.systemchannels.PlatformChannel.this     // Catch:{ JSONException -> 0x011a, NoSuchFieldException -> 0x0118 }
                io.flutter.embedding.engine.systemchannels.PlatformChannel$PlatformMessageHandler r1 = r1.platformMessageHandler     // Catch:{ JSONException -> 0x011a, NoSuchFieldException -> 0x0118 }
                r1.setSystemUiOverlayStyle(r6)     // Catch:{ JSONException -> 0x011a, NoSuchFieldException -> 0x0118 }
                r7.success(r3)     // Catch:{ JSONException -> 0x011a, NoSuchFieldException -> 0x0118 }
                goto L_0x01e5
            L_0x0118:
                r6 = move-exception
                goto L_0x011b
            L_0x011a:
                r6 = move-exception
            L_0x011b:
                java.lang.String r6 = r6.getMessage()     // Catch:{ JSONException -> 0x01cc }
                r7.error(r0, r6, r3)     // Catch:{ JSONException -> 0x01cc }
                goto L_0x01e5
            L_0x0124:
                io.flutter.embedding.engine.systemchannels.PlatformChannel r6 = io.flutter.embedding.engine.systemchannels.PlatformChannel.this     // Catch:{ JSONException -> 0x01cc }
                io.flutter.embedding.engine.systemchannels.PlatformChannel$PlatformMessageHandler r6 = r6.platformMessageHandler     // Catch:{ JSONException -> 0x01cc }
                r6.restoreSystemUiOverlays()     // Catch:{ JSONException -> 0x01cc }
                r7.success(r3)     // Catch:{ JSONException -> 0x01cc }
                goto L_0x01e5
            L_0x0132:
                io.flutter.embedding.engine.systemchannels.PlatformChannel r1 = io.flutter.embedding.engine.systemchannels.PlatformChannel.this     // Catch:{ JSONException -> 0x014a, NoSuchFieldException -> 0x0148 }
                org.json.JSONArray r6 = (org.json.JSONArray) r6     // Catch:{ JSONException -> 0x014a, NoSuchFieldException -> 0x0148 }
                java.util.List r6 = r1.decodeSystemUiOverlays(r6)     // Catch:{ JSONException -> 0x014a, NoSuchFieldException -> 0x0148 }
                io.flutter.embedding.engine.systemchannels.PlatformChannel r1 = io.flutter.embedding.engine.systemchannels.PlatformChannel.this     // Catch:{ JSONException -> 0x014a, NoSuchFieldException -> 0x0148 }
                io.flutter.embedding.engine.systemchannels.PlatformChannel$PlatformMessageHandler r1 = r1.platformMessageHandler     // Catch:{ JSONException -> 0x014a, NoSuchFieldException -> 0x0148 }
                r1.showSystemOverlays(r6)     // Catch:{ JSONException -> 0x014a, NoSuchFieldException -> 0x0148 }
                r7.success(r3)     // Catch:{ JSONException -> 0x014a, NoSuchFieldException -> 0x0148 }
                goto L_0x01e5
            L_0x0148:
                r6 = move-exception
                goto L_0x014b
            L_0x014a:
                r6 = move-exception
            L_0x014b:
                java.lang.String r6 = r6.getMessage()     // Catch:{ JSONException -> 0x01cc }
                r7.error(r0, r6, r3)     // Catch:{ JSONException -> 0x01cc }
                goto L_0x01e5
            L_0x0154:
                io.flutter.embedding.engine.systemchannels.PlatformChannel r1 = io.flutter.embedding.engine.systemchannels.PlatformChannel.this     // Catch:{ JSONException -> 0x016a }
                org.json.JSONObject r6 = (org.json.JSONObject) r6     // Catch:{ JSONException -> 0x016a }
                io.flutter.embedding.engine.systemchannels.PlatformChannel$AppSwitcherDescription r6 = r1.decodeAppSwitcherDescription(r6)     // Catch:{ JSONException -> 0x016a }
                io.flutter.embedding.engine.systemchannels.PlatformChannel r1 = io.flutter.embedding.engine.systemchannels.PlatformChannel.this     // Catch:{ JSONException -> 0x016a }
                io.flutter.embedding.engine.systemchannels.PlatformChannel$PlatformMessageHandler r1 = r1.platformMessageHandler     // Catch:{ JSONException -> 0x016a }
                r1.setApplicationSwitcherDescription(r6)     // Catch:{ JSONException -> 0x016a }
                r7.success(r3)     // Catch:{ JSONException -> 0x016a }
                goto L_0x01e5
            L_0x016a:
                r6 = move-exception
                java.lang.String r6 = r6.getMessage()     // Catch:{ JSONException -> 0x01cc }
                r7.error(r0, r6, r3)     // Catch:{ JSONException -> 0x01cc }
                goto L_0x01e5
            L_0x0174:
                io.flutter.embedding.engine.systemchannels.PlatformChannel r1 = io.flutter.embedding.engine.systemchannels.PlatformChannel.this     // Catch:{ JSONException -> 0x018b, NoSuchFieldException -> 0x0189 }
                org.json.JSONArray r6 = (org.json.JSONArray) r6     // Catch:{ JSONException -> 0x018b, NoSuchFieldException -> 0x0189 }
                int r6 = r1.decodeOrientations(r6)     // Catch:{ JSONException -> 0x018b, NoSuchFieldException -> 0x0189 }
                io.flutter.embedding.engine.systemchannels.PlatformChannel r1 = io.flutter.embedding.engine.systemchannels.PlatformChannel.this     // Catch:{ JSONException -> 0x018b, NoSuchFieldException -> 0x0189 }
                io.flutter.embedding.engine.systemchannels.PlatformChannel$PlatformMessageHandler r1 = r1.platformMessageHandler     // Catch:{ JSONException -> 0x018b, NoSuchFieldException -> 0x0189 }
                r1.setPreferredOrientations(r6)     // Catch:{ JSONException -> 0x018b, NoSuchFieldException -> 0x0189 }
                r7.success(r3)     // Catch:{ JSONException -> 0x018b, NoSuchFieldException -> 0x0189 }
                goto L_0x01e5
            L_0x0189:
                r6 = move-exception
                goto L_0x018c
            L_0x018b:
                r6 = move-exception
            L_0x018c:
                java.lang.String r6 = r6.getMessage()     // Catch:{ JSONException -> 0x01cc }
                r7.error(r0, r6, r3)     // Catch:{ JSONException -> 0x01cc }
                goto L_0x01e5
            L_0x0194:
                java.lang.String r6 = (java.lang.String) r6     // Catch:{ NoSuchFieldException -> 0x01a7 }
                io.flutter.embedding.engine.systemchannels.PlatformChannel$HapticFeedbackType r6 = io.flutter.embedding.engine.systemchannels.PlatformChannel.HapticFeedbackType.fromValue(r6)     // Catch:{ NoSuchFieldException -> 0x01a7 }
                io.flutter.embedding.engine.systemchannels.PlatformChannel r1 = io.flutter.embedding.engine.systemchannels.PlatformChannel.this     // Catch:{ NoSuchFieldException -> 0x01a7 }
                io.flutter.embedding.engine.systemchannels.PlatformChannel$PlatformMessageHandler r1 = r1.platformMessageHandler     // Catch:{ NoSuchFieldException -> 0x01a7 }
                r1.vibrateHapticFeedback(r6)     // Catch:{ NoSuchFieldException -> 0x01a7 }
                r7.success(r3)     // Catch:{ NoSuchFieldException -> 0x01a7 }
                goto L_0x01e5
            L_0x01a7:
                r6 = move-exception
                java.lang.String r6 = r6.getMessage()     // Catch:{ JSONException -> 0x01cc }
                r7.error(r0, r6, r3)     // Catch:{ JSONException -> 0x01cc }
                goto L_0x01e5
            L_0x01b0:
                java.lang.String r6 = (java.lang.String) r6     // Catch:{ NoSuchFieldException -> 0x01c3 }
                io.flutter.embedding.engine.systemchannels.PlatformChannel$SoundType r6 = io.flutter.embedding.engine.systemchannels.PlatformChannel.SoundType.fromValue(r6)     // Catch:{ NoSuchFieldException -> 0x01c3 }
                io.flutter.embedding.engine.systemchannels.PlatformChannel r1 = io.flutter.embedding.engine.systemchannels.PlatformChannel.this     // Catch:{ NoSuchFieldException -> 0x01c3 }
                io.flutter.embedding.engine.systemchannels.PlatformChannel$PlatformMessageHandler r1 = r1.platformMessageHandler     // Catch:{ NoSuchFieldException -> 0x01c3 }
                r1.playSystemSound(r6)     // Catch:{ NoSuchFieldException -> 0x01c3 }
                r7.success(r3)     // Catch:{ NoSuchFieldException -> 0x01c3 }
                goto L_0x01e5
            L_0x01c3:
                r6 = move-exception
                java.lang.String r6 = r6.getMessage()     // Catch:{ JSONException -> 0x01cc }
                r7.error(r0, r6, r3)     // Catch:{ JSONException -> 0x01cc }
                goto L_0x01e5
            L_0x01cc:
                r6 = move-exception
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r2 = "JSON error: "
                r1.append(r2)
                java.lang.String r6 = r6.getMessage()
                r1.append(r6)
                java.lang.String r6 = r1.toString()
                r7.error(r0, r6, r3)
            L_0x01e5:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.flutter.embedding.engine.systemchannels.PlatformChannel.AnonymousClass1.onMethodCall(io.flutter.plugin.common.MethodCall, io.flutter.plugin.common.MethodChannel$Result):void");
        }
    };
    /* access modifiers changed from: private */
    @Nullable
    public PlatformMessageHandler platformMessageHandler;

    /* renamed from: io.flutter.embedding.engine.systemchannels.PlatformChannel$2 reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$DeviceOrientation = new int[DeviceOrientation.values().length];
        static final /* synthetic */ int[] $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$SystemUiOverlay = new int[SystemUiOverlay.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(15:0|(2:1|2)|3|5|6|7|9|10|11|12|13|14|15|16|18) */
        /* JADX WARNING: Can't wrap try/catch for region: R(16:0|1|2|3|5|6|7|9|10|11|12|13|14|15|16|18) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x0032 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:13:0x003c */
        /* JADX WARNING: Missing exception handler attribute for start block: B:15:0x0047 */
        static {
            /*
                io.flutter.embedding.engine.systemchannels.PlatformChannel$SystemUiOverlay[] r0 = io.flutter.embedding.engine.systemchannels.PlatformChannel.SystemUiOverlay.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$SystemUiOverlay = r0
                r0 = 1
                int[] r1 = $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$SystemUiOverlay     // Catch:{ NoSuchFieldError -> 0x0014 }
                io.flutter.embedding.engine.systemchannels.PlatformChannel$SystemUiOverlay r2 = io.flutter.embedding.engine.systemchannels.PlatformChannel.SystemUiOverlay.TOP_OVERLAYS     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r2 = r2.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r1[r2] = r0     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                r1 = 2
                int[] r2 = $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$SystemUiOverlay     // Catch:{ NoSuchFieldError -> 0x001f }
                io.flutter.embedding.engine.systemchannels.PlatformChannel$SystemUiOverlay r3 = io.flutter.embedding.engine.systemchannels.PlatformChannel.SystemUiOverlay.BOTTOM_OVERLAYS     // Catch:{ NoSuchFieldError -> 0x001f }
                int r3 = r3.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2[r3] = r1     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                io.flutter.embedding.engine.systemchannels.PlatformChannel$DeviceOrientation[] r2 = io.flutter.embedding.engine.systemchannels.PlatformChannel.DeviceOrientation.values()
                int r2 = r2.length
                int[] r2 = new int[r2]
                $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$DeviceOrientation = r2
                int[] r2 = $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$DeviceOrientation     // Catch:{ NoSuchFieldError -> 0x0032 }
                io.flutter.embedding.engine.systemchannels.PlatformChannel$DeviceOrientation r3 = io.flutter.embedding.engine.systemchannels.PlatformChannel.DeviceOrientation.PORTRAIT_UP     // Catch:{ NoSuchFieldError -> 0x0032 }
                int r3 = r3.ordinal()     // Catch:{ NoSuchFieldError -> 0x0032 }
                r2[r3] = r0     // Catch:{ NoSuchFieldError -> 0x0032 }
            L_0x0032:
                int[] r0 = $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$DeviceOrientation     // Catch:{ NoSuchFieldError -> 0x003c }
                io.flutter.embedding.engine.systemchannels.PlatformChannel$DeviceOrientation r2 = io.flutter.embedding.engine.systemchannels.PlatformChannel.DeviceOrientation.PORTRAIT_DOWN     // Catch:{ NoSuchFieldError -> 0x003c }
                int r2 = r2.ordinal()     // Catch:{ NoSuchFieldError -> 0x003c }
                r0[r2] = r1     // Catch:{ NoSuchFieldError -> 0x003c }
            L_0x003c:
                int[] r0 = $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$DeviceOrientation     // Catch:{ NoSuchFieldError -> 0x0047 }
                io.flutter.embedding.engine.systemchannels.PlatformChannel$DeviceOrientation r1 = io.flutter.embedding.engine.systemchannels.PlatformChannel.DeviceOrientation.LANDSCAPE_LEFT     // Catch:{ NoSuchFieldError -> 0x0047 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0047 }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0047 }
            L_0x0047:
                int[] r0 = $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$DeviceOrientation     // Catch:{ NoSuchFieldError -> 0x0052 }
                io.flutter.embedding.engine.systemchannels.PlatformChannel$DeviceOrientation r1 = io.flutter.embedding.engine.systemchannels.PlatformChannel.DeviceOrientation.LANDSCAPE_RIGHT     // Catch:{ NoSuchFieldError -> 0x0052 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0052 }
                r2 = 4
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0052 }
            L_0x0052:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.flutter.embedding.engine.systemchannels.PlatformChannel.AnonymousClass2.<clinit>():void");
        }
    }

    public static class AppSwitcherDescription {
        public final int color;
        @NonNull
        public final String label;

        public AppSwitcherDescription(int i, @NonNull String str) {
            this.color = i;
            this.label = str;
        }
    }

    public enum Brightness {
        LIGHT("Brightness.light"),
        DARK("Brightness.dark");
        
        @NonNull
        private String encodedName;

        @NonNull
        static Brightness fromValue(@NonNull String str) throws NoSuchFieldException {
            Brightness[] values;
            for (Brightness brightness : values()) {
                if (brightness.encodedName.equals(str)) {
                    return brightness;
                }
            }
            StringBuilder sb = new StringBuilder();
            sb.append("No such Brightness: ");
            sb.append(str);
            throw new NoSuchFieldException(sb.toString());
        }

        private Brightness(@NonNull String str) {
            this.encodedName = str;
        }
    }

    public enum ClipboardContentFormat {
        PLAIN_TEXT("text/plain");
        
        @NonNull
        private String encodedName;

        @NonNull
        static ClipboardContentFormat fromValue(@NonNull String str) throws NoSuchFieldException {
            ClipboardContentFormat[] values;
            for (ClipboardContentFormat clipboardContentFormat : values()) {
                if (clipboardContentFormat.encodedName.equals(str)) {
                    return clipboardContentFormat;
                }
            }
            StringBuilder sb = new StringBuilder();
            sb.append("No such ClipboardContentFormat: ");
            sb.append(str);
            throw new NoSuchFieldException(sb.toString());
        }

        private ClipboardContentFormat(@NonNull String str) {
            this.encodedName = str;
        }
    }

    public enum DeviceOrientation {
        PORTRAIT_UP("DeviceOrientation.portraitUp"),
        PORTRAIT_DOWN("DeviceOrientation.portraitDown"),
        LANDSCAPE_LEFT("DeviceOrientation.landscapeLeft"),
        LANDSCAPE_RIGHT("DeviceOrientation.landscapeRight");
        
        @NonNull
        private String encodedName;

        @NonNull
        static DeviceOrientation fromValue(@NonNull String str) throws NoSuchFieldException {
            DeviceOrientation[] values;
            for (DeviceOrientation deviceOrientation : values()) {
                if (deviceOrientation.encodedName.equals(str)) {
                    return deviceOrientation;
                }
            }
            StringBuilder sb = new StringBuilder();
            sb.append("No such DeviceOrientation: ");
            sb.append(str);
            throw new NoSuchFieldException(sb.toString());
        }

        private DeviceOrientation(@NonNull String str) {
            this.encodedName = str;
        }
    }

    public enum HapticFeedbackType {
        STANDARD(null),
        LIGHT_IMPACT("HapticFeedbackType.lightImpact"),
        MEDIUM_IMPACT("HapticFeedbackType.mediumImpact"),
        HEAVY_IMPACT("HapticFeedbackType.heavyImpact"),
        SELECTION_CLICK("HapticFeedbackType.selectionClick");
        
        @Nullable
        private final String encodedName;

        @NonNull
        static HapticFeedbackType fromValue(@Nullable String str) throws NoSuchFieldException {
            HapticFeedbackType[] values = values();
            int length = values.length;
            int i = 0;
            while (i < length) {
                HapticFeedbackType hapticFeedbackType = values[i];
                if (hapticFeedbackType.encodedName != null || str != null) {
                    String str2 = hapticFeedbackType.encodedName;
                    if (str2 == null || !str2.equals(str)) {
                        i++;
                    }
                }
                return hapticFeedbackType;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("No such HapticFeedbackType: ");
            sb.append(str);
            throw new NoSuchFieldException(sb.toString());
        }

        private HapticFeedbackType(@Nullable String str) {
            this.encodedName = str;
        }
    }

    public interface PlatformMessageHandler {
        @Nullable
        CharSequence getClipboardData(@Nullable ClipboardContentFormat clipboardContentFormat);

        void playSystemSound(@NonNull SoundType soundType);

        void popSystemNavigator();

        void restoreSystemUiOverlays();

        void setApplicationSwitcherDescription(@NonNull AppSwitcherDescription appSwitcherDescription);

        void setClipboardData(@NonNull String str);

        void setPreferredOrientations(int i);

        void setSystemUiOverlayStyle(@NonNull SystemChromeStyle systemChromeStyle);

        void showSystemOverlays(@NonNull List<SystemUiOverlay> list);

        void vibrateHapticFeedback(@NonNull HapticFeedbackType hapticFeedbackType);
    }

    public enum SoundType {
        CLICK("SystemSoundType.click");
        
        @NonNull
        private final String encodedName;

        @NonNull
        static SoundType fromValue(@NonNull String str) throws NoSuchFieldException {
            SoundType[] values;
            for (SoundType soundType : values()) {
                if (soundType.encodedName.equals(str)) {
                    return soundType;
                }
            }
            StringBuilder sb = new StringBuilder();
            sb.append("No such SoundType: ");
            sb.append(str);
            throw new NoSuchFieldException(sb.toString());
        }

        private SoundType(@NonNull String str) {
            this.encodedName = str;
        }
    }

    public static class SystemChromeStyle {
        @Nullable
        public final Integer statusBarColor;
        @Nullable
        public final Brightness statusBarIconBrightness;
        @Nullable
        public final Integer systemNavigationBarColor;
        @Nullable
        public final Integer systemNavigationBarDividerColor;
        @Nullable
        public final Brightness systemNavigationBarIconBrightness;

        public SystemChromeStyle(@Nullable Integer num, @Nullable Brightness brightness, @Nullable Integer num2, @Nullable Brightness brightness2, @Nullable Integer num3) {
            this.statusBarColor = num;
            this.statusBarIconBrightness = brightness;
            this.systemNavigationBarColor = num2;
            this.systemNavigationBarIconBrightness = brightness2;
            this.systemNavigationBarDividerColor = num3;
        }
    }

    public enum SystemUiOverlay {
        TOP_OVERLAYS("SystemUiOverlay.top"),
        BOTTOM_OVERLAYS("SystemUiOverlay.bottom");
        
        @NonNull
        private String encodedName;

        @NonNull
        static SystemUiOverlay fromValue(@NonNull String str) throws NoSuchFieldException {
            SystemUiOverlay[] values;
            for (SystemUiOverlay systemUiOverlay : values()) {
                if (systemUiOverlay.encodedName.equals(str)) {
                    return systemUiOverlay;
                }
            }
            StringBuilder sb = new StringBuilder();
            sb.append("No such SystemUiOverlay: ");
            sb.append(str);
            throw new NoSuchFieldException(sb.toString());
        }

        private SystemUiOverlay(@NonNull String str) {
            this.encodedName = str;
        }
    }

    public PlatformChannel(@NonNull DartExecutor dartExecutor) {
        this.channel = new MethodChannel(dartExecutor, "flutter/platform", JSONMethodCodec.INSTANCE);
        this.channel.setMethodCallHandler(this.parsingMethodCallHandler);
    }

    public void setPlatformMessageHandler(@Nullable PlatformMessageHandler platformMessageHandler2) {
        this.platformMessageHandler = platformMessageHandler2;
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x004a, code lost:
        return r10;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int decodeOrientations(@androidx.annotation.NonNull org.json.JSONArray r10) throws org.json.JSONException, java.lang.NoSuchFieldException {
        /*
            r9 = this;
            r0 = 0
            r1 = 0
            r2 = 0
            r3 = 0
        L_0x0004:
            int r4 = r10.length()
            r5 = 4
            r6 = 2
            r7 = 1
            if (r1 >= r4) goto L_0x0038
            java.lang.String r4 = r10.getString(r1)
            io.flutter.embedding.engine.systemchannels.PlatformChannel$DeviceOrientation r4 = io.flutter.embedding.engine.systemchannels.PlatformChannel.DeviceOrientation.fromValue(r4)
            int[] r8 = io.flutter.embedding.engine.systemchannels.PlatformChannel.AnonymousClass2.$SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$DeviceOrientation
            int r4 = r4.ordinal()
            r4 = r8[r4]
            if (r4 == r7) goto L_0x0030
            if (r4 == r6) goto L_0x002d
            r6 = 3
            if (r4 == r6) goto L_0x002a
            if (r4 == r5) goto L_0x0027
            goto L_0x0032
        L_0x0027:
            r2 = r2 | 8
            goto L_0x0032
        L_0x002a:
            r2 = r2 | 2
            goto L_0x0032
        L_0x002d:
            r2 = r2 | 4
            goto L_0x0032
        L_0x0030:
            r2 = r2 | 1
        L_0x0032:
            if (r3 != 0) goto L_0x0035
            r3 = r2
        L_0x0035:
            int r1 = r1 + 1
            goto L_0x0004
        L_0x0038:
            r10 = 9
            r1 = 8
            switch(r2) {
                case 0: goto L_0x005a;
                case 1: goto L_0x0059;
                case 2: goto L_0x0058;
                case 3: goto L_0x004b;
                case 4: goto L_0x004a;
                case 5: goto L_0x0048;
                case 6: goto L_0x004b;
                case 7: goto L_0x004b;
                case 8: goto L_0x0047;
                case 9: goto L_0x004b;
                case 10: goto L_0x0044;
                case 11: goto L_0x0043;
                case 12: goto L_0x004b;
                case 13: goto L_0x004b;
                case 14: goto L_0x004b;
                case 15: goto L_0x0040;
                default: goto L_0x003f;
            }
        L_0x003f:
            goto L_0x005c
        L_0x0040:
            r10 = 13
            return r10
        L_0x0043:
            return r6
        L_0x0044:
            r10 = 11
            return r10
        L_0x0047:
            return r1
        L_0x0048:
            r10 = 12
        L_0x004a:
            return r10
        L_0x004b:
            if (r3 == r7) goto L_0x0057
            if (r3 == r6) goto L_0x0056
            if (r3 == r5) goto L_0x0055
            if (r3 == r1) goto L_0x0054
            goto L_0x005c
        L_0x0054:
            return r1
        L_0x0055:
            return r10
        L_0x0056:
            return r0
        L_0x0057:
            return r7
        L_0x0058:
            return r0
        L_0x0059:
            return r7
        L_0x005a:
            r10 = -1
            return r10
        L_0x005c:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: io.flutter.embedding.engine.systemchannels.PlatformChannel.decodeOrientations(org.json.JSONArray):int");
    }

    /* access modifiers changed from: private */
    @NonNull
    public AppSwitcherDescription decodeAppSwitcherDescription(@NonNull JSONObject jSONObject) throws JSONException {
        int i = jSONObject.getInt("primaryColor");
        if (i != 0) {
            i |= ViewCompat.MEASURED_STATE_MASK;
        }
        return new AppSwitcherDescription(i, jSONObject.getString("label"));
    }

    /* access modifiers changed from: private */
    @NonNull
    public List<SystemUiOverlay> decodeSystemUiOverlays(@NonNull JSONArray jSONArray) throws JSONException, NoSuchFieldException {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            int i2 = AnonymousClass2.$SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$SystemUiOverlay[SystemUiOverlay.fromValue(jSONArray.getString(i)).ordinal()];
            if (i2 == 1) {
                arrayList.add(SystemUiOverlay.TOP_OVERLAYS);
            } else if (i2 == 2) {
                arrayList.add(SystemUiOverlay.BOTTOM_OVERLAYS);
            }
        }
        return arrayList;
    }

    /* access modifiers changed from: private */
    @NonNull
    public SystemChromeStyle decodeSystemChromeStyle(@NonNull JSONObject jSONObject) throws JSONException, NoSuchFieldException {
        String str = "systemNavigationBarIconBrightness";
        Integer num = null;
        Brightness fromValue = !jSONObject.isNull(str) ? Brightness.fromValue(jSONObject.getString(str)) : null;
        String str2 = "systemNavigationBarColor";
        Integer valueOf = !jSONObject.isNull(str2) ? Integer.valueOf(jSONObject.getInt(str2)) : null;
        String str3 = "statusBarIconBrightness";
        Brightness fromValue2 = !jSONObject.isNull(str3) ? Brightness.fromValue(jSONObject.getString(str3)) : null;
        String str4 = "statusBarColor";
        Integer valueOf2 = !jSONObject.isNull(str4) ? Integer.valueOf(jSONObject.getInt(str4)) : null;
        String str5 = "systemNavigationBarDividerColor";
        if (!jSONObject.isNull(str5)) {
            num = Integer.valueOf(jSONObject.getInt(str5));
        }
        SystemChromeStyle systemChromeStyle = new SystemChromeStyle(valueOf2, fromValue2, valueOf, fromValue, num);
        return systemChromeStyle;
    }
}
