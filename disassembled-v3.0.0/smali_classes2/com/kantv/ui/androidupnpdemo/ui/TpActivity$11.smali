.class Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$11;
.super Ljava/lang/Object;
.source "TpActivity.java"

# interfaces
.implements Lcom/google/android/gms/cast/framework/SessionManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->setupCastListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/cast/framework/SessionManagerListener<",
        "Lcom/google/android/gms/cast/framework/CastSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;)V
    .locals 0

    .line 511
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$11;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onApplicationConnected(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 2

    .line 564
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onApplicationConnected=="

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$11;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;

    invoke-static {v0, p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->access$702(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;Lcom/google/android/gms/cast/framework/CastSession;)Lcom/google/android/gms/cast/framework/CastSession;

    .line 566
    iget-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$11;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;

    invoke-virtual {p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method private onApplicationDisconnected()V
    .locals 2

    .line 570
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$11;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;

    sget-object v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;->LOCAL:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;

    invoke-static {v0, v1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->access$900(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;)V

    .line 571
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$11;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;

    sget-object v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackState;->IDLE:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackState;

    invoke-static {v0, v1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->access$1002(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackState;)Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackState;

    .line 572
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$11;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;

    sget-object v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;->LOCAL:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;

    invoke-static {v0, v1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->access$1102(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;)Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;

    .line 574
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$11;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;

    invoke-virtual {v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->invalidateOptionsMenu()V

    return-void
.end method


# virtual methods
.method public onSessionEnded(Lcom/google/android/gms/cast/framework/CastSession;I)V
    .locals 2

    .line 515
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSessionEnded=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-direct {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$11;->onApplicationDisconnected()V

    return-void
.end method

.method public bridge synthetic onSessionEnded(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 0

    .line 511
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1, p2}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$11;->onSessionEnded(Lcom/google/android/gms/cast/framework/CastSession;I)V

    return-void
.end method

.method public onSessionEnding(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 1

    .line 550
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onSessionEnding=="

    invoke-static {p1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSessionEnding(Lcom/google/android/gms/cast/framework/Session;)V
    .locals 0

    .line 511
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$11;->onSessionEnding(Lcom/google/android/gms/cast/framework/CastSession;)V

    return-void
.end method

.method public onSessionResumeFailed(Lcom/google/android/gms/cast/framework/CastSession;I)V
    .locals 2

    .line 527
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSessionResumeFailed=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    invoke-direct {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$11;->onApplicationDisconnected()V

    return-void
.end method

.method public bridge synthetic onSessionResumeFailed(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 0

    .line 511
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1, p2}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$11;->onSessionResumeFailed(Lcom/google/android/gms/cast/framework/CastSession;I)V

    return-void
.end method

.method public onSessionResumed(Lcom/google/android/gms/cast/framework/CastSession;Z)V
    .locals 3

    .line 521
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionResumed=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-direct {p0, p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$11;->onApplicationConnected(Lcom/google/android/gms/cast/framework/CastSession;)V

    return-void
.end method

.method public bridge synthetic onSessionResumed(Lcom/google/android/gms/cast/framework/Session;Z)V
    .locals 0

    .line 511
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1, p2}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$11;->onSessionResumed(Lcom/google/android/gms/cast/framework/CastSession;Z)V

    return-void
.end method

.method public onSessionResuming(Lcom/google/android/gms/cast/framework/CastSession;Ljava/lang/String;)V
    .locals 0

    .line 555
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onSessionResuming=="

    invoke-static {p1, p2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSessionResuming(Lcom/google/android/gms/cast/framework/Session;Ljava/lang/String;)V
    .locals 0

    .line 511
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1, p2}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$11;->onSessionResuming(Lcom/google/android/gms/cast/framework/CastSession;Ljava/lang/String;)V

    return-void
.end method

.method public onSessionStartFailed(Lcom/google/android/gms/cast/framework/CastSession;I)V
    .locals 2

    .line 539
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSessionStartFailed=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-direct {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$11;->onApplicationDisconnected()V

    return-void
.end method

.method public bridge synthetic onSessionStartFailed(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 0

    .line 511
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1, p2}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$11;->onSessionStartFailed(Lcom/google/android/gms/cast/framework/CastSession;I)V

    return-void
.end method

.method public onSessionStarted(Lcom/google/android/gms/cast/framework/CastSession;Ljava/lang/String;)V
    .locals 3

    .line 533
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionStarted=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    invoke-direct {p0, p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$11;->onApplicationConnected(Lcom/google/android/gms/cast/framework/CastSession;)V

    return-void
.end method

.method public bridge synthetic onSessionStarted(Lcom/google/android/gms/cast/framework/Session;Ljava/lang/String;)V
    .locals 0

    .line 511
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1, p2}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$11;->onSessionStarted(Lcom/google/android/gms/cast/framework/CastSession;Ljava/lang/String;)V

    return-void
.end method

.method public onSessionStarting(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 1

    .line 545
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onSessionStarting=="

    invoke-static {p1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSessionStarting(Lcom/google/android/gms/cast/framework/Session;)V
    .locals 0

    .line 511
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$11;->onSessionStarting(Lcom/google/android/gms/cast/framework/CastSession;)V

    return-void
.end method

.method public onSessionSuspended(Lcom/google/android/gms/cast/framework/CastSession;I)V
    .locals 0

    .line 560
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onSessionSuspended=="

    invoke-static {p1, p2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSessionSuspended(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 0

    .line 511
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1, p2}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$11;->onSessionSuspended(Lcom/google/android/gms/cast/framework/CastSession;I)V

    return-void
.end method
