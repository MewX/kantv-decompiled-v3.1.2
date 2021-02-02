package com.tencent.imsdk.session.remote;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.AlarmManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.app.job.JobInfo.Builder;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Binder;
import android.os.Build.VERSION;
import android.os.IBinder;
import android.os.RemoteException;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.tencent.imsdk.session.IBaseService.Stub;
import com.tencent.imsdk.session.IWrapperCallback;
import com.tencent.imsdk.session.SessionBroadcastReceiver;
import com.tencent.imsdk.session.remote.AssistService.LocalBinder;

@Deprecated
public class SessionService extends Service {
    private static final int FLAG_RECEIVER_INCLUDE_BACKGROUND = 16777216;
    /* access modifiers changed from: private */
    public static final String TAG = "SessionService";
    /* access modifiers changed from: private */
    public AssistServiceConnection assistServiceConnection;
    Binder binder = new Stub() {
        public void init(IWrapperCallback iWrapperCallback) throws RemoteException {
            RLog.getInstance().SetWrapperCallback(iWrapperCallback);
            RLog.i(SessionService.TAG, "----- IBaseService init -----");
        }

        public void uninit() throws RemoteException {
            RLog.i(SessionService.TAG, "----- IBaseService uninit -----");
        }
    };

    private class AssistServiceConnection implements ServiceConnection {
        private AssistServiceConnection() {
        }

        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            RLog.i(SessionService.TAG, "AssistService onServiceConnected");
            AssistService service = ((LocalBinder) iBinder).getService();
            if (service != null) {
                try {
                    SessionService.this.startForeground(102400, SessionService.this.getNotification());
                    service.startForeground(102400, SessionService.this.getNotification());
                    service.stopForeground(true);
                    service.stopSelf();
                } catch (Exception e) {
                    String access$000 = SessionService.TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("AssistServiceConnection onServiceConnected exception = ");
                    sb.append(e);
                    RLog.e(access$000, sb.toString());
                }
            }
            SessionService sessionService = SessionService.this;
            sessionService.unbindService(sessionService.assistServiceConnection);
            SessionService.this.assistServiceConnection = null;
        }

        public void onServiceDisconnected(ComponentName componentName) {
            RLog.i(SessionService.TAG, "AssistService onServiceDisconnected");
        }
    }

    public void onCreate() {
        RLog.i(TAG, "----- SessionService OnCreate -----");
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        RLog.i(TAG, "----- SessionService onStartCommand -----");
        return 1;
    }

    public void onDestroy() {
        RLog.i(TAG, "----- SessionService onDestroy -----");
        super.onDestroy();
        System.exit(0);
    }

    public IBinder onBind(Intent intent) {
        RLog.i(TAG, "----- SessionService onBind -----");
        return this.binder;
    }

    public boolean onUnbind(Intent intent) {
        RLog.i(TAG, "----- SessionService onUnbind -----");
        RLog.getInstance().SetWrapperCallback(null);
        attemptToBootApp();
        return super.onUnbind(intent);
    }

    public void onTaskRemoved(Intent intent) {
        RLog.i(TAG, "onTaskRemoved, restarting SessionService...");
        RLog.getInstance().SetWrapperCallback(null);
        attemptToBootApp();
        super.onTaskRemoved(intent);
    }

    private void cancelRebootTimer() {
        if (VERSION.SDK_INT < 21) {
            cancelAlarmer();
        } else if (VERSION.SDK_INT < 26) {
            cancelJob();
        }
    }

    private void addRebootTimer() {
        if (VERSION.SDK_INT < 21) {
            addAlarmer();
        } else if (VERSION.SDK_INT < 26) {
            addJob();
        }
    }

    @TargetApi(21)
    private void addJob() {
        try {
            Builder builder = new Builder(0, new ComponentName(getApplicationContext(), KeepAliveJobService.class));
            builder.setRequiredNetworkType(1);
            if (VERSION.SDK_INT >= 24) {
                builder.setMinimumLatency(5000);
                builder.setOverrideDeadline(NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS);
            } else {
                builder.setPeriodic(5000);
                builder.setPersisted(true);
            }
            JobScheduler jobScheduler = (JobScheduler) getSystemService("jobscheduler");
            if (jobScheduler != null) {
                jobScheduler.schedule(builder.build());
            }
        } catch (Exception e) {
            String str = TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("addJob exception = ");
            sb.append(e);
            RLog.e(str, sb.toString());
        }
    }

    @TargetApi(21)
    private void cancelJob() {
        JobScheduler jobScheduler = (JobScheduler) getSystemService("jobscheduler");
        if (jobScheduler != null) {
            jobScheduler.cancel(0);
        }
    }

    private void addAlarmer() {
        PendingIntent service = PendingIntent.getService(getApplicationContext(), 0, new Intent(getApplicationContext(), SessionService.class), 134217728);
        AlarmManager alarmManager = (AlarmManager) getSystemService(NotificationCompat.CATEGORY_ALARM);
        if (alarmManager != null) {
            alarmManager.cancel(service);
            alarmManager.setRepeating(0, System.currentTimeMillis() + 5000, 5000, service);
        }
    }

    private void cancelAlarmer() {
        PendingIntent service = PendingIntent.getService(getApplicationContext(), 0, new Intent(getApplicationContext(), SessionService.class), 134217728);
        AlarmManager alarmManager = (AlarmManager) getSystemService(NotificationCompat.CATEGORY_ALARM);
        if (alarmManager != null) {
            alarmManager.cancel(service);
        }
    }

    private void startForegroudCompat() {
        if (VERSION.SDK_INT < 18) {
            startForeground(1, getNotification());
        } else if (VERSION.SDK_INT <= 24) {
            this.assistServiceConnection = new AssistServiceConnection();
            bindService(new Intent(this, AssistService.class), this.assistServiceConnection, 1);
        }
    }

    /* access modifiers changed from: private */
    public Notification getNotification() {
        Notification.Builder builder;
        PendingIntent service = PendingIntent.getService(getApplicationContext(), 0, new Intent(getApplicationContext(), SessionService.class), 0);
        if (VERSION.SDK_INT >= 26) {
            String str = "FakeNotification";
            builder = new Notification.Builder(getApplicationContext(), str);
            NotificationChannel notificationChannel = new NotificationChannel(str, "FakeNotificationName", 4);
            NotificationManager notificationManager = (NotificationManager) getSystemService("notification");
            if (notificationManager != null) {
                notificationManager.createNotificationChannel(notificationChannel);
            }
        } else {
            builder = new Notification.Builder(getApplicationContext());
        }
        builder.setContentIntent(service);
        return builder.build();
    }

    @SuppressLint({"WrongConstant"})
    private void attemptToBootApp() {
        RLog.i(TAG, "attemptToBootApp Start");
        Intent intent = new Intent("com.tencent.imsdk.session.boot");
        Context applicationContext = getApplicationContext();
        intent.setClass(applicationContext, SessionBroadcastReceiver.class);
        intent.putExtra("packageName", applicationContext.getPackageName());
        intent.setFlags(16777248);
        applicationContext.sendBroadcast(intent);
    }
}
