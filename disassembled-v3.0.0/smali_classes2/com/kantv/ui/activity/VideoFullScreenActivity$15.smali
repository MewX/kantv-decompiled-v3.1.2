.class Lcom/kantv/ui/activity/VideoFullScreenActivity$15;
.super Ljava/util/TimerTask;
.source "VideoFullScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoFullScreenActivity;->setingProgress()V
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

    .line 799
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$15;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "VideoFullScreenActivity"

    const-string v1, "\u83b7\u53d6\u64ad\u653e\u72b6\u6001\u4e2d"

    .line 802
    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$15;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-virtual {v0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->getPositionInfo()V

    return-void
.end method
