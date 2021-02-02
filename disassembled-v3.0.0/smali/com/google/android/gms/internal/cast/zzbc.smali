.class public final Lcom/google/android/gms/internal/cast/zzbc;
.super Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;

# interfaces
.implements Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;


# instance fields
.field private zzmc:Z

.field private final zzra:Landroid/widget/SeekBar;

.field private final zzrp:J


# direct methods
.method public constructor <init>(Landroid/widget/SeekBar;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzbc;->zzmc:Z

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzbc;->zzra:Landroid/widget/SeekBar;

    .line 4
    iput-wide p2, p0, Lcom/google/android/gms/internal/cast/zzbc;->zzrp:J

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzbc;->zzra:Landroid/widget/SeekBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public final onProgressUpdated(JJ)V
    .locals 3

    .line 29
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzbc;->zzmc:Z

    if-eqz v0, :cond_3

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 35
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzbc;->zzra:Landroid/widget/SeekBar;

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_2

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbc;->zzra:Landroid/widget/SeekBar;

    long-to-int p2, p1

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 37
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzbc;->zzra:Landroid/widget/SeekBar;

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 38
    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzbc;->zzra:Landroid/widget/SeekBar;

    long-to-int p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setMax(I)V

    :cond_3
    return-void
.end method

.method public final onSendingRemoteMediaRequest()V
    .locals 0

    return-void
.end method

.method public final onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 4

    .line 7
    invoke-super {p0, p1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 10
    iget-wide v1, p0, Lcom/google/android/gms/internal/cast/zzbc;->zzrp:J

    invoke-virtual {p1, p0, v1, v2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->addProgressListener(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;J)Z

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzbc;->zzra:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getStreamDuration()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzbc;->zzra:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getApproximateStreamPosition()J

    move-result-wide v2

    long-to-int p1, v2

    invoke-virtual {v1, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzbc;->zzra:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    return-void

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzbc;->zzra:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzbc;->zzra:Landroid/widget/SeekBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 18
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzbc;->zzra:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    return-void
.end method

.method public final onSessionEnded()V
    .locals 2

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->removeProgressListener(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;)V

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbc;->zzra:Landroid/widget/SeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbc;->zzra:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbc;->zzra:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 25
    invoke-super {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionEnded()V

    return-void
.end method

.method public final zzj(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/google/android/gms/internal/cast/zzbc;->zzmc:Z

    return-void
.end method
