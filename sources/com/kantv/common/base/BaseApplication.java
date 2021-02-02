package com.kantv.common.base;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.util.Log;
import com.kantv.common.log.AILog;
import com.kantv.common.utils.Utils;
import java.util.Iterator;
import java.util.Stack;

public abstract class BaseApplication extends Application {
    private static final String TAG = "BaseApplication";
    private static boolean limitIp = false;
    private static BaseApplication sInstance;
    private Stack<Activity> activityStack;

    private void init() {
    }

    public static BaseApplication getInstance() {
        return sInstance;
    }

    public void onCreate() {
        super.onCreate();
        sInstance = this;
        Utils.init(this);
        Utils.isAppDebug();
        init();
        StringBuilder sb = new StringBuilder();
        sb.append("Application onCreate end: ");
        sb.append(System.currentTimeMillis());
        AILog.d(TAG, sb.toString());
    }

    public void addActivity(Activity activity) {
        if (this.activityStack == null) {
            this.activityStack = new Stack<>();
        }
        this.activityStack.add(activity);
    }

    public Activity currentActivity() {
        return (Activity) this.activityStack.lastElement();
    }

    public int getActivityStackNum() {
        Stack<Activity> stack = this.activityStack;
        if (stack == null) {
            return 0;
        }
        return stack.size();
    }

    public void finishActivity() {
        finishActivity((Activity) this.activityStack.lastElement());
    }

    public void finishActivity(Activity activity) {
        if (activity != null) {
            this.activityStack.remove(activity);
            activity.finish();
        }
    }

    public void finishActivity(Class<?> cls) {
        Iterator it = this.activityStack.iterator();
        while (it.hasNext()) {
            Activity activity = (Activity) it.next();
            if (activity.getClass().equals(cls)) {
                finishActivity(activity);
                return;
            }
        }
    }

    public void finishAllActivity() {
        int size = this.activityStack.size();
        for (int i = 0; i < size; i++) {
            if (this.activityStack.get(i) != null) {
                ((Activity) this.activityStack.get(i)).finish();
            }
        }
        this.activityStack.clear();
    }

    public void exitApp(Context context) {
        try {
            finishAllActivity();
            ((ActivityManager) context.getSystemService("activity")).killBackgroundProcesses(context.getPackageName());
            System.exit(0);
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append("app exit");
            sb.append(e.getMessage());
            Log.e("ActivityManager", sb.toString());
        }
    }

    public void setLimitIP(boolean z) {
        limitIp = z;
    }

    public boolean isLimitIp() {
        return limitIp;
    }
}
