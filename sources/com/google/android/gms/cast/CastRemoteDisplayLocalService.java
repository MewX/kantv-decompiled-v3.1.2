package com.google.android.gms.cast;

import android.annotation.TargetApi;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ServiceInfo;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.text.TextUtils;
import android.view.Display;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.core.app.NotificationCompat.Builder;
import androidx.mediarouter.media.MediaRouter;
import androidx.mediarouter.media.MediaRouter.Callback;
import com.google.android.gms.cast.CastRemoteDisplay.Configuration;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.cast.zzdg;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;

@TargetApi(19)
public abstract class CastRemoteDisplayLocalService extends Service {
    /* access modifiers changed from: private */
    public static final zzdg zzbe = new zzdg("CastRemoteDisplayLocalService");
    private static final int zzbo = R.id.cast_notification_id;
    /* access modifiers changed from: private */
    public static final Object zzbp = new Object();
    /* access modifiers changed from: private */
    public static AtomicBoolean zzbq = new AtomicBoolean(false);
    /* access modifiers changed from: private */
    public static CastRemoteDisplayLocalService zzcf;
    private Handler handler;
    /* access modifiers changed from: private */
    public WeakReference<Callbacks> zzbr;
    private zzb zzbs;
    private NotificationSettings zzbt;
    private Notification zzbu;
    private boolean zzbv;
    private PendingIntent zzbw;
    /* access modifiers changed from: private */
    public CastDevice zzbx;
    /* access modifiers changed from: private */
    public Display zzby;
    /* access modifiers changed from: private */
    public Context zzbz;
    /* access modifiers changed from: private */
    public ServiceConnection zzca;
    private MediaRouter zzcb;
    /* access modifiers changed from: private */
    public boolean zzcc = false;
    private CastRemoteDisplayClient zzcd;
    private final Callback zzce = new zzu(this);
    private final IBinder zzcg = new zza();
    private String zzy;

    public interface Callbacks {
        void onRemoteDisplaySessionEnded(CastRemoteDisplayLocalService castRemoteDisplayLocalService);

        void onRemoteDisplaySessionError(Status status);

        void onRemoteDisplaySessionStarted(CastRemoteDisplayLocalService castRemoteDisplayLocalService);

        void onServiceCreated(CastRemoteDisplayLocalService castRemoteDisplayLocalService);
    }

    public static final class NotificationSettings {
        /* access modifiers changed from: private */
        public Notification zzbu;
        /* access modifiers changed from: private */
        public PendingIntent zzco;
        /* access modifiers changed from: private */
        public String zzcp;
        /* access modifiers changed from: private */
        public String zzcq;

        public static final class Builder {
            private NotificationSettings zzcr = new NotificationSettings((zzu) null);

            public final Builder setNotification(Notification notification) {
                this.zzcr.zzbu = notification;
                return this;
            }

            public final Builder setNotificationPendingIntent(PendingIntent pendingIntent) {
                this.zzcr.zzco = pendingIntent;
                return this;
            }

            public final Builder setNotificationTitle(String str) {
                this.zzcr.zzcp = str;
                return this;
            }

            public final Builder setNotificationText(String str) {
                this.zzcr.zzcq = str;
                return this;
            }

            public final NotificationSettings build() {
                if (this.zzcr.zzbu != null) {
                    if (!TextUtils.isEmpty(this.zzcr.zzcp)) {
                        throw new IllegalArgumentException("notificationTitle requires using the default notification");
                    } else if (!TextUtils.isEmpty(this.zzcr.zzcq)) {
                        throw new IllegalArgumentException("notificationText requires using the default notification");
                    } else if (this.zzcr.zzco != null) {
                        throw new IllegalArgumentException("notificationPendingIntent requires using the default notification");
                    }
                } else if (TextUtils.isEmpty(this.zzcr.zzcp) && TextUtils.isEmpty(this.zzcr.zzcq) && this.zzcr.zzco == null) {
                    throw new IllegalArgumentException("At least an argument must be provided");
                }
                return this.zzcr;
            }
        }

        private NotificationSettings() {
        }

        private NotificationSettings(NotificationSettings notificationSettings) {
            this.zzbu = notificationSettings.zzbu;
            this.zzco = notificationSettings.zzco;
            this.zzcp = notificationSettings.zzcp;
            this.zzcq = notificationSettings.zzcq;
        }

        /* synthetic */ NotificationSettings(zzu zzu) {
            this();
        }

        /* synthetic */ NotificationSettings(NotificationSettings notificationSettings, zzu zzu) {
            this(notificationSettings);
        }
    }

    public static class Options {
        @Configuration
        private int zzbc = 2;

        public void setConfigPreset(@Configuration int i) {
            this.zzbc = i;
        }

        @Configuration
        public int getConfigPreset() {
            return this.zzbc;
        }
    }

    @VisibleForTesting
    class zza extends Binder {
        zza() {
        }
    }

    private static final class zzb extends BroadcastReceiver {
        private zzb() {
        }

        public final void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("com.google.android.gms.cast.remote_display.ACTION_NOTIFICATION_DISCONNECT")) {
                CastRemoteDisplayLocalService.stopService();
                return;
            }
            if (intent.getAction().equals("com.google.android.gms.cast.remote_display.ACTION_SESSION_ENDED")) {
                CastRemoteDisplayLocalService.zzb(false);
            }
        }

        /* synthetic */ zzb(zzu zzu) {
            this();
        }
    }

    public abstract void onCreatePresentation(Display display);

    public abstract void onDismissPresentation();

    public IBinder onBind(Intent intent) {
        zzb("onBind");
        return this.zzcg;
    }

    public void onCreate() {
        zzb("onCreate");
        super.onCreate();
        this.handler = new Handler(getMainLooper());
        this.handler.postDelayed(new zzv(this), 100);
        if (this.zzcd == null) {
            this.zzcd = CastRemoteDisplay.getClient(this);
        }
        if (PlatformVersion.isAtLeastO()) {
            NotificationManager notificationManager = (NotificationManager) getSystemService(NotificationManager.class);
            NotificationChannel notificationChannel = new NotificationChannel("cast_remote_display_local_service", getString(R.string.cast_notification_default_channel_name), 2);
            notificationChannel.setShowBadge(false);
            notificationManager.createNotificationChannel(notificationChannel);
        }
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        zzb("onStartCommand");
        this.zzcc = true;
        return 2;
    }

    protected static void setDebugEnabled() {
        zzbe.zzk(true);
    }

    /* access modifiers changed from: protected */
    public Display getDisplay() {
        return this.zzby;
    }

    public static CastRemoteDisplayLocalService getInstance() {
        CastRemoteDisplayLocalService castRemoteDisplayLocalService;
        synchronized (zzbp) {
            castRemoteDisplayLocalService = zzcf;
        }
        return castRemoteDisplayLocalService;
    }

    public static void startService(Context context, Class<? extends CastRemoteDisplayLocalService> cls, String str, CastDevice castDevice, NotificationSettings notificationSettings, Callbacks callbacks) {
        startServiceWithOptions(context, cls, str, castDevice, new Options(), notificationSettings, callbacks);
    }

    public static void startServiceWithOptions(@NonNull Context context, @NonNull Class<? extends CastRemoteDisplayLocalService> cls, @NonNull String str, @NonNull CastDevice castDevice, @NonNull Options options, @NonNull NotificationSettings notificationSettings, @NonNull Callbacks callbacks) {
        zzbe.d("Starting Service", new Object[0]);
        synchronized (zzbp) {
            if (zzcf != null) {
                zzbe.w("An existing service had not been stopped before starting one", new Object[0]);
                zzb(true);
            }
        }
        try {
            ServiceInfo serviceInfo = context.getPackageManager().getServiceInfo(new ComponentName(context, cls), 128);
            if (serviceInfo != null) {
                if (serviceInfo.exported) {
                    throw new IllegalStateException("The service must not be exported, verify the manifest configuration");
                }
            }
            Preconditions.checkNotNull(context, "activityContext is required.");
            Preconditions.checkNotNull(cls, "serviceClass is required.");
            Preconditions.checkNotNull(str, "applicationId is required.");
            Preconditions.checkNotNull(castDevice, "device is required.");
            Preconditions.checkNotNull(options, "options is required.");
            Preconditions.checkNotNull(notificationSettings, "notificationSettings is required.");
            Preconditions.checkNotNull(callbacks, "callbacks is required.");
            if (notificationSettings.zzbu == null && notificationSettings.zzco == null) {
                throw new IllegalArgumentException("notificationSettings: Either the notification or the notificationPendingIntent must be provided");
            } else if (zzbq.getAndSet(true)) {
                zzbe.e("Service is already being started, startService has been called twice", new Object[0]);
            } else {
                Intent intent = new Intent(context, cls);
                context.startService(intent);
                zzw zzw = new zzw(str, castDevice, options, notificationSettings, context, callbacks);
                context.bindService(intent, zzw, 64);
            }
        } catch (NameNotFoundException unused) {
            throw new IllegalStateException("Service not found, did you forget to configure it in the manifest?");
        }
    }

    /* access modifiers changed from: private */
    public final void zza(boolean z) {
        zzb("Stopping Service");
        Preconditions.checkMainThread("stopServiceInstanceInternal must be called on the main thread");
        if (!z && this.zzcb != null) {
            zzb("Setting default route");
            MediaRouter mediaRouter = this.zzcb;
            mediaRouter.selectRoute(mediaRouter.getDefaultRoute());
        }
        if (this.zzbs != null) {
            zzb("Unregistering notification receiver");
            unregisterReceiver(this.zzbs);
        }
        zzb("stopRemoteDisplaySession");
        zzb("stopRemoteDisplay");
        this.zzcd.stopRemoteDisplay().addOnCompleteListener(new zzaa(this));
        if (this.zzbr.get() != null) {
            ((Callbacks) this.zzbr.get()).onRemoteDisplaySessionEnded(this);
        }
        onDismissPresentation();
        zzb("Stopping the remote display Service");
        stopForeground(true);
        stopSelf();
        if (this.zzcb != null) {
            Preconditions.checkMainThread("CastRemoteDisplayLocalService calls must be done on the main thread");
            zzb("removeMediaRouterCallback");
            this.zzcb.removeCallback(this.zzce);
        }
        Context context = this.zzbz;
        if (context != null) {
            ServiceConnection serviceConnection = this.zzca;
            if (serviceConnection != null) {
                try {
                    context.unbindService(serviceConnection);
                } catch (IllegalArgumentException unused) {
                    zzb("No need to unbind service, already unbound");
                }
                this.zzca = null;
                this.zzbz = null;
            }
        }
        this.zzy = null;
        this.zzbu = null;
        this.zzby = null;
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0029, code lost:
        if (r1.handler == null) goto L_0x0043;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0033, code lost:
        if (android.os.Looper.myLooper() == android.os.Looper.getMainLooper()) goto L_0x0040;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0035, code lost:
        r1.handler.post(new com.google.android.gms.cast.zzx(r1, r4));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x003f, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0040, code lost:
        r1.zza(r4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0043, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void zzb(boolean r4) {
        /*
            com.google.android.gms.internal.cast.zzdg r0 = zzbe
            r1 = 0
            java.lang.Object[] r2 = new java.lang.Object[r1]
            java.lang.String r3 = "Stopping Service"
            r0.d(r3, r2)
            java.util.concurrent.atomic.AtomicBoolean r0 = zzbq
            r0.set(r1)
            java.lang.Object r0 = zzbp
            monitor-enter(r0)
            com.google.android.gms.cast.CastRemoteDisplayLocalService r2 = zzcf     // Catch:{ all -> 0x0044 }
            if (r2 != 0) goto L_0x0021
            com.google.android.gms.internal.cast.zzdg r4 = zzbe     // Catch:{ all -> 0x0044 }
            java.lang.String r2 = "Service is already being stopped"
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch:{ all -> 0x0044 }
            r4.e(r2, r1)     // Catch:{ all -> 0x0044 }
            monitor-exit(r0)     // Catch:{ all -> 0x0044 }
            return
        L_0x0021:
            com.google.android.gms.cast.CastRemoteDisplayLocalService r1 = zzcf     // Catch:{ all -> 0x0044 }
            r2 = 0
            zzcf = r2     // Catch:{ all -> 0x0044 }
            monitor-exit(r0)     // Catch:{ all -> 0x0044 }
            android.os.Handler r0 = r1.handler
            if (r0 == 0) goto L_0x0043
            android.os.Looper r0 = android.os.Looper.myLooper()
            android.os.Looper r2 = android.os.Looper.getMainLooper()
            if (r0 == r2) goto L_0x0040
            android.os.Handler r0 = r1.handler
            com.google.android.gms.cast.zzx r2 = new com.google.android.gms.cast.zzx
            r2.<init>(r1, r4)
            r0.post(r2)
            return
        L_0x0040:
            r1.zza(r4)
        L_0x0043:
            return
        L_0x0044:
            r4 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x0044 }
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.CastRemoteDisplayLocalService.zzb(boolean):void");
    }

    public static void stopService() {
        zzb(false);
    }

    public void updateNotificationSettings(NotificationSettings notificationSettings) {
        Preconditions.checkNotNull(notificationSettings, "notificationSettings is required.");
        Preconditions.checkNotNull(this.handler, "Service is not ready yet.");
        this.handler.post(new zzy(this, notificationSettings));
    }

    /* access modifiers changed from: private */
    public final void zza(NotificationSettings notificationSettings) {
        Preconditions.checkMainThread("updateNotificationSettingsInternal must be called on the main thread");
        if (this.zzbt != null) {
            if (!this.zzbv) {
                Preconditions.checkNotNull(notificationSettings.zzbu, "notification is required.");
                this.zzbu = notificationSettings.zzbu;
                this.zzbt.zzbu = this.zzbu;
            } else if (notificationSettings.zzbu == null) {
                if (notificationSettings.zzco != null) {
                    this.zzbt.zzco = notificationSettings.zzco;
                }
                if (!TextUtils.isEmpty(notificationSettings.zzcp)) {
                    this.zzbt.zzcp = notificationSettings.zzcp;
                }
                if (!TextUtils.isEmpty(notificationSettings.zzcq)) {
                    this.zzbt.zzcq = notificationSettings.zzcq;
                }
                this.zzbu = zzc(true);
            } else {
                throw new IllegalStateException("Current mode is default notification, notification attribute must not be provided");
            }
            startForeground(zzbo, this.zzbu);
            return;
        }
        throw new IllegalStateException("No current notification settings to update");
    }

    /* access modifiers changed from: private */
    public final void zza(Display display) {
        this.zzby = display;
        if (this.zzbv) {
            this.zzbu = zzc(true);
            startForeground(zzbo, this.zzbu);
        }
        if (this.zzbr.get() != null) {
            ((Callbacks) this.zzbr.get()).onRemoteDisplaySessionStarted(this);
        }
        onCreatePresentation(this.zzby);
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0020, code lost:
        r3.zzbr = new java.lang.ref.WeakReference<>(r10);
        r3.zzy = r4;
        r3.zzbx = r5;
        r3.zzbz = r8;
        r3.zzca = r9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0031, code lost:
        if (r3.zzcb != null) goto L_0x003d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0033, code lost:
        r3.zzcb = androidx.mediarouter.media.MediaRouter.getInstance(getApplicationContext());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x003d, code lost:
        r4 = new androidx.mediarouter.media.MediaRouteSelector.Builder().addControlCategory(com.google.android.gms.cast.CastMediaControlIntent.categoryForCast(r3.zzy)).build();
        zzb("addMediaRouterCallback");
        r3.zzcb.addCallback(r4, r3.zzce, 4);
        r3.zzbu = com.google.android.gms.cast.CastRemoteDisplayLocalService.NotificationSettings.zzb(r7);
        r3.zzbs = new com.google.android.gms.cast.CastRemoteDisplayLocalService.zzb(null);
        r4 = new android.content.IntentFilter();
        r4.addAction("com.google.android.gms.cast.remote_display.ACTION_NOTIFICATION_DISCONNECT");
        r4.addAction("com.google.android.gms.cast.remote_display.ACTION_SESSION_ENDED");
        registerReceiver(r3.zzbs, r4);
        r3.zzbt = new com.google.android.gms.cast.CastRemoteDisplayLocalService.NotificationSettings(r7, null);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x008d, code lost:
        if (com.google.android.gms.cast.CastRemoteDisplayLocalService.NotificationSettings.zzb(r3.zzbt) != null) goto L_0x0098;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x008f, code lost:
        r3.zzbv = true;
        r3.zzbu = zzc(false);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0098, code lost:
        r3.zzbv = false;
        r3.zzbu = com.google.android.gms.cast.CastRemoteDisplayLocalService.NotificationSettings.zzb(r3.zzbt);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x00a2, code lost:
        startForeground(zzbo, r3.zzbu);
        zzb("startRemoteDisplay");
        r4 = new android.content.Intent("com.google.android.gms.cast.remote_display.ACTION_SESSION_ENDED");
        r4.setPackage(r3.zzbz.getPackageName());
        r3.zzcd.startRemoteDisplay(r5, r3.zzy, r6.getConfigPreset(), android.app.PendingIntent.getBroadcast(r3, 0, r4, 0)).addOnCompleteListener(new com.google.android.gms.cast.zzz(r3));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x00dc, code lost:
        if (r3.zzbr.get() == null) goto L_0x00e9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x00de, code lost:
        ((com.google.android.gms.cast.CastRemoteDisplayLocalService.Callbacks) r3.zzbr.get()).onServiceCreated(r3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x00e9, code lost:
        return true;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean zza(java.lang.String r4, com.google.android.gms.cast.CastDevice r5, com.google.android.gms.cast.CastRemoteDisplayLocalService.Options r6, com.google.android.gms.cast.CastRemoteDisplayLocalService.NotificationSettings r7, android.content.Context r8, android.content.ServiceConnection r9, com.google.android.gms.cast.CastRemoteDisplayLocalService.Callbacks r10) {
        /*
            r3 = this;
            java.lang.String r0 = "startRemoteDisplaySession"
            r3.zzb(r0)
            java.lang.String r0 = "Starting the Cast Remote Display must be done on the main thread"
            com.google.android.gms.common.internal.Preconditions.checkMainThread(r0)
            java.lang.Object r0 = zzbp
            monitor-enter(r0)
            com.google.android.gms.cast.CastRemoteDisplayLocalService r1 = zzcf     // Catch:{ all -> 0x00ea }
            r2 = 0
            if (r1 == 0) goto L_0x001d
            com.google.android.gms.internal.cast.zzdg r4 = zzbe     // Catch:{ all -> 0x00ea }
            java.lang.String r5 = "An existing service had not been stopped before starting one"
            java.lang.Object[] r6 = new java.lang.Object[r2]     // Catch:{ all -> 0x00ea }
            r4.w(r5, r6)     // Catch:{ all -> 0x00ea }
            monitor-exit(r0)     // Catch:{ all -> 0x00ea }
            return r2
        L_0x001d:
            zzcf = r3     // Catch:{ all -> 0x00ea }
            monitor-exit(r0)     // Catch:{ all -> 0x00ea }
            java.lang.ref.WeakReference r0 = new java.lang.ref.WeakReference
            r0.<init>(r10)
            r3.zzbr = r0
            r3.zzy = r4
            r3.zzbx = r5
            r3.zzbz = r8
            r3.zzca = r9
            androidx.mediarouter.media.MediaRouter r4 = r3.zzcb
            if (r4 != 0) goto L_0x003d
            android.content.Context r4 = r3.getApplicationContext()
            androidx.mediarouter.media.MediaRouter r4 = androidx.mediarouter.media.MediaRouter.getInstance(r4)
            r3.zzcb = r4
        L_0x003d:
            androidx.mediarouter.media.MediaRouteSelector$Builder r4 = new androidx.mediarouter.media.MediaRouteSelector$Builder
            r4.<init>()
            java.lang.String r8 = r3.zzy
            java.lang.String r8 = com.google.android.gms.cast.CastMediaControlIntent.categoryForCast(r8)
            androidx.mediarouter.media.MediaRouteSelector$Builder r4 = r4.addControlCategory(r8)
            androidx.mediarouter.media.MediaRouteSelector r4 = r4.build()
            java.lang.String r8 = "addMediaRouterCallback"
            r3.zzb(r8)
            androidx.mediarouter.media.MediaRouter r8 = r3.zzcb
            androidx.mediarouter.media.MediaRouter$Callback r9 = r3.zzce
            r10 = 4
            r8.addCallback(r4, r9, r10)
            android.app.Notification r4 = r7.zzbu
            r3.zzbu = r4
            com.google.android.gms.cast.CastRemoteDisplayLocalService$zzb r4 = new com.google.android.gms.cast.CastRemoteDisplayLocalService$zzb
            r8 = 0
            r4.<init>(r8)
            r3.zzbs = r4
            android.content.IntentFilter r4 = new android.content.IntentFilter
            r4.<init>()
            java.lang.String r9 = "com.google.android.gms.cast.remote_display.ACTION_NOTIFICATION_DISCONNECT"
            r4.addAction(r9)
            java.lang.String r9 = "com.google.android.gms.cast.remote_display.ACTION_SESSION_ENDED"
            r4.addAction(r9)
            com.google.android.gms.cast.CastRemoteDisplayLocalService$zzb r9 = r3.zzbs
            r3.registerReceiver(r9, r4)
            com.google.android.gms.cast.CastRemoteDisplayLocalService$NotificationSettings r4 = new com.google.android.gms.cast.CastRemoteDisplayLocalService$NotificationSettings
            r4.<init>(r7, r8)
            r3.zzbt = r4
            com.google.android.gms.cast.CastRemoteDisplayLocalService$NotificationSettings r4 = r3.zzbt
            android.app.Notification r4 = r4.zzbu
            r7 = 1
            if (r4 != 0) goto L_0x0098
            r3.zzbv = r7
            android.app.Notification r4 = r3.zzc(r2)
            r3.zzbu = r4
            goto L_0x00a2
        L_0x0098:
            r3.zzbv = r2
            com.google.android.gms.cast.CastRemoteDisplayLocalService$NotificationSettings r4 = r3.zzbt
            android.app.Notification r4 = r4.zzbu
            r3.zzbu = r4
        L_0x00a2:
            int r4 = zzbo
            android.app.Notification r8 = r3.zzbu
            r3.startForeground(r4, r8)
            java.lang.String r4 = "startRemoteDisplay"
            r3.zzb(r4)
            android.content.Intent r4 = new android.content.Intent
            java.lang.String r8 = "com.google.android.gms.cast.remote_display.ACTION_SESSION_ENDED"
            r4.<init>(r8)
            android.content.Context r8 = r3.zzbz
            java.lang.String r8 = r8.getPackageName()
            r4.setPackage(r8)
            android.app.PendingIntent r4 = android.app.PendingIntent.getBroadcast(r3, r2, r4, r2)
            com.google.android.gms.cast.CastRemoteDisplayClient r8 = r3.zzcd
            java.lang.String r9 = r3.zzy
            int r6 = r6.getConfigPreset()
            com.google.android.gms.tasks.Task r4 = r8.startRemoteDisplay(r5, r9, r6, r4)
            com.google.android.gms.cast.zzz r5 = new com.google.android.gms.cast.zzz
            r5.<init>(r3)
            r4.addOnCompleteListener(r5)
            java.lang.ref.WeakReference<com.google.android.gms.cast.CastRemoteDisplayLocalService$Callbacks> r4 = r3.zzbr
            java.lang.Object r4 = r4.get()
            if (r4 == 0) goto L_0x00e9
            java.lang.ref.WeakReference<com.google.android.gms.cast.CastRemoteDisplayLocalService$Callbacks> r4 = r3.zzbr
            java.lang.Object r4 = r4.get()
            com.google.android.gms.cast.CastRemoteDisplayLocalService$Callbacks r4 = (com.google.android.gms.cast.CastRemoteDisplayLocalService.Callbacks) r4
            r4.onServiceCreated(r3)
        L_0x00e9:
            return r7
        L_0x00ea:
            r4 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x00ea }
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.CastRemoteDisplayLocalService.zza(java.lang.String, com.google.android.gms.cast.CastDevice, com.google.android.gms.cast.CastRemoteDisplayLocalService$Options, com.google.android.gms.cast.CastRemoteDisplayLocalService$NotificationSettings, android.content.Context, android.content.ServiceConnection, com.google.android.gms.cast.CastRemoteDisplayLocalService$Callbacks):boolean");
    }

    /* access modifiers changed from: private */
    public final void zzd() {
        if (this.zzbr.get() != null) {
            ((Callbacks) this.zzbr.get()).onRemoteDisplaySessionError(new Status(CastStatusCodes.ERROR_SERVICE_CREATION_FAILED));
        }
        stopService();
    }

    private final Notification zzc(boolean z) {
        int i;
        int i2;
        zzb("createDefaultNotification");
        String zzc = this.zzbt.zzcp;
        String zzd = this.zzbt.zzcq;
        if (z) {
            i = R.string.cast_notification_connected_message;
            i2 = R.drawable.cast_ic_notification_on;
        } else {
            i = R.string.cast_notification_connecting_message;
            i2 = R.drawable.cast_ic_notification_connecting;
        }
        if (TextUtils.isEmpty(zzc)) {
            zzc = (String) getPackageManager().getApplicationLabel(getApplicationInfo());
        }
        if (TextUtils.isEmpty(zzd)) {
            zzd = getString(i, new Object[]{this.zzbx.getFriendlyName()});
        }
        Builder ongoing = new Builder(this, "cast_remote_display_local_service").setContentTitle(zzc).setContentText(zzd).setContentIntent(this.zzbt.zzco).setSmallIcon(i2).setOngoing(true);
        String string = getString(R.string.cast_notification_disconnect);
        if (this.zzbw == null) {
            Intent intent = new Intent("com.google.android.gms.cast.remote_display.ACTION_NOTIFICATION_DISCONNECT");
            intent.setPackage(this.zzbz.getPackageName());
            this.zzbw = PendingIntent.getBroadcast(this, 0, intent, 134217728);
        }
        return ongoing.addAction(17301560, string, this.zzbw).build();
    }

    /* access modifiers changed from: private */
    public final void zzb(String str) {
        zzbe.d("[Instance: %s] %s", this, str);
    }

    /* access modifiers changed from: private */
    public final void zzc(String str) {
        zzbe.e("[Instance: %s] %s", this, str);
    }
}
