.class Lcom/kantv/ui/activity/VideoFullScreenActivity$5$1;
.super Ljava/lang/Object;
.source "VideoFullScreenActivity.java"

# interfaces
.implements Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoFullScreenActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/activity/VideoFullScreenActivity$5;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoFullScreenActivity$5;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$5$1;->this$1:Lcom/kantv/ui/activity/VideoFullScreenActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/kantv/ui/androidupnpdemo/entity/IResponse;)V
    .locals 1

    const-string p1, "VideoFullScreenActivity"

    const-string v0, "currentProgress seek fail"

    .line 366
    invoke-static {p1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public success(Lcom/kantv/ui/androidupnpdemo/entity/IResponse;)V
    .locals 1

    const-string p1, "VideoFullScreenActivity"

    const-string v0, "currentProgress seek success"

    .line 361
    invoke-static {p1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
