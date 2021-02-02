package io.flutter.plugin.platform;

import android.app.Activity;
import android.app.ActivityManager.TaskDescription;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.os.Build.VERSION;
import android.view.View;
import android.view.Window;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.flutter.embedding.engine.systemchannels.PlatformChannel;
import io.flutter.embedding.engine.systemchannels.PlatformChannel.AppSwitcherDescription;
import io.flutter.embedding.engine.systemchannels.PlatformChannel.Brightness;
import io.flutter.embedding.engine.systemchannels.PlatformChannel.ClipboardContentFormat;
import io.flutter.embedding.engine.systemchannels.PlatformChannel.HapticFeedbackType;
import io.flutter.embedding.engine.systemchannels.PlatformChannel.PlatformMessageHandler;
import io.flutter.embedding.engine.systemchannels.PlatformChannel.SoundType;
import io.flutter.embedding.engine.systemchannels.PlatformChannel.SystemChromeStyle;
import io.flutter.embedding.engine.systemchannels.PlatformChannel.SystemUiOverlay;
import java.util.List;

public class PlatformPlugin {
    public static final int DEFAULT_SYSTEM_UI = 1280;
    private final Activity activity;
    private SystemChromeStyle currentTheme;
    private int mEnabledOverlays;
    private final PlatformMessageHandler mPlatformMessageHandler = new PlatformMessageHandler() {
        public void playSystemSound(@NonNull SoundType soundType) {
            PlatformPlugin.this.playSystemSound(soundType);
        }

        public void vibrateHapticFeedback(@NonNull HapticFeedbackType hapticFeedbackType) {
            PlatformPlugin.this.vibrateHapticFeedback(hapticFeedbackType);
        }

        public void setPreferredOrientations(int i) {
            PlatformPlugin.this.setSystemChromePreferredOrientations(i);
        }

        public void setApplicationSwitcherDescription(@NonNull AppSwitcherDescription appSwitcherDescription) {
            PlatformPlugin.this.setSystemChromeApplicationSwitcherDescription(appSwitcherDescription);
        }

        public void showSystemOverlays(@NonNull List<SystemUiOverlay> list) {
            PlatformPlugin.this.setSystemChromeEnabledSystemUIOverlays(list);
        }

        public void restoreSystemUiOverlays() {
            PlatformPlugin.this.restoreSystemChromeSystemUIOverlays();
        }

        public void setSystemUiOverlayStyle(@NonNull SystemChromeStyle systemChromeStyle) {
            PlatformPlugin.this.setSystemChromeSystemUIOverlayStyle(systemChromeStyle);
        }

        public void popSystemNavigator() {
            PlatformPlugin.this.popSystemNavigator();
        }

        public CharSequence getClipboardData(@Nullable ClipboardContentFormat clipboardContentFormat) {
            return PlatformPlugin.this.getClipboardData(clipboardContentFormat);
        }

        public void setClipboardData(@NonNull String str) {
            PlatformPlugin.this.setClipboardData(str);
        }
    };
    private final PlatformChannel platformChannel;

    /* renamed from: io.flutter.plugin.platform.PlatformPlugin$2 reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$Brightness = new int[Brightness.values().length];
        static final /* synthetic */ int[] $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$HapticFeedbackType = new int[HapticFeedbackType.values().length];
        static final /* synthetic */ int[] $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$SystemUiOverlay = new int[SystemUiOverlay.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(21:0|(2:1|2)|3|(2:5|6)|7|9|10|11|12|13|15|16|17|18|19|20|21|22|23|24|26) */
        /* JADX WARNING: Can't wrap try/catch for region: R(22:0|1|2|3|(2:5|6)|7|9|10|11|12|13|15|16|17|18|19|20|21|22|23|24|26) */
        /* JADX WARNING: Can't wrap try/catch for region: R(23:0|1|2|3|5|6|7|9|10|11|12|13|15|16|17|18|19|20|21|22|23|24|26) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x0032 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:17:0x004f */
        /* JADX WARNING: Missing exception handler attribute for start block: B:19:0x0059 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:21:0x0064 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:23:0x006f */
        static {
            /*
                io.flutter.embedding.engine.systemchannels.PlatformChannel$Brightness[] r0 = io.flutter.embedding.engine.systemchannels.PlatformChannel.Brightness.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$Brightness = r0
                r0 = 1
                int[] r1 = $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$Brightness     // Catch:{ NoSuchFieldError -> 0x0014 }
                io.flutter.embedding.engine.systemchannels.PlatformChannel$Brightness r2 = io.flutter.embedding.engine.systemchannels.PlatformChannel.Brightness.DARK     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r2 = r2.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r1[r2] = r0     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                r1 = 2
                int[] r2 = $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$Brightness     // Catch:{ NoSuchFieldError -> 0x001f }
                io.flutter.embedding.engine.systemchannels.PlatformChannel$Brightness r3 = io.flutter.embedding.engine.systemchannels.PlatformChannel.Brightness.LIGHT     // Catch:{ NoSuchFieldError -> 0x001f }
                int r3 = r3.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2[r3] = r1     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                io.flutter.embedding.engine.systemchannels.PlatformChannel$SystemUiOverlay[] r2 = io.flutter.embedding.engine.systemchannels.PlatformChannel.SystemUiOverlay.values()
                int r2 = r2.length
                int[] r2 = new int[r2]
                $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$SystemUiOverlay = r2
                int[] r2 = $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$SystemUiOverlay     // Catch:{ NoSuchFieldError -> 0x0032 }
                io.flutter.embedding.engine.systemchannels.PlatformChannel$SystemUiOverlay r3 = io.flutter.embedding.engine.systemchannels.PlatformChannel.SystemUiOverlay.TOP_OVERLAYS     // Catch:{ NoSuchFieldError -> 0x0032 }
                int r3 = r3.ordinal()     // Catch:{ NoSuchFieldError -> 0x0032 }
                r2[r3] = r0     // Catch:{ NoSuchFieldError -> 0x0032 }
            L_0x0032:
                int[] r2 = $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$SystemUiOverlay     // Catch:{ NoSuchFieldError -> 0x003c }
                io.flutter.embedding.engine.systemchannels.PlatformChannel$SystemUiOverlay r3 = io.flutter.embedding.engine.systemchannels.PlatformChannel.SystemUiOverlay.BOTTOM_OVERLAYS     // Catch:{ NoSuchFieldError -> 0x003c }
                int r3 = r3.ordinal()     // Catch:{ NoSuchFieldError -> 0x003c }
                r2[r3] = r1     // Catch:{ NoSuchFieldError -> 0x003c }
            L_0x003c:
                io.flutter.embedding.engine.systemchannels.PlatformChannel$HapticFeedbackType[] r2 = io.flutter.embedding.engine.systemchannels.PlatformChannel.HapticFeedbackType.values()
                int r2 = r2.length
                int[] r2 = new int[r2]
                $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$HapticFeedbackType = r2
                int[] r2 = $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$HapticFeedbackType     // Catch:{ NoSuchFieldError -> 0x004f }
                io.flutter.embedding.engine.systemchannels.PlatformChannel$HapticFeedbackType r3 = io.flutter.embedding.engine.systemchannels.PlatformChannel.HapticFeedbackType.STANDARD     // Catch:{ NoSuchFieldError -> 0x004f }
                int r3 = r3.ordinal()     // Catch:{ NoSuchFieldError -> 0x004f }
                r2[r3] = r0     // Catch:{ NoSuchFieldError -> 0x004f }
            L_0x004f:
                int[] r0 = $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$HapticFeedbackType     // Catch:{ NoSuchFieldError -> 0x0059 }
                io.flutter.embedding.engine.systemchannels.PlatformChannel$HapticFeedbackType r2 = io.flutter.embedding.engine.systemchannels.PlatformChannel.HapticFeedbackType.LIGHT_IMPACT     // Catch:{ NoSuchFieldError -> 0x0059 }
                int r2 = r2.ordinal()     // Catch:{ NoSuchFieldError -> 0x0059 }
                r0[r2] = r1     // Catch:{ NoSuchFieldError -> 0x0059 }
            L_0x0059:
                int[] r0 = $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$HapticFeedbackType     // Catch:{ NoSuchFieldError -> 0x0064 }
                io.flutter.embedding.engine.systemchannels.PlatformChannel$HapticFeedbackType r1 = io.flutter.embedding.engine.systemchannels.PlatformChannel.HapticFeedbackType.MEDIUM_IMPACT     // Catch:{ NoSuchFieldError -> 0x0064 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0064 }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0064 }
            L_0x0064:
                int[] r0 = $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$HapticFeedbackType     // Catch:{ NoSuchFieldError -> 0x006f }
                io.flutter.embedding.engine.systemchannels.PlatformChannel$HapticFeedbackType r1 = io.flutter.embedding.engine.systemchannels.PlatformChannel.HapticFeedbackType.HEAVY_IMPACT     // Catch:{ NoSuchFieldError -> 0x006f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x006f }
                r2 = 4
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x006f }
            L_0x006f:
                int[] r0 = $SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$HapticFeedbackType     // Catch:{ NoSuchFieldError -> 0x007a }
                io.flutter.embedding.engine.systemchannels.PlatformChannel$HapticFeedbackType r1 = io.flutter.embedding.engine.systemchannels.PlatformChannel.HapticFeedbackType.SELECTION_CLICK     // Catch:{ NoSuchFieldError -> 0x007a }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x007a }
                r2 = 5
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x007a }
            L_0x007a:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.flutter.plugin.platform.PlatformPlugin.AnonymousClass2.<clinit>():void");
        }
    }

    public PlatformPlugin(Activity activity2, PlatformChannel platformChannel2) {
        this.activity = activity2;
        this.platformChannel = platformChannel2;
        this.platformChannel.setPlatformMessageHandler(this.mPlatformMessageHandler);
        this.mEnabledOverlays = DEFAULT_SYSTEM_UI;
    }

    public void destroy() {
        this.platformChannel.setPlatformMessageHandler(null);
    }

    /* access modifiers changed from: private */
    public void playSystemSound(SoundType soundType) {
        if (soundType == SoundType.CLICK) {
            this.activity.getWindow().getDecorView().playSoundEffect(0);
        }
    }

    /* access modifiers changed from: private */
    public void vibrateHapticFeedback(HapticFeedbackType hapticFeedbackType) {
        View decorView = this.activity.getWindow().getDecorView();
        int i = AnonymousClass2.$SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$HapticFeedbackType[hapticFeedbackType.ordinal()];
        if (i == 1) {
            decorView.performHapticFeedback(0);
        } else if (i == 2) {
            decorView.performHapticFeedback(1);
        } else if (i == 3) {
            decorView.performHapticFeedback(3);
        } else if (i == 4) {
            decorView.performHapticFeedback(6);
        } else if (i == 5) {
            decorView.performHapticFeedback(4);
        }
    }

    /* access modifiers changed from: private */
    public void setSystemChromePreferredOrientations(int i) {
        this.activity.setRequestedOrientation(i);
    }

    /* access modifiers changed from: private */
    public void setSystemChromeApplicationSwitcherDescription(AppSwitcherDescription appSwitcherDescription) {
        if (VERSION.SDK_INT >= 21) {
            if (VERSION.SDK_INT < 28 && VERSION.SDK_INT > 21) {
                this.activity.setTaskDescription(new TaskDescription(appSwitcherDescription.label, null, appSwitcherDescription.color));
            }
            if (VERSION.SDK_INT >= 28) {
                this.activity.setTaskDescription(new TaskDescription(appSwitcherDescription.label, 0, appSwitcherDescription.color));
            }
        }
    }

    /* access modifiers changed from: private */
    public void setSystemChromeEnabledSystemUIOverlays(List<SystemUiOverlay> list) {
        int i = list.size() == 0 ? 5894 : 1798;
        for (int i2 = 0; i2 < list.size(); i2++) {
            int i3 = AnonymousClass2.$SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$SystemUiOverlay[((SystemUiOverlay) list.get(i2)).ordinal()];
            if (i3 == 1) {
                i &= -5;
            } else if (i3 == 2) {
                i = i & -513 & -3;
            }
        }
        this.mEnabledOverlays = i;
        updateSystemUiOverlays();
    }

    public void updateSystemUiOverlays() {
        this.activity.getWindow().getDecorView().setSystemUiVisibility(this.mEnabledOverlays);
        SystemChromeStyle systemChromeStyle = this.currentTheme;
        if (systemChromeStyle != null) {
            setSystemChromeSystemUIOverlayStyle(systemChromeStyle);
        }
    }

    /* access modifiers changed from: private */
    public void restoreSystemChromeSystemUIOverlays() {
        updateSystemUiOverlays();
    }

    /* access modifiers changed from: private */
    public void setSystemChromeSystemUIOverlayStyle(SystemChromeStyle systemChromeStyle) {
        Window window = this.activity.getWindow();
        View decorView = window.getDecorView();
        int systemUiVisibility = decorView.getSystemUiVisibility();
        if (VERSION.SDK_INT >= 26) {
            if (systemChromeStyle.systemNavigationBarIconBrightness != null) {
                int i = AnonymousClass2.$SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$Brightness[systemChromeStyle.systemNavigationBarIconBrightness.ordinal()];
                if (i == 1) {
                    systemUiVisibility |= 16;
                } else if (i == 2) {
                    systemUiVisibility &= -17;
                }
            }
            if (systemChromeStyle.systemNavigationBarColor != null) {
                window.setNavigationBarColor(systemChromeStyle.systemNavigationBarColor.intValue());
            }
        }
        if (VERSION.SDK_INT >= 23) {
            if (systemChromeStyle.statusBarIconBrightness != null) {
                int i2 = AnonymousClass2.$SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$Brightness[systemChromeStyle.statusBarIconBrightness.ordinal()];
                if (i2 == 1) {
                    systemUiVisibility |= 8192;
                } else if (i2 == 2) {
                    systemUiVisibility &= -8193;
                }
            }
            if (systemChromeStyle.statusBarColor != null) {
                window.setStatusBarColor(systemChromeStyle.statusBarColor.intValue());
            }
        }
        Integer num = systemChromeStyle.systemNavigationBarDividerColor;
        decorView.setSystemUiVisibility(systemUiVisibility);
        this.currentTheme = systemChromeStyle;
    }

    /* access modifiers changed from: private */
    public void popSystemNavigator() {
        this.activity.finish();
    }

    /* access modifiers changed from: private */
    public CharSequence getClipboardData(ClipboardContentFormat clipboardContentFormat) {
        ClipData primaryClip = ((ClipboardManager) this.activity.getSystemService("clipboard")).getPrimaryClip();
        if (primaryClip == null) {
            return null;
        }
        if (clipboardContentFormat == null || clipboardContentFormat == ClipboardContentFormat.PLAIN_TEXT) {
            return primaryClip.getItemAt(0).coerceToText(this.activity);
        }
        return null;
    }

    /* access modifiers changed from: private */
    public void setClipboardData(String str) {
        ((ClipboardManager) this.activity.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("text label?", str));
    }
}
