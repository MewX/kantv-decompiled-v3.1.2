package com.google.android.gms.internal.cast;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.media.AudioManager;
import android.net.Uri;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.MediaMetadataCompat.Builder;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.MediaSessionCompat.Callback;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.framework.R;
import com.google.android.gms.cast.framework.ReconnectionService;
import com.google.android.gms.cast.framework.media.MediaNotificationService;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.util.PlatformVersion;

public final class zzai implements Listener {
    private CastDevice zzai;
    private final Context zzgt;
    /* access modifiers changed from: private */
    public RemoteMediaClient zzhs;
    private final zzw zzis;
    private boolean zzmc;
    private final CastOptions zzqd;
    private final ComponentName zzqe;
    private final zzx zzqf;
    private final zzx zzqg;
    private MediaSessionCompat zzqh;
    private Callback zzqi;

    public zzai(Context context, CastOptions castOptions, zzw zzw) {
        this.zzgt = context;
        this.zzqd = castOptions;
        this.zzis = zzw;
        if (this.zzqd.getCastMediaOptions() == null || TextUtils.isEmpty(this.zzqd.getCastMediaOptions().getExpandedControllerActivityClassName())) {
            this.zzqe = null;
        } else {
            this.zzqe = new ComponentName(this.zzgt, this.zzqd.getCastMediaOptions().getExpandedControllerActivityClassName());
        }
        this.zzqf = new zzx(this.zzgt);
        this.zzqf.zza((zzy) new zzaj(this));
        this.zzqg = new zzx(this.zzgt);
        this.zzqg.zza((zzy) new zzak(this));
    }

    public final void onSendingRemoteMediaRequest() {
    }

    public final void zza(RemoteMediaClient remoteMediaClient, CastDevice castDevice) {
        if (!this.zzmc) {
            CastOptions castOptions = this.zzqd;
            if (castOptions != null && castOptions.getCastMediaOptions() != null && remoteMediaClient != null && castDevice != null) {
                this.zzhs = remoteMediaClient;
                this.zzhs.addListener(this);
                this.zzai = castDevice;
                if (!PlatformVersion.isAtLeastLollipop()) {
                    ((AudioManager) this.zzgt.getSystemService("audio")).requestAudioFocus(null, 3, 3);
                }
                ComponentName componentName = new ComponentName(this.zzgt, this.zzqd.getCastMediaOptions().getMediaIntentReceiverClassName());
                Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
                intent.setComponent(componentName);
                this.zzqh = new MediaSessionCompat(this.zzgt, "CastMediaSession", componentName, PendingIntent.getBroadcast(this.zzgt, 0, intent, 0));
                this.zzqh.setFlags(3);
                zza(0, (MediaInfo) null);
                CastDevice castDevice2 = this.zzai;
                if (castDevice2 != null && !TextUtils.isEmpty(castDevice2.getFriendlyName())) {
                    this.zzqh.setMetadata(new Builder().putString("android.media.metadata.ALBUM_ARTIST", this.zzgt.getResources().getString(R.string.cast_casting_to_device, new Object[]{this.zzai.getFriendlyName()})).build());
                }
                this.zzqi = new zzal(this);
                this.zzqh.setCallback(this.zzqi);
                this.zzqh.setActive(true);
                this.zzis.setMediaSessionCompat(this.zzqh);
                this.zzmc = true;
                zzg(false);
            }
        }
    }

    public final void zzi(int i) {
        if (this.zzmc) {
            this.zzmc = false;
            RemoteMediaClient remoteMediaClient = this.zzhs;
            if (remoteMediaClient != null) {
                remoteMediaClient.removeListener(this);
            }
            if (!PlatformVersion.isAtLeastLollipop()) {
                ((AudioManager) this.zzgt.getSystemService("audio")).abandonAudioFocus(null);
            }
            this.zzis.setMediaSessionCompat(null);
            zzx zzx = this.zzqf;
            if (zzx != null) {
                zzx.clear();
            }
            zzx zzx2 = this.zzqg;
            if (zzx2 != null) {
                zzx2.clear();
            }
            MediaSessionCompat mediaSessionCompat = this.zzqh;
            if (mediaSessionCompat != null) {
                mediaSessionCompat.setSessionActivity(null);
                this.zzqh.setCallback(null);
                this.zzqh.setMetadata(new Builder().build());
                zza(0, (MediaInfo) null);
                this.zzqh.setActive(false);
                this.zzqh.release();
                this.zzqh = null;
            }
            this.zzhs = null;
            this.zzai = null;
            this.zzqi = null;
            zzck();
            if (i == 0) {
                zzcl();
            }
        }
    }

    public final void onQueueStatusUpdated() {
        zzg(false);
    }

    public final void onStatusUpdated() {
        zzg(false);
    }

    public final void onMetadataUpdated() {
        zzg(false);
    }

    public final void onPreloadStatusUpdated() {
        zzg(false);
    }

    public final void onAdBreakStatusUpdated() {
        zzg(false);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:65:0x00fd, code lost:
        if (r1.intValue() < (r12.getQueueItemCount() - 1)) goto L_0x0103;
     */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x0071  */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x0078  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zzg(boolean r12) {
        /*
            r11 = this;
            com.google.android.gms.cast.framework.media.RemoteMediaClient r0 = r11.zzhs
            if (r0 != 0) goto L_0x0005
            return
        L_0x0005:
            com.google.android.gms.cast.MediaStatus r0 = r0.getMediaStatus()
            r1 = 0
            if (r0 != 0) goto L_0x000e
            r2 = r1
            goto L_0x0012
        L_0x000e:
            com.google.android.gms.cast.MediaInfo r2 = r0.getMediaInfo()
        L_0x0012:
            if (r2 != 0) goto L_0x0016
            r3 = r1
            goto L_0x001a
        L_0x0016:
            com.google.android.gms.cast.MediaMetadata r3 = r2.getMetadata()
        L_0x001a:
            r4 = 6
            r5 = 3
            r6 = 2
            r7 = 0
            r8 = 1
            if (r0 == 0) goto L_0x006a
            if (r2 == 0) goto L_0x006a
            if (r3 != 0) goto L_0x0026
            goto L_0x006a
        L_0x0026:
            com.google.android.gms.cast.framework.media.RemoteMediaClient r3 = r11.zzhs
            int r3 = r3.getPlayerState()
            if (r3 == r8) goto L_0x003e
            if (r3 == r6) goto L_0x003b
            if (r3 == r5) goto L_0x0038
            r0 = 4
            if (r3 == r0) goto L_0x0036
            goto L_0x006a
        L_0x0036:
            r3 = 0
            goto L_0x006c
        L_0x0038:
            r3 = 0
        L_0x0039:
            r4 = 2
            goto L_0x006c
        L_0x003b:
            r3 = 0
            r4 = 3
            goto L_0x006c
        L_0x003e:
            int r3 = r0.getIdleReason()
            com.google.android.gms.cast.framework.media.RemoteMediaClient r9 = r11.zzhs
            boolean r9 = r9.isLiveStream()
            if (r9 == 0) goto L_0x004e
            if (r3 != r6) goto L_0x004e
            r9 = 1
            goto L_0x004f
        L_0x004e:
            r9 = 0
        L_0x004f:
            int r10 = r0.getLoadingItemId()
            if (r10 == 0) goto L_0x005b
            if (r3 == r8) goto L_0x0059
            if (r3 != r5) goto L_0x005b
        L_0x0059:
            r3 = 1
            goto L_0x005c
        L_0x005b:
            r3 = 0
        L_0x005c:
            if (r9 == 0) goto L_0x005f
            goto L_0x0039
        L_0x005f:
            com.google.android.gms.cast.MediaQueueItem r0 = r0.getQueueItemById(r10)
            if (r0 == 0) goto L_0x006b
            com.google.android.gms.cast.MediaInfo r2 = r0.getMedia()
            goto L_0x006c
        L_0x006a:
            r3 = 0
        L_0x006b:
            r4 = 0
        L_0x006c:
            r11.zza(r4, r2)
            if (r4 != 0) goto L_0x0078
            r11.zzck()
            r11.zzcl()
            return
        L_0x0078:
            com.google.android.gms.cast.framework.CastOptions r0 = r11.zzqd
            com.google.android.gms.cast.framework.media.CastMediaOptions r0 = r0.getCastMediaOptions()
            com.google.android.gms.cast.framework.media.NotificationOptions r0 = r0.getNotificationOptions()
            if (r0 == 0) goto L_0x0113
            com.google.android.gms.cast.framework.media.RemoteMediaClient r0 = r11.zzhs
            if (r0 == 0) goto L_0x0113
            android.content.Intent r0 = new android.content.Intent
            android.content.Context r2 = r11.zzgt
            java.lang.Class<com.google.android.gms.cast.framework.media.MediaNotificationService> r4 = com.google.android.gms.cast.framework.media.MediaNotificationService.class
            r0.<init>(r2, r4)
            java.lang.String r2 = "extra_media_notification_force_update"
            r0.putExtra(r2, r12)
            android.content.Context r12 = r11.zzgt
            java.lang.String r12 = r12.getPackageName()
            r0.setPackage(r12)
            java.lang.String r12 = "com.google.android.gms.cast.framework.action.UPDATE_NOTIFICATION"
            r0.setAction(r12)
            com.google.android.gms.cast.framework.media.RemoteMediaClient r12 = r11.zzhs
            com.google.android.gms.cast.MediaInfo r12 = r12.getMediaInfo()
            java.lang.String r2 = "extra_media_info"
            r0.putExtra(r2, r12)
            com.google.android.gms.cast.framework.media.RemoteMediaClient r12 = r11.zzhs
            int r12 = r12.getPlayerState()
            java.lang.String r2 = "extra_remote_media_client_player_state"
            r0.putExtra(r2, r12)
            com.google.android.gms.cast.CastDevice r12 = r11.zzai
            java.lang.String r2 = "extra_cast_device"
            r0.putExtra(r2, r12)
            android.support.v4.media.session.MediaSessionCompat r12 = r11.zzqh
            if (r12 != 0) goto L_0x00c6
            goto L_0x00ca
        L_0x00c6:
            android.support.v4.media.session.MediaSessionCompat$Token r1 = r12.getSessionToken()
        L_0x00ca:
            java.lang.String r12 = "extra_media_session_token"
            r0.putExtra(r12, r1)
            com.google.android.gms.cast.framework.media.RemoteMediaClient r12 = r11.zzhs
            com.google.android.gms.cast.MediaStatus r12 = r12.getMediaStatus()
            if (r12 == 0) goto L_0x010e
            int r1 = r12.getQueueRepeatMode()
            if (r1 == r8) goto L_0x0102
            if (r1 == r6) goto L_0x0102
            if (r1 == r5) goto L_0x0102
            int r1 = r12.getCurrentItemId()
            java.lang.Integer r1 = r12.getIndexById(r1)
            if (r1 == 0) goto L_0x0100
            int r2 = r1.intValue()
            if (r2 <= 0) goto L_0x00f3
            r2 = 1
            goto L_0x00f4
        L_0x00f3:
            r2 = 0
        L_0x00f4:
            int r1 = r1.intValue()
            int r12 = r12.getQueueItemCount()
            int r12 = r12 - r8
            if (r1 >= r12) goto L_0x0104
            goto L_0x0103
        L_0x0100:
            r2 = 0
            goto L_0x0104
        L_0x0102:
            r2 = 1
        L_0x0103:
            r7 = 1
        L_0x0104:
            java.lang.String r12 = "extra_can_skip_next"
            r0.putExtra(r12, r7)
            java.lang.String r12 = "extra_can_skip_prev"
            r0.putExtra(r12, r2)
        L_0x010e:
            android.content.Context r12 = r11.zzgt
            r12.startService(r0)
        L_0x0113:
            if (r3 != 0) goto L_0x0134
            com.google.android.gms.cast.framework.CastOptions r12 = r11.zzqd
            boolean r12 = r12.getEnableReconnectionService()
            if (r12 == 0) goto L_0x0134
            android.content.Intent r12 = new android.content.Intent
            android.content.Context r0 = r11.zzgt
            java.lang.Class<com.google.android.gms.cast.framework.ReconnectionService> r1 = com.google.android.gms.cast.framework.ReconnectionService.class
            r12.<init>(r0, r1)
            android.content.Context r0 = r11.zzgt
            java.lang.String r0 = r0.getPackageName()
            r12.setPackage(r0)
            android.content.Context r0 = r11.zzgt
            r0.startService(r12)
        L_0x0134:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.cast.zzai.zzg(boolean):void");
    }

    private final void zza(int i, MediaInfo mediaInfo) {
        PendingIntent pendingIntent;
        if (i == 0) {
            this.zzqh.setPlaybackState(new PlaybackStateCompat.Builder().setState(0, 0, 1.0f).build());
            this.zzqh.setMetadata(new Builder().build());
            return;
        }
        this.zzqh.setPlaybackState(new PlaybackStateCompat.Builder().setState(i, 0, 1.0f).setActions(mediaInfo.getStreamType() == 2 ? 5 : 512).build());
        MediaSessionCompat mediaSessionCompat = this.zzqh;
        if (this.zzqe == null) {
            pendingIntent = null;
        } else {
            Intent intent = new Intent();
            intent.setComponent(this.zzqe);
            pendingIntent = PendingIntent.getActivity(this.zzgt, 0, intent, 134217728);
        }
        mediaSessionCompat.setSessionActivity(pendingIntent);
        MediaMetadata metadata = mediaInfo.getMetadata();
        Builder zzcj = zzcj();
        String str = MediaMetadata.KEY_TITLE;
        this.zzqh.setMetadata(zzcj.putString("android.media.metadata.TITLE", metadata.getString(str)).putString(MediaMetadataCompat.METADATA_KEY_DISPLAY_TITLE, metadata.getString(str)).putString(MediaMetadataCompat.METADATA_KEY_DISPLAY_SUBTITLE, metadata.getString(MediaMetadata.KEY_SUBTITLE)).putLong("android.media.metadata.DURATION", mediaInfo.getStreamDuration()).build());
        Uri zza = zza(metadata, 0);
        if (zza != null) {
            this.zzqf.zza(zza);
        } else {
            zza((Bitmap) null, 0);
        }
        Uri zza2 = zza(metadata, 3);
        if (zza2 != null) {
            this.zzqg.zza(zza2);
        } else {
            zza((Bitmap) null, 3);
        }
    }

    /* access modifiers changed from: private */
    public final void zza(Bitmap bitmap, int i) {
        if (i == 0) {
            String str = MediaMetadataCompat.METADATA_KEY_DISPLAY_ICON;
            if (bitmap != null) {
                this.zzqh.setMetadata(zzcj().putBitmap(str, bitmap).build());
                return;
            }
            Bitmap createBitmap = Bitmap.createBitmap(1, 1, Config.ARGB_8888);
            createBitmap.eraseColor(0);
            this.zzqh.setMetadata(zzcj().putBitmap(str, createBitmap).build());
            return;
        }
        if (i == 3) {
            this.zzqh.setMetadata(zzcj().putBitmap(MediaMetadataCompat.METADATA_KEY_ALBUM_ART, bitmap).build());
        }
    }

    private final Uri zza(MediaMetadata mediaMetadata, int i) {
        WebImage webImage = this.zzqd.getCastMediaOptions().getImagePicker() != null ? this.zzqd.getCastMediaOptions().getImagePicker().onPickImage(mediaMetadata, i) : mediaMetadata.hasImages() ? (WebImage) mediaMetadata.getImages().get(0) : null;
        if (webImage == null) {
            return null;
        }
        return webImage.getUrl();
    }

    private final Builder zzcj() {
        MediaMetadataCompat metadata = this.zzqh.getController().getMetadata();
        if (metadata == null) {
            return new Builder();
        }
        return new Builder(metadata);
    }

    private final void zzck() {
        if (this.zzqd.getCastMediaOptions().getNotificationOptions() != null) {
            Intent intent = new Intent(this.zzgt, MediaNotificationService.class);
            intent.setPackage(this.zzgt.getPackageName());
            intent.setAction(MediaNotificationService.ACTION_UPDATE_NOTIFICATION);
            this.zzgt.stopService(intent);
        }
    }

    private final void zzcl() {
        if (this.zzqd.getEnableReconnectionService()) {
            Intent intent = new Intent(this.zzgt, ReconnectionService.class);
            intent.setPackage(this.zzgt.getPackageName());
            this.zzgt.stopService(intent);
        }
    }
}
