.class public final Lcom/google/android/gms/internal/cast/zzai;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;


# instance fields
.field private zzai:Lcom/google/android/gms/cast/CastDevice;

.field private final zzgt:Landroid/content/Context;

.field private zzhs:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

.field private final zzis:Lcom/google/android/gms/internal/cast/zzw;

.field private zzmc:Z

.field private final zzqd:Lcom/google/android/gms/cast/framework/CastOptions;

.field private final zzqe:Landroid/content/ComponentName;

.field private final zzqf:Lcom/google/android/gms/internal/cast/zzx;

.field private final zzqg:Lcom/google/android/gms/internal/cast/zzx;

.field private zzqh:Landroid/support/v4/media/session/MediaSessionCompat;

.field private zzqi:Landroid/support/v4/media/session/MediaSessionCompat$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/internal/cast/zzw;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgt:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqd:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzai;->zzis:Lcom/google/android/gms/internal/cast/zzw;

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqd:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqd:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getExpandedControllerActivityClassName()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 8
    new-instance p1, Landroid/content/ComponentName;

    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgt:Landroid/content/Context;

    iget-object p3, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqd:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 9
    invoke-virtual {p3}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getExpandedControllerActivityClassName()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqe:Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqe:Landroid/content/ComponentName;

    .line 11
    :goto_0
    new-instance p1, Lcom/google/android/gms/internal/cast/zzx;

    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgt:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/zzx;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqf:Lcom/google/android/gms/internal/cast/zzx;

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqf:Lcom/google/android/gms/internal/cast/zzx;

    new-instance p2, Lcom/google/android/gms/internal/cast/zzaj;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/cast/zzaj;-><init>(Lcom/google/android/gms/internal/cast/zzai;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/zzx;->zza(Lcom/google/android/gms/internal/cast/zzy;)V

    .line 13
    new-instance p1, Lcom/google/android/gms/internal/cast/zzx;

    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgt:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/zzx;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqg:Lcom/google/android/gms/internal/cast/zzx;

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqg:Lcom/google/android/gms/internal/cast/zzx;

    new-instance p2, Lcom/google/android/gms/internal/cast/zzak;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/cast/zzak;-><init>(Lcom/google/android/gms/internal/cast/zzai;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/zzx;->zza(Lcom/google/android/gms/internal/cast/zzy;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/cast/MediaMetadata;I)Landroid/net/Uri;
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqd:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getImagePicker()Lcom/google/android/gms/cast/framework/media/ImagePicker;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqd:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getImagePicker()Lcom/google/android/gms/cast/framework/media/ImagePicker;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/cast/framework/media/ImagePicker;->onPickImage(Lcom/google/android/gms/cast/MediaMetadata;I)Lcom/google/android/gms/common/images/WebImage;

    move-result-object p1

    goto :goto_0

    .line 230
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaMetadata;->hasImages()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaMetadata;->getImages()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/images/WebImage;

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_2

    return-object v1

    .line 231
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/common/images/WebImage;->getUrl()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/cast/zzai;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;
    .locals 0

    .line 251
    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzhs:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    return-object p0
.end method

.method private final zza(ILcom/google/android/gms/cast/MediaInfo;)V
    .locals 8

    const/high16 v0, 0x3f800000    # 1.0f

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_0

    .line 163
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqh:Landroid/support/v4/media/session/MediaSessionCompat;

    new-instance p2, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {p2}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    .line 164
    invoke-virtual {p2, v3, v1, v2, v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object p2

    .line 165
    invoke-virtual {p2}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p2

    .line 166
    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 167
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqh:Landroid/support/v4/media/session/MediaSessionCompat;

    new-instance p2, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {p2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    invoke-virtual {p2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    return-void

    .line 168
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaInfo;->getStreamType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const-wide/16 v4, 0x5

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x200

    .line 171
    :goto_0
    iget-object v6, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqh:Landroid/support/v4/media/session/MediaSessionCompat;

    new-instance v7, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v7}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    .line 172
    invoke-virtual {v7, p1, v1, v2, v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object p1

    .line 173
    invoke-virtual {p1, v4, v5}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object p1

    .line 174
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p1

    .line 175
    invoke-virtual {v6, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 176
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqh:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 177
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqe:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_1

    .line 179
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 180
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqe:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 181
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgt:Landroid/content/Context;

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 182
    :goto_1
    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setSessionActivity(Landroid/app/PendingIntent;)V

    .line 184
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaInfo;->getMetadata()Lcom/google/android/gms/cast/MediaMetadata;

    move-result-object p1

    .line 186
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzai;->zzcj()Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v0

    const-string v2, "com.google.android.gms.cast.metadata.TITLE"

    .line 187
    invoke-virtual {p1, v2}, Lcom/google/android/gms/cast/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.media.metadata.TITLE"

    .line 188
    invoke-virtual {v0, v5, v4}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v0

    .line 189
    invoke-virtual {p1, v2}, Lcom/google/android/gms/cast/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.media.metadata.DISPLAY_TITLE"

    .line 190
    invoke-virtual {v0, v4, v2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v0

    const-string v2, "com.google.android.gms.cast.metadata.SUBTITLE"

    .line 191
    invoke-virtual {p1, v2}, Lcom/google/android/gms/cast/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.media.metadata.DISPLAY_SUBTITLE"

    .line 192
    invoke-virtual {v0, v4, v2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v0

    .line 193
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaInfo;->getStreamDuration()J

    move-result-wide v4

    const-string p2, "android.media.metadata.DURATION"

    invoke-virtual {v0, p2, v4, v5}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object p2

    .line 194
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqh:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {p2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 196
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/cast/zzai;->zza(Lcom/google/android/gms/cast/MediaMetadata;I)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 198
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqf:Lcom/google/android/gms/internal/cast/zzx;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/cast/zzx;->zza(Landroid/net/Uri;)Z

    goto :goto_2

    .line 199
    :cond_3
    invoke-direct {p0, v1, v3}, Lcom/google/android/gms/internal/cast/zzai;->zza(Landroid/graphics/Bitmap;I)V

    :goto_2
    const/4 p2, 0x3

    .line 201
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzai;->zza(Lcom/google/android/gms/cast/MediaMetadata;I)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 203
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqg:Lcom/google/android/gms/internal/cast/zzx;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/cast/zzx;->zza(Landroid/net/Uri;)Z

    return-void

    .line 204
    :cond_4
    invoke-direct {p0, v1, p2}, Lcom/google/android/gms/internal/cast/zzai;->zza(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method private final zza(Landroid/graphics/Bitmap;I)V
    .locals 2

    if-nez p2, :cond_1

    const-string p2, "android.media.metadata.DISPLAY_ICON"

    if-eqz p1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqh:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 209
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzai;->zzcj()Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v1

    .line 210
    invoke-virtual {v1, p2, p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object p1

    .line 211
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    .line 212
    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    return-void

    .line 213
    :cond_0
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x1

    invoke-static {v0, v0, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x0

    .line 214
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 215
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqh:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 216
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzai;->zzcj()Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v1

    .line 217
    invoke-virtual {v1, p2, p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object p1

    .line 218
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    .line 219
    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    return-void

    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 222
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqh:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 223
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzai;->zzcj()Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v0

    const-string v1, "android.media.metadata.ALBUM_ART"

    .line 224
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object p1

    .line 225
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    .line 226
    invoke-virtual {p2, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    :cond_2
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/cast/zzai;Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 250
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzai;->zza(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method private final zzcj()Landroid/support/v4/media/MediaMetadataCompat$Builder;
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqh:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->getController()Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    return-object v0

    .line 235
    :cond_0
    new-instance v1, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v1, v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>(Landroid/support/v4/media/MediaMetadataCompat;)V

    return-object v1
.end method

.method private final zzck()V
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqd:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getNotificationOptions()Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 239
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgt:Landroid/content/Context;

    const-class v2, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 240
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgt:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.google.android.gms.cast.framework.action.UPDATE_NOTIFICATION"

    .line 241
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgt:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method private final zzcl()V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqd:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getEnableReconnectionService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 246
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgt:Landroid/content/Context;

    const-class v2, Lcom/google/android/gms/cast/framework/ReconnectionService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 247
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgt:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgt:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public final onAdBreakStatusUpdated()V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cast/zzai;->zzg(Z)V

    return-void
.end method

.method public final onMetadataUpdated()V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cast/zzai;->zzg(Z)V

    return-void
.end method

.method public final onPreloadStatusUpdated()V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cast/zzai;->zzg(Z)V

    return-void
.end method

.method public final onQueueStatusUpdated()V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cast/zzai;->zzg(Z)V

    return-void
.end method

.method public final onSendingRemoteMediaRequest()V
    .locals 0

    return-void
.end method

.method public final onStatusUpdated()V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cast/zzai;->zzg(Z)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/cast/CastDevice;)V
    .locals 6

    .line 16
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzmc:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqd:Lcom/google/android/gms/cast/framework/CastOptions;

    if-eqz v0, :cond_3

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 19
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzhs:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 20
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzhs:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->addListener(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;)V

    .line 21
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzai;->zzai:Lcom/google/android/gms/cast/CastDevice;

    .line 22
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastLollipop()Z

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x3

    if-nez p1, :cond_1

    .line 23
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgt:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 24
    invoke-virtual {p1, p2, v0, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 25
    :cond_1
    new-instance p1, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgt:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqd:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 26
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getMediaIntentReceiverClassName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 29
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgt:Landroid/content/Context;

    const/4 v3, 0x0

    .line 30
    invoke-static {v2, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 31
    new-instance v2, Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgt:Landroid/content/Context;

    const-string v5, "CastMediaSession"

    invoke-direct {v2, v4, v5, p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqh:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 32
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqh:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setFlags(I)V

    .line 33
    invoke-direct {p0, v3, p2}, Lcom/google/android/gms/internal/cast/zzai;->zza(ILcom/google/android/gms/cast/MediaInfo;)V

    .line 34
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzai:Lcom/google/android/gms/cast/CastDevice;

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/cast/CastDevice;->getFriendlyName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 35
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqh:Landroid/support/v4/media/session/MediaSessionCompat;

    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgt:Landroid/content/Context;

    .line 36
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/gms/cast/framework/R$string;->cast_casting_to_device:I

    new-array v4, p2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/internal/cast/zzai;->zzai:Lcom/google/android/gms/cast/CastDevice;

    .line 37
    invoke-virtual {v5}, Lcom/google/android/gms/cast/CastDevice;->getFriendlyName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 38
    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.metadata.ALBUM_ARTIST"

    .line 39
    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    .line 41
    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 42
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/cast/zzal;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/cast/zzal;-><init>(Lcom/google/android/gms/internal/cast/zzai;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqi:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    .line 43
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqh:Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqi:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    .line 44
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqh:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    .line 45
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzis:Lcom/google/android/gms/internal/cast/zzw;

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqh:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/cast/zzw;->setMediaSessionCompat(Landroid/support/v4/media/session/MediaSessionCompat;)V

    .line 46
    iput-boolean p2, p0, Lcom/google/android/gms/internal/cast/zzai;->zzmc:Z

    .line 47
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/cast/zzai;->zzg(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final zzg(Z)V
    .locals 11

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzhs:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    if-nez v0, :cond_0

    return-void

    .line 90
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v2, v1

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_2

    move-object v3, v1

    goto :goto_1

    .line 92
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaInfo;->getMetadata()Lcom/google/android/gms/cast/MediaMetadata;

    move-result-object v3

    :goto_1
    const/4 v4, 0x6

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_c

    if-eqz v2, :cond_c

    if-nez v3, :cond_3

    goto :goto_5

    .line 96
    :cond_3
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzai;->zzhs:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getPlayerState()I

    move-result v3

    if-eq v3, v8, :cond_7

    if-eq v3, v6, :cond_6

    if-eq v3, v5, :cond_5

    const/4 v0, 0x4

    if-eq v3, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v3, 0x0

    goto :goto_6

    :cond_5
    const/4 v3, 0x0

    :goto_2
    const/4 v4, 0x2

    goto :goto_6

    :cond_6
    const/4 v3, 0x0

    const/4 v4, 0x3

    goto :goto_6

    .line 103
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getIdleReason()I

    move-result v3

    .line 104
    iget-object v9, p0, Lcom/google/android/gms/internal/cast/zzai;->zzhs:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 105
    invoke-virtual {v9}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLiveStream()Z

    move-result v9

    if-eqz v9, :cond_8

    if-ne v3, v6, :cond_8

    const/4 v9, 0x1

    goto :goto_3

    :cond_8
    const/4 v9, 0x0

    .line 106
    :goto_3
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getLoadingItemId()I

    move-result v10

    if-eqz v10, :cond_a

    if-eq v3, v8, :cond_9

    if-ne v3, v5, :cond_a

    :cond_9
    const/4 v3, 0x1

    goto :goto_4

    :cond_a
    const/4 v3, 0x0

    :goto_4
    if-eqz v9, :cond_b

    goto :goto_2

    .line 111
    :cond_b
    invoke-virtual {v0, v10}, Lcom/google/android/gms/cast/MediaStatus;->getQueueItemById(I)Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 113
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaQueueItem;->getMedia()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v2

    goto :goto_6

    :cond_c
    :goto_5
    const/4 v3, 0x0

    :cond_d
    const/4 v4, 0x0

    .line 119
    :goto_6
    invoke-direct {p0, v4, v2}, Lcom/google/android/gms/internal/cast/zzai;->zza(ILcom/google/android/gms/cast/MediaInfo;)V

    if-nez v4, :cond_e

    .line 121
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzai;->zzck()V

    .line 122
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzai;->zzcl()V

    return-void

    .line 124
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqd:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getNotificationOptions()Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 125
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzhs:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    if-eqz v0, :cond_15

    .line 126
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgt:Landroid/content/Context;

    const-class v4, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "extra_media_notification_force_update"

    .line 127
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 128
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgt:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.google.android.gms.cast.framework.action.UPDATE_NOTIFICATION"

    .line 129
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzhs:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object p1

    const-string v2, "extra_media_info"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 131
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzhs:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 132
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getPlayerState()I

    move-result p1

    const-string v2, "extra_remote_media_client_player_state"

    .line 133
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzai:Lcom/google/android/gms/cast/CastDevice;

    const-string v2, "extra_cast_device"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 136
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqh:Landroid/support/v4/media/session/MediaSessionCompat;

    if-nez p1, :cond_f

    goto :goto_7

    :cond_f
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v1

    :goto_7
    const-string p1, "extra_media_session_token"

    .line 137
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 138
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzhs:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 142
    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaStatus;->getQueueRepeatMode()I

    move-result v1

    if-eq v1, v8, :cond_12

    if-eq v1, v6, :cond_12

    if-eq v1, v5, :cond_12

    .line 146
    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaStatus;->getCurrentItemId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/cast/MediaStatus;->getIndexById(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 148
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_10

    const/4 v2, 0x1

    goto :goto_8

    :cond_10
    const/4 v2, 0x0

    .line 150
    :goto_8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaStatus;->getQueueItemCount()I

    move-result p1

    sub-int/2addr p1, v8

    if-ge v1, p1, :cond_13

    goto :goto_9

    :cond_11
    const/4 v2, 0x0

    goto :goto_a

    :cond_12
    const/4 v2, 0x1

    :goto_9
    const/4 v7, 0x1

    :cond_13
    :goto_a
    const-string p1, "extra_can_skip_next"

    .line 152
    invoke-virtual {v0, p1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "extra_can_skip_prev"

    .line 153
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 154
    :cond_14
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgt:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_15
    if-nez v3, :cond_16

    .line 157
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqd:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastOptions;->getEnableReconnectionService()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 158
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgt:Landroid/content/Context;

    const-class v1, Lcom/google/android/gms/cast/framework/ReconnectionService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgt:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgt:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_16
    return-void
.end method

.method public final zzi(I)V
    .locals 4

    .line 49
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzmc:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzmc:Z

    .line 52
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzhs:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    if-eqz v1, :cond_1

    .line 53
    invoke-virtual {v1, p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->removeListener(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;)V

    .line 54
    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastLollipop()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 55
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzgt:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 56
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 57
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzis:Lcom/google/android/gms/internal/cast/zzw;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/cast/zzw;->setMediaSessionCompat(Landroid/support/v4/media/session/MediaSessionCompat;)V

    .line 58
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqf:Lcom/google/android/gms/internal/cast/zzx;

    if-eqz v1, :cond_3

    .line 59
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/zzx;->clear()V

    .line 60
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqg:Lcom/google/android/gms/internal/cast/zzx;

    if-eqz v1, :cond_4

    .line 61
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/zzx;->clear()V

    .line 62
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqh:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v1, :cond_5

    .line 63
    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setSessionActivity(Landroid/app/PendingIntent;)V

    .line 64
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqh:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    .line 65
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqh:Landroid/support/v4/media/session/MediaSessionCompat;

    new-instance v3, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v3}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    invoke-virtual {v3}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 66
    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/internal/cast/zzai;->zza(ILcom/google/android/gms/cast/MediaInfo;)V

    .line 67
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqh:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqh:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->release()V

    .line 69
    iput-object v2, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqh:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 70
    :cond_5
    iput-object v2, p0, Lcom/google/android/gms/internal/cast/zzai;->zzhs:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 71
    iput-object v2, p0, Lcom/google/android/gms/internal/cast/zzai;->zzai:Lcom/google/android/gms/cast/CastDevice;

    .line 72
    iput-object v2, p0, Lcom/google/android/gms/internal/cast/zzai;->zzqi:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    .line 73
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzai;->zzck()V

    if-nez p1, :cond_6

    .line 75
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzai;->zzcl()V

    :cond_6
    return-void
.end method
