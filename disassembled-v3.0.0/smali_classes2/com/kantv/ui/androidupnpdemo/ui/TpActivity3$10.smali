.class Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$10;
.super Ljava/lang/Object;
.source "TpActivity3.java"

# interfaces
.implements Lcom/google/android/gms/cast/framework/SessionManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->setupCastListener()V
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
.field final synthetic this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;


# direct methods
.method constructor <init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;)V
    .locals 0

    .line 480
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$10;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onApplicationConnected(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 2

    .line 533
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onApplicationConnected=="

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$10;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;

    invoke-static {v0, p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->access$602(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;Lcom/google/android/gms/cast/framework/CastSession;)Lcom/google/android/gms/cast/framework/CastSession;

    .line 535
    iget-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$10;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;

    invoke-virtual {p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->invalidateOptionsMenu()V

    return-void
.end method

.method private onApplicationDisconnected()V
    .locals 2

    .line 539
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$10;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;

    sget-object v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackLocation;->LOCAL:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackLocation;

    invoke-static {v0, v1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->access$800(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackLocation;)V

    .line 540
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$10;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;

    sget-object v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;->IDLE:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;

    invoke-static {v0, v1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->access$902(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;)Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;

    .line 541
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$10;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;

    sget-object v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackLocation;->LOCAL:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackLocation;

    invoke-static {v0, v1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->access$1002(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackLocation;)Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackLocation;

    .line 543
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$10;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;

    invoke-virtual {v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->invalidateOptionsMenu()V

    return-void
.end method


# virtual methods
.method public onSessionEnded(Lcom/google/android/gms/cast/framework/CastSession;I)V
    .locals 2

    .line 484
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSessionEnded=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    invoke-direct {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$10;->onApplicationDisconnected()V

    return-void
.end method

.method public bridge synthetic onSessionEnded(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 0

    .line 480
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1, p2}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$10;->onSessionEnded(Lcom/google/android/gms/cast/framework/CastSession;I)V

    return-void
.end method

.method public onSessionEnding(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 1

    .line 519
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onSessionEnding=="

    invoke-static {p1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSessionEnding(Lcom/google/android/gms/cast/framework/Session;)V
    .locals 0

    .line 480
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$10;->onSessionEnding(Lcom/google/android/gms/cast/framework/CastSession;)V

    return-void
.end method

.method public onSessionResumeFailed(Lcom/google/android/gms/cast/framework/CastSession;I)V
    .locals 2

    .line 496
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSessionResumeFailed=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-direct {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$10;->onApplicationDisconnected()V

    return-void
.end method

.method public bridge synthetic onSessionResumeFailed(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 0

    .line 480
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1, p2}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$10;->onSessionResumeFailed(Lcom/google/android/gms/cast/framework/CastSession;I)V

    return-void
.end method

.method public onSessionResumed(Lcom/google/android/gms/cast/framework/CastSession;Z)V
    .locals 3

    .line 490
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionResumed=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    invoke-direct {p0, p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$10;->onApplicationConnected(Lcom/google/android/gms/cast/framework/CastSession;)V

    return-void
.end method

.method public bridge synthetic onSessionResumed(Lcom/google/android/gms/cast/framework/Session;Z)V
    .locals 0

    .line 480
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1, p2}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$10;->onSessionResumed(Lcom/google/android/gms/cast/framework/CastSession;Z)V

    return-void
.end method

.method public onSessionResuming(Lcom/google/android/gms/cast/framework/CastSession;Ljava/lang/String;)V
    .locals 0

    .line 524
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onSessionResuming=="

    invoke-static {p1, p2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSessionResuming(Lcom/google/android/gms/cast/framework/Session;Ljava/lang/String;)V
    .locals 0

    .line 480
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1, p2}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$10;->onSessionResuming(Lcom/google/android/gms/cast/framework/CastSession;Ljava/lang/String;)V

    return-void
.end method

.method public onSessionStartFailed(Lcom/google/android/gms/cast/framework/CastSession;I)V
    .locals 2

    .line 508
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSessionStartFailed=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-direct {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$10;->onApplicationDisconnected()V

    return-void
.end method

.method public bridge synthetic onSessionStartFailed(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 0

    .line 480
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1, p2}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$10;->onSessionStartFailed(Lcom/google/android/gms/cast/framework/CastSession;I)V

    return-void
.end method

.method public onSessionStarted(Lcom/google/android/gms/cast/framework/CastSession;Ljava/lang/String;)V
    .locals 3

    .line 502
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionStarted=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-direct {p0, p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$10;->onApplicationConnected(Lcom/google/android/gms/cast/framework/CastSession;)V

    return-void
.end method

.method public bridge synthetic onSessionStarted(Lcom/google/android/gms/cast/framework/Session;Ljava/lang/String;)V
    .locals 0

    .line 480
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1, p2}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$10;->onSessionStarted(Lcom/google/android/gms/cast/framework/CastSession;Ljava/lang/String;)V

    return-void
.end method

.method public onSessionStarting(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 1

    .line 514
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onSessionStarting=="

    invoke-static {p1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSessionStarting(Lcom/google/android/gms/cast/framework/Session;)V
    .locals 0

    .line 480
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$10;->onSessionStarting(Lcom/google/android/gms/cast/framework/CastSession;)V

    return-void
.end method

.method public onSessionSuspended(Lcom/google/android/gms/cast/framework/CastSession;I)V
    .locals 0

    .line 529
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onSessionSuspended=="

    invoke-static {p1, p2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSessionSuspended(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 0

    .line 480
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1, p2}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$10;->onSessionSuspended(Lcom/google/android/gms/cast/framework/CastSession;I)V

    return-void
.end method
