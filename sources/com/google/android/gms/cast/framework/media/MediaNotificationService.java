package com.google.android.gms.cast.framework.media;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.IBinder;
import android.support.v4.media.session.MediaSessionCompat.Token;
import android.text.TextUtils;
import com.google.android.gms.cast.framework.AppVisibilityListener;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.cast.zzdg;
import com.google.android.gms.internal.cast.zzx;
import java.util.ArrayList;
import java.util.List;

public class MediaNotificationService extends Service {
    public static final String ACTION_UPDATE_NOTIFICATION = "com.google.android.gms.cast.framework.action.UPDATE_NOTIFICATION";
    /* access modifiers changed from: private */
    public static final zzdg zzbe = new zzdg("MediaNotificationService");
    /* access modifiers changed from: private */
    public Notification zzbu;
    private NotificationOptions zzkx;
    private ImagePicker zzkz;
    private ComponentName zzle;
    private ComponentName zzlf;
    private List<String> zzlg = new ArrayList();
    private int[] zzlh;
    private zzd zzli;
    private long zzlj;
    private zzx zzlk;
    private ImageHints zzll;
    private Resources zzlm;
    private AppVisibilityListener zzln;
    private zza zzlo;
    /* access modifiers changed from: private */
    public zzb zzlp;
    /* access modifiers changed from: private */
    public CastContext zzlq;
    private final BroadcastReceiver zzlr = new zzh(this);

    private static class zza {
        public final int streamType;
        public final String zzf;
        public final Token zzlu;
        public final boolean zzlv;
        public final String zzlw;
        public final boolean zzlx;
        public final boolean zzly;

        public zza(boolean z, int i, String str, String str2, Token token, boolean z2, boolean z3) {
            this.zzlv = z;
            this.streamType = i;
            this.zzf = str;
            this.zzlw = str2;
            this.zzlu = token;
            this.zzlx = z2;
            this.zzly = z3;
        }
    }

    private static class zzb {
        public final Uri zzlz;
        public Bitmap zzma;

        public zzb(WebImage webImage) {
            Uri uri;
            if (webImage == null) {
                uri = null;
            } else {
                uri = webImage.getUrl();
            }
            this.zzlz = uri;
        }
    }

    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onCreate() {
        this.zzlq = CastContext.getSharedInstance(this);
        CastMediaOptions castMediaOptions = this.zzlq.getCastOptions().getCastMediaOptions();
        this.zzkx = castMediaOptions.getNotificationOptions();
        this.zzkz = castMediaOptions.getImagePicker();
        this.zzlm = getResources();
        this.zzle = new ComponentName(getApplicationContext(), castMediaOptions.getMediaIntentReceiverClassName());
        if (!TextUtils.isEmpty(this.zzkx.getTargetActivityClassName())) {
            this.zzlf = new ComponentName(getApplicationContext(), this.zzkx.getTargetActivityClassName());
        } else {
            this.zzlf = null;
        }
        this.zzli = this.zzkx.zzby();
        if (this.zzli == null) {
            this.zzlg.addAll(this.zzkx.getActions());
            this.zzlh = (int[]) this.zzkx.getCompatActionIndices().clone();
        } else {
            this.zzlh = null;
        }
        this.zzlj = this.zzkx.getSkipStepMs();
        int dimensionPixelSize = this.zzlm.getDimensionPixelSize(this.zzkx.zzbm());
        this.zzll = new ImageHints(1, dimensionPixelSize, dimensionPixelSize);
        this.zzlk = new zzx(getApplicationContext(), this.zzll);
        this.zzln = new zzi(this);
        this.zzlq.addAppVisibilityListener(this.zzln);
        ComponentName componentName = this.zzlf;
        if (componentName != null) {
            registerReceiver(this.zzlr, new IntentFilter(componentName.flattenToString()));
        }
        if (PlatformVersion.isAtLeastO()) {
            NotificationManager notificationManager = (NotificationManager) getSystemService(NotificationManager.class);
            NotificationChannel notificationChannel = new NotificationChannel("cast_media_notification", "Cast", 2);
            notificationChannel.setShowBadge(false);
            notificationManager.createNotificationChannel(notificationChannel);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:34:0x00aa, code lost:
        if ((r1 != null && r6.zzlv == r1.zzlv && r6.streamType == r1.streamType && com.google.android.gms.internal.cast.zzcu.zza(r6.zzf, r1.zzf) && com.google.android.gms.internal.cast.zzcu.zza(r6.zzlw, r1.zzlw) && r6.zzlx == r1.zzlx && r6.zzly == r1.zzly) == false) goto L_0x00ac;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int onStartCommand(android.content.Intent r17, int r18, int r19) {
        /*
            r16 = this;
            r0 = r16
            r1 = r17
            r2 = 1
            if (r1 == 0) goto L_0x00fb
            java.lang.String r3 = r17.getAction()
            java.lang.String r4 = "com.google.android.gms.cast.framework.action.UPDATE_NOTIFICATION"
            boolean r3 = r4.equals(r3)
            if (r3 == 0) goto L_0x00fb
            java.lang.String r3 = "extra_media_info"
            android.os.Parcelable r3 = r1.getParcelableExtra(r3)
            com.google.android.gms.cast.MediaInfo r3 = (com.google.android.gms.cast.MediaInfo) r3
            r4 = 0
            if (r3 != 0) goto L_0x0020
            goto L_0x00f6
        L_0x0020:
            com.google.android.gms.cast.MediaMetadata r5 = r3.getMetadata()
            if (r5 != 0) goto L_0x0028
            goto L_0x00f6
        L_0x0028:
            java.lang.String r6 = "extra_remote_media_client_player_state"
            int r6 = r1.getIntExtra(r6, r4)
            if (r6 != 0) goto L_0x0032
            goto L_0x00f6
        L_0x0032:
            java.lang.String r7 = "extra_cast_device"
            android.os.Parcelable r7 = r1.getParcelableExtra(r7)
            com.google.android.gms.cast.CastDevice r7 = (com.google.android.gms.cast.CastDevice) r7
            if (r7 != 0) goto L_0x003e
            goto L_0x00f6
        L_0x003e:
            com.google.android.gms.cast.framework.media.MediaNotificationService$zza r15 = new com.google.android.gms.cast.framework.media.MediaNotificationService$zza
            r8 = 2
            if (r6 != r8) goto L_0x0045
            r9 = 1
            goto L_0x0046
        L_0x0045:
            r9 = 0
        L_0x0046:
            int r10 = r3.getStreamType()
            java.lang.String r3 = "com.google.android.gms.cast.metadata.TITLE"
            java.lang.String r11 = r5.getString(r3)
            java.lang.String r12 = r7.getFriendlyName()
            java.lang.String r3 = "extra_media_session_token"
            android.os.Parcelable r3 = r1.getParcelableExtra(r3)
            r13 = r3
            android.support.v4.media.session.MediaSessionCompat$Token r13 = (android.support.v4.media.session.MediaSessionCompat.Token) r13
            java.lang.String r3 = "extra_can_skip_next"
            boolean r14 = r1.getBooleanExtra(r3, r4)
            java.lang.String r3 = "extra_can_skip_prev"
            boolean r3 = r1.getBooleanExtra(r3, r4)
            r8 = r15
            r6 = r15
            r15 = r3
            r8.<init>(r9, r10, r11, r12, r13, r14, r15)
            java.lang.String r3 = "extra_media_notification_force_update"
            boolean r1 = r1.getBooleanExtra(r3, r4)
            if (r1 != 0) goto L_0x00ac
            com.google.android.gms.cast.framework.media.MediaNotificationService$zza r1 = r0.zzlo
            if (r1 == 0) goto L_0x00a9
            boolean r3 = r6.zzlv
            boolean r7 = r1.zzlv
            if (r3 != r7) goto L_0x00a9
            int r3 = r6.streamType
            int r7 = r1.streamType
            if (r3 != r7) goto L_0x00a9
            java.lang.String r3 = r6.zzf
            java.lang.String r7 = r1.zzf
            boolean r3 = com.google.android.gms.internal.cast.zzcu.zza(r3, r7)
            if (r3 == 0) goto L_0x00a9
            java.lang.String r3 = r6.zzlw
            java.lang.String r7 = r1.zzlw
            boolean r3 = com.google.android.gms.internal.cast.zzcu.zza(r3, r7)
            if (r3 == 0) goto L_0x00a9
            boolean r3 = r6.zzlx
            boolean r7 = r1.zzlx
            if (r3 != r7) goto L_0x00a9
            boolean r3 = r6.zzly
            boolean r1 = r1.zzly
            if (r3 != r1) goto L_0x00a9
            r1 = 1
            goto L_0x00aa
        L_0x00a9:
            r1 = 0
        L_0x00aa:
            if (r1 != 0) goto L_0x00b1
        L_0x00ac:
            r0.zzlo = r6
            r16.zzaz()
        L_0x00b1:
            com.google.android.gms.cast.framework.media.MediaNotificationService$zzb r1 = new com.google.android.gms.cast.framework.media.MediaNotificationService$zzb
            com.google.android.gms.cast.framework.media.ImagePicker r3 = r0.zzkz
            if (r3 == 0) goto L_0x00be
            com.google.android.gms.cast.framework.media.ImageHints r6 = r0.zzll
            com.google.android.gms.common.images.WebImage r3 = r3.onPickImage(r5, r6)
            goto L_0x00d0
        L_0x00be:
            boolean r3 = r5.hasImages()
            if (r3 == 0) goto L_0x00cf
            java.util.List r3 = r5.getImages()
            java.lang.Object r3 = r3.get(r4)
            com.google.android.gms.common.images.WebImage r3 = (com.google.android.gms.common.images.WebImage) r3
            goto L_0x00d0
        L_0x00cf:
            r3 = 0
        L_0x00d0:
            r1.<init>(r3)
            com.google.android.gms.cast.framework.media.MediaNotificationService$zzb r3 = r0.zzlp
            if (r3 == 0) goto L_0x00e2
            android.net.Uri r5 = r1.zzlz
            android.net.Uri r3 = r3.zzlz
            boolean r3 = com.google.android.gms.internal.cast.zzcu.zza(r5, r3)
            if (r3 == 0) goto L_0x00e2
            r4 = 1
        L_0x00e2:
            if (r4 != 0) goto L_0x00f5
            com.google.android.gms.internal.cast.zzx r3 = r0.zzlk
            com.google.android.gms.cast.framework.media.zzj r4 = new com.google.android.gms.cast.framework.media.zzj
            r4.<init>(r0, r1)
            r3.zza(r4)
            com.google.android.gms.internal.cast.zzx r3 = r0.zzlk
            android.net.Uri r1 = r1.zzlz
            r3.zza(r1)
        L_0x00f5:
            r4 = 1
        L_0x00f6:
            if (r4 != 0) goto L_0x00fb
            r0.stopForeground(r2)
        L_0x00fb:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.media.MediaNotificationService.onStartCommand(android.content.Intent, int, int):int");
    }

    public void onDestroy() {
        zzx zzx = this.zzlk;
        if (zzx != null) {
            zzx.clear();
        }
        if (this.zzlf != null) {
            try {
                unregisterReceiver(this.zzlr);
            } catch (IllegalArgumentException e) {
                zzbe.zzc(e, "Unregistering trampoline BroadcastReceiver failed", new Object[0]);
            }
        }
        ((NotificationManager) getSystemService("notification")).cancel(1);
        this.zzlq.removeAppVisibilityListener(this.zzln);
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x00d3  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x0121  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zzaz() {
        /*
            r9 = this;
            com.google.android.gms.cast.framework.media.MediaNotificationService$zza r0 = r9.zzlo
            if (r0 != 0) goto L_0x0005
            return
        L_0x0005:
            com.google.android.gms.cast.framework.media.MediaNotificationService$zzb r0 = r9.zzlp
            r1 = 0
            if (r0 != 0) goto L_0x000c
            r0 = r1
            goto L_0x000e
        L_0x000c:
            android.graphics.Bitmap r0 = r0.zzma
        L_0x000e:
            androidx.core.app.NotificationCompat$Builder r2 = new androidx.core.app.NotificationCompat$Builder
            java.lang.String r3 = "cast_media_notification"
            r2.<init>(r9, r3)
            androidx.core.app.NotificationCompat$Builder r0 = r2.setLargeIcon(r0)
            com.google.android.gms.cast.framework.media.NotificationOptions r2 = r9.zzkx
            int r2 = r2.getSmallIconDrawableResId()
            androidx.core.app.NotificationCompat$Builder r0 = r0.setSmallIcon(r2)
            com.google.android.gms.cast.framework.media.MediaNotificationService$zza r2 = r9.zzlo
            java.lang.String r2 = r2.zzf
            androidx.core.app.NotificationCompat$Builder r0 = r0.setContentTitle(r2)
            android.content.res.Resources r2 = r9.zzlm
            com.google.android.gms.cast.framework.media.NotificationOptions r3 = r9.zzkx
            int r3 = r3.getCastingToDeviceStringResId()
            r4 = 1
            java.lang.Object[] r5 = new java.lang.Object[r4]
            com.google.android.gms.cast.framework.media.MediaNotificationService$zza r6 = r9.zzlo
            java.lang.String r6 = r6.zzlw
            r7 = 0
            r5[r7] = r6
            java.lang.String r2 = r2.getString(r3, r5)
            androidx.core.app.NotificationCompat$Builder r0 = r0.setContentText(r2)
            androidx.core.app.NotificationCompat$Builder r0 = r0.setOngoing(r4)
            androidx.core.app.NotificationCompat$Builder r0 = r0.setShowWhen(r7)
            androidx.core.app.NotificationCompat$Builder r0 = r0.setVisibility(r4)
            android.content.ComponentName r2 = r9.zzlf
            if (r2 != 0) goto L_0x0056
            goto L_0x0071
        L_0x0056:
            android.content.Intent r1 = new android.content.Intent
            r1.<init>()
            android.content.ComponentName r2 = r9.zzlf
            java.lang.String r3 = "targetActivity"
            r1.putExtra(r3, r2)
            android.content.ComponentName r2 = r9.zzlf
            java.lang.String r2 = r2.flattenToString()
            r1.setAction(r2)
            r2 = 134217728(0x8000000, float:3.85186E-34)
            android.app.PendingIntent r1 = android.app.PendingIntent.getBroadcast(r9, r4, r1, r2)
        L_0x0071:
            if (r1 == 0) goto L_0x0076
            r0.setContentIntent(r1)
        L_0x0076:
            com.google.android.gms.cast.framework.media.zzd r1 = r9.zzli
            if (r1 == 0) goto L_0x01c6
            com.google.android.gms.internal.cast.zzdg r1 = zzbe
            java.lang.Object[] r2 = new java.lang.Object[r7]
            java.lang.String r3 = "mActionsProvider != null"
            r1.i(r3, r2)
            com.google.android.gms.cast.framework.media.zzd r1 = r9.zzli     // Catch:{ RemoteException -> 0x01ae }
            java.util.List r1 = r1.getNotificationActions()     // Catch:{ RemoteException -> 0x01ae }
            com.google.android.gms.cast.framework.media.zzd r2 = r9.zzli     // Catch:{ RemoteException -> 0x01ae }
            int[] r2 = r2.getCompactViewActionIndices()     // Catch:{ RemoteException -> 0x01ae }
            if (r1 == 0) goto L_0x00b9
            boolean r3 = r1.isEmpty()
            if (r3 == 0) goto L_0x0098
            goto L_0x00b9
        L_0x0098:
            int r3 = r1.size()
            r5 = 5
            if (r3 <= r5) goto L_0x00b7
            com.google.android.gms.internal.cast.zzdg r3 = zzbe
            java.lang.Class<com.google.android.gms.cast.framework.media.NotificationActionsProvider> r5 = com.google.android.gms.cast.framework.media.NotificationActionsProvider.class
            java.lang.String r5 = r5.getSimpleName()
            java.lang.String r5 = java.lang.String.valueOf(r5)
            java.lang.String r6 = " provides more than 5 actions."
            java.lang.String r5 = r5.concat(r6)
            java.lang.Object[] r6 = new java.lang.Object[r7]
            r3.e(r5, r6)
            goto L_0x00d0
        L_0x00b7:
            r3 = 1
            goto L_0x00d1
        L_0x00b9:
            com.google.android.gms.internal.cast.zzdg r3 = zzbe
            java.lang.Class<com.google.android.gms.cast.framework.media.NotificationActionsProvider> r5 = com.google.android.gms.cast.framework.media.NotificationActionsProvider.class
            java.lang.String r5 = r5.getSimpleName()
            java.lang.String r5 = java.lang.String.valueOf(r5)
            java.lang.String r6 = " doesn't provide any action."
            java.lang.String r5 = r5.concat(r6)
            java.lang.Object[] r6 = new java.lang.Object[r7]
            r3.e(r5, r6)
        L_0x00d0:
            r3 = 0
        L_0x00d1:
            if (r3 == 0) goto L_0x01ad
            int r3 = r1.size()
            if (r2 == 0) goto L_0x0105
            int r5 = r2.length
            if (r5 != 0) goto L_0x00dd
            goto L_0x0105
        L_0x00dd:
            int r5 = r2.length
            r6 = 0
        L_0x00df:
            if (r6 >= r5) goto L_0x0103
            r8 = r2[r6]
            if (r8 < 0) goto L_0x00eb
            if (r8 < r3) goto L_0x00e8
            goto L_0x00eb
        L_0x00e8:
            int r6 = r6 + 1
            goto L_0x00df
        L_0x00eb:
            com.google.android.gms.internal.cast.zzdg r3 = zzbe
            java.lang.Class<com.google.android.gms.cast.framework.media.NotificationActionsProvider> r5 = com.google.android.gms.cast.framework.media.NotificationActionsProvider.class
            java.lang.String r5 = r5.getSimpleName()
            java.lang.String r5 = java.lang.String.valueOf(r5)
            java.lang.String r6 = "provides a compact view action whose index is out of bounds."
            java.lang.String r5 = r5.concat(r6)
            java.lang.Object[] r6 = new java.lang.Object[r7]
            r3.e(r5, r6)
            goto L_0x011c
        L_0x0103:
            r3 = 1
            goto L_0x011d
        L_0x0105:
            com.google.android.gms.internal.cast.zzdg r3 = zzbe
            java.lang.Class<com.google.android.gms.cast.framework.media.NotificationActionsProvider> r5 = com.google.android.gms.cast.framework.media.NotificationActionsProvider.class
            java.lang.String r5 = r5.getSimpleName()
            java.lang.String r5 = java.lang.String.valueOf(r5)
            java.lang.String r6 = " doesn't provide any actions for compact view."
            java.lang.String r5 = r5.concat(r6)
            java.lang.Object[] r6 = new java.lang.Object[r7]
            r3.e(r5, r6)
        L_0x011c:
            r3 = 0
        L_0x011d:
            if (r3 != 0) goto L_0x0121
            goto L_0x01ad
        L_0x0121:
            java.lang.Object r2 = r2.clone()
            int[] r2 = (int[]) r2
            java.util.Iterator r1 = r1.iterator()
        L_0x012b:
            boolean r3 = r1.hasNext()
            if (r3 == 0) goto L_0x01de
            java.lang.Object r3 = r1.next()
            com.google.android.gms.cast.framework.media.NotificationAction r3 = (com.google.android.gms.cast.framework.media.NotificationAction) r3
            com.google.android.gms.cast.framework.media.NotificationAction$Builder r5 = new com.google.android.gms.cast.framework.media.NotificationAction$Builder
            r5.<init>()
            java.lang.String r6 = r3.getAction()
            r5.setAction(r6)
            java.lang.String r5 = r3.getAction()
            java.lang.String r6 = "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"
            boolean r6 = r5.equals(r6)
            if (r6 != 0) goto L_0x017a
            java.lang.String r6 = "com.google.android.gms.cast.framework.action.SKIP_NEXT"
            boolean r6 = r5.equals(r6)
            if (r6 != 0) goto L_0x017a
            java.lang.String r6 = "com.google.android.gms.cast.framework.action.SKIP_PREV"
            boolean r6 = r5.equals(r6)
            if (r6 != 0) goto L_0x017a
            java.lang.String r6 = "com.google.android.gms.cast.framework.action.FORWARD"
            boolean r6 = r5.equals(r6)
            if (r6 != 0) goto L_0x017a
            java.lang.String r6 = "com.google.android.gms.cast.framework.action.REWIND"
            boolean r6 = r5.equals(r6)
            if (r6 != 0) goto L_0x017a
            java.lang.String r6 = "com.google.android.gms.cast.framework.action.STOP_CASTING"
            boolean r5 = r5.equals(r6)
            if (r5 == 0) goto L_0x0178
            goto L_0x017a
        L_0x0178:
            r5 = 0
            goto L_0x017b
        L_0x017a:
            r5 = 1
        L_0x017b:
            if (r5 == 0) goto L_0x0185
            java.lang.String r3 = r3.getAction()
            r9.zza(r0, r3)
            goto L_0x012b
        L_0x0185:
            android.content.Intent r5 = new android.content.Intent
            java.lang.String r6 = r3.getAction()
            r5.<init>(r6)
            android.content.ComponentName r6 = r9.zzle
            r5.setComponent(r6)
            android.app.PendingIntent r5 = android.app.PendingIntent.getBroadcast(r9, r7, r5, r7)
            androidx.core.app.NotificationCompat$Action$Builder r6 = new androidx.core.app.NotificationCompat$Action$Builder
            int r8 = r3.getIconResId()
            java.lang.String r3 = r3.getContentDescription()
            r6.<init>(r8, r3, r5)
            androidx.core.app.NotificationCompat$Action r3 = r6.build()
            r0.addAction(r3)
            goto L_0x012b
        L_0x01ad:
            return
        L_0x01ae:
            r0 = move-exception
            com.google.android.gms.internal.cast.zzdg r1 = zzbe
            r2 = 2
            java.lang.Object[] r2 = new java.lang.Object[r2]
            java.lang.String r3 = "getNotificationActions"
            r2[r7] = r3
            java.lang.Class<com.google.android.gms.cast.framework.media.zzd> r3 = com.google.android.gms.cast.framework.media.zzd.class
            java.lang.String r3 = r3.getSimpleName()
            r2[r4] = r3
            java.lang.String r3 = "Unable to call %s on %s."
            r1.zzc(r0, r3, r2)
            return
        L_0x01c6:
            java.util.List<java.lang.String> r1 = r9.zzlg
            java.util.Iterator r1 = r1.iterator()
        L_0x01cc:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L_0x01dc
            java.lang.Object r2 = r1.next()
            java.lang.String r2 = (java.lang.String) r2
            r9.zza(r0, r2)
            goto L_0x01cc
        L_0x01dc:
            int[] r2 = r9.zzlh
        L_0x01de:
            int r1 = android.os.Build.VERSION.SDK_INT
            r3 = 21
            if (r1 < r3) goto L_0x01f8
            androidx.media.app.NotificationCompat$MediaStyle r1 = new androidx.media.app.NotificationCompat$MediaStyle
            r1.<init>()
            androidx.media.app.NotificationCompat$MediaStyle r1 = r1.setShowActionsInCompactView(r2)
            com.google.android.gms.cast.framework.media.MediaNotificationService$zza r2 = r9.zzlo
            android.support.v4.media.session.MediaSessionCompat$Token r2 = r2.zzlu
            androidx.media.app.NotificationCompat$MediaStyle r1 = r1.setMediaSession(r2)
            r0.setStyle(r1)
        L_0x01f8:
            android.app.Notification r0 = r0.build()
            r9.zzbu = r0
            com.google.android.gms.cast.framework.CastContext r0 = r9.zzlq
            boolean r0 = r0.isAppVisible()
            if (r0 != 0) goto L_0x020c
            android.app.Notification r0 = r9.zzbu
            r9.startForeground(r4, r0)
            return
        L_0x020c:
            r9.stopForeground(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.media.MediaNotificationService.zzaz():void");
    }

    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void zza(androidx.core.app.NotificationCompat.Builder r19, java.lang.String r20) {
        /*
            r18 = this;
            r0 = r18
            r1 = r19
            r2 = r20
            int r3 = r20.hashCode()
            java.lang.String r6 = "com.google.android.gms.cast.framework.action.FORWARD"
            java.lang.String r7 = "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"
            java.lang.String r8 = "com.google.android.gms.cast.framework.action.STOP_CASTING"
            java.lang.String r9 = "com.google.android.gms.cast.framework.action.SKIP_PREV"
            java.lang.String r10 = "com.google.android.gms.cast.framework.action.SKIP_NEXT"
            java.lang.String r11 = "com.google.android.gms.cast.framework.action.REWIND"
            r12 = 0
            switch(r3) {
                case -1699820260: goto L_0x004d;
                case -945151566: goto L_0x0045;
                case -945080078: goto L_0x003d;
                case -668151673: goto L_0x0035;
                case -124479363: goto L_0x002b;
                case 235550565: goto L_0x0023;
                case 1362116196: goto L_0x001b;
                default: goto L_0x001a;
            }
        L_0x001a:
            goto L_0x0055
        L_0x001b:
            boolean r3 = r2.equals(r6)
            if (r3 == 0) goto L_0x0055
            r3 = 3
            goto L_0x0056
        L_0x0023:
            boolean r3 = r2.equals(r7)
            if (r3 == 0) goto L_0x0055
            r3 = 0
            goto L_0x0056
        L_0x002b:
            java.lang.String r3 = "com.google.android.gms.cast.framework.action.DISCONNECT"
            boolean r3 = r2.equals(r3)
            if (r3 == 0) goto L_0x0055
            r3 = 6
            goto L_0x0056
        L_0x0035:
            boolean r3 = r2.equals(r8)
            if (r3 == 0) goto L_0x0055
            r3 = 5
            goto L_0x0056
        L_0x003d:
            boolean r3 = r2.equals(r9)
            if (r3 == 0) goto L_0x0055
            r3 = 2
            goto L_0x0056
        L_0x0045:
            boolean r3 = r2.equals(r10)
            if (r3 == 0) goto L_0x0055
            r3 = 1
            goto L_0x0056
        L_0x004d:
            boolean r3 = r2.equals(r11)
            if (r3 == 0) goto L_0x0055
            r3 = 4
            goto L_0x0056
        L_0x0055:
            r3 = -1
        L_0x0056:
            r13 = 30000(0x7530, double:1.4822E-319)
            r15 = 10000(0x2710, double:4.9407E-320)
            r5 = 134217728(0x8000000, float:3.85186E-34)
            java.lang.String r4 = "googlecast-extra_skip_step_ms"
            r17 = 0
            switch(r3) {
                case 0: goto L_0x01ad;
                case 1: goto L_0x0178;
                case 2: goto L_0x0143;
                case 3: goto L_0x00f0;
                case 4: goto L_0x009d;
                case 5: goto L_0x0070;
                case 6: goto L_0x0070;
                default: goto L_0x0063;
            }
        L_0x0063:
            com.google.android.gms.internal.cast.zzdg r1 = zzbe
            r3 = 1
            java.lang.Object[] r3 = new java.lang.Object[r3]
            r3[r12] = r2
            java.lang.String r2 = "Action: %s is not a pre-defined action."
            r1.e(r2, r3)
            return
        L_0x0070:
            android.content.Intent r2 = new android.content.Intent
            r2.<init>(r8)
            android.content.ComponentName r3 = r0.zzle
            r2.setComponent(r3)
            android.app.PendingIntent r2 = android.app.PendingIntent.getBroadcast(r0, r12, r2, r12)
            androidx.core.app.NotificationCompat$Action$Builder r3 = new androidx.core.app.NotificationCompat$Action$Builder
            com.google.android.gms.cast.framework.media.NotificationOptions r4 = r0.zzkx
            int r4 = r4.getDisconnectDrawableResId()
            android.content.res.Resources r5 = r0.zzlm
            com.google.android.gms.cast.framework.media.NotificationOptions r6 = r0.zzkx
            int r6 = r6.zzbx()
            java.lang.String r5 = r5.getString(r6)
            r3.<init>(r4, r5, r2)
            androidx.core.app.NotificationCompat$Action r2 = r3.build()
            r1.addAction(r2)
            return
        L_0x009d:
            long r2 = r0.zzlj
            android.content.Intent r6 = new android.content.Intent
            r6.<init>(r11)
            android.content.ComponentName r7 = r0.zzle
            r6.setComponent(r7)
            r6.putExtra(r4, r2)
            android.app.PendingIntent r4 = android.app.PendingIntent.getBroadcast(r0, r12, r6, r5)
            com.google.android.gms.cast.framework.media.NotificationOptions r5 = r0.zzkx
            int r5 = r5.getRewindDrawableResId()
            com.google.android.gms.cast.framework.media.NotificationOptions r6 = r0.zzkx
            int r6 = r6.zzbu()
            int r7 = (r2 > r15 ? 1 : (r2 == r15 ? 0 : -1))
            if (r7 != 0) goto L_0x00cd
            com.google.android.gms.cast.framework.media.NotificationOptions r2 = r0.zzkx
            int r5 = r2.getRewind10DrawableResId()
            com.google.android.gms.cast.framework.media.NotificationOptions r2 = r0.zzkx
            int r6 = r2.zzbv()
            goto L_0x00dd
        L_0x00cd:
            int r7 = (r2 > r13 ? 1 : (r2 == r13 ? 0 : -1))
            if (r7 != 0) goto L_0x00dd
            com.google.android.gms.cast.framework.media.NotificationOptions r2 = r0.zzkx
            int r5 = r2.getRewind30DrawableResId()
            com.google.android.gms.cast.framework.media.NotificationOptions r2 = r0.zzkx
            int r6 = r2.zzbw()
        L_0x00dd:
            androidx.core.app.NotificationCompat$Action$Builder r2 = new androidx.core.app.NotificationCompat$Action$Builder
            android.content.res.Resources r3 = r0.zzlm
            java.lang.String r3 = r3.getString(r6)
            r2.<init>(r5, r3, r4)
            androidx.core.app.NotificationCompat$Action r2 = r2.build()
            r1.addAction(r2)
            return
        L_0x00f0:
            long r2 = r0.zzlj
            android.content.Intent r7 = new android.content.Intent
            r7.<init>(r6)
            android.content.ComponentName r6 = r0.zzle
            r7.setComponent(r6)
            r7.putExtra(r4, r2)
            android.app.PendingIntent r4 = android.app.PendingIntent.getBroadcast(r0, r12, r7, r5)
            com.google.android.gms.cast.framework.media.NotificationOptions r5 = r0.zzkx
            int r5 = r5.getForwardDrawableResId()
            com.google.android.gms.cast.framework.media.NotificationOptions r6 = r0.zzkx
            int r6 = r6.zzbr()
            int r7 = (r2 > r15 ? 1 : (r2 == r15 ? 0 : -1))
            if (r7 != 0) goto L_0x0120
            com.google.android.gms.cast.framework.media.NotificationOptions r2 = r0.zzkx
            int r5 = r2.getForward10DrawableResId()
            com.google.android.gms.cast.framework.media.NotificationOptions r2 = r0.zzkx
            int r6 = r2.zzbs()
            goto L_0x0130
        L_0x0120:
            int r7 = (r2 > r13 ? 1 : (r2 == r13 ? 0 : -1))
            if (r7 != 0) goto L_0x0130
            com.google.android.gms.cast.framework.media.NotificationOptions r2 = r0.zzkx
            int r5 = r2.getForward30DrawableResId()
            com.google.android.gms.cast.framework.media.NotificationOptions r2 = r0.zzkx
            int r6 = r2.zzbt()
        L_0x0130:
            androidx.core.app.NotificationCompat$Action$Builder r2 = new androidx.core.app.NotificationCompat$Action$Builder
            android.content.res.Resources r3 = r0.zzlm
            java.lang.String r3 = r3.getString(r6)
            r2.<init>(r5, r3, r4)
            androidx.core.app.NotificationCompat$Action r2 = r2.build()
            r1.addAction(r2)
            return
        L_0x0143:
            com.google.android.gms.cast.framework.media.MediaNotificationService$zza r2 = r0.zzlo
            boolean r2 = r2.zzly
            if (r2 == 0) goto L_0x0157
            android.content.Intent r2 = new android.content.Intent
            r2.<init>(r9)
            android.content.ComponentName r3 = r0.zzle
            r2.setComponent(r3)
            android.app.PendingIntent r17 = android.app.PendingIntent.getBroadcast(r0, r12, r2, r12)
        L_0x0157:
            r2 = r17
            androidx.core.app.NotificationCompat$Action$Builder r3 = new androidx.core.app.NotificationCompat$Action$Builder
            com.google.android.gms.cast.framework.media.NotificationOptions r4 = r0.zzkx
            int r4 = r4.getSkipPrevDrawableResId()
            android.content.res.Resources r5 = r0.zzlm
            com.google.android.gms.cast.framework.media.NotificationOptions r6 = r0.zzkx
            int r6 = r6.zzbq()
            java.lang.String r5 = r5.getString(r6)
            r3.<init>(r4, r5, r2)
            androidx.core.app.NotificationCompat$Action r2 = r3.build()
            r1.addAction(r2)
            return
        L_0x0178:
            com.google.android.gms.cast.framework.media.MediaNotificationService$zza r2 = r0.zzlo
            boolean r2 = r2.zzlx
            if (r2 == 0) goto L_0x018c
            android.content.Intent r2 = new android.content.Intent
            r2.<init>(r10)
            android.content.ComponentName r3 = r0.zzle
            r2.setComponent(r3)
            android.app.PendingIntent r17 = android.app.PendingIntent.getBroadcast(r0, r12, r2, r12)
        L_0x018c:
            r2 = r17
            androidx.core.app.NotificationCompat$Action$Builder r3 = new androidx.core.app.NotificationCompat$Action$Builder
            com.google.android.gms.cast.framework.media.NotificationOptions r4 = r0.zzkx
            int r4 = r4.getSkipNextDrawableResId()
            android.content.res.Resources r5 = r0.zzlm
            com.google.android.gms.cast.framework.media.NotificationOptions r6 = r0.zzkx
            int r6 = r6.zzbp()
            java.lang.String r5 = r5.getString(r6)
            r3.<init>(r4, r5, r2)
            androidx.core.app.NotificationCompat$Action r2 = r3.build()
            r1.addAction(r2)
            return
        L_0x01ad:
            com.google.android.gms.cast.framework.media.MediaNotificationService$zza r2 = r0.zzlo
            int r2 = r2.streamType
            com.google.android.gms.cast.framework.media.MediaNotificationService$zza r3 = r0.zzlo
            boolean r3 = r3.zzlv
            r4 = 2
            if (r2 != r4) goto L_0x01c5
            com.google.android.gms.cast.framework.media.NotificationOptions r2 = r0.zzkx
            int r2 = r2.getStopLiveStreamDrawableResId()
            com.google.android.gms.cast.framework.media.NotificationOptions r4 = r0.zzkx
            int r4 = r4.getStopLiveStreamTitleResId()
            goto L_0x01d1
        L_0x01c5:
            com.google.android.gms.cast.framework.media.NotificationOptions r2 = r0.zzkx
            int r2 = r2.getPauseDrawableResId()
            com.google.android.gms.cast.framework.media.NotificationOptions r4 = r0.zzkx
            int r4 = r4.zzbn()
        L_0x01d1:
            if (r3 == 0) goto L_0x01d4
            goto L_0x01da
        L_0x01d4:
            com.google.android.gms.cast.framework.media.NotificationOptions r2 = r0.zzkx
            int r2 = r2.getPlayDrawableResId()
        L_0x01da:
            if (r3 == 0) goto L_0x01dd
            goto L_0x01e3
        L_0x01dd:
            com.google.android.gms.cast.framework.media.NotificationOptions r3 = r0.zzkx
            int r4 = r3.zzbo()
        L_0x01e3:
            android.content.Intent r3 = new android.content.Intent
            r3.<init>(r7)
            android.content.ComponentName r5 = r0.zzle
            r3.setComponent(r5)
            android.app.PendingIntent r3 = android.app.PendingIntent.getBroadcast(r0, r12, r3, r12)
            androidx.core.app.NotificationCompat$Action$Builder r5 = new androidx.core.app.NotificationCompat$Action$Builder
            android.content.res.Resources r6 = r0.zzlm
            java.lang.String r4 = r6.getString(r4)
            r5.<init>(r2, r4, r3)
            androidx.core.app.NotificationCompat$Action r2 = r5.build()
            r1.addAction(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.media.MediaNotificationService.zza(androidx.core.app.NotificationCompat$Builder, java.lang.String):void");
    }
}
