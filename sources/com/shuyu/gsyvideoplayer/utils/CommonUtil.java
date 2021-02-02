package com.shuyu.gsyvideoplayer.utils;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.net.ConnectivityManager;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.WindowManager;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.appcompat.widget.TintContextWrapper;
import androidx.fragment.app.FragmentActivity;
import java.io.File;
import java.util.Formatter;
import java.util.Locale;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

public class CommonUtil {
    public static String stringForTime(int i) {
        if (i <= 0 || i >= 86400000) {
            return "00:00";
        }
        int i2 = i / 1000;
        int i3 = i2 % 60;
        int i4 = (i2 / 60) % 60;
        int i5 = i2 / 3600;
        Formatter formatter = new Formatter(new StringBuilder(), Locale.getDefault());
        if (i5 > 0) {
            return formatter.format("%d:%02d:%02d", new Object[]{Integer.valueOf(i5), Integer.valueOf(i4), Integer.valueOf(i3)}).toString();
        }
        return formatter.format("%02d:%02d", new Object[]{Integer.valueOf(i4), Integer.valueOf(i3)}).toString();
    }

    public static boolean isWifiConnected(Context context) {
        if (((ConnectivityManager) context.getSystemService("connectivity")).getNetworkInfo(1).isConnected()) {
            return true;
        }
        return false;
    }

    public static Activity scanForActivity(Context context) {
        if (context == null) {
            return null;
        }
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof TintContextWrapper) {
            return scanForActivity(((TintContextWrapper) context).getBaseContext());
        }
        if (context instanceof ContextWrapper) {
            return scanForActivity(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    public static int getStatusBarHeight(Context context) {
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static int getActionBarHeight(Activity activity) {
        TypedValue typedValue = new TypedValue();
        if (activity.getTheme().resolveAttribute(16843499, typedValue, true)) {
            return TypedValue.complexToDimensionPixelSize(typedValue.data, activity.getResources().getDisplayMetrics());
        }
        return 0;
    }

    @SuppressLint({"RestrictedApi"})
    public static void hideSupportActionBar(Context context, boolean z, boolean z2) {
        if (z) {
            AppCompatActivity appCompActivity = getAppCompActivity(context);
            if (appCompActivity != null) {
                ActionBar supportActionBar = appCompActivity.getSupportActionBar();
                if (supportActionBar != null) {
                    supportActionBar.setShowHideAnimationEnabled(false);
                    supportActionBar.hide();
                }
            }
        }
        if (!z2) {
            return;
        }
        if (context instanceof FragmentActivity) {
            ((FragmentActivity) context).getWindow().setFlags(1024, 1024);
        } else if (context instanceof Activity) {
            ((Activity) context).getWindow().setFlags(1024, 1024);
        } else {
            getAppCompActivity(context).getWindow().setFlags(1024, 1024);
        }
    }

    @SuppressLint({"RestrictedApi"})
    public static void showSupportActionBar(Context context, boolean z, boolean z2) {
        if (z) {
            AppCompatActivity appCompActivity = getAppCompActivity(context);
            if (appCompActivity != null) {
                ActionBar supportActionBar = appCompActivity.getSupportActionBar();
                if (supportActionBar != null) {
                    supportActionBar.setShowHideAnimationEnabled(false);
                    supportActionBar.show();
                }
            }
        }
        if (!z2) {
            return;
        }
        if (context instanceof FragmentActivity) {
            ((FragmentActivity) context).getWindow().clearFlags(1024);
        } else if (context instanceof Activity) {
            ((Activity) context).getWindow().clearFlags(1024);
        } else {
            getAppCompActivity(context).getWindow().clearFlags(1024);
        }
    }

    public static void hideNavKey(Context context) {
        if (VERSION.SDK_INT >= 19) {
            ((Activity) context).getWindow().getDecorView().setSystemUiVisibility(2562);
        } else {
            ((Activity) context).getWindow().getDecorView().setSystemUiVisibility(514);
        }
    }

    public static void showNavKey(Context context, int i) {
        ((Activity) context).getWindow().getDecorView().setSystemUiVisibility(i);
    }

    public static AppCompatActivity getAppCompActivity(Context context) {
        if (context == null) {
            return null;
        }
        if (context instanceof AppCompatActivity) {
            return (AppCompatActivity) context;
        }
        if (context instanceof ContextThemeWrapper) {
            return getAppCompActivity(((ContextThemeWrapper) context).getBaseContext());
        }
        return null;
    }

    public static int dip2px(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int px2dip(Context context, float f) {
        return (int) ((f / context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int getScreenWidth(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.widthPixels;
    }

    public static int getScreenHeight(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    public static String getTextSpeed(long j) {
        String str = " KB/s";
        if (j >= 0 && j < 1024) {
            StringBuilder sb = new StringBuilder();
            sb.append(j);
            sb.append(str);
            return sb.toString();
        } else if (j >= 1024 && j < 1048576) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(Long.toString(j / 1024));
            sb2.append(str);
            return sb2.toString();
        } else if (j < 1048576 || j >= IjkMediaMeta.AV_CH_STEREO_RIGHT) {
            return "";
        } else {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(Long.toString(j / 1048576));
            sb3.append(" MB/s");
            return sb3.toString();
        }
    }

    public static void deleteFile(String str) {
        String[] list;
        File file = new File(str);
        if (!file.exists()) {
            return;
        }
        if (file.isFile()) {
            file.delete();
            return;
        }
        for (String str2 : file.list()) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(File.separator);
            sb.append(str2);
            deleteFile(sb.toString());
        }
        file.delete();
    }

    public static Activity getActivityContext(Context context) {
        if (context == null) {
            return null;
        }
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof TintContextWrapper) {
            return scanForActivity(((TintContextWrapper) context).getBaseContext());
        }
        if (context instanceof ContextWrapper) {
            return scanForActivity(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    public static boolean getCurrentScreenLand(Activity activity) {
        if (activity.getWindowManager().getDefaultDisplay().getRotation() == 1 || activity.getWindowManager().getDefaultDisplay().getRotation() == 3) {
            return true;
        }
        return false;
    }
}
