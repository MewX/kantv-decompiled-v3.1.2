.class Lcom/kantv/ui/activity/VideoPlayActivity$13;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Lcom/samsung/multiscreen/Search$OnStopListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoPlayActivity;->initSamsungDeviceListener()V
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

    .line 722
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$13;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 2

    const-string v0, "VideoPlayActivity"

    const-string v1, "Discovery Stopped."

    .line 725
    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
