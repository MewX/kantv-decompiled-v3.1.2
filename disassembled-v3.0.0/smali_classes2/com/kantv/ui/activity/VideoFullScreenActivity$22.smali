.class Lcom/kantv/ui/activity/VideoFullScreenActivity$22;
.super Ljava/lang/Object;
.source "VideoFullScreenActivity.java"

# interfaces
.implements Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoFullScreenActivity;->restartPlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoFullScreenActivity;)V
    .locals 0

    .line 1099
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$22;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/kantv/ui/androidupnpdemo/entity/IResponse;)V
    .locals 1

    const-string p1, "VideoFullScreenActivity"

    const-string v0, "play fail"

    .line 1113
    invoke-static {p1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$22;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    new-instance v0, Lcom/kantv/ui/activity/VideoFullScreenActivity$22$2;

    invoke-direct {v0, p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity$22$2;-><init>(Lcom/kantv/ui/activity/VideoFullScreenActivity$22;)V

    invoke-virtual {p1, v0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public success(Lcom/kantv/ui/androidupnpdemo/entity/IResponse;)V
    .locals 1

    const-string p1, "VideoFullScreenActivity"

    const-string v0, "play success"

    .line 1102
    invoke-static {p1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$22;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    new-instance v0, Lcom/kantv/ui/activity/VideoFullScreenActivity$22$1;

    invoke-direct {v0, p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity$22$1;-><init>(Lcom/kantv/ui/activity/VideoFullScreenActivity$22;)V

    invoke-virtual {p1, v0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
