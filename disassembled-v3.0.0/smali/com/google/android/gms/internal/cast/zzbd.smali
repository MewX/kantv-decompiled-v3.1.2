.class public final Lcom/google/android/gms/internal/cast/zzbd;
.super Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;


# instance fields
.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzbd;->view:Landroid/view/View;

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzbd;->view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private final zzco()V
    .locals 2

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLiveStream()Z

    move-result v1

    if-nez v1, :cond_1

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbd;->view:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void

    .line 20
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbd;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public final onMediaStatusUpdated()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzbd;->zzco()V

    return-void
.end method

.method public final onSendingRemoteMediaRequest()V
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbd;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzbd;->zzco()V

    return-void
.end method

.method public final onSessionEnded()V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbd;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 9
    invoke-super {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionEnded()V

    return-void
.end method
