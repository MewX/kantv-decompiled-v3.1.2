.class Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$5;
.super Ljava/lang/Object;
.source "TpActivity2.java"

# interfaces
.implements Lcom/google/android/gms/cast/framework/SessionManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->setupCastListener()V
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
.field final synthetic this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;


# direct methods
.method constructor <init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$5;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onApplicationConnected(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$5;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    invoke-static {v0, p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$402(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;Lcom/google/android/gms/cast/framework/CastSession;)Lcom/google/android/gms/cast/framework/CastSession;

    .line 366
    iget-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$5;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    invoke-virtual {p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->invalidateOptionsMenu()V

    return-void
.end method

.method private onApplicationDisconnected()V
    .locals 2

    .line 370
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$5;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    sget-object v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;->LOCAL:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;

    invoke-static {v0, v1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$600(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;)V

    .line 371
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$5;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    sget-object v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackState;->IDLE:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackState;

    invoke-static {v0, v1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$702(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackState;)Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackState;

    .line 372
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$5;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    sget-object v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;->LOCAL:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;

    invoke-static {v0, v1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$802(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;)Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;

    .line 374
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$5;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    invoke-virtual {v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->invalidateOptionsMenu()V

    return-void
.end method


# virtual methods
.method public onSessionEnded(Lcom/google/android/gms/cast/framework/CastSession;I)V
    .locals 0

    .line 313
    invoke-direct {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$5;->onApplicationDisconnected()V

    return-void
.end method

.method public bridge synthetic onSessionEnded(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 0

    .line 309
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1, p2}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$5;->onSessionEnded(Lcom/google/android/gms/cast/framework/CastSession;I)V

    return-void
.end method

.method public onSessionEnding(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSessionEnding(Lcom/google/android/gms/cast/framework/Session;)V
    .locals 0

    .line 309
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$5;->onSessionEnding(Lcom/google/android/gms/cast/framework/CastSession;)V

    return-void
.end method

.method public onSessionResumeFailed(Lcom/google/android/gms/cast/framework/CastSession;I)V
    .locals 0

    .line 323
    invoke-direct {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$5;->onApplicationDisconnected()V

    return-void
.end method

.method public bridge synthetic onSessionResumeFailed(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 0

    .line 309
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1, p2}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$5;->onSessionResumeFailed(Lcom/google/android/gms/cast/framework/CastSession;I)V

    return-void
.end method

.method public onSessionResumed(Lcom/google/android/gms/cast/framework/CastSession;Z)V
    .locals 0

    .line 318
    invoke-direct {p0, p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$5;->onApplicationConnected(Lcom/google/android/gms/cast/framework/CastSession;)V

    return-void
.end method

.method public bridge synthetic onSessionResumed(Lcom/google/android/gms/cast/framework/Session;Z)V
    .locals 0

    .line 309
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1, p2}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$5;->onSessionResumed(Lcom/google/android/gms/cast/framework/CastSession;Z)V

    return-void
.end method

.method public onSessionResuming(Lcom/google/android/gms/cast/framework/CastSession;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSessionResuming(Lcom/google/android/gms/cast/framework/Session;Ljava/lang/String;)V
    .locals 0

    .line 309
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1, p2}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$5;->onSessionResuming(Lcom/google/android/gms/cast/framework/CastSession;Ljava/lang/String;)V

    return-void
.end method

.method public onSessionStartFailed(Lcom/google/android/gms/cast/framework/CastSession;I)V
    .locals 0

    .line 333
    invoke-direct {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$5;->onApplicationDisconnected()V

    return-void
.end method

.method public bridge synthetic onSessionStartFailed(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 0

    .line 309
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1, p2}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$5;->onSessionStartFailed(Lcom/google/android/gms/cast/framework/CastSession;I)V

    return-void
.end method

.method public onSessionStarted(Lcom/google/android/gms/cast/framework/CastSession;Ljava/lang/String;)V
    .locals 0

    .line 328
    invoke-direct {p0, p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$5;->onApplicationConnected(Lcom/google/android/gms/cast/framework/CastSession;)V

    return-void
.end method

.method public bridge synthetic onSessionStarted(Lcom/google/android/gms/cast/framework/Session;Ljava/lang/String;)V
    .locals 0

    .line 309
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1, p2}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$5;->onSessionStarted(Lcom/google/android/gms/cast/framework/CastSession;Ljava/lang/String;)V

    return-void
.end method

.method public onSessionStarting(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSessionStarting(Lcom/google/android/gms/cast/framework/Session;)V
    .locals 0

    .line 309
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$5;->onSessionStarting(Lcom/google/android/gms/cast/framework/CastSession;)V

    return-void
.end method

.method public onSessionSuspended(Lcom/google/android/gms/cast/framework/CastSession;I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSessionSuspended(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 0

    .line 309
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1, p2}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$5;->onSessionSuspended(Lcom/google/android/gms/cast/framework/CastSession;I)V

    return-void
.end method
