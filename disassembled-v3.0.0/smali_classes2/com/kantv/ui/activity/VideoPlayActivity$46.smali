.class Lcom/kantv/ui/activity/VideoPlayActivity$46;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoPlayActivity;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/VideoPlayActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V
    .locals 0

    .line 2688
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$46;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/kantv/ui/androidupnpdemo/entity/IResponse;)V
    .locals 1

    const-string p1, "VideoPlayActivity"

    const-string v0, "stop fail"

    .line 2696
    invoke-static {p1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public success(Lcom/kantv/ui/androidupnpdemo/entity/IResponse;)V
    .locals 1

    const-string p1, "VideoPlayActivity"

    const-string v0, "stop success"

    .line 2691
    invoke-static {p1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
