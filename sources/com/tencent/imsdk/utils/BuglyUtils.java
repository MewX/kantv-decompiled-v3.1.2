package com.tencent.imsdk.utils;

import android.content.Context;
import android.text.TextUtils;
import com.tencent.imsdk.BaseConstants;
import com.tencent.imsdk.log.QLog;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.lang.Thread.UncaughtExceptionHandler;
import java.lang.reflect.Method;

public class BuglyUtils implements UncaughtExceptionHandler {
    private static final String TAG = "BuglyUtils";
    private static BuglyUtils instance = new BuglyUtils();
    private UncaughtExceptionHandler defaultCrashHandler;
    private boolean isDebugModeEnabled = true;
    private boolean isEnabled = true;
    private boolean isInited = false;

    private BuglyUtils() {
    }

    public static BuglyUtils getInstance() {
        return instance;
    }

    public void init(Context context, boolean z, String str, String str2, String str3) {
        if (context == null) {
            this.isEnabled = false;
            return;
        }
        this.isEnabled = z;
        if (!this.isInited && this.isEnabled) {
            try {
                Class cls = Class.forName("com.tencent.bugly.imsdk.crashreport.CrashReport");
                Method method = cls.getMethod("setSdkExtraData", new Class[]{Context.class, String.class, String.class});
                if (method != null) {
                    method.invoke(null, new Object[]{context, BaseConstants.BUGLY_APP_ID, str3});
                }
                Method method2 = cls.getMethod("initCrashReport", new Class[]{Context.class, String.class, Boolean.TYPE});
                if (method2 != null) {
                    method2.invoke(null, new Object[]{context, str, Boolean.valueOf(this.isDebugModeEnabled)});
                    this.isInited = true;
                    QLog.i(TAG, "initUser imsdk bugly succ");
                }
                Method method3 = cls.getMethod("setUserId", new Class[]{String.class});
                if (method3 != null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str);
                    sb.append(EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR);
                    sb.append(str2);
                    method3.invoke(null, new Object[]{sb.toString()});
                }
            } catch (Throwable th) {
                QLog.writeException(TAG, "enable crashreport failed\n", th);
            }
            this.defaultCrashHandler = Thread.getDefaultUncaughtExceptionHandler();
            Thread.setDefaultUncaughtExceptionHandler(this);
        }
    }

    public void setAvSDKVersionToBugly(Context context, String str, String str2) {
        if (this.isEnabled) {
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                QLog.e(TAG, "setAvSDKVersionToBugly failed| invalid param");
                return;
            }
            try {
                Method method = Class.forName("com.tencent.bugly.imsdk.crashreport.CrashReport").getMethod("setSdkExtraData", new Class[]{Context.class, String.class, String.class});
                if (method != null) {
                    method.invoke(null, new Object[]{context, str, str2});
                }
            } catch (Throwable th) {
                QLog.writeException(TAG, "setAvSDKVersionToBugly failed\n", th);
            }
        }
    }

    public void setEnabled(boolean z) {
        this.isEnabled = z;
    }

    public void setDebugModeEnabled(boolean z) {
        this.isDebugModeEnabled = z;
    }

    public void log(int i, String str, String str2) {
        String str3;
        if (this.isEnabled) {
            if (i == 3) {
                str3 = "d";
            } else if (i == 4) {
                str3 = "i";
            } else if (i == 5) {
                str3 = "w";
            } else {
                if (i == 6) {
                    str3 = "e";
                }
            }
            try {
                Class cls = Class.forName("com.tencent.bugly.imsdk.crashreport.BuglyLog");
                if (cls != null) {
                    cls.getMethod(str3, new Class[]{String.class, String.class}).invoke(null, new Object[]{str, str2});
                }
            } catch (Throwable th) {
                QLog.writeException(TAG, "logBugly failed\n", th);
            }
        }
    }

    public void uncaughtException(Thread thread, Throwable th) {
        QLog.writeException(TAG, "uncaughtException\n", th);
        UncaughtExceptionHandler uncaughtExceptionHandler = this.defaultCrashHandler;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
        }
    }
}
