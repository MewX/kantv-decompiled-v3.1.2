.class public Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;
.super Landroid/support/v7/app/AppCompatActivity;

# interfaces
.implements Lcom/google/android/gms/cast/framework/media/widget/ControlButtonsContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity$zza;,
        Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity$zzb;
    }
.end annotation


# instance fields
.field private zzgv:Lcom/google/android/gms/cast/framework/SessionManager;

.field private final zzmp:Lcom/google/android/gms/cast/framework/SessionManagerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/cast/framework/SessionManagerListener<",
            "Lcom/google/android/gms/cast/framework/CastSession;",
            ">;"
        }
    .end annotation
.end field

.field private final zzqp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;

.field private zzra:Landroid/widget/SeekBar;

.field private zzrw:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private zzrx:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field private zzry:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private zzrz:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private zzsa:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private zzsb:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private zzsc:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private zzsd:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private zzse:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private zzsf:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private zzsg:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private zzsh:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private zzsi:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private zzsj:I

.field private zzsk:Landroid/widget/TextView;

.field private zzsl:Landroid/widget/ImageView;

.field private zzsm:Landroid/widget/ImageView;

.field private zzsn:Lcom/google/android/gms/internal/cast/zzam;

.field private zzso:[I

.field private zzsp:[Landroid/widget/ImageView;

.field private zzsq:Landroid/view/View;

.field private zzsr:Landroid/widget/ImageView;

.field private zzss:Landroid/widget/TextView;

.field private zzst:Landroid/widget/TextView;

.field private zzsu:Landroid/widget/TextView;

.field private zzsv:Landroid/widget/TextView;

.field private zzsw:Lcom/google/android/gms/internal/cast/zzx;

.field private zzsx:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

.field private zzsy:Z

.field private zzsz:Z

.field private zzta:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity$zzb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity$zzb;-><init>(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;Lcom/google/android/gms/cast/framework/media/widget/zza;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzmp:Lcom/google/android/gms/cast/framework/SessionManagerListener;

    .line 3
    new-instance v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity$zza;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity$zza;-><init>(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;Lcom/google/android/gms/cast/framework/media/widget/zza;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzqp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;

    const/4 v0, 0x4

    .line 4
    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsp:[Landroid/widget/ImageView;

    return-void
.end method

.method private final getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzgv:Lcom/google/android/gms/cast/framework/SessionManager;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/Session;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastSession;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;)Landroid/widget/TextView;
    .locals 0

    .line 395
    iget-object p0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzss:Landroid/widget/TextView;

    return-object p0
.end method

.method private final zza(Landroid/view/View;IILcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)V
    .locals 7

    .line 224
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    .line 225
    sget p1, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_empty:I

    if-ne p3, p1, :cond_0

    const/4 p1, 0x4

    .line 226
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 227
    :cond_0
    sget p1, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_custom:I

    if-eq p3, p1, :cond_7

    .line 228
    sget p1, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_play_pause_toggle:I

    if-ne p3, p1, :cond_1

    .line 230
    iget p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzrw:I

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 231
    iget p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsj:I

    iget p2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsb:I

    .line 232
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/cast/framework/media/widget/zze;->zzb(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 233
    iget p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsj:I

    iget p2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsa:I

    .line 234
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/cast/framework/media/widget/zze;->zzb(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 235
    iget p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsj:I

    iget p2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsc:I

    .line 236
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/cast/framework/media/widget/zze;->zzb(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 237
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p4

    .line 238
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindImageViewToPlayPauseToggle(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/view/View;Z)V

    return-void

    .line 240
    :cond_1
    sget p1, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_skip_previous:I

    const/4 p2, 0x0

    if-ne p3, p1, :cond_2

    .line 242
    iget p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzrw:I

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 243
    iget p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsj:I

    iget p3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsd:I

    .line 244
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/cast/framework/media/widget/zze;->zzb(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 245
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/google/android/gms/cast/framework/R$string;->cast_skip_prev:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 247
    invoke-virtual {p4, v1, p2}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindViewToSkipPrev(Landroid/view/View;I)V

    return-void

    .line 249
    :cond_2
    sget p1, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_skip_next:I

    if-ne p3, p1, :cond_3

    .line 251
    iget p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzrw:I

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 252
    iget p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsj:I

    iget p3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzse:I

    .line 253
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/cast/framework/media/widget/zze;->zzb(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 254
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 255
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/google/android/gms/cast/framework/R$string;->cast_skip_next:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 256
    invoke-virtual {p4, v1, p2}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindViewToSkipNext(Landroid/view/View;I)V

    return-void

    .line 258
    :cond_3
    sget p1, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_rewind_30_seconds:I

    const-wide/16 v2, 0x7530

    if-ne p3, p1, :cond_4

    .line 260
    iget p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzrw:I

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 261
    iget p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsj:I

    iget p2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsf:I

    .line 262
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/cast/framework/media/widget/zze;->zzb(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 263
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/google/android/gms/cast/framework/R$string;->cast_rewind_30:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 265
    invoke-virtual {p4, v1, v2, v3}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindViewToRewind(Landroid/view/View;J)V

    return-void

    .line 267
    :cond_4
    sget p1, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_forward_30_seconds:I

    if-ne p3, p1, :cond_5

    .line 269
    iget p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzrw:I

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 270
    iget p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsj:I

    iget p2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsg:I

    .line 271
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/cast/framework/media/widget/zze;->zzb(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 272
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 273
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/google/android/gms/cast/framework/R$string;->cast_forward_30:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 274
    invoke-virtual {p4, v1, v2, v3}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindViewToForward(Landroid/view/View;J)V

    return-void

    .line 276
    :cond_5
    sget p1, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_mute_toggle:I

    if-ne p3, p1, :cond_6

    .line 278
    iget p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzrw:I

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 279
    iget p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsj:I

    iget p2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsh:I

    .line 280
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/cast/framework/media/widget/zze;->zzb(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 281
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 282
    invoke-virtual {p4, v1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindImageViewToMuteToggle(Landroid/widget/ImageView;)V

    return-void

    .line 284
    :cond_6
    sget p1, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_closed_caption:I

    if-ne p3, p1, :cond_7

    .line 286
    iget p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzrw:I

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 287
    iget p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsj:I

    iget p2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsi:I

    .line 288
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/cast/framework/media/widget/zze;->zzb(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 289
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 290
    invoke-virtual {p4, v1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindViewToClosedCaption(Landroid/view/View;)V

    :cond_7
    return-void
.end method

.method private final zza(Lcom/google/android/gms/cast/AdBreakClipInfo;Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V
    .locals 9

    .line 366
    iget-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsy:Z

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isBuffering()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsu:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p1, :cond_4

    .line 370
    invoke-virtual {p1}, Lcom/google/android/gms/cast/AdBreakClipInfo;->getWhenSkippableInMs()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    .line 372
    iget-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsz:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 373
    new-instance v4, Lcom/google/android/gms/cast/framework/media/widget/zzc;

    invoke-direct {v4, p0, p1, p2}, Lcom/google/android/gms/cast/framework/media/widget/zzc;-><init>(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;Lcom/google/android/gms/cast/AdBreakClipInfo;Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V

    .line 374
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzta:Ljava/util/Timer;

    .line 375
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzta:Ljava/util/Timer;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x1f4

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 376
    iput-boolean v2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsz:Z

    .line 378
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/cast/AdBreakClipInfo;->getWhenSkippableInMs()J

    move-result-wide v3

    .line 379
    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getApproximateAdBreakClipPositionMs()J

    move-result-wide p1

    sub-long/2addr v3, p1

    long-to-float p1, v3

    const/4 p2, 0x0

    const/4 v0, 0x0

    cmpg-float p2, p1, p2

    if-gtz p2, :cond_3

    .line 381
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsv:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 382
    iget-boolean p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsz:Z

    if-eqz p1, :cond_2

    .line 383
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzta:Ljava/util/Timer;

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 384
    iput-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsz:Z

    .line 385
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsu:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 386
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsu:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    return-void

    .line 387
    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsv:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 388
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsv:Landroid/widget/TextView;

    .line 389
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/google/android/gms/cast/framework/R$string;->cast_expanded_controller_skip_ad_text:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    float-to-int p1, p1

    div-int/lit16 p1, p1, 0x3e8

    .line 390
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    .line 391
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 392
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsu:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;Lcom/google/android/gms/cast/AdBreakClipInfo;Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V
    .locals 0

    .line 405
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zza(Lcom/google/android/gms/cast/AdBreakClipInfo;Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;Z)Z
    .locals 0

    const/4 p1, 0x0

    .line 400
    iput-boolean p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsy:Z

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 396
    iget-object p0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsr:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;)Landroid/widget/TextView;
    .locals 0

    .line 397
    iget-object p0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsu:Landroid/widget/TextView;

    return-object p0
.end method

.method private final zzcs()Landroid/content/res/ColorStateList;
    .locals 6

    .line 211
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzrx:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 212
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 213
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/gms/cast/framework/R$dimen;->cast_expanded_controller_seekbar_disabled_alpha:I

    const/4 v4, 0x1

    .line 214
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 216
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 217
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 218
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 219
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 220
    invoke-static {v1, v2, v3, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    const/4 v2, 0x2

    .line 221
    new-array v3, v2, [I

    const/4 v5, 0x0

    aput v0, v3, v5

    aput v1, v3, v4

    .line 222
    new-array v0, v2, [[I

    new-array v1, v4, [I

    const v2, 0x101009e

    aput v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v4, [I

    const v2, -0x101009e

    aput v2, v1, v5

    aput-object v1, v0, v4

    .line 223
    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v0, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private final zzct()V
    .locals 3

    .line 297
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getMetadata()Lcom/google/android/gms/cast/MediaMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "com.google.android.gms.cast.metadata.TITLE"

    .line 305
    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private final zzcu()V
    .locals 6

    .line 307
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzgv:Lcom/google/android/gms/cast/framework/SessionManager;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastSession;->getCastDevice()Lcom/google/android/gms/cast/CastDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0}, Lcom/google/android/gms/cast/CastDevice;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsk:Landroid/widget/TextView;

    .line 314
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/gms/cast/framework/R$string;->cast_casting_to_device:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 315
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsk:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final zzcv()V
    .locals 10

    .line 319
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 320
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v2

    :goto_0
    if-nez v0, :cond_1

    move-object v3, v1

    goto :goto_1

    .line 321
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v3

    :goto_1
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 322
    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaStatus;->isPlayingAd()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    const/16 v7, 0x8

    if-eqz v6, :cond_7

    .line 324
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzra:Landroid/widget/SeekBar;

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 325
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBeanMR1()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 326
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsm:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-ne v4, v7, :cond_3

    .line 327
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsl:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 328
    instance-of v6, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_3

    .line 329
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_3

    const/high16 v6, 0x3e800000    # 0.25f

    const/high16 v8, 0x40f00000    # 7.5f

    .line 332
    invoke-static {p0, v4, v6, v8}, Lcom/google/android/gms/cast/framework/media/widget/zze;->zza(Landroid/content/Context;Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 334
    iget-object v6, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsm:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 335
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsm:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 338
    :cond_3
    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaStatus;->getCurrentAdBreakClip()Lcom/google/android/gms/cast/AdBreakClipInfo;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 340
    invoke-virtual {v3}, Lcom/google/android/gms/cast/AdBreakClipInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 341
    invoke-virtual {v3}, Lcom/google/android/gms/cast/AdBreakClipInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    move-object v4, v1

    move-object v1, v9

    goto :goto_3

    :cond_4
    move-object v4, v1

    .line 342
    :goto_3
    iget-object v6, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzss:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 343
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 344
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 345
    iget-object v6, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsw:Lcom/google/android/gms/internal/cast/zzx;

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/cast/zzx;->zza(Landroid/net/Uri;)Z

    goto :goto_4

    .line 347
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsr:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 348
    :goto_4
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzst:Landroid/widget/TextView;

    .line 349
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/google/android/gms/cast/framework/R$string;->cast_ad_label:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 350
    :cond_6
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzra:Landroid/widget/SeekBar;

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 352
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsq:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 353
    invoke-direct {p0, v3, v0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zza(Lcom/google/android/gms/cast/AdBreakClipInfo;Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V

    goto :goto_5

    .line 355
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzra:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 356
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsv:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsu:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsq:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 359
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBeanMR1()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 360
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsm:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsm:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_8
    :goto_5
    if-eqz v2, :cond_9

    .line 363
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsn:Lcom/google/android/gms/internal/cast/zzam;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzra:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zzam;->zzj(I)V

    .line 364
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsn:Lcom/google/android/gms/internal/cast/zzam;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaInfo;->getAdBreaks()Ljava/util/List;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cast/zzam;->zzb(Ljava/util/List;I)V

    :cond_9
    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;
    .locals 0

    .line 398
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;)Z
    .locals 0

    .line 399
    iget-boolean p0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsy:Z

    return p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;)V
    .locals 0

    .line 401
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzcu()V

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;)V
    .locals 0

    .line 402
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzcv()V

    return-void
.end method

.method static synthetic zzh(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;)V
    .locals 0

    .line 403
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzct()V

    return-void
.end method

.method static synthetic zzi(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;)Landroid/widget/TextView;
    .locals 0

    .line 404
    iget-object p0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsk:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public final getButtonImageViewAt(I)Landroid/widget/ImageView;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsp:[Landroid/widget/ImageView;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final getButtonSlotCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public final getButtonTypeAt(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzso:[I

    aget p1, v0, p1

    return p1
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzra:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public getStatusTextView()Landroid/widget/TextView;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsk:Landroid/widget/TextView;

    return-object v0
.end method

.method public getUIMediaController()Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsx:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 5
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzgv:Lcom/google/android/gms/cast/framework/SessionManager;

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzgv:Lcom/google/android/gms/cast/framework/SessionManager;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object p1

    if-nez p1, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->finish()V

    .line 9
    :cond_0
    new-instance p1, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    invoke-direct {p1, p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsx:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsx:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzqp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->setPostRemoteMediaClientListener(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;)V

    .line 11
    sget p1, Lcom/google/android/gms/cast/framework/R$layout;->cast_expanded_controller_activity:I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->setContentView(I)V

    const/4 p1, 0x2

    .line 13
    new-array v0, p1, [I

    sget v1, Landroid/support/v7/appcompat/R$attr;->selectableItemBackgroundBorderless:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 14
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 15
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzrw:I

    .line 16
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzrx:I

    .line 17
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    sget-object v0, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController:[I

    sget v1, Lcom/google/android/gms/cast/framework/R$attr;->castExpandedControllerStyle:I

    sget v4, Lcom/google/android/gms/cast/framework/R$style;->CastExpandedController:I

    const/4 v5, 0x0

    .line 20
    invoke-virtual {p0, v5, v0, v1, v4}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 21
    sget v1, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castButtonColor:I

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsj:I

    .line 23
    sget v1, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castSeekBarProgressDrawable:I

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzry:I

    .line 25
    sget v1, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castSeekBarThumbDrawable:I

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzrz:I

    .line 27
    sget v1, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castPlayButtonDrawable:I

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsa:I

    .line 29
    sget v1, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castPauseButtonDrawable:I

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsb:I

    .line 31
    sget v1, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castStopButtonDrawable:I

    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsc:I

    .line 33
    sget v1, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castSkipPreviousButtonDrawable:I

    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsd:I

    .line 35
    sget v1, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castSkipNextButtonDrawable:I

    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzse:I

    .line 37
    sget v1, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castRewind30ButtonDrawable:I

    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsf:I

    .line 39
    sget v1, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castForward30ButtonDrawable:I

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsg:I

    .line 41
    sget v1, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castMuteToggleButtonDrawable:I

    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsh:I

    .line 43
    sget v1, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castClosedCaptionsButtonDrawable:I

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsi:I

    .line 45
    sget v1, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castControlButtons:I

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    const/4 v4, 0x3

    const/4 v6, 0x4

    if-eqz v1, :cond_3

    .line 48
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v7

    if-ne v7, v6, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 50
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v7

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzso:[I

    const/4 v7, 0x0

    .line 51
    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 52
    iget-object v8, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzso:[I

    invoke-virtual {v1, v7, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    aput v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 54
    :cond_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    .line 56
    :cond_3
    new-array v1, v6, [I

    sget v7, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_empty:I

    aput v7, v1, v2

    sget v7, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_empty:I

    aput v7, v1, v3

    sget v7, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_empty:I

    aput v7, v1, p1

    sget v7, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_empty:I

    aput v7, v1, v4

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzso:[I

    .line 57
    :goto_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    sget v0, Lcom/google/android/gms/cast/framework/R$id;->expanded_controller_layout:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsx:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    .line 59
    sget v7, Lcom/google/android/gms/cast/framework/R$id;->background_image_view:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsl:Landroid/widget/ImageView;

    .line 60
    sget v7, Lcom/google/android/gms/cast/framework/R$id;->blurred_background_image_view:I

    .line 61
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsm:Landroid/widget/ImageView;

    .line 62
    sget v7, Lcom/google/android/gms/cast/framework/R$id;->background_place_holder_image_view:I

    .line 63
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 64
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    .line 65
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 66
    iget-object v9, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsl:Landroid/widget/ImageView;

    new-instance v10, Lcom/google/android/gms/cast/framework/media/ImageHints;

    iget v11, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v10, v6, v11, v8}, Lcom/google/android/gms/cast/framework/media/ImageHints;-><init>(III)V

    invoke-virtual {v1, v9, v10, v7}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindImageViewToImageOfCurrentItem(Landroid/widget/ImageView;Lcom/google/android/gms/cast/framework/media/ImageHints;Landroid/view/View;)V

    .line 67
    sget v6, Lcom/google/android/gms/cast/framework/R$id;->status_text:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsk:Landroid/widget/TextView;

    .line 68
    sget v6, Lcom/google/android/gms/cast/framework/R$id;->loading_indicator:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    .line 69
    invoke-virtual {v1, v6}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindViewToLoadingIndicator(Landroid/view/View;)V

    .line 70
    sget v6, Lcom/google/android/gms/cast/framework/R$id;->start_text:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 71
    sget v7, Lcom/google/android/gms/cast/framework/R$id;->end_text:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 72
    sget v8, Lcom/google/android/gms/cast/framework/R$id;->live_stream_indicator:I

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 73
    sget v9, Lcom/google/android/gms/cast/framework/R$id;->seek_bar:I

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/SeekBar;

    iput-object v9, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzra:Landroid/widget/SeekBar;

    .line 75
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget v10, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzry:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 78
    iget v10, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzry:I

    sget v11, Lcom/google/android/gms/cast/framework/R$drawable;->cast_expanded_controller_seekbar_track:I

    if-ne v10, v11, :cond_4

    .line 79
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzcs()Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 80
    move-object v10, v9

    check-cast v10, Landroid/graphics/drawable/LayerDrawable;

    const v11, 0x102000d

    .line 82
    invoke-virtual {v10, v11}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-static {v12}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 83
    invoke-static {v12, v5}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 84
    invoke-virtual {v10, v11, v12}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    const/high16 v11, 0x1020000

    .line 85
    invoke-virtual {v10, v11}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 87
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/google/android/gms/cast/framework/R$color;->cast_expanded_controller_seek_bar_progress_background_tint_color:I

    .line 88
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 89
    invoke-virtual {v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 90
    :cond_4
    iget-object v10, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzra:Landroid/widget/SeekBar;

    invoke-virtual {v10, v9}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget v10, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzrz:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 93
    iget v10, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzrz:I

    sget v11, Lcom/google/android/gms/cast/framework/R$drawable;->cast_expanded_controller_seekbar_thumb:I

    if-ne v10, v11, :cond_7

    if-nez v5, :cond_6

    .line 95
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzcs()Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 96
    :cond_6
    invoke-static {v9}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 97
    invoke-static {v9, v5}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 98
    :cond_7
    iget-object v5, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzra:Landroid/widget/SeekBar;

    invoke-virtual {v5, v9}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 100
    :cond_8
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastLollipop()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 101
    iget-object v5, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzra:Landroid/widget/SeekBar;

    invoke-virtual {v5, v2}, Landroid/widget/SeekBar;->setSplitTrack(Z)V

    .line 102
    :cond_9
    sget v5, Lcom/google/android/gms/cast/framework/R$id;->live_stream_seek_bar:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    .line 103
    invoke-virtual {v1, v6, v3}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindTextViewToStreamPosition(Landroid/widget/TextView;Z)V

    .line 104
    invoke-virtual {v1, v7, v8}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindTextViewToStreamDuration(Landroid/widget/TextView;Landroid/view/View;)V

    .line 105
    iget-object v6, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzra:Landroid/widget/SeekBar;

    invoke-virtual {v1, v6}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindSeekBar(Landroid/widget/SeekBar;)V

    .line 106
    new-instance v6, Lcom/google/android/gms/internal/cast/zzat;

    iget-object v7, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzra:Landroid/widget/SeekBar;

    invoke-direct {v6, v5, v7}, Lcom/google/android/gms/internal/cast/zzat;-><init>(Landroid/widget/SeekBar;Landroid/widget/SeekBar;)V

    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindViewToUIController(Landroid/view/View;Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;)V

    .line 107
    iget-object v5, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsp:[Landroid/widget/ImageView;

    sget v6, Lcom/google/android/gms/cast/framework/R$id;->button_0:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    aput-object v6, v5, v2

    .line 108
    iget-object v5, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsp:[Landroid/widget/ImageView;

    sget v6, Lcom/google/android/gms/cast/framework/R$id;->button_1:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    aput-object v6, v5, v3

    .line 109
    iget-object v5, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsp:[Landroid/widget/ImageView;

    sget v6, Lcom/google/android/gms/cast/framework/R$id;->button_2:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    aput-object v6, v5, p1

    .line 110
    iget-object v5, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsp:[Landroid/widget/ImageView;

    sget v6, Lcom/google/android/gms/cast/framework/R$id;->button_3:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    aput-object v6, v5, v4

    .line 111
    sget v5, Lcom/google/android/gms/cast/framework/R$id;->button_0:I

    iget-object v6, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzso:[I

    aget v6, v6, v2

    invoke-direct {p0, v0, v5, v6, v1}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zza(Landroid/view/View;IILcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)V

    .line 112
    sget v5, Lcom/google/android/gms/cast/framework/R$id;->button_1:I

    iget-object v6, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzso:[I

    aget v6, v6, v3

    invoke-direct {p0, v0, v5, v6, v1}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zza(Landroid/view/View;IILcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)V

    .line 113
    sget v5, Lcom/google/android/gms/cast/framework/R$id;->button_play_pause_toggle:I

    sget v6, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_play_pause_toggle:I

    invoke-direct {p0, v0, v5, v6, v1}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zza(Landroid/view/View;IILcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)V

    .line 114
    sget v5, Lcom/google/android/gms/cast/framework/R$id;->button_2:I

    iget-object v6, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzso:[I

    aget p1, v6, p1

    invoke-direct {p0, v0, v5, p1, v1}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zza(Landroid/view/View;IILcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)V

    .line 115
    sget p1, Lcom/google/android/gms/cast/framework/R$id;->button_3:I

    iget-object v5, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzso:[I

    aget v4, v5, v4

    invoke-direct {p0, v0, p1, v4, v1}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zza(Landroid/view/View;IILcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)V

    .line 116
    sget p1, Lcom/google/android/gms/cast/framework/R$id;->ad_container:I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsq:Landroid/view/View;

    .line 117
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsq:Landroid/view/View;

    sget v1, Lcom/google/android/gms/cast/framework/R$id;->ad_image_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsr:Landroid/widget/ImageView;

    .line 118
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsq:Landroid/view/View;

    sget v1, Lcom/google/android/gms/cast/framework/R$id;->ad_label:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzst:Landroid/widget/TextView;

    .line 119
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsq:Landroid/view/View;

    sget v1, Lcom/google/android/gms/cast/framework/R$id;->ad_in_progress_label:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzss:Landroid/widget/TextView;

    .line 120
    sget p1, Lcom/google/android/gms/cast/framework/R$id;->seek_bar_controls:I

    .line 121
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 122
    new-instance v0, Lcom/google/android/gms/internal/cast/zzam;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cast/zzam;-><init>(Landroid/content/Context;)V

    .line 123
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v1, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 124
    sget v4, Lcom/google/android/gms/cast/framework/R$id;->end_text:I

    invoke-virtual {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 125
    sget v4, Lcom/google/android/gms/cast/framework/R$id;->start_text:I

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v4, 0x6

    .line 126
    sget v6, Lcom/google/android/gms/cast/framework/R$id;->seek_bar:I

    invoke-virtual {v1, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v4, 0x7

    .line 127
    sget v6, Lcom/google/android/gms/cast/framework/R$id;->seek_bar:I

    invoke-virtual {v1, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v4, 0x5

    .line 128
    sget v6, Lcom/google/android/gms/cast/framework/R$id;->seek_bar:I

    invoke-virtual {v1, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, 0x8

    .line 129
    sget v6, Lcom/google/android/gms/cast/framework/R$id;->seek_bar:I

    invoke-virtual {v1, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 130
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zzam;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBeanMR1()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 132
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzra:Landroid/widget/SeekBar;

    .line 133
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getPaddingStart()I

    move-result v1

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzra:Landroid/widget/SeekBar;

    .line 134
    invoke-virtual {v4}, Landroid/widget/SeekBar;->getPaddingTop()I

    move-result v4

    iget-object v6, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzra:Landroid/widget/SeekBar;

    .line 135
    invoke-virtual {v6}, Landroid/widget/SeekBar;->getPaddingEnd()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzra:Landroid/widget/SeekBar;

    .line 136
    invoke-virtual {v7}, Landroid/widget/SeekBar;->getPaddingBottom()I

    move-result v7

    .line 137
    invoke-virtual {v0, v1, v4, v6, v7}, Lcom/google/android/gms/internal/cast/zzam;->setPaddingRelative(IIII)V

    goto :goto_3

    .line 138
    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzra:Landroid/widget/SeekBar;

    .line 139
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v1

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzra:Landroid/widget/SeekBar;

    .line 140
    invoke-virtual {v4}, Landroid/widget/SeekBar;->getPaddingTop()I

    move-result v4

    iget-object v6, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzra:Landroid/widget/SeekBar;

    .line 141
    invoke-virtual {v6}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzra:Landroid/widget/SeekBar;

    .line 142
    invoke-virtual {v7}, Landroid/widget/SeekBar;->getPaddingBottom()I

    move-result v7

    .line 143
    invoke-virtual {v0, v1, v4, v6, v7}, Lcom/google/android/gms/internal/cast/zzam;->setPadding(IIII)V

    .line 144
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/google/android/gms/cast/framework/R$string;->cast_seek_bar:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zzam;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/cast/zzam;->setBackgroundColor(I)V

    .line 146
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 148
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsn:Lcom/google/android/gms/internal/cast/zzam;

    .line 149
    sget p1, Lcom/google/android/gms/cast/framework/R$id;->ad_skip_text:I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsv:Landroid/widget/TextView;

    .line 150
    sget p1, Lcom/google/android/gms/cast/framework/R$id;->ad_skip_button:I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsu:Landroid/widget/TextView;

    .line 151
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsu:Landroid/widget/TextView;

    new-instance v0, Lcom/google/android/gms/cast/framework/media/widget/zzb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/framework/media/widget/zzb;-><init>(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    sget p1, Lcom/google/android/gms/cast/framework/R$id;->toolbar:I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    .line 153
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 154
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 155
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 156
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    sget v0, Lcom/google/android/gms/cast/framework/R$drawable;->quantum_ic_keyboard_arrow_down_white_36:I

    .line 157
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 158
    :cond_b
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzcu()V

    .line 159
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzct()V

    .line 160
    new-instance p1, Lcom/google/android/gms/internal/cast/zzx;

    .line 161
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/cast/framework/media/ImageHints;

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsr:Landroid/widget/ImageView;

    .line 162
    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsr:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    invoke-direct {v1, v5, v2, v3}, Lcom/google/android/gms/cast/framework/media/ImageHints;-><init>(III)V

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzx;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;)V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsw:Lcom/google/android/gms/internal/cast/zzx;

    .line 163
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsw:Lcom/google/android/gms/internal/cast/zzx;

    new-instance v0, Lcom/google/android/gms/cast/framework/media/widget/zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/framework/media/widget/zza;-><init>(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/cast/zzx;->zza(Lcom/google/android/gms/internal/cast/zzy;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsw:Lcom/google/android/gms/internal/cast/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzx;->clear()V

    .line 184
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsx:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 185
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->setPostRemoteMediaClientListener(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;)V

    .line 186
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsx:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->dispose()V

    .line 187
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 189
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->finish()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .locals 3

    .line 178
    invoke-static {p0}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzmp:Lcom/google/android/gms/cast/framework/SessionManagerListener;

    const-class v2, Lcom/google/android/gms/cast/framework/CastSession;

    .line 180
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/framework/SessionManager;->removeSessionManagerListener(Lcom/google/android/gms/cast/framework/SessionManagerListener;Ljava/lang/Class;)V

    .line 181
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 165
    invoke-static {p0}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzmp:Lcom/google/android/gms/cast/framework/SessionManagerListener;

    const-class v2, Lcom/google/android/gms/cast/framework/CastSession;

    .line 167
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/framework/SessionManager;->addSessionManagerListener(Lcom/google/android/gms/cast/framework/SessionManagerListener;Ljava/lang/Class;)V

    .line 169
    invoke-static {p0}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/Session;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/Session;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->finish()V

    .line 172
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 173
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzsy:Z

    .line 174
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzcu()V

    .line 175
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzcv()V

    .line 176
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 192
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_2

    .line 195
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    xor-int/lit8 p1, p1, 0x2

    .line 197
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBean()Z

    move-result v0

    if-eqz v0, :cond_0

    xor-int/lit8 p1, p1, 0x4

    .line 199
    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastKitKat()Z

    move-result v0

    if-eqz v0, :cond_1

    xor-int/lit16 p1, p1, 0x1000

    .line 201
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 202
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBeanMR2()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 203
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->setImmersive(Z)V

    :cond_2
    return-void
.end method
