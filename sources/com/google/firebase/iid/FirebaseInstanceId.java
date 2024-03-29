package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.os.Build.VERSION;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.DataCollectionDefaultChange;
import com.google.firebase.FirebaseApp;
import com.google.firebase.events.EventHandler;
import com.google.firebase.events.Subscriber;
import com.google.firebase.platforminfo.UserAgentPublisher;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.concurrent.GuardedBy;

public class FirebaseInstanceId {
    private static final long zzaq = TimeUnit.HOURS.toSeconds(8);
    private static zzax zzar;
    @GuardedBy("FirebaseInstanceId.class")
    @VisibleForTesting
    private static ScheduledThreadPoolExecutor zzas;
    private final Executor zzat;
    /* access modifiers changed from: private */
    public final FirebaseApp zzau;
    private final zzam zzav;
    private MessagingChannel zzaw;
    private final zzar zzax;
    private final zzba zzay;
    @GuardedBy("this")
    private boolean zzaz;
    private final zza zzba;

    private class zza {
        private final boolean zzbg = zzu();
        private final Subscriber zzbh;
        @GuardedBy("this")
        @Nullable
        private EventHandler<DataCollectionDefaultChange> zzbi;
        @GuardedBy("this")
        @Nullable
        private Boolean zzbj = zzt();

        zza(Subscriber subscriber) {
            this.zzbh = subscriber;
            if (this.zzbj == null && this.zzbg) {
                this.zzbi = new zzq(this);
                subscriber.subscribe(DataCollectionDefaultChange.class, this.zzbi);
            }
        }

        /* access modifiers changed from: 0000 */
        public final synchronized boolean isEnabled() {
            if (this.zzbj == null) {
                return this.zzbg && FirebaseInstanceId.this.zzau.isDataCollectionDefaultEnabled();
            }
            return this.zzbj.booleanValue();
        }

        /* access modifiers changed from: 0000 */
        public final synchronized void setEnabled(boolean z) {
            if (this.zzbi != null) {
                this.zzbh.unsubscribe(DataCollectionDefaultChange.class, this.zzbi);
                this.zzbi = null;
            }
            Editor edit = FirebaseInstanceId.this.zzau.getApplicationContext().getSharedPreferences("com.google.firebase.messaging", 0).edit();
            edit.putBoolean("auto_init", z);
            edit.apply();
            if (z) {
                FirebaseInstanceId.this.zzh();
            }
            this.zzbj = Boolean.valueOf(z);
        }

        @Nullable
        private final Boolean zzt() {
            String str = "firebase_messaging_auto_init_enabled";
            Context applicationContext = FirebaseInstanceId.this.zzau.getApplicationContext();
            SharedPreferences sharedPreferences = applicationContext.getSharedPreferences("com.google.firebase.messaging", 0);
            String str2 = "auto_init";
            if (sharedPreferences.contains(str2)) {
                return Boolean.valueOf(sharedPreferences.getBoolean(str2, false));
            }
            try {
                PackageManager packageManager = applicationContext.getPackageManager();
                if (packageManager != null) {
                    ApplicationInfo applicationInfo = packageManager.getApplicationInfo(applicationContext.getPackageName(), 128);
                    if (!(applicationInfo == null || applicationInfo.metaData == null || !applicationInfo.metaData.containsKey(str))) {
                        return Boolean.valueOf(applicationInfo.metaData.getBoolean(str));
                    }
                }
            } catch (NameNotFoundException unused) {
            }
            return null;
        }

        private final boolean zzu() {
            try {
                Class.forName("com.google.firebase.messaging.FirebaseMessaging");
                return true;
            } catch (ClassNotFoundException unused) {
                Context applicationContext = FirebaseInstanceId.this.zzau.getApplicationContext();
                Intent intent = new Intent("com.google.firebase.MESSAGING_EVENT");
                intent.setPackage(applicationContext.getPackageName());
                ResolveInfo resolveService = applicationContext.getPackageManager().resolveService(intent, 0);
                if (resolveService == null || resolveService.serviceInfo == null) {
                    return false;
                }
                return true;
            }
        }
    }

    public static FirebaseInstanceId getInstance() {
        return getInstance(FirebaseApp.getInstance());
    }

    @Keep
    public static FirebaseInstanceId getInstance(@NonNull FirebaseApp firebaseApp) {
        return (FirebaseInstanceId) firebaseApp.get(FirebaseInstanceId.class);
    }

    FirebaseInstanceId(FirebaseApp firebaseApp, Subscriber subscriber, UserAgentPublisher userAgentPublisher) {
        this(firebaseApp, new zzam(firebaseApp.getApplicationContext()), zzh.zze(), zzh.zze(), subscriber, userAgentPublisher);
    }

    private FirebaseInstanceId(FirebaseApp firebaseApp, zzam zzam, Executor executor, Executor executor2, Subscriber subscriber, UserAgentPublisher userAgentPublisher) {
        this.zzaz = false;
        if (zzam.zza(firebaseApp) != null) {
            synchronized (FirebaseInstanceId.class) {
                if (zzar == null) {
                    zzar = new zzax(firebaseApp.getApplicationContext());
                }
            }
            this.zzau = firebaseApp;
            this.zzav = zzam;
            if (this.zzaw == null) {
                MessagingChannel messagingChannel = (MessagingChannel) firebaseApp.get(MessagingChannel.class);
                if (messagingChannel == null || !messagingChannel.isAvailable()) {
                    this.zzaw = new zzr(firebaseApp, zzam, executor, userAgentPublisher);
                } else {
                    this.zzaw = messagingChannel;
                }
            }
            this.zzaw = this.zzaw;
            this.zzat = executor2;
            this.zzay = new zzba(zzar);
            this.zzba = new zza(subscriber);
            this.zzax = new zzar(executor);
            if (this.zzba.isEnabled()) {
                zzh();
                return;
            }
            return;
        }
        throw new IllegalStateException("FirebaseInstanceId failed to initialize, FirebaseApp is missing project ID");
    }

    /* access modifiers changed from: private */
    public final void zzh() {
        zzaw zzk = zzk();
        if (zzr() || zza(zzk) || this.zzay.zzaq()) {
            startSync();
        }
    }

    /* access modifiers changed from: 0000 */
    public final FirebaseApp zzi() {
        return this.zzau;
    }

    /* access modifiers changed from: 0000 */
    public final synchronized void zza(boolean z) {
        this.zzaz = z;
    }

    private final synchronized void startSync() {
        if (!this.zzaz) {
            zza(0);
        }
    }

    /* access modifiers changed from: 0000 */
    public final synchronized void zza(long j) {
        zzaz zzaz2 = new zzaz(this, this.zzav, this.zzay, Math.min(Math.max(30, j << 1), zzaq));
        zza((Runnable) zzaz2, j);
        this.zzaz = true;
    }

    static void zza(Runnable runnable, long j) {
        synchronized (FirebaseInstanceId.class) {
            if (zzas == null) {
                zzas = new ScheduledThreadPoolExecutor(1, new NamedThreadFactory("FirebaseInstanceId"));
            }
            zzas.schedule(runnable, j, TimeUnit.SECONDS);
        }
    }

    @WorkerThread
    public String getId() {
        zzh();
        return zzj();
    }

    private static String zzj() {
        return zzam.zza(zzar.zzi("").getKeyPair());
    }

    public long getCreationTime() {
        return zzar.zzi("").getCreationTime();
    }

    @NonNull
    public Task<InstanceIdResult> getInstanceId() {
        return zza(zzam.zza(this.zzau), "*");
    }

    private final Task<InstanceIdResult> zza(String str, String str2) {
        return Tasks.forResult(null).continueWithTask(this.zzat, new zzo(this, str, zzd(str2)));
    }

    @WorkerThread
    public void deleteInstanceId() throws IOException {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            zza(this.zzaw.deleteInstanceId(zzj()));
            zzn();
            return;
        }
        throw new IOException("MAIN_THREAD");
    }

    @Deprecated
    @Nullable
    public String getToken() {
        zzaw zzk = zzk();
        if (this.zzaw.needsRefresh() || zza(zzk)) {
            startSync();
        }
        return zzaw.zzb(zzk);
    }

    @WorkerThread
    public String getToken(String str, String str2) throws IOException {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            return ((InstanceIdResult) zza(zza(str, str2))).getToken();
        }
        throw new IOException("MAIN_THREAD");
    }

    /* access modifiers changed from: 0000 */
    @Nullable
    public final zzaw zzk() {
        return zzb(zzam.zza(this.zzau), "*");
    }

    @Nullable
    @VisibleForTesting
    private static zzaw zzb(String str, String str2) {
        return zzar.zzb("", str, str2);
    }

    /* access modifiers changed from: 0000 */
    public final String zzl() throws IOException {
        return getToken(zzam.zza(this.zzau), "*");
    }

    private final <T> T zza(Task<T> task) throws IOException {
        try {
            return Tasks.await(task, 30000, TimeUnit.MILLISECONDS);
        } catch (ExecutionException e) {
            Throwable cause = e.getCause();
            if (cause instanceof IOException) {
                if ("INSTANCE_ID_RESET".equals(cause.getMessage())) {
                    zzn();
                }
                throw ((IOException) cause);
            } else if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            } else {
                throw new IOException(e);
            }
        } catch (InterruptedException | TimeoutException unused) {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        }
    }

    @WorkerThread
    public void deleteToken(String str, String str2) throws IOException {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            String zzd = zzd(str2);
            zza(this.zzaw.deleteToken(zzj(), zzaw.zzb(zzb(str, zzd)), str, zzd));
            zzar.zzc("", str, zzd);
            return;
        }
        throw new IOException("MAIN_THREAD");
    }

    public final synchronized Task<Void> zza(String str) {
        Task<Void> zza2;
        zza2 = this.zzay.zza(str);
        startSync();
        return zza2;
    }

    /* access modifiers changed from: 0000 */
    public final void zzb(String str) throws IOException {
        zzaw zzk = zzk();
        if (!zza(zzk)) {
            zza(this.zzaw.subscribeToTopic(zzj(), zzk.zzbx, str));
            return;
        }
        throw new IOException("token not available");
    }

    /* access modifiers changed from: 0000 */
    public final void zzc(String str) throws IOException {
        zzaw zzk = zzk();
        if (!zza(zzk)) {
            zza(this.zzaw.unsubscribeFromTopic(zzj(), zzk.zzbx, str));
            return;
        }
        throw new IOException("token not available");
    }

    static boolean zzm() {
        String str = "FirebaseInstanceId";
        return Log.isLoggable(str, 3) || (VERSION.SDK_INT == 23 && Log.isLoggable(str, 3));
    }

    /* access modifiers changed from: 0000 */
    public final synchronized void zzn() {
        zzar.zzal();
        if (this.zzba.isEnabled()) {
            startSync();
        }
    }

    /* access modifiers changed from: 0000 */
    public final boolean zzo() {
        return this.zzaw.isAvailable();
    }

    /* access modifiers changed from: 0000 */
    public final void zzp() {
        zzar.zzj("");
        startSync();
    }

    @VisibleForTesting
    public final boolean zzq() {
        return this.zzba.isEnabled();
    }

    @VisibleForTesting
    public final void zzb(boolean z) {
        this.zzba.setEnabled(z);
    }

    private static String zzd(String str) {
        return (str.isEmpty() || str.equalsIgnoreCase("fcm") || str.equalsIgnoreCase("gcm")) ? "*" : str;
    }

    /* access modifiers changed from: 0000 */
    public final boolean zza(@Nullable zzaw zzaw2) {
        return zzaw2 == null || zzaw2.zzg(this.zzav.zzad());
    }

    /* access modifiers changed from: 0000 */
    public final boolean zzr() {
        return this.zzaw.needsRefresh();
    }

    /* access modifiers changed from: 0000 */
    public final /* synthetic */ Task zza(String str, String str2, Task task) throws Exception {
        String zzj = zzj();
        zzaw zzb = zzb(str, str2);
        if (!this.zzaw.needsRefresh() && !zza(zzb)) {
            return Tasks.forResult(new zzy(zzj, zzb.zzbx));
        }
        String zzb2 = zzaw.zzb(zzb);
        zzar zzar2 = this.zzax;
        zzn zzn = new zzn(this, zzj, zzb2, str, str2);
        return zzar2.zza(str, str2, zzn);
    }

    /* access modifiers changed from: 0000 */
    public final /* synthetic */ Task zza(String str, String str2, String str3, String str4) {
        return this.zzaw.getToken(str, str2, str3, str4).onSuccessTask(this.zzat, new zzp(this, str3, str4, str));
    }

    /* access modifiers changed from: 0000 */
    public final /* synthetic */ Task zzb(String str, String str2, String str3, String str4) throws Exception {
        zzar.zza("", str, str2, str4, this.zzav.zzad());
        return Tasks.forResult(new zzy(str3, str4));
    }
}
