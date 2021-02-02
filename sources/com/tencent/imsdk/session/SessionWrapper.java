package com.tencent.imsdk.session;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.ActivityManager.RunningServiceInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IBinder.DeathRecipient;
import android.os.Process;
import android.os.RemoteException;
import com.tencent.imsdk.log.QLog;
import com.tencent.imsdk.manager.NativeManager;
import com.tencent.imsdk.session.IWrapperCallback.Stub;
import com.tencent.imsdk.session.NetConnectInfoCenter.EventListener;
import com.tencent.imsdk.session.remote.SessionService;
import java.util.List;

public class SessionWrapper implements ServiceConnection {
    /* access modifiers changed from: private */
    public static final String TAG = "SessionWrapper";
    /* access modifiers changed from: private */
    public IBaseService baseService;
    private IConnectionListener connectionListener;
    /* access modifiers changed from: private */
    public Context context;
    /* access modifiers changed from: private */
    public DeathRecipient mDeathRecipient;
    private IUserStatusListener userStatusListener;
    private IWrapperCallback wrapperCallback;

    private static class Holder {
        static SessionWrapper instance = new SessionWrapper();

        private Holder() {
        }
    }

    private SessionWrapper() {
        this.wrapperCallback = new Stub() {
            public void onLog(int i, String str, String str2) throws RemoteException {
                if (i == 2) {
                    QLog.v(str, str2);
                } else if (i == 3) {
                    QLog.d(str, str2);
                } else if (i == 4) {
                    QLog.i(str, str2);
                } else if (i == 5) {
                    QLog.w(str, str2);
                } else if (i != 6) {
                    String access$100 = SessionWrapper.TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("onLog Unkown log level for tag:");
                    sb.append(str);
                    sb.append(" msg:");
                    sb.append(str2);
                    QLog.e(access$100, sb.toString());
                } else {
                    QLog.e(str, str2);
                }
            }
        };
        this.mDeathRecipient = new DeathRecipient() {
            public void binderDied() {
                if (SessionWrapper.this.baseService != null) {
                    SessionWrapper.this.baseService.asBinder().unlinkToDeath(SessionWrapper.this.mDeathRecipient, 0);
                    SessionWrapper.this.baseService = null;
                    SessionWrapper.this.attemptToBindService();
                }
            }
        };
    }

    public static SessionWrapper getInstance() {
        return Holder.instance;
    }

    public boolean init(Context context2) {
        if (context2 == null) {
            return false;
        }
        this.context = context2.getApplicationContext();
        NetConnectInfoCenter.getInstance().init(context2.getApplicationContext());
        NetConnectInfoCenter.getInstance().setEventListener(new EventListener() {
            public void onTimeChanged() {
            }

            public void onNetworkChanged(boolean z) {
                NativeManager.nativeOnNetworkChanged(z);
            }
        });
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        intentFilter.addAction("android.net.wifi.STATE_CHANGE");
        intentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        intentFilter.addAction("android.intent.action.TIME_SET");
        intentFilter.addAction("android.intent.action.DATE_CHANGED");
        intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
        context2.getApplicationContext().registerReceiver(NetConnectInfoCenter.getInstance(), intentFilter);
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("bind service=============");
        sb.append(System.currentTimeMillis());
        QLog.i(str, sb.toString());
        attemptToBindService();
        return true;
    }

    /* access modifiers changed from: private */
    public void attemptToBindService() {
        new Thread() {
            public void run() {
                int i = 0;
                while (i < 5) {
                    String access$100 = SessionWrapper.TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("try to bind service, main: ");
                    sb.append(SessionWrapper.this.context.getPackageName());
                    QLog.i(access$100, sb.toString());
                    i++;
                    boolean bindService = SessionWrapper.this.context.bindService(new Intent(SessionWrapper.this.context, SessionService.class), SessionWrapper.this, 1);
                    try {
                        sleep(500);
                        continue;
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                        continue;
                    }
                    if (bindService) {
                        return;
                    }
                }
            }
        }.start();
    }

    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.baseService = IBaseService.Stub.asInterface(iBinder);
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("onServiceConnected, service name: ");
        sb.append(componentName);
        sb.append(" baseService ");
        sb.append(this.baseService);
        QLog.i(str, sb.toString());
        IBaseService iBaseService = this.baseService;
        if (iBaseService != null) {
            try {
                iBaseService.init(this.wrapperCallback);
                iBinder.linkToDeath(this.mDeathRecipient, 0);
            } catch (Throwable th) {
                QLog.writeException(TAG, "onServiceConnected, throwable: \n", th);
            }
        }
    }

    public void onServiceDisconnected(ComponentName componentName) {
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("onServiceDisconnected, service name: ");
        sb.append(componentName);
        QLog.i(str, sb.toString());
    }

    public boolean uninit() {
        this.context.getApplicationContext().unregisterReceiver(NetConnectInfoCenter.getInstance());
        return true;
    }

    public void setUserStatusListener(IUserStatusListener iUserStatusListener) {
        this.userStatusListener = iUserStatusListener;
    }

    public IUserStatusListener getUserStatusListener() {
        return this.userStatusListener;
    }

    public void setConnectionListener(IConnectionListener iConnectionListener) {
        this.connectionListener = iConnectionListener;
    }

    public IConnectionListener getConnectionListener() {
        return this.connectionListener;
    }

    public static boolean isServiceRunning(Class<?> cls, Context context2) {
        for (RunningServiceInfo runningServiceInfo : ((ActivityManager) context2.getSystemService("activity")).getRunningServices(Integer.MAX_VALUE)) {
            String str = TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("target package: ");
            sb.append(context2.getPackageName());
            sb.append(", class: ");
            sb.append(cls.getName());
            QLog.i(str, sb.toString());
            if (context2.getPackageName().equals(runningServiceInfo.service.getPackageName()) && cls.getName().equals(runningServiceInfo.service.getClassName())) {
                return true;
            }
        }
        return false;
    }

    public static boolean isMainProcess(Context context2) {
        ActivityManager activityManager = (ActivityManager) context2.getSystemService("activity");
        String packageName = context2.getPackageName();
        int myPid = Process.myPid();
        List<RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
        if (runningAppProcesses == null) {
            QLog.i(TAG, "isMainProcess get getRunningAppProcesses null");
            List<RunningServiceInfo> runningServices = activityManager.getRunningServices(Integer.MAX_VALUE);
            if (runningServices == null) {
                QLog.i(TAG, "isMainProcess get getRunningServices null");
                return false;
            }
            for (RunningServiceInfo runningServiceInfo : runningServices) {
                if (runningServiceInfo.pid == myPid && packageName.equals(runningServiceInfo.service.getPackageName())) {
                    return true;
                }
            }
            return false;
        }
        for (RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.pid == myPid && packageName.equals(runningAppProcessInfo.processName)) {
                return true;
            }
        }
        return false;
    }
}
