.class Lcom/kantv/ui/samsung/MediaLauncherSingleton$3;
.super Ljava/lang/Object;
.source "MediaLauncherSingleton.java"

# interfaces
.implements Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/samsung/MediaLauncherSingleton;->initMediaPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/samsung/MediaLauncherSingleton;


# direct methods
.method constructor <init>(Lcom/kantv/ui/samsung/MediaLauncherSingleton;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton$3;->this$0:Lcom/kantv/ui/samsung/MediaLauncherSingleton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddToList(Lorg/json/JSONObject;)V
    .locals 2

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayerNotice: onEnqueue P: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaLauncherSingleton"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onApplicationResume()V
    .locals 2

    const-string v0, "MediaLauncherSingleton"

    const-string v1, "PlayerNotice: onApplicationResume P"

    .line 553
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton$3;->this$0:Lcom/kantv/ui/samsung/MediaLauncherSingleton;

    invoke-virtual {v0}, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->getControlStatus()V

    return-void
.end method

.method public onApplicationSuspend()V
    .locals 2

    const-string v0, "MediaLauncherSingleton"

    const-string v1, "PlayerNotice: onApplicationSuspend P"

    .line 560
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onClearList()V
    .locals 2

    const-string v0, "MediaLauncherSingleton"

    const-string v1, "PlayerNotice: onQueueClear P"

    .line 500
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onControlStatus(ILjava/lang/Boolean;)V
    .locals 2

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayerNotice: onControlStatus P: vol: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mute: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaLauncherSingleton"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCurrentPlaying(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .line 520
    iget-object p1, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton$3;->this$0:Lcom/kantv/ui/samsung/MediaLauncherSingleton;

    invoke-virtual {p1}, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->getControlStatus()V

    return-void
.end method

.method public onError(Lcom/samsung/multiscreen/Error;)V
    .locals 3

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayerNotice: onError P: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/Error;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaLauncherSingleton"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton$3;->this$0:Lcom/kantv/ui/samsung/MediaLauncherSingleton;

    invoke-virtual {v0}, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/Error;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onGetList(Lorg/json/JSONArray;)V
    .locals 2

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayerNotice: onQueueFetch P: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaLauncherSingleton"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onMute()V
    .locals 2

    const-string v0, "MediaLauncherSingleton"

    const-string v1, "PlayerNotice: onMute P"

    .line 460
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNext()V
    .locals 2

    const-string v0, "MediaLauncherSingleton"

    const-string v1, "PlayerNotice: onNext P"

    .line 472
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "MediaLauncherSingleton"

    const-string v1, "PlayerNotice: onPause P"

    .line 448
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPlay()V
    .locals 2

    const-string v0, "MediaLauncherSingleton"

    const-string v1, "PlayerNotice: onPlay P"

    .line 442
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPlayerChange(Ljava/lang/String;)V
    .locals 1

    const-string p1, "MediaLauncherSingleton"

    const-string v0, "PlayerNotice: onPlayerChange P"

    .line 542
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object p1, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton$3;->this$0:Lcom/kantv/ui/samsung/MediaLauncherSingleton;

    invoke-virtual {p1}, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->getControlStatus()V

    return-void
.end method

.method public onPlayerInitialized()V
    .locals 2

    const-string v0, "MediaLauncherSingleton"

    const-string v1, "PlayerNotice: onPlayerInitialized P"

    .line 537
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPrevious()V
    .locals 2

    const-string v0, "MediaLauncherSingleton"

    const-string v1, "PlayerNotice: onPrevious P"

    .line 477
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRemoveFromList(Lorg/json/JSONObject;)V
    .locals 2

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayerNotice: onDequeue P: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaLauncherSingleton"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "MediaLauncherSingleton"

    const-string v1, "PlayerNotice: onStop P"

    .line 454
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUnMute()V
    .locals 2

    const-string v0, "MediaLauncherSingleton"

    const-string v1, "PlayerNotice: onUnMute P"

    .line 466
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onVolumeChange(I)V
    .locals 2

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayerNotice: onVolumeChange P: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaLauncherSingleton"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
