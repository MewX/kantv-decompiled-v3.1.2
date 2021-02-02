.class public final Lcom/google/android/gms/internal/cast/zzat;
.super Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;


# instance fields
.field private final zzqz:Landroid/widget/SeekBar;

.field private final zzra:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/widget/SeekBar;Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzat;->zzqz:Landroid/widget/SeekBar;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzat;->zzra:Landroid/widget/SeekBar;

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzat;->zzqz:Landroid/widget/SeekBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setClickable(Z)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastKitKat()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzat;->zzqz:Landroid/widget/SeekBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzat;->zzqz:Landroid/widget/SeekBar;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzat;->zzqz:Landroid/widget/SeekBar;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzat;->zzqz:Landroid/widget/SeekBar;

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzat;->zzqz:Landroid/widget/SeekBar;

    new-instance p2, Lcom/google/android/gms/internal/cast/zzau;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/cast/zzau;-><init>(Lcom/google/android/gms/internal/cast/zzat;)V

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private final zzcq()V
    .locals 5

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLiveStream()Z

    move-result v0

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzat;->zzqz:Landroid/widget/SeekBar;

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzat;->zzra:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    const/4 v2, 0x4

    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final onMediaStatusUpdated()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzat;->zzcq()V

    return-void
.end method

.method public final onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 0

    .line 12
    invoke-super {p0, p1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzat;->zzcq()V

    return-void
.end method
